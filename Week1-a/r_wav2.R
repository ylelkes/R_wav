
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
  ```{r,eval=F}
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
  ```{r,eval=F}
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
  ```{r}
## <- Comments in R
## Computing the correlation between MPG and Horsepower
cor(mtcars$mpg,mtcars$hp)

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



