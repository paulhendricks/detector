<!-- README.md is generated from README.Rmd. Please edit that file -->
detector
========

[![Build Status](https://travis-ci.org/paulhendricks/detector.png?branch=master)](https://travis-ci.org/paulhendricks/detector) [![Build status](https://ci.appveyor.com/api/projects/status/au9ww7v8mhgr59s8/branch/master?svg=true)](https://ci.appveyor.com/project/paulhendricks/detector/branch/master) [![codecov.io](http://codecov.io/github/paulhendricks/detector/coverage.svg?branch=master)](http://codecov.io/github/paulhendricks/detector?branch=master) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/detector)](http://cran.r-project.org/package=detector) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/detector)](http://cran.rstudio.com/package=detector) [![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)

`detector` detects data containing Personally Identifiable Information. `detector` detects the following types of PII:

-   Full name
-   Home address
-   E-mail address
-   National identification number
-   Passport number
-   Social Security number
-   IP address
-   Vehicle registration plate number
-   Driver's license number
-   Credit card number
-   Date of birth
-   Birthplace
-   Telephone number
-   Latitude and longtiude

Installation
------------

You can install:

-   the latest released version from CRAN with

    ``` r
    install.packages("detector")
    ```

-   the latest development version from github with

    ``` r
    if (packageVersion("devtools") < 1.6) {
      install.packages("devtools")
    }
    devtools::install_github("paulhendricks/detector")
    ```

If you encounter a clear bug, please file a minimal reproducible example on [github](https://github.com/paulhendricks/detector/issues).

API
---

### Full Name

``` r
library(generator)
library(detector)
r_full_names(5)
#> [1] "Rosio Will"      "Matt Greenholt"  "Randolph Raynor" "Logan O'Keefe"  
#> [5] "Wilburn Pagac"
```

### Home address

``` r
# To be added
```

### Email address

``` r
r_email_addresses(5)
#> [1] "oueyqpbij@wzmdjtae.oik"    "kiuxhatqwv@wsjqolavdf.nxv"
#> [3] "u@elowjafsn.frz"           "aslmn@kdt.hpw"            
#> [5] "oxuisg@hcql.yzj"
```

### National identification number

``` r
r_national_identification_numbers(5)
#> [1] "278-23-9532" "663-74-1177" "215-31-4452" "728-67-8637" "534-74-5947"
```

### Passport number

``` r
# To be added
```

### IP address

``` r
r_ipv4_addresses(5)
#> [1] "49.128.93.145"  "243.20.153.215" "228.25.249.117" "2.194.131.114" 
#> [5] "140.29.174.164"
```

### Vehicle registration plate number

``` r
# To be added
```

### Driver's license number

``` r
# To be added
```

### Credit card number

``` r
# To be added
```

### Date of birth

``` r
r_date_of_births(5)
#> [1] "1930-03-08" "2011-02-01" "1970-04-03" "2015-07-18" "2000-08-25"
```

### Birth place

``` r
# To be added
```

### Telephone number

``` r
r_phone_numbers(5)
#> [1] "2565495714" "5241938513" "7388938762" "2739285286" "9437698295"
r_phone_numbers(5, use_hyphens = TRUE)
#> [1] "138-275-5648" "951-637-7935" "784-459-6438" "561-817-5273"
#> [5] "951-469-8153"
r_phone_numbers(5, use_hyphens = TRUE, use_parentheses = TRUE)
#> [1] "(483)-345-7584" "(254)-536-5291" "(387)-584-2819" "(643)-574-1357"
#> [5] "(257)-397-2934"
r_phone_numbers(5, use_spaces = TRUE, use_parentheses = TRUE)
#> [1] "(235) 453 1437" "(813) 365 6218" "(958) 895 3148" "(584) 357 7964"
#> [5] "(623) 871 4862"
```

### Latitude and longitude

``` r
paste0(r_latitudes(5), ", ", r_longitudes(5))
#> [1] "43.5230126464739, -142.824586909264" 
#> [2] "87.9592396784574, 168.618196584284"  
#> [3] "-12.1894246805459, -130.894835684448"
#> [4] "-88.1867850478739, -24.756238264963" 
#> [5] "-37.0497750677168, -51.3319828547537"
```
