---
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{An introduction to histry}
  %\VignetteEngine{knitr::rmarkdown}
  \usepackage[utf8]{inputenc}
---

# A minimal R Markdown example

A quote:

> Markdown is not LaTeX.

To compile me, run this in R:

    library(knitr)
    knit('001-minimal.Rmd')

See [output here](https://github.com/yihui/knitr-examples/blob/master/001-minimal.md).

## code chunks

A _paragraph_ here. A code chunk below (remember the three backticks):


```r
library(histry)
1+2
```

```
## [1] 3
```

```r
.4-.7+.3 # what? it is not zero!
```

```
## [1] 5.551115e-17
```

## graphics

It is easy.


```r
plot(1:10)
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2-1.png)

```r
hist(rnorm(1010))
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2-2.png)

## inline code

Yes I know the value of pi is 3.1415927, and 2 times pi is 6.2831853.

## math

Sigh. You cannot live without math equations. OK, here we go: $\alpha+\beta=\gamma$. Note this is not supported by native markdown. You probably want to try RStudio, or at least the R package **markdown**, or the function `knitr::knit2html()`.

## nested code chunks

You can write code within other elements, e.g. a list

1. foo is good
    
    ```r
    strsplit('hello indented world', ' ')[[1]]
    ```
    
    ```
    ## [1] "hello"    "indented" "world"
    ```
2. bar is better

Or inside blockquotes:

> Here is a quote, followed by a code chunk:
>
> 
> ```r
> x = 1:10
> rev(x^2)
> ```
> 
> ```
> ##  [1] 100  81  64  49  36  25  16   9   4   1
> ```

## conclusion



```r
if(exists("histropts"))
	histropts$history$exprs
```

```
## [[1]]
## [1] "library(histry)"
## 
## [[2]]
## [1] "1 + 2"
## 
## [[3]]
## [1] "0.4 - 0.7 + 0.3"
## 
## [[4]]
## [1] "plot(1:10)"
## 
## [[5]]
## [1] "hist(rnorm(1010))"
## 
## [[6]]
## [1] "strsplit(\"hello indented world\", \" \")[[1]]"
## 
## [[7]]
## [1] "x = 1:10"
## 
## [[8]]
## [1] "rev(x^2)"
```
