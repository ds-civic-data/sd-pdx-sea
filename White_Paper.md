WhitePaper
================

    ## ── Attaching packages ───────────────────────────────────────────── tidyverse 1.2.1 ──

    ## ✔ ggplot2 2.2.1     ✔ purrr   0.2.4
    ## ✔ tibble  1.4.2     ✔ dplyr   0.7.4
    ## ✔ tidyr   0.8.0     ✔ stringr 1.2.0
    ## ✔ readr   1.1.1     ✔ forcats 0.3.0

    ## ── Conflicts ──────────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

Abstract
========

Portland, as countless articles will tell you, has been in the past decade experiencing large amounts of population growth. Migration to and from portland is bound to have economic and cultural effects on the city and its residents. Aditionally, it is worth wondering where people are migrating from and what their characteristics are. Our paper is essentially broken down into three components that relate to residential change in Portland. First, we describe migration, with a focus on migration from the Bay Area and Puget Sound/Seattle Area. Second we dicuss economic disparity in the Portland area, and what factors may play a role in that disparity. Third, we dicuss housing prices and changes in housing prices over the last decade in Portland. It seems that there is a high likelihood that these three components are related. We will attempt to show how they may be related.

Migration Over Time
===================

This project has focused primarily on the storyline of the migration of people from the Bay Area and Seattle to Portland. We have found, using IRS data, that the largest sources of migration across time to Portland com from these areas as well as the states of California and Washington. Our data tells us about county to county migration. We can observe the largest contributors over time by viewing the Sankey plot shown below.

    ## Parsed with column specification:
    ## cols(
    ##   X1 = col_integer(),
    ##   origin = col_character(),
    ##   destinations = col_character(),
    ##   tax_year = col_character(),
    ##   n = col_integer(),
    ##   year = col_integer(),
    ##   total = col_integer(),
    ##   prop = col_double()
    ## )

    ## Parsed with column specification:
    ## cols(
    ##   X1 = col_integer(),
    ##   X1_1 = col_integer(),
    ##   origin_area = col_character(),
    ##   dest_area = col_character(),
    ##   year = col_integer(),
    ##   n = col_integer()
    ## )

    ## Parsed with column specification:
    ## cols(
    ##   X1 = col_integer(),
    ##   origin = col_character(),
    ##   destinations = col_character(),
    ##   year = col_integer(),
    ##   n = col_integer()
    ## )

``` r
riverplot(migriver, add_mid_points = FALSE
        ,default_style = styles0, srt = 0, xscale = 1, nodewidth = 1.7)
```

