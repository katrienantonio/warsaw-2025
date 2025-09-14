
## Modelling and quantifying mortality and longevity risk

Lecture materials for the 2025 [School of Actuarial Science](https://actuary.org.pl/sna2025/) in Warsaw, Poland.

By Katrien Antonio (KU Leuven & UvA) and Michel Vellekoop (UvA).

📆 September 18 - September 19, 2025 <br> 🕓 From 8u30 to 14u15 <br> 📍 Room A203 (2nd floor), Faculty of Economic Sciences, University of Warsaw, Długa 44/50

Lecture materials will be posted in the days before the workshop. 

We are happy to collect and answer questions during the summer school. We will provide an overview in the Q&A sheet here [TO BE ADDED]. Please send your questions to [katrien.antonio@kuleuven.be](mailto:katrien.antonio@kuleuven.be).

*Credits*: part of the lecture material has been developed for the 2024 International Summer School in Lausanne. We are grateful to dr. Jens Robben for help with the tutorials, and to dr. Frank Van Berkum and prof. dr. Torsten Kleinow. 

## Software requirements

We provide documentation to apply the learned statistical
techniques to mortality data sets using the R software environment. To work through these illustrations you will need a laptop with a recent version of R and RStudio installed.

- R via <https://cloud.r-project.org/bin/windows/base/>
- RStudio via 
  <https://posit.co/download/rstudio-desktop/#download>

We provide a back-up plan in case your local installation of R (and the necessary packages) is not working properly. Please create an account on Posit Cloud and join the following workspace: 

<https://posit.cloud/spaces/692324/join?access_code=6_rtYq1vxnbpn1i85FQt5bPBpLRvT6jhZcJ7AjWi>

Here are the steps you should take:

- visit the above link
- log in by creating an account for Posit or by using your Google or GitHub login credentials
- join the space? ‘Yes’
- at the top of your screen you see ‘Content’, click ‘Content’
- with the ‘copy’ button (on the right) you can make your own version of the ‘Prework and tutorials’ project; in this copy you can work on the tutorials, add comments etc.
- you should now be able to visit the project and see the ‘scripts’ and ‘data’ folders on the right
- try to open the script ‘prework.R’ for instance and execute some of the instructions there.
 
As such, we have everything set up for you in the correct way. You only have to login via the browser and open your copy of the project!

## Prework

<p align="justify">

Prior to joining the summer school we kindly ask you to download the lecture material (see below).

If you are not familiar with the R language, please review the [lecture sheets](https://jensrobben.github.io/Lausanne-summer-school/sheets/Prework.html#1) provided in the 'Introduction to R' prework schedule. These sheets are accompanied by an '[R script](https://gitfront.io/r/jensrobben/mUZ8CcDz5x1L/Lausanne-summer-school/raw/scripts/prework.R)', which contains the R code used in the lecture sheets. Additionally, there is a corresponding R script '[Solution](https://gitfront.io/r/jensrobben/mUZ8CcDz5x1L/Lausanne-summer-school/raw/scripts/prework_solutions.R)' that also provides the solutions to the 'Your turn' exercises. This same workflow will be used for the tutorial sessions.

## Schedule and Lecture Material

[cell-image]: https://jekyllrb.com/img/octojekyll.png "An exemplary image"

| Date<img width=750/> | Instructor <img width=500/> | <img width=500/>           | Description <img width=3500/>                                                                                                                | Lecture sheets <img width=500/>                                                   | Additional material <img width=500/>                                                 | Readings <img width=5000/>                                                                                                                                                                                                                                                                               |
|:--------------------:|:-----------------------------:|----------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|**Prework**||||||| |
|   your own pace        |     |    |                            | Download lecture material                                                                                 |                                                                                   | [ADD ZIP FILE]                                          |                                                                                                                                                                                                                                                                                                          |
|           |         |       |                     | Install R and RStudio                                                                                     |                                                                                   |  [R](https://cloud.r-project.org/bin/windows/base/)           [RStudio](https://posit.co/download/rstudio-desktop/#download)                                           |                                                                                                                                                                                                                                                                                                          |
|           |         |        |                    | Create an account on Posit Cloud and join workspace                                                                                     |                                                                                   |  [workspace on Posit Cloud](https://posit.cloud/spaces/692324/join?access_code=6_rtYq1vxnbpn1i85FQt5bPBpLRvT6jhZcJ7AjWi)                                      |                                                                                                                                                                                                                                                                                                          |
|           |                |  |                          | Install R packages                                                                                             |                                                                                   | [packages](https://gitfront.io/r/jensrobben/mUZ8CcDz5x1L/Lausanne-summer-school/raw/scripts/download_packages.R) |                                                                                                                                                                                                                                                                                                          |
|          |                |    |                        | Introduction to R                                                                                    |  sheets ([html](https://jensrobben.github.io/Lausanne-summer-school/sheets/Prework.html), [pdf](https://jensrobben.github.io/Lausanne-summer-school/sheets/Prework.pdf))  | [R script](https://gitfront.io/r/jensrobben/mUZ8CcDz5x1L/Lausanne-summer-school/raw/scripts/prework.R)     [Solution](https://gitfront.io/r/jensrobben/mUZ8CcDz5x1L/Lausanne-summer-school/raw/scripts/prework_solutions.R)   |                                                                                                                                                                                                                                                                                         |
|||||||||
|**September 18**|||| ||||
|8.30 - 9.15   | Katrien  | Module A: single population models | A.1      | Basic concepts of lifetime distributions, mortality data and visualisations   |  [sheets](https://katrienantonio.github.io/warsaw-2025/sheets/Module_A_1.pdf) |   [Barrieu et al., 2012](https://hal.science/hal-00417800/file/Barrieu_etal.pdf) [Antonio et al., 2017](https://link.springer.com/article/10.1007/s13385-017-0159-x) [(OA)](https://pure.uva.nl/ws/files/21793481/Producing_the_Dutch.pdf)                                                                                                                                                                                                                                 |
|9.15 - 10.00  | Katrien  | | A.2  | Single population stochastic mortality models  | [sheets](https://katrienantonio.github.io/warsaw-2025/sheets/Module_A_2.pdf) | [Brouhns et al., 2002](https://pure.uvt.nl/ws/portalfiles/portal/488785/poisson.pdf), [Cairns et al., 2009](http://www.ma.hw.ac.uk/~andrewc/papers/naaj2009.pdf), [Antonio et al.,](https://link.springer.com/article/10.1007/s13385-017-0159-x) [(OA)](https://pure.uva.nl/ws/files/21793481/Producing_the_Dutch.pdf) and [Dowd et al., 2020](https://www.macs.hw.ac.uk/~andrewc/ARCresources/CBDX2020.pdf)                                                                                                                                    |
|10.30 - 11.15 |          | | Quick tour in R | Summary of Lee-Carter essentials in R | sheets ([html](https://jensrobben.github.io/Lausanne-summer-school/sheets/Recap-Tutorial-1.html), [pdf](https://jensrobben.github.io/Lausanne-summer-school/sheets/Recap-Tutorial-1.pdf)) | [R script](https://gitfront.io/r/jensrobben/mUZ8CcDz5x1L/Lausanne-summer-school/raw/scripts/Recap-Tutorial-1.R) |  |
|your own pace |          | | Demo 1  | Download mortality data and calibration of single population stochastic mortality models  | sheets ([html](https://jensrobben.github.io/Lausanne-summer-school/sheets/Tutorial-1.html), [pdf](https://jensrobben.github.io/Lausanne-summer-school/sheets/Tutorial-1.pdf)) | [R script](https://gitfront.io/r/jensrobben/mUZ8CcDz5x1L/Lausanne-summer-school/raw/scripts/Tutorial-1.R)     [Solution](https://gitfront.io/r/jensrobben/mUZ8CcDz5x1L/Lausanne-summer-school/raw/scripts/Tutorial-1-solutions.R) |  [CBD model](https://www.macs.hw.ac.uk/~andrewc/CBD.html) and [StMoMo paper](https://www.jstatsoft.org/article/view/v084i03)  |
|11.15 - 12.00 | Michel   | Module B: multi-population mortality models   | B.1 | Calibration of multi-population models  |  [sheets](https://katrienantonio.github.io/warsaw-2025/sheets/Module_B_1.pdf) |    | [Li & Lee](https://doi.org/10.1353/dem.2005.0021)                                                                                                                                                                                                                                                         |
|12.45 - 13.30 | Michel   | | B.2  | Projections for multi-population models  |  [sheets](https://katrienantonio.github.io/warsaw-2025/sheets/Module_B_2.pdf)  |  | [KAG2022](https://www.actuarieelgenootschap.nl/kennisbank/ag-l-projections-life-table-ag2022.htm), [KAG2020](https://www.actuarieelgenootschap.nl/kennisbank/projections-life-table-ag2020)                                                                                                    |
|13.30 - 14.15 | Michel   | | B.3  |  Projection during a pandemic | [sheets](https://katrienantonio.github.io/warsaw-2025/sheets/Module_B_3.pdf) | [vanBerkum Melenberg Vellekoop 2025](https://doi.org/10.1016/j.insmatheco.2025.01.001)
|your own pace |          | | Demo 2  | Calibration of multi-population mortality models and forecasting   |  sheets ([html](https://jensrobben.github.io/Lausanne-summer-school/sheets/Tutorial-2.html), [pdf](https://jensrobben.github.io/Lausanne-summer-school/sheets/Tutorial-2.pdf))                                                                            |              [R script](https://gitfront.io/r/jensrobben/mUZ8CcDz5x1L/Lausanne-summer-school/raw/scripts/Tutorial-2.R)     [Solution](https://gitfront.io/r/jensrobben/mUZ8CcDz5x1L/Lausanne-summer-school/raw/scripts/Tutorial-2-solutions.R)                                                                        |                                                                                                                                                                                                                                                                                                          |
||||||||
|**September 19**|||||||
| 8.30 - 9.15    |      Katrien      | Module C: statistical and machine learning methods for mortality data | C.1           | Statistical and machine learning methods for portfolio data      | [sheets](https://katrienantonio.github.io/warsaw-2025/sheets/Module_C_1.pdf) | [Gschössl et al., 2011](https://link.springer.com/article/10.1007/s13385-011-0028-y), [JRSS A paper](https://academic.oup.com/jrsssa/article/184/2/548/7056401?searchresult=1), [IFoA and LLMA, 2014](https://openaccess.city.ac.uk/id/eprint/16835/1/ifoa-llma-longevity-basis-risk-report.pdf), and [BAJ, 2015](https://www.cambridge.org/core/journals/british-actuarial-journal/article/methodology-for-assessing-basis-risk-abstract-of-the-london-discussion/3E221713A2348CB4C70A72FCD5438E28)  |
| 9.15 - 10.00   |      Katrien        |  | C.2                  | Statistical and machine learning methods for fine-grained mortality data | [sheets](https://katrienantonio.github.io/warsaw-2025/sheets/Module_C_2.pdf) |  [Robben, Antonio and Kleinow, 2025](https://doi.org/10.1093/jrsssa/qnaf052)  [Robben, Antonio, and Kleinow (OA)](https://arxiv.org/pdf/2405.18020) |
| 10.30 - 11.15  | Katrien | | (cont'd) | | |
| your own pace  |           | | Demo 3               | Fine-grained mortality data                                              |     sheets ([html](https://jensrobben.github.io/Lausanne-summer-school/sheets/Tutorial-3.html), [pdf](https://jensrobben.github.io/Lausanne-summer-school/sheets/Tutorial-3.pdf))  |        [R script](https://gitfront.io/r/jensrobben/mUZ8CcDz5x1L/Lausanne-summer-school/raw/scripts/Tutorial-3.R)     [Solution](https://gitfront.io/r/jensrobben/mUZ8CcDz5x1L/Lausanne-summer-school/raw/scripts/Tutorial-3-solutions.R)                                                                              |      
| 11.15 - 12.00  |   Michel     | Module D: impact and risk mitigation    | D.1 | Sensitivities and redistribution of risk   |   [sheets](https://katrienantonio.github.io/warsaw-2025/sheets/Module_D_1.pdf)  |    [Blake and Cairns, 2025](https://link.springer.com/article/10.1007/s13385-025-00421-y)                                                                                                                             |
| 12.45 - 13.30  | Michel | | D.2 | Pricing longevity risk | [sheets](https://katrienantonio.github.io/warsaw-2025/sheets/Module_D_2.pdf)  | [Delong, 2009](https://lukaszdelong.pl/wp-content/uploads/2019/05/indifference-pricing.pdf)
| 13.30 - 14.15  | Michel | | D.3 | Heterogeneity in Mortality Models + Wrap-up | 
|||||||||

## Instructors
<img align="left" src="img/Katrien.jpg" width="160" hspace="10"/> [Katrien Antonio](https://katrienantonio.github.io/) is full professor in actuarial science at KU Leuven (Belgium) and part-time professor in actuarial data science with the University of Amsterdam. She teaches (BSc, MSc) courses on life insurance mathematics, loss models, and data science for insurance. Her research puts focus on insurance data science, with applications in insurance pricing, reserving and stochastic mortality modelling. Her work has been published in actuarial journals (e.g., ASTIN, IME, North American Actuarial Journal, Scandinavian Actuarial Journal), in statistics and OR journals. Currently, Katrien serves as vice-dean for education and students at the [Faculty of Economics and Business](https://feb.kuleuven.be/home) (FEB). 
<br>
<br>

<img align="left" src="img/Michel.jpg" width="160" hspace="10"/> [Michel Vellekoop](https://www.uva.nl/profiel/v/e/m.h.vellekoop/m.h.vellekoop.html) is full professor in the Actuarial Sciences and Mathematical Finance group at the University of Amsterdam. He studied Applied Mathematics at the University of Twente and obtained his PhD degree in 1998 at Imperial College in London for research on nonlinear filtering problems for stochastic processes. Since then, he has focused on applications in finance and insurance, both as an academic and as director of research for the Derivatives Technology Foundation. His main interests are valuation and risk management problems for contingent claims in complete as well as incomplete markets. He is the former vice-chair and current scientific advisor for the committee of the Dutch Actuarial Association which is responsible for the Dutch stochastic mortality model and projections that are published in even years. In 2022 he was one of the authors of the report for the Dutch government which defines the new model to generate economic scenarios that will be used by supervising authorities in the new Dutch pension system.
<br>
<br>

## Let’s go!

Enjoy the summer school. Happy learning!
