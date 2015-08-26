<!-- README.md is generated from README.Rmd. Please edit that file -->
detector
========

[![Build Status](https://travis-ci.org/paulhendricks/detector.png?branch=master)](https://travis-ci.org/paulhendricks/detector) [![Build status](https://ci.appveyor.com/api/projects/status/gu5ggnr1i2muw5r3/branch/master?svg=true)](https://ci.appveyor.com/project/paulhendricks/detector/branch/master) [![codecov.io](http://codecov.io/github/paulhendricks/detector/coverage.svg?branch=master)](http://codecov.io/github/paulhendricks/detector?branch=master) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/detector)](http://cran.r-project.org/package=detector) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/detector)](http://cran.rstudio.com/package=detector) [![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)

`detector` makes detecting data containing Personally Identifiable Information quick, easy, and scalable. It provides high-level functions that can take vectors and data.frames and return important summary statistics in a convenient data.frame. Once complete, `detector` will be able to detect the following types of PII:

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

State of the Union
------------------

### Complete!

-   E-mail address
-   Telephone number

### Needs more work...

-   National identification number
-   Credit card number

### Haven't even started :(

-   Full name
-   Date of birth
-   Home address
-   IP address
-   Vehicle registration plate number
-   Driver's license number
-   Birthplace
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
#> [1] "Vina McCullough"  "Allen Altenwerth" "Teddy Dibbert"   
#> [4] "Vella Hickle"     "Tommie Will"
```

### Home address

``` r
# To be added
```

### Email address

``` r
r_email_addresses(5)
#> [1] "lycnf@ch.zdv"           "fdwphzqrvb@sznxiek.dfb"
#> [3] "ozdprjfi@ychzqpjgk.twg" "xyr@fl.ozi"            
#> [5] "kpstj@bxk.xhk"
```

### National identification number

``` r
r_national_identification_numbers(5)
#> [1] "993-83-6350" "962-63-3630" "977-17-9740" "665-13-9402" "740-92-8287"
```

### Passport number

``` r
# To be added
```

### IP address

``` r
r_ipv4_addresses(5)
#> [1] "37.50.236.127"   "98.207.202.224"  "20.111.43.96"    "135.127.206.183"
#> [5] "185.188.108.36"
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
#> [1] "1961-11-29" "1939-11-14" "1969-08-30" "1966-07-18" "1997-06-24"
```

### Birth place

``` r
# To be added
```

### Telephone number

``` r
r_phone_numbers(5)
#> [1] "4954267164" "6747642153" "2847538794" "7417597219" "2869244598"
r_phone_numbers(5, use_hyphens = TRUE)
#> [1] "597-689-6932" "859-136-1983" "243-279-6251" "437-415-6894"
#> [5] "542-812-1236"
r_phone_numbers(5, use_hyphens = TRUE, use_parentheses = TRUE)
#> [1] "(975)-896-2918" "(594)-982-3428" "(795)-493-8762" "(532)-124-1837"
#> [5] "(927)-219-6481"
r_phone_numbers(5, use_spaces = TRUE, use_parentheses = TRUE)
#> [1] "(275) 253 2573" "(536) 798 3981" "(352) 152 8759" "(625) 618 1572"
#> [5] "(937) 721 4598"
```

### Latitude and longitude

``` r
paste0(r_latitudes(5), ", ", r_longitudes(5))
#> [1] "-44.9766171723604, -139.395375642926"
#> [2] "87.7084461785853, -162.919728532434" 
#> [3] "10.4892638325691, -173.305471837521" 
#> [4] "70.7030830672011, -159.101521018893" 
#> [5] "-62.2944462765008, 78.6378676537424"
```
