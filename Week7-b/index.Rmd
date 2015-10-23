---
title       : Interactive Graphics and Maps
subtitle    : AKA out of my element, and maps
author      : 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
ext_widgets: {rCharts: [libraries/nvd3]}

---

## A number of options out there
1. ggvis
3. rCharts
4. plotly
5. googleVis

---
## Lets work with rCharts 

```
require(devtools)
install_github('rCharts', 'ramnathv')
library(rCharts)
```

---
## Rcharts uses a lattice package like formula
```
## Example 1 Facetted Scatterplot
names(iris) = gsub("\\.", "", names(iris))
rPlot(SepalLength ~ SepalWidth | Species, data = iris, color = 'Species', type = 'point')
```

```
## Example 2 Facetted Barplot
hair_eye = as.data.frame(HairEyeColor)
rPlot(Freq ~ Hair | Eye, color = 'Eye', data = hair_eye, type = 'bar')
```

---
## Rcharts uses a number of javascript charting libraries
1. polychart: rplot()
2. MorrisJS: mplot()
3. NVD3: nPlot()
4. xCharts: xPlot()
5. HighCharts: hPlot()

---
## Try it
go to: http://www.rpubs.com/dnchari/rcharts

1. Using your data, make 1 type of interactive chart from each library class, e.g., 1 type of polychart, 1 type of morris chart, etc...
2. Save your favorite chart using:
  chartname$save('chartname.html', standalone = TRUE)
3. email me the file, and present it to the class

---
## Won't go into shiny

http://shiny.rstudio.com/gallery/telephones-by-region.html


---
## Maps

```
install.packages("maps")
library(maps)
library(ggplot2)
states <- map_data("state")
arrests <- USArrests
names(arrests) <- tolower(names(arrests))
arrests$region <- tolower(rownames(USArrests))
choro <- merge(states, arrests, sort = FALSE, by = "region")
choro <- choro[order(choro$order), ]
ggplot(choro,aes(x=long,y=lat, group = group, fill = assault))+geom_polygon()
```

---
## Map alcohol consumption 

1. alcohol data: https://cdn.rawgit.com/ylelkes/R_wav/master/data/alcohol.csv
2. Map just europe: latitude of europe 30:75, longitude -25:50

```
library(maps)
library(ggplot2)
world <- map_data("world")
alcohol <- read.csv("alcohol.csv")
```


