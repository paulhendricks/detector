<!-- README.md is generated from README.Rmd. Please edit that file -->
detector
========

[![Build Status](https://travis-ci.org/paulhendricks/detector.png?branch=master)](https://travis-ci.org/paulhendricks/detector) [![Build status](https://ci.appveyor.com/api/projects/status/gu5ggnr1i2muw5r3/branch/master?svg=true)](https://ci.appveyor.com/project/paulhendricks/detector/branch/master) [![codecov.io](http://codecov.io/github/paulhendricks/detector/coverage.svg?branch=master)](http://codecov.io/github/paulhendricks/detector?branch=master) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/detector)](http://cran.r-project.org/package=detector) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/detector)](http://cran.rstudio.com/package=detector) [![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)

`detector` makes detecting data containing [Personally Identifiable Information](https://en.wikipedia.org/wiki/Personally_identifiable_information) (PII) quick, easy, and scalable. It provides high-level functions that can take vectors and data.frames and return important summary statistics in a convenient data.frame. Once complete, `detector` will be able to detect the following types of PII:

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
-   National identification number

### Needs more work...

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

### Generate data containing fake PII

``` r
library(dplyr, warn.conflicts = FALSE)
library(generator)
n <- 6
ashley_madison <- 
  data.frame(name = r_full_names(n), 
             email = r_email_addresses(n), 
             phone_number = r_phone_numbers(n, use_hyphens = TRUE, 
                                            use_spaces = TRUE), 
             stringsAsFactors = FALSE)
ashley_madison %>% 
  knitr::kable(format = "markdown")
```

| name            | email                  | phone\_number  |
|:----------------|:-----------------------|:---------------|
| Weston Monahan  | <mbpwjdclng@x.mvf>     | 728- 458- 4231 |
| Elliott Toy     | <yisa@l.dft>           | 539- 478- 3965 |
| Brunilda Graham | <snfqx@fwo.hsl>        | 348- 316- 5327 |
| Rutha Ruecker   | <dcaujgst@jqfgbh.voi>  | 274- 187- 3718 |
| Glendora Jast   | <sea@dnjutc.mcn>       | 748- 485- 9524 |
| in Rolfson      | <mqvzc@gtbhofzwus.yfg> | 327- 139- 3451 |

### Detect data containing PII

``` r
library(detector)
ashley_madison %>% 
  detect %>% 
  knitr::kable(format = "markdown")
```

| column\_name  | has\_email\_addresses | has\_phone\_numbers | has\_national\_identification\_numbers |
|:--------------|:----------------------|:--------------------|:---------------------------------------|
| name          | FALSE                 | FALSE               | FALSE                                  |
| email         | TRUE                  | FALSE               | FALSE                                  |
| phone\_number | FALSE                 | TRUE                | FALSE                                  |
