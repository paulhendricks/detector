<!-- README.md is generated from README.Rmd. Please edit that file -->
detector
========

[![Build Status](https://travis-ci.org/paulhendricks/detector.png?branch=master)](https://travis-ci.org/paulhendricks/detector) [![Build status](https://ci.appveyor.com/api/projects/status/gu5ggnr1i2muw5r3/branch/master?svg=true)](https://ci.appveyor.com/project/paulhendricks/detector/branch/master) [![codecov.io](http://codecov.io/github/paulhendricks/detector/coverage.svg?branch=master)](http://codecov.io/github/paulhendricks/detector?branch=master) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/detector)](http://cran.r-project.org/package=detector) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/detector)](http://cran.rstudio.com/package=detector) [![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)

`detector` detects data containing Personally Identifiable Information. Once complete, `detector` will be able to detect the following types of PII:

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
#> [1] "Hank Schuster"          "Christopher McLaughlin"
#> [3] "Pablo Dietrich"         "Kory Cartwright"       
#> [5] "Paris Herman"
```

### Home address

``` r
# To be added
```

### Email address

``` r
r_email_addresses(5)
#> [1] "tdro@ury.tzd"             "sfyjk@dh.lwj"            
#> [3] "r@jr.xbn"                 "coqevzfbum@rxs.cqi"      
#> [5] "gwjlokite@gmdrnbxtwk.jbh"
```

### National identification number

``` r
r_national_identification_numbers(5)
#> [1] "771-72-3977" "455-62-9351" "839-27-2363" "556-21-9498" "353-34-9258"
```

### Passport number

``` r
# To be added
```

### IP address

``` r
r_ipv4_addresses(5)
#> [1] "203.110.166.205" "121.119.203.26"  "174.44.163.63"   "138.15.60.27"   
#> [5] "223.182.38.106"
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
#> [1] "1975-11-19" "1932-12-20" "1916-07-07" "1961-06-08" "1996-03-11"
```

### Birth place

``` r
# To be added
```

### Telephone number

``` r
r_phone_numbers(5)
#> [1] "5488613597" "7826874738" "8538621825" "8249481364" "5377132681"
r_phone_numbers(5, use_hyphens = TRUE)
#> [1] "597-675-1637" "587-127-4798" "426-521-8671" "769-926-9258"
#> [5] "634-682-7259"
r_phone_numbers(5, use_hyphens = TRUE, use_parentheses = TRUE)
#> [1] "(934)-743-6982" "(137)-843-7168" "(682)-358-6372" "(721)-128-9751"
#> [5] "(321)-267-2538"
r_phone_numbers(5, use_spaces = TRUE, use_parentheses = TRUE)
#> [1] "(573) 537 7859" "(417) 542 7632" "(536) 482 1458" "(961) 532 1679"
#> [5] "(425) 764 7239"
```

### Latitude and longitude

``` r
paste0(r_latitudes(5), ", ", r_longitudes(5))
#> [1] "-59.7058214200661, -41.9136194698513"
#> [2] "-23.6809349711984, -103.932275734842"
#> [3] "4.49493970256299, 106.133092185482"  
#> [4] "-19.7637852095068, -124.97579164803" 
#> [5] "50.270229158923, 137.946051545441"
```
