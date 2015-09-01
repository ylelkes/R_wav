---
title       : "Using R for Data Wrangling, Analysis, and Visualization"
subtitle    : "Lecture 1: Course Intro and Getting Started" 
author      : Dr. Yphtach Lelkes
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Hello!
1. Who you are.
2. What you did this summer.
3. What experience, if any, you have with data analysis, programming languages, etc.

---
## What is this course about?
1. Getting
2. Cleaning
3. and Presenting data. 
all within R.

---
## Data Munging/Wrangling 
![nytimes](assets/img/wranglingnytimes.png)

---
## 
Data scientists, according to interviews and expert estimates, spend from 50 percent to 80 percent of their time mired in this more mundane labor of collecting and preparing unruly digital data, before it can be explored for useful nuggets

---
## Data Munging/Wrangling 
<div style='text-align: center;'>
    <img width='800' src='assets/img/munging.jpg' />
</div>

---
## Data Munging/Wrangling 
<div style='text-align: center;'>
    <img width='800' src='assets/img/WmasX.png' />
</div>

---
## Aggregation

```r
library(dplyr)
iris %>% group_by(Species) %>% summarise(m = mean(Petal.Length), sd = sd(Petal.Length), 
    n = length(Petal.Length))
```

```
## Source: local data frame [3 x 4]
## 
##      Species     m        sd  n
## 1     setosa 1.462 0.1736640 50
## 2 versicolor 4.260 0.4699110 50
## 3  virginica 5.552 0.5518947 50
```

---
## Visualization
<div style='text-align: center;'>
    <img width='800' src='assets/img/bike_ggplot.png' />
</div>

---
## Visualization
<div style='text-align: center;'>
    <img width='800' src='assets/img/pkmap.png' />
</div>
  

---
## Visualization
<div style='text-align: center;'>
    <img width='600' src='assets/img/class_hwy_boxplot.png' />
</div>

---
## Interactive Graphics 
<iframe src = 'http://shiny.rstudio.com/gallery/movie-explorer.html' height='600px'></iframe>

---
## Error-Free Publication Quality Tables

```r
m1 <- lm(mpg ~ hp, data = mtcars)
m2 <- lm(mpg ~ hp + drat, data = mtcars)
m3 <- lm(mpg ~ hp + drat + factor(gear), data = mtcars)
htmlreg(list(m1, m2, m3), custom.coef.names = c("Intercept", "Gross horsepower", 
    "Rear axle ratio", "Four foward gears", "Five forward  gears"))
```



---

