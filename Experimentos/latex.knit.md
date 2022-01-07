---
title: "Iteration"
output: 
  pdf_document:
      latex_engine: xelatex
fontsize: 16pt
mainfont: "Arial"
documentclass: scrartcl
lang: pt-br
---




https://bookdown.org/yihui/rmarkdown-cookbook/install-latex.html
http://www.introductoryr.co.uk/Reproducibility/book/creating-and-customising-pdf-documents.html
https://pandoc.org/MANUAL.html#variables-for-latex

Comando para instalar tinytex::install_tinytex()

link documentação fonts
https://pt.overleaf.com/latex/templates/fontspec-all-the-fonts/hjrpnxhrrtxc

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:


```r
summary(cars)
```

```
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
```

## Including Plots

You can also embed plots, for example:

![](latex_files/figure-latex/pressure-1.pdf)<!-- --> 

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
