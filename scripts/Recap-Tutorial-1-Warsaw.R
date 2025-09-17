## --------------------------------------------------------------------------------------------------------
packages     <- c('demography', 'rstudioapi', 'tidyverse')
new.packages <- packages[!(packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
suppressMessages(sapply(packages, require, character.only = TRUE))


## --------------------------------------------------------------------------------------------------------
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

## ----------------------------------------------------------------------------------------------
POL_female <- read.table(
  file = "../data/hmd/POL_female_life_table_1x1.txt", 
  skip = 2, header = TRUE)
POL_male   <- read.table(
  file = "../data/hmd/POL_male_life_table_1x1.txt", 
  skip = 2, header = TRUE)

## ----------------------------------------------------------------------------------------------
POL_male$Age   <- parse_number(POL_male$Age)   %>% 
  as.integer()
POL_female$Age <- parse_number(POL_female$Age) %>% 
  as.integer()


## ----------------------------------------------------------------------------------------------
POL_male_2022   <- POL_male   %>% 
  dplyr::filter(Year == 2022)
POL_female_2022 <- POL_female %>% 
  dplyr::filter(Year == 2022)


## ----------------------------------------------------------------------------------------------
str(POL_female_2022)

## ----------------------------------------------------------------------------------------------
head(POL_male_2022) %>%
  kable("html") %>%
  kable_styling(font_size = 16)


## ----------------------------------------------------------------------------------------------
g_male <- ggplot(POL_male_2022, aes(Age, log(qx))) + 
          geom_point(col = RCLRbg) + 
          geom_line(col = RCLRbg) + 
          theme_bw(base_size = 15) + 
          ggtitle("Poland - males, 2022") + 
          labs(y = bquote(ln(q[x])))
g_male


## ----------------------------------------------------------------------------------------------
g_fem <- ggplot(POL_female_2022, aes(Age, log(qx))) + 
            geom_point(col = RCLRbg) + 
            geom_line(col = RCLRbg) + 
            theme_bw(base_size = 15) +
            ggtitle("Poland - females, 2022") + 
            labs(y = bquote(ln(q[x])))
g_fem


## ----------------------------------------------------------------------------------------------
years <- c(1960, 1970, 1980, 1990, 2000, 2022)
dfM   <- POL_male %>% 
  dplyr::filter(Year %in% years,
                Age <= 90)

ggplot(dfM, aes(x = Age, y = log(qx), 
               group = Year, colour = factor(Year))) + 
  geom_line(linewidth = 1.1)  + 
  ggtitle('Polish male mortality rates') + 
  xlab('Age (x)') + ylab(bquote(ln(q[x]))) +
  scale_color_manual(values = c(red_pink, turquoise,
                                orange, blue, green,
                                purple), name = 'Year') + 
  scale_x_continuous(breaks = seq(0,90,10)) + 
  theme_bw(base_size = 15)


## ----------------------------------------------------------------------------------------------
years <- c(1960, 1970, 1980, 1990, 2000, 2022)
dfF   <- POL_female %>% 
  dplyr::filter(Year %in% years,
                Age <= 90)

ggplot(dfF, aes(x = Age, y = log(qx), 
               group = Year, colour = factor(Year))) + 
  geom_line(linewidth = 1.1)  + 
  ggtitle('Polish female mortality rates') + 
  xlab('Age (x)') + ylab(bquote(ln(q[x]))) +
  scale_color_manual(values = c(red_pink, turquoise,
                                orange, blue, green,
                                purple), name = 'Year') + 
  scale_x_continuous(breaks = seq(0,90,10)) + 
  theme_bw(base_size = 15)


## ----------------------------------------------------------------------------------------------
xmax  <- 100
xmin  <- 0
years <- c(1960, 1970, 1980, 1990, 2000, 2022)
surv_rate <- matrix(0, xmax-xmin+1, length(years))
surv_rate[1,] <- 1

for(t in 1:length(years)){
  for(x in 1:(xmax-xmin)){
    df.t <- POL_male %>% 
      dplyr::filter(Year == years[t])
    px <- 1 - df.t[x,'qx']
    surv_rate[x+1,t] <- surv_rate[x,t]*px
  }
}

df <- data.frame('Age' = rep(0:100, times = length(years)),
                 'Year' = rep(years, each = length(0:100)),
                 'Surv' = as.numeric(surv_rate))

ggplot(df, aes(x = Age, y = Surv, 
               group = Year, colour = as.factor(Year))) + 
  geom_line(linewidth = 1.1)  + 
  ggtitle('Polish male survival curve') + 
  xlab('Age (x)') + ylab(bquote(S[0]*'(x)')) +
  scale_color_manual(values = c(red_pink, turquoise,
                                orange, blue, green,
                                purple), name = 'Year') + 
  scale_x_continuous(breaks = seq(0,100,10)) + 
  theme_bw(base_size = 15)


## ----eval = FALSE------------------------------------------------------------------------------
# install.packages("demography")


## ----------------------------------------------------------------------------------------------
library(demography)

## ----------------------------------------------------------------------------------------------
User = "summerschool.rclr2024@outlook.com"
pw   = "Test1234."
Df   = hmd.mx("POL", User , pw , "Poland")


## ----------------------------------------------------------------------------------------------
years <- 1970:2023
ages  <- 0:90


## ----------------------------------------------------------------------------------------------
Df <- demography::extract.years(Df, years = years)
Df <- demography::extract.ages(Df, ages = ages, 
                     combine.upper = FALSE)


## ----------------------------------------------------------------------------------------------
dim(Df$rate$male)
dim(Df$pop$female)
View(Df$rate$female)


## ----------------------------------------------------------------------------------------------
head(POL_female_2022$mx)
head(Df$rate$female[,'2022'])


## ----------------------------------------------------------------------------------------------
head(Df$pop$female[,'2022'])


## ----------------------------------------------------------------------------------------------
round(head(Df$pop$female[,'2022'] * Df$rate$female[,'2022']))


## ----------------------------------------------------------------------------------------------
Df <- readRDS(file = "../data/hmd/Df_POL_hmd_mx.rds")


## ----------------------------------------------------------------------------------------------
row <- Df$age
col <- Df$year

Df$pop$female <- Df$pop$female[row <= 90, col >= 1970]
Df$pop$male   <- Df$pop$male[row <= 90, col >= 1970]
Df$pop$total  <- Df$pop$total[row <= 90, col >= 1970]

Df$rate$female <- Df$rate$female[row <= 90, col >= 1970]
Df$rate$male   <- Df$rate$male[row <= 90, col >= 1970]
Df$rate$total  <- Df$rate$total[row <= 90, col >= 1970]


## ----------------------------------------------------------------------------------------------
dim(Df$rate$male)
dim(Df$pop$female)
View(Df$rate$female)


## ----------------------------------------------------------------------------------------------
etx <- t(Df$pop$male)
dtx <- round(etx * t(Df$rate$male))


## ----results=FALSE-----------------------------------------------------------------------------
source('../scripts/fitModels.R')

LCfit701 <- fit701(ages, years, etx, dtx,
                   matrix(1, length(years),
                          length(ages)))



## ----------------------------------------------------------------------------------------------
LCfit701$beta1[1:4]
LCfit701$beta2[1:4]
LCfit701$kappa2[1:4]

## ----------------------------------------------------------------------------------------------
library(ggplot2)

data_period <- tibble(year = years, fit = LCfit701$kappa2)
data_age <- tibble(age = ages, fit_alpha = LCfit701$beta1, fit_beta = LCfit701$beta2)

g_1 <- ggplot(data_age) + geom_point(aes(age, fit_alpha)) + 
       geom_line(aes(age, fit_alpha), col = "black") +
       theme_bw(base_size = 15) +
       ggtitle("Poland - males, 1970 - 2023, Lee Carter, Poisson") + 
       labs(y = bquote(hat(beta)[x]^"(1)")) 

g_2 <- ggplot(data_age) + geom_point(aes(age, fit_beta)) + 
       geom_line(aes(age, fit_beta), col = "black") +
       theme_bw(base_size = 15) + ggtitle("") +
       labs(y = bquote(hat(beta)[x]^"(2)")) 

g_3 <- ggplot(data_period) + geom_point(aes(year, fit)) + 
       geom_line(aes(year, fit), col = "black") +
       theme_bw(base_size = 15) + ggtitle("") + 
       labs(y = bquote(hat(kappa)[t]^"(2)")) 

grid.arrange(g_1, g_2, g_3, ncol = 2)


## ----------------------------------------------------------------------------------------------
str(LCfit701$mhat)


## ----------------------------------------------------------------------------------------------
LCfit701$mhat['2019','65'] 
LCfit701$mhat[50,66]


## ----------------------------------------------------------------------------------------------
exp(LCfit701$beta1[66] + 
  LCfit701$beta2[66]*LCfit701$kappa2[50])


## ----------------------------------------------------------------------------------------------
qhat <- 1 - exp(-LCfit701$mhat)
qhat['2019','65']


## ----eval=FALSE--------------------------------------------------------------------------------
# ggplot(...) +
#   ...


## ----------------------------------------------------------------------------------------------
qobs <- 1 - exp(-dtx/etx)
qhat <- 1 - exp(-LCfit701$mhat)


## ----echo=FALSE--------------------------------------------------------------------------------
age    <- '65'
df.age <- data.frame(Year = years, obs = qobs[,age],
                     fit = qhat[,age])

## ----------------------------------------------------------------------------------------------
ggplot(df.age) + 
  geom_point(aes(x = Year, y = obs)) +
  geom_line(aes(Year, fit), col = RCLRbg, linewidth = 1) +
  ggtitle("Poland - males, 1970 - 2023") + 
  ylab(bquote(hat(q)['t,65'])) + 
  theme_bw(base_size = 15)


## ----------------------------------------------------------------------------------------------
qobs <- 1 - exp(-dtx/etx)
qhat <- 1 - exp(-LCfit701$mhat)

## ----------------------------------------------------------------------------------------------
age    <- '85'
df.age <- data.frame(Year = years, obs = qobs[,age],
                     fit = qhat[,age])

## ----------------------------------------------------------------------------------------------
ggplot(df.age) + 
  geom_point(aes(x = Year, y = obs)) +
  geom_line(aes(Year, fit), col = RCLRbg, linewidth = 1) +
  ggtitle("Poland - males, 1970 - 2023") + 
  ylab(bquote(hat(q)['t,85'])) + 
  theme_bw(base_size = 15)

## ----------------------------------------------------------------------------------------------
grid <- expand.grid(period = years, age = ages)
grid$res <- as.vector(LCfit701$epsilon)
names(grid) <- c("Year", "Age", "Residual")


## ----------------------------------------------------------------------------------------------
head(grid)[1:3,]

## ----------------------------------------------------------------------------------------------
grid <- expand.grid(period = years, age = ages)
grid$res <- as.vector(LCfit701$epsilon)
names(grid) <- c("Year", "Age", "Residual")

ggplot(grid, aes(x = Year, y = Age)) +
  geom_tile(aes(fill = Residual)) +
  scale_fill_gradientn(colours = topo.colors(7), breaks = c(-4,-2,0,2,4,6)) +
  theme_bw(base_size = 15) + 
  theme(legend.position = "bottom")


