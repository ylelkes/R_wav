---
title       : Markdown, Getting Data into Shape
subtitle    : 
author      : 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Markdown

* Markdown is an easy way to combine data and writing for html and pdf reports. 
* All the slides in this class and the github page were written in markdown.
* Rstudio is awesome because it has been developed to generate markdown reports. 
* I would like you to start submitting your problem sets in markdown. 
* First thing that needs to be done is install knitr. 


---
## Some markdown exercises

1. Create a new markdown document. 
2. Create a ggplot graph with a regression line using the ToothGrowth datalength (Guinea Pigs tooth lengs for different doses of either vitamin c or orange juice and doses), with different facets for type of supplement.
, plotting a different facet for each diet. Add it to your markdown document and give it a width of 4 inches and a height of 4 inches. Don't show any of the code. 
3. Next, run three regressions, the first regresses length on dose for the guinea pigs in the VC condition, the second regresses length on dose for the OJ condition, the third looks at the interaction between supp and dose on length. 
4. Use the htmlreg function in the texreg package to create a table of these three regressionn models (in one table). Give the columns new names and a nice caption. HINT: you'll have to change the result command within the chunk to make this work.
5. You're writing up your results, and want to report the interaction effect from the third model. Write a sentence that reports the b coefficient and standard error from that model. HINT: use summary(modelname)$coefficients to get the matrix.

---
## Getting data into shape

1. Ran 10 experiments, now want to do a meta-analysis. 
2. I want to match my country level data with my individual-level data.
3. I have time series data that looks like this:


```
##   Code     Country  X1950  X1951  X1952  X1953  X1954
## 1  AFG Afghanistan 20,249 21,352 22,532 23,557 24,555
## 2  ALB     Albania  8,097  8,986 10,058 11,123 12,246
```

4. I want it to look like this:


```
##   Code     Country variable  value
## 1  AFG Afghanistan    X1950 20,249
## 2  ALB     Albania    X1950  8,097
## 3  AFG Afghanistan    X1951 21,352
## 4  ALB     Albania    X1951  8,986
## 5  AFG Afghanistan    X1952 22,532
## 6  ALB     Albania    X1952 10,058
```