<table cellspacing="0" align="center" style="border: none;">
  <caption align="bottom" style="margin-top:0.3em;">Statistical models</caption>
  <tr>
    <th style="text-align: left; border-top: 2px solid black; border-bottom: 1px solid black; padding-right: 12px;"></th>
    <th style="text-align: left; border-top: 2px solid black; border-bottom: 1px solid black; padding-right: 12px;"><b>Model 1</b></th>
    <th style="text-align: left; border-top: 2px solid black; border-bottom: 1px solid black; padding-right: 12px;"><b>Model 2</b></th>
    <th style="text-align: left; border-top: 2px solid black; border-bottom: 1px solid black; padding-right: 12px;"><b>Model 3</b></th>
  </tr>
  <tr>
    <td style="padding-right: 12px; border: none;">Intercept</td>
    <td style="padding-right: 12px; border: none;">30.10<sup style="vertical-align: 4px;">***</sup></td>
    <td style="padding-right: 12px; border: none;">10.79<sup style="vertical-align: 4px;">*</sup></td>
    <td style="padding-right: 12px; border: none;">16.31<sup style="vertical-align: 4px;">*</sup></td>
  </tr>
  <tr>
    <td style="padding-right: 12px; border: none;"></td>
    <td style="padding-right: 12px; border: none;">(1.63)</td>
    <td style="padding-right: 12px; border: none;">(5.08)</td>
    <td style="padding-right: 12px; border: none;">(6.43)</td>
  </tr>
  <tr>
    <td style="padding-right: 12px; border: none;">Gross horsepower</td>
    <td style="padding-right: 12px; border: none;">-0.07<sup style="vertical-align: 4px;">***</sup></td>
    <td style="padding-right: 12px; border: none;">-0.05<sup style="vertical-align: 4px;">***</sup></td>
    <td style="padding-right: 12px; border: none;">-0.06<sup style="vertical-align: 4px;">***</sup></td>
  </tr>
  <tr>
    <td style="padding-right: 12px; border: none;"></td>
    <td style="padding-right: 12px; border: none;">(0.01)</td>
    <td style="padding-right: 12px; border: none;">(0.01)</td>
    <td style="padding-right: 12px; border: none;">(0.01)</td>
  </tr>
  <tr>
    <td style="padding-right: 12px; border: none;">Rear axle  ratio</td>
    <td style="padding-right: 12px; border: none;"></td>
    <td style="padding-right: 12px; border: none;">4.70<sup style="vertical-align: 4px;">***</sup></td>
    <td style="padding-right: 12px; border: none;">3.51</td>
  </tr>
  <tr>
    <td style="padding-right: 12px; border: none;"></td>
    <td style="padding-right: 12px; border: none;"></td>
    <td style="padding-right: 12px; border: none;">(1.19)</td>
    <td style="padding-right: 12px; border: none;">(1.85)</td>
  </tr>
  <tr>
    <td style="padding-right: 12px; border: none;">Four foward gears</td>
    <td style="padding-right: 12px; border: none;"></td>
    <td style="padding-right: 12px; border: none;"></td>
    <td style="padding-right: 12px; border: none;">-0.28</td>
  </tr>
  <tr>
    <td style="padding-right: 12px; border: none;"></td>
    <td style="padding-right: 12px; border: none;"></td>
    <td style="padding-right: 12px; border: none;"></td>
    <td style="padding-right: 12px; border: none;">(2.14)</td>
  </tr>
  <tr>
    <td style="padding-right: 12px; border: none;">Five forward  gears</td>
    <td style="padding-right: 12px; border: none;"></td>
    <td style="padding-right: 12px; border: none;"></td>
    <td style="padding-right: 12px; border: none;">3.76</td>
  </tr>
  <tr>
    <td style="padding-right: 12px; border: none;"></td>
    <td style="padding-right: 12px; border: none;"></td>
    <td style="padding-right: 12px; border: none;"></td>
    <td style="padding-right: 12px; border: none;">(2.16)</td>
  </tr>
  <tr>
    <td style="border-top: 1px solid black;">R<sup style="vertical-align: 4px;">2</sup></td>
    <td style="border-top: 1px solid black;">0.60</td>
    <td style="border-top: 1px solid black;">0.74</td>
    <td style="border-top: 1px solid black;">0.78</td>
  </tr>
  <tr>
    <td style="padding-right: 12px; border: none;">Adj. R<sup style="vertical-align: 4px;">2</sup></td>
    <td style="padding-right: 12px; border: none;">0.59</td>
    <td style="padding-right: 12px; border: none;">0.72</td>
    <td style="padding-right: 12px; border: none;">0.75</td>
  </tr>
  <tr>
    <td style="border-bottom: 2px solid black;">Num. obs.</td>
    <td style="border-bottom: 2px solid black;">32</td>
    <td style="border-bottom: 2px solid black;">32</td>
    <td style="border-bottom: 2px solid black;">32</td>
  </tr>
  <tr>
    <td style="padding-right: 12px; border: none;" colspan="4"><span style="font-size:0.8em"><sup style="vertical-align: 4px;">***</sup>p &lt; 0.001, <sup style="vertical-align: 4px;">**</sup>p &lt; 0.01, <sup style="vertical-align: 4px;">*</sup>p &lt; 0.05</span></td>
  </tr>
</table>

---
## Error-Free Documents
```
The effect of horsepower on MPG is \Sexpr{round(m1$coefficients[2],2)}.
```

The effect of horsepower on MPG is -0.07 

