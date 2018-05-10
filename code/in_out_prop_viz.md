Migration Conditional Probability
================
Lucas Williams
May 5, 2018

``` r
library(tidyverse)
```

    ## -- Attaching packages --------------------------------------------------------------------- tidyverse 1.2.1 --

    ## v ggplot2 2.2.1     v purrr   0.2.4
    ## v tibble  1.4.2     v dplyr   0.7.4
    ## v tidyr   0.7.2     v stringr 1.2.0
    ## v readr   1.1.1     v forcats 0.3.0

    ## -- Conflicts ------------------------------------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
outflow <- read_csv("C:\\Users\\Godot\\Documents\\sd-pdx-sea\\Raw Data\\migration_data\\outflow.csv")
```

    ## Warning: Missing column names filled in: 'X1' [1]

    ## Parsed with column specification:
    ## cols(
    ##   X1 = col_integer(),
    ##   origin_area = col_character(),
    ##   dest_area = col_character(),
    ##   year = col_character(),
    ##   n = col_integer()
    ## )

``` r
inflow <- read_csv("C:\\Users\\Godot\\Documents\\sd-pdx-sea\\Raw Data\\migration_data\\area_area_inflow.csv")
```

    ## Warning: Missing column names filled in: 'X1' [1]

    ## Parsed with column specification:
    ## cols(
    ##   X1 = col_integer(),
    ##   origin = col_character(),
    ##   year = col_character(),
    ##   n = col_integer()
    ## )

``` r
year_makr <- function(df) {
  nudf <- df %>%
    mutate(cal_year = ifelse(year=="1516", 2015, 
                       ifelse(year=="1415", 2014,
                              ifelse(year=="1314", 2013,
                                     ifelse(year=="1213", 2012,
                                            ifelse(year=="1112", 2011,
                                                   ifelse(year=="1011", 2010,
                                                          ifelse(year=="0910", 2009,
                                                                 ifelse(year=="0809", 2008, "else"))))))))) 
  return(nudf)
}  
```

``` r
outflow_df <- outflow %>%
  na.omit() %>%
  group_by(origin_area, year) %>%
  mutate(total_outflow = sum(n)) %>%
  ungroup() %>%
  mutate(prop=n/total_outflow) %>%
  filter(dest_area=="pdx") %>%
  year_makr() %>%
  mutate(cal_year = as.numeric(cal_year)) %>%
  mutate(origin_area=ifelse(origin_area=="bay_area", "Leaving SF for PDX", "Leaving SEA for PDX"))

inflow_df <- inflow %>%
  na.omit() %>%
  year_makr() %>%
  mutate(cal_year = as.numeric(cal_year)) %>%
  group_by(year) %>%
  mutate(total_inflow = sum(n)) %>%
  ungroup() %>%
  mutate(prop = n/total_inflow) %>%
  filter(origin %in% c("bay_area", "puget_sound")) %>%
  mutate(origin = ifelse(origin=="bay_area", "Entering PDX from SF", "Entering PDX from SEA"))
```

``` r
ggplot() +
  geom_smooth(data=outflow_df, aes(x=cal_year, y=prop, col=origin_area), se = F) +
  geom_smooth(data=inflow_df, aes(x=cal_year, y=prop, col=origin), se=F) +
  labs(x="Year",
       y="Proportion",
       title="Outflow from SF and Seattle into PDX & Inflow into PDX from SF and Seattle",
       colour="Migration Pattern")
```

    ## `geom_smooth()` using method = 'loess'
    ## `geom_smooth()` using method = 'loess'

![](in_out_prop_viz_files/figure-markdown_github/unnamed-chunk-5-1.png)