![](White_Paper_files/figure-markdown_github/1.2-1.png)

    ## --------------
    ## Default style:
    ## -----------
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## --------------
    ## [1] "checking edges"
    ## Updated styles:
    ## $AZ_1
    ## $col
    ## [1] "goldenrod1"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $bay_area_1
    ## $col
    ## [1] "lightpink3"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $CA_1
    ## $col
    ## [1] "chocolate"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $LA_1
    ## $col
    ## [1] "hotpink4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $puget_sound_area_1
    ## $col
    ## [1] "mediumpurple4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $pdx_1
    ## $col
    ## [1] "skyblue4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $WA_1
    ## $col
    ## [1] "salmon4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $AZ_2
    ## $col
    ## [1] "goldenrod1"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $bay_area_2
    ## $col
    ## [1] "lightpink3"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $CA_2
    ## $col
    ## [1] "chocolate"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $LA_2
    ## $col
    ## [1] "hotpink4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $puget_sound_area_2
    ## $col
    ## [1] "mediumpurple4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $pdx_2
    ## $col
    ## [1] "skyblue4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $WA_2
    ## $col
    ## [1] "salmon4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $AZ_3
    ## $col
    ## [1] "goldenrod1"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $bay_area_3
    ## $col
    ## [1] "lightpink3"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $CA_3
    ## $col
    ## [1] "chocolate"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $LA_3
    ## $col
    ## [1] "hotpink4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $puget_sound_area_3
    ## $col
    ## [1] "mediumpurple4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $pdx_3
    ## $col
    ## [1] "skyblue4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $WA_3
    ## $col
    ## [1] "salmon4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $AZ_4
    ## $col
    ## [1] "goldenrod1"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $bay_area_4
    ## $col
    ## [1] "lightpink3"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $CA_4
    ## $col
    ## [1] "chocolate"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $LA_4
    ## $col
    ## [1] "hotpink4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $puget_sound_area_4
    ## $col
    ## [1] "mediumpurple4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $pdx_4
    ## $col
    ## [1] "skyblue4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $WA_4
    ## $col
    ## [1] "salmon4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $AZ_5
    ## $col
    ## [1] "goldenrod1"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $bay_area_5
    ## $col
    ## [1] "lightpink3"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $CA_5
    ## $col
    ## [1] "chocolate"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $LA_5
    ## $col
    ## [1] "hotpink4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $puget_sound_area_5
    ## $col
    ## [1] "mediumpurple4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $pdx_5
    ## $col
    ## [1] "skyblue4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $WA_5
    ## $col
    ## [1] "salmon4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $AZ_6
    ## $col
    ## [1] "goldenrod1"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $bay_area_6
    ## $col
    ## [1] "lightpink3"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $CA_6
    ## $col
    ## [1] "chocolate"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $LA_6
    ## $col
    ## [1] "hotpink4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $puget_sound_area_6
    ## $col
    ## [1] "mediumpurple4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $pdx_6
    ## $col
    ## [1] "skyblue4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $WA_6
    ## $col
    ## [1] "salmon4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $AZ_7
    ## $col
    ## [1] "goldenrod1"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $bay_area_7
    ## $col
    ## [1] "lightpink3"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $CA_7
    ## $col
    ## [1] "chocolate"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $LA_7
    ## $col
    ## [1] "hotpink4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $puget_sound_area_7
    ## $col
    ## [1] "mediumpurple4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $pdx_7
    ## $col
    ## [1] "skyblue4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $WA_7
    ## $col
    ## [1] "salmon4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $AZ_8
    ## $col
    ## [1] "goldenrod1"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $bay_area_8
    ## $col
    ## [1] "lightpink3"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $CA_8
    ## $col
    ## [1] "chocolate"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $LA_8
    ## $col
    ## [1] "hotpink4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $puget_sound_area_8
    ## $col
    ## [1] "mediumpurple4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $pdx_8
    ## $col
    ## [1] "skyblue4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $WA_8
    ## $col
    ## [1] "salmon4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $bay_area_9
    ## $col
    ## [1] "lightpink3"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $puget_sound_area_9
    ## $col
    ## [1] "mediumpurple4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $pdx_9
    ## $col
    ## [1] "skyblue4"
    ## 
    ## $lty
    ## [1] 5
    ## 
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`1`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`2`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`3`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`4`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`5`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`6`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`7`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`8`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`9`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`10`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`11`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`12`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`13`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`14`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`15`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`16`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`17`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`18`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`19`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`20`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`21`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`22`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`23`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`24`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`25`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`26`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`27`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`28`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`29`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`30`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`31`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`32`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`33`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`34`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`35`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`36`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`37`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`38`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`39`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`40`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`41`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`42`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`43`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`44`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`45`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`46`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`47`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`48`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`49`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`50`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`51`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`52`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`53`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`54`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`55`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`56`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`57`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`58`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`59`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`60`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`61`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`62`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`63`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`64`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`65`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`66`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`67`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`68`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`69`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`70`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`71`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`72`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`73`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`74`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`75`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`76`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`77`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`78`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_7
    ## $bay_area_7$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_7
    ## $CA_7$col
    ## [1] "chocolate"
    ## 
    ## $CA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_7
    ## $LA_7$col
    ## [1] "hotpink4"
    ## 
    ## $LA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_7
    ## $puget_sound_area_7$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_7$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_7
    ## $pdx_7$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_7$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_7
    ## $WA_7$col
    ## [1] "salmon4"
    ## 
    ## $WA_7$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_8
    ## $AZ_8$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_8
    ## $bay_area_8$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_8
    ## $CA_8$col
    ## [1] "chocolate"
    ## 
    ## $CA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_8
    ## $LA_8$col
    ## [1] "hotpink4"
    ## 
    ## $LA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_8
    ## $puget_sound_area_8$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_8$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_8
    ## $pdx_8$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_8$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_8
    ## $WA_8$col
    ## [1] "salmon4"
    ## 
    ## $WA_8$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_9
    ## $bay_area_9$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_9
    ## $puget_sound_area_9$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_9$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_9
    ## $pdx_9$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_9$lty
    ## [1] 5
    ## 
    ## 
    ## attr(,"class")
    ## [1] "list"           "riverplotStyle"
    ## 
    ## $`79`
    ## $srt
    ## [1] 0
    ## 
    ## $AZ_1
    ## $AZ_1$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_1$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_1
    ## $bay_area_1$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_1
    ## $CA_1$col
    ## [1] "chocolate"
    ## 
    ## $CA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_1
    ## $LA_1$col
    ## [1] "hotpink4"
    ## 
    ## $LA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_1
    ## $puget_sound_area_1$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_1$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_1
    ## $pdx_1$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_1$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_1
    ## $WA_1$col
    ## [1] "salmon4"
    ## 
    ## $WA_1$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_2
    ## $AZ_2$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_2$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_2
    ## $bay_area_2$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_2
    ## $CA_2$col
    ## [1] "chocolate"
    ## 
    ## $CA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_2
    ## $LA_2$col
    ## [1] "hotpink4"
    ## 
    ## $LA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_2
    ## $puget_sound_area_2$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_2$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_2
    ## $pdx_2$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_2$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_2
    ## $WA_2$col
    ## [1] "salmon4"
    ## 
    ## $WA_2$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_3
    ## $AZ_3$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_3$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_3
    ## $bay_area_3$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_3
    ## $CA_3$col
    ## [1] "chocolate"
    ## 
    ## $CA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_3
    ## $LA_3$col
    ## [1] "hotpink4"
    ## 
    ## $LA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_3
    ## $puget_sound_area_3$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_3$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_3
    ## $pdx_3$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_3$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_3
    ## $WA_3$col
    ## [1] "salmon4"
    ## 
    ## $WA_3$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_4
    ## $AZ_4$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_4$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_4
    ## $bay_area_4$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_4
    ## $CA_4$col
    ## [1] "chocolate"
    ## 
    ## $CA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_4
    ## $LA_4$col
    ## [1] "hotpink4"
    ## 
    ## $LA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_4
    ## $puget_sound_area_4$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_4$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_4
    ## $pdx_4$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_4$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_4
    ## $WA_4$col
    ## [1] "salmon4"
    ## 
    ## $WA_4$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_5
    ## $AZ_5$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_5$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_5
    ## $bay_area_5$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_5
    ## $CA_5$col
    ## [1] "chocolate"
    ## 
    ## $CA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_5
    ## $LA_5$col
    ## [1] "hotpink4"
    ## 
    ## $LA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_5
    ## $puget_sound_area_5$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_5$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_5
    ## $pdx_5$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_5$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_5
    ## $WA_5$col
    ## [1] "salmon4"
    ## 
    ## $WA_5$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_6
    ## $AZ_6$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_6$lty
    ## [1] 5
    ## 
    ## 
    ## $bay_area_6
    ## $bay_area_6$col
    ## [1] "lightpink3"
    ## 
    ## $bay_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $CA_6
    ## $CA_6$col
    ## [1] "chocolate"
    ## 
    ## $CA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $LA_6
    ## $LA_6$col
    ## [1] "hotpink4"
    ## 
    ## $LA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $puget_sound_area_6
    ## $puget_sound_area_6$col
    ## [1] "mediumpurple4"
    ## 
    ## $puget_sound_area_6$lty
    ## [1] 5
    ## 
    ## 
    ## $pdx_6
    ## $pdx_6$col
    ## [1] "skyblue4"
    ## 
    ## $pdx_6$lty
    ## [1] 5
    ## 
    ## 
    ## $WA_6
    ## $WA_6$col
    ## [1] "salmon4"
    ## 
    ## $WA_6$lty
    ## [1] 5
    ## 
    ## 
    ## $AZ_7
    ## $AZ_7$col
    ## [1] "goldenrod1"
    ## 
    ## $AZ_7$lty