---
## Our schedule
[schedule](https://github.com/ylelkes/R_wav)

---
## Readings
* Journal articles related to ideas will be posted shortly
* More concerned that you practice the ideas than read about them
* Lots of books out there. You can buy them, but I think you can get by just fine without them. 
  * R Cookbook by Teetor
  * R for Everyone  by Lander
  * ggplot2 by Wickham


---
## Grades and formalities
* Weekly problem sets (will be assigned by Friday and due by Wednesday) 30 percent
* Final project 
  * Apply tools to a dataset of your choosing, need to include visualization and tables in a publication quality 
document. Github repository and interactive graphic. More details to come. 60 percent
  * 5 minute presentation in slidify or beamer, 10 percent 

---
## What is R?
* A programming language designed for statistical applications
* A statistical environment for data analysis

---
## Why do we like R so much?
* It’s free and open-source
* It’s cross-platform — the same code will produce the same results on
Windows, Mac, or Linux
* It’s easy to use and to program with
* It’s regularly updated — there’s a new major version roughly every year,
with intermediate revisions every 4–5 months
* It’s becoming the lingua franca of serious empirical work in the social sciences
* It’s already the lingua franca of applied statistics

---
## Installing R (on Windows)
1. Open http://www.r-project.org/ in your browser.
2. Click on “CRAN”. You’ll see a list of mirror sites, organized by country.
3. Select a site near you.
4. Click on “Windows” under “Download and Install R”.
5. Click on “base”.
6. Click on the link for downloading the latest version of R (an .exe file).
7. When the download completes, double-click on the .exe file and answer the
usual questions.

---
## Installing R (on OS X)
1. Open http://www.r-project.org/ in your browser.
2. Click on “CRAN”. You’ll see a list of mirror sites, organized by country.
3. Select a site near you.
4. Click on “MacOS X”.
5. Click on the .pkg file for the latest version of R, under “Files:”, to download it.
6. When the download completes, double-click on the .pkg file and answer the
usual questions.

---
## Using the command line


---
## RStudio
* Integrated Development Environment
* Other IDEs out there
* Can use datajoy, eclipse, emacs


---
## Install RStudio 
<iframe src = 'https://www.rstudio.com/products/RStudio/' height='600px'></iframe>


---
## R Packages
<div style='text-align: center;'>
    <img width='560' src='assets/img/fig_9_cran.png' />
</div>


---
## Installing development versions of packages

```r
install.packages("arm")
```


---
## Installing development versions of packages

```r
require(devtools)
install_github(repo="coefplot",username="jaredlander")
```

---
## Loading packages

```r
require(coefplot)
library(coefplot)
```

---
## Sometimes we don't want to call up the package into memory
Try the following.

```r
m3 <- lm(mpg ~ hp+ drat + factor(gear), data= mtcars)
install coefplot
library(coefplot)
coefplot(m3)
install arm
library(arm)
coefplot(m3)
coefplot::coefplot(m3)
arm::coefplot(m3)
```

---
## Sometimes we don't want to call up the package into memory

```r
library(dplyr)
library(plyr)
```

```
## -------------------------------------------------------------------------
## You have loaded plyr after dplyr - this is likely to cause problems.
## If you need functions from both plyr and dplyr, please load plyr first, then dplyr:
## library(plyr); library(dplyr)
## -------------------------------------------------------------------------
## 
## Attaching package: 'plyr'
## 
## The following objects are masked from 'package:dplyr':
## 
##     arrange, count, desc, failwith, id, mutate, rename, summarise,
##     summarize
```

---
## Getting Help in R
Use help to display the documentation for the function:
`> help(functionname)`

`> ?(functioname)`

Use args for a quick reminder of the function arguments:
`> args(functionname)`

Use example to see examples of using the function:
`> example(functionname)`

---
## Stackoverflow
[stackoverflow](http://stackoverflow.com/questions/1296646/how-to-sort-a-dataframe-by-columns)

---
## Data and Good Housekeeping
An example of "interactive" data analysis
[Forbes article]

---
## Automation
1. Automate everything that can be automated
2. Write a single script that executes all code from beginning to end.
  * For each step in your project, whether it is data manipulation or figure creation, create a different script.
  * Create a batch file that runs all scripts, in the right order, from start to finish. 

---
## Directories
1. Separate directories by function.
2. Separate files into inputs and outputs.
3. Make directories portable.

--- ## Non-Ideal
<div style='text-align: center;'>
    <img width='560' src='assets/img/baddir.png' />
</div>

--- ## Ideal
<div style='text-align: center;'>
    <img width='560' src='assets/img/gooddir.png' />
</div>



---
## Documenting your code

```r
#############################################
##	What
##	Original author						
## 	Last Edited: 10/31/14 by YL
#############################################

if (!require("pacman")) install.packages("pacman")
pacman::p_load(stringr, dplyr, reshape2,foreign)
```

---
## Documenting your code

```r
#############################################
##  What
##	Original author						
## 	Last Edited: 10/31/14 by YL
#############################################

if (!require("pacman")) install.packages("pacman")
pacman::p_load(stringr, dplyr, reshape2,foreign)
```

---
## Documenting your code

```r
## <- Comments in R
## Computing the correlation between MPG and Horsepower
cor(mtcars$mpg,mtcars$hp)
```

```
## [1] -0.7761684
```

```r
## Table 1A, Lelkes (2014) Liberian Journal of Information Technology
m1 <- lm(mpg~hp,mtcars)
```

---
## Documenting your code
Who is your code for?
> Yourself

> Your collaborators


---
##  Other points
1. Use descriptive variable names:
  * income not V019832
2. Order functions and commands linearly

---
##  A small intro task
1. Install the datasets library
2. using data() load the beaver datasets (two datasets tracking the body temperature of two beavers)
3. What is the body temperature of beaver1 on day 347, time 0
4. Using mean(), what are the mean body temperatures of beaver1 and beaver2?





