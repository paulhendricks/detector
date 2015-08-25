<!-- README.md is generated from README.Rmd. Please edit that file -->
detector
========

[![Build Status](https://travis-ci.org/paulhendricks/detector.png?branch=master)](https://travis-ci.org/paulhendricks/detector) [![Build status](https://ci.appveyor.com/api/projects/status/gu5ggnr1i2muw5r3/branch/master?svg=true)](https://ci.appveyor.com/project/paulhendricks/detector/branch/master) [![codecov.io](http://codecov.io/github/paulhendricks/detector/coverage.svg?branch=master)](http://codecov.io/github/paulhendricks/detector?branch=master) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/detector)](http://cran.r-project.org/package=detector) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/detector)](http://cran.rstudio.com/package=detector) [![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)

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
#> [1] "Karmen Bednar"   "Spencer Frami"   "Denice O'Reilly" "Margie Larson"  
#> [5] "Krystle Mills"
```

### Home address

``` r
# To be added
```

### Email address

``` r
r_email_addresses(5)
#> [1] "jehaodygp@y.nkc"      "xlf@ioxnhgmj.tjf"     "zpbrangdxe@dy.cbo"   
#> [4] "jyupabi@pk.igm"       "pgoqm@gqhfimdjtc.rkv"
```

### National identification number

``` r
r_national_identification_numbers(5)
#> [1] "128-69-2982" "152-73-5421" "475-13-1574" "534-52-9322" "195-41-8348"
```

### Passport number

``` r
# To be added
```

### IP address

``` r
r_ipv4_addresses(5)
#> [1] "39.49.42.17"   "89.85.189.11"  "126.105.4.89"  "108.126.135.4"
#> [5] "87.121.25.250"
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
#> [1] "1970-11-16" "1985-02-18" "1996-02-27" "1943-04-01" "1994-09-18"
```

### Birth place

``` r
# To be added
```

### Telephone number

``` r
r_phone_numbers(5)
#> [1] "1431851896" "2575416724" "9568911359" "8736923984" "2487468652"
r_phone_numbers(5, use_hyphens = TRUE)
#> [1] "352-325-6941" "692-349-6147" "216-465-4985" "634-159-9518"
#> [5] "487-651-9247"
r_phone_numbers(5, use_hyphens = TRUE, use_parentheses = TRUE)
#> [1] "(372)-183-9215" "(762)-257-8324" "(386)-576-4317" "(267)-791-2983"
#> [5] "(617)-873-4125"
r_phone_numbers(5, use_spaces = TRUE, use_parentheses = TRUE)
#> [1] "(634) 236 1497" "(413) 297 2671" "(168) 967 2367" "(158) 816 5791"
#> [5] "(537) 842 6935"
```

### Latitude and longitude

``` r
paste0(r_latitudes(5), ", ", r_longitudes(5))
#> [1] "-73.067482416518, -104.314013170078"
#> [2] "88.9137310814112, -15.8717418462038"
#> [3] "56.5625602053478, -148.709579715505"
#> [4] "86.3537995750085, -47.805242696777" 
#> [5] "15.0920796766877, -24.3693446181715"
```
