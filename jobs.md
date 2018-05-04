Occupation
================
Lucas Williams
May 2, 2018

``` r
library(tidyverse)
```

    ## -- Attaching packages -------------------------------------------------- tidyverse 1.2.1 --

    ## v ggplot2 2.2.1     v purrr   0.2.4
    ## v tibble  1.4.2     v dplyr   0.7.4
    ## v tidyr   0.7.2     v stringr 1.2.0
    ## v readr   1.1.1     v forcats 0.3.0

    ## -- Conflicts ----------------------------------------------------- tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
library(data.table)
```

    ## Warning: package 'data.table' was built under R version 3.4.4

    ## 
    ## Attaching package: 'data.table'

    ## The following objects are masked from 'package:dplyr':
    ## 
    ##     between, first, last

    ## The following object is masked from 'package:purrr':
    ## 
    ##     transpose

``` r
#pdx occupation imports
occ_16 <- read.csv("C:\\Users\\Godot\\Downloads\\aff_download (5)\\ACS_16_1YR_B24010_with_ann.csv")
occ_16_meta <- read.csv("C:\\Users\\Godot\\Downloads\\aff_download (5)\\ACS_16_1YR_B24010_metadata.csv")
occ_15 <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_15_1YR_B24010 (1)\\ACS_15_1YR_B24010.csv")
occ_15_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_15_1YR_B24010 (1)\\ACS_15_1YR_B24010_metadata.csv")
occ_14 <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_14_1YR_B24010\\ACS_14_1YR_B24010.csv")
occ_14_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_14_1YR_B24010\\ACS_14_1YR_B24010_metadata.csv")
occ_13 <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_13_1YR_B24010\\ACS_13_1YR_B24010.csv")
occ_13_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_13_1YR_B24010\\ACS_13_1YR_B24010_metadata.csv")
occ_12 <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_12_1YR_B24010\\ACS_12_1YR_B24010.csv")
occ_12_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_12_1YR_B24010\\ACS_12_1YR_B24010_metadata.csv")
occ_11 <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_11_1YR_B24010\\ACS_11_1YR_B24010.csv")
occ_11_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_11_1YR_B24010\\ACS_11_1YR_B24010_metadata.csv")
occ_10 <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_10_1YR_B24010\\ACS_10_1YR_B24010.csv")
occ_10_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_10_1YR_B24010\\ACS_10_1YR_B24010_metadata.csv")
occ_09 <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_09_1YR_B24010\\ACS_09_1YR_B24010.csv")
occ_09_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_09_1YR_B24010\\ACS_09_1YR_B24010_metadata.csv")
occ_08 <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_08_1YR_B24010\\ACS_08_1YR_B24010.csv")
occ_08_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_08_1YR_B24010\\ACS_08_1YR_B24010_metadata.csv")
occ_07 <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_07_1YR_B24010\\ACS_07_1YR_B24010.csv")
occ_07_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_07_1YR_B24010\\ACS_07_1YR_B24010_metadata.csv")
occ_06 <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_06_EST_B24010\\ACS_06_EST_B24010.csv")
occ_06_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_06_EST_B24010\\ACS_06_EST_B24010_metadata.csv")
```

``` r
#bay area occupation imports
occ_16_sf <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_16_1YR_B24010\\ACS_16_1YR_B24010.csv")
occ_16_sf_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_16_1YR_B24010\\ACS_16_1YR_B24010_metadata.csv")
occ_15_sf <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_15_1YR_B24010 (2)\\ACS_15_1YR_B24010_with_ann.csv")
occ_15_sf_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_15_1YR_B24010 (2)\\ACS_15_1YR_B24010_metadata.csv")
occ_14_sf <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_14_1YR_B24010 (1)\\ACS_14_1YR_B24010_with_ann.csv")
occ_14_sf_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_14_1YR_B24010 (1)\\ACS_14_1YR_B24010_metadata.csv")
occ_13_sf <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_13_1YR_B24010 (1)\\ACS_13_1YR_B24010_with_ann.csv")
occ_13_sf_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_13_1YR_B24010 (1)\\ACS_13_1YR_B24010_metadata.csv")
occ_12_sf <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_12_1YR_B24010 (1)\\ACS_12_1YR_B24010_with_ann.csv")
occ_12_sf_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_12_1YR_B24010 (1)\\ACS_12_1YR_B24010_metadata.csv")
occ_11_sf <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_11_1YR_B24010 (1)\\ACS_11_1YR_B24010_with_ann.csv")
occ_11_sf_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_11_1YR_B24010 (1)\\ACS_11_1YR_B24010_metadata.csv")
occ_10_sf <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_10_1YR_B24010 (1)\\ACS_10_1YR_B24010_with_ann.csv")
occ_10_sf_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_10_1YR_B24010 (1)\\ACS_10_1YR_B24010_metadata.csv")
occ_09_sf <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_09_1YR_B24010 (1)\\ACS_09_1YR_B24010_with_ann.csv")
occ_09_sf_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_09_1YR_B24010 (1)\\ACS_09_1YR_B24010_metadata.csv")
occ_08_sf <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_08_1YR_B24010 (1)\\ACS_08_1YR_B24010_with_ann.csv")
occ_08_sf_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_08_1YR_B24010 (1)\\ACS_08_1YR_B24010_metadata.csv")
occ_07_sf <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_07_1YR_B24010 (1)\\ACS_07_1YR_B24010_with_ann.csv")
occ_07_sf_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_07_1YR_B24010 (1)\\ACS_07_1YR_B24010_metadata.csv")
occ_06_sf <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_06_EST_B24010 (1)\\ACS_06_EST_B24010_with_ann.csv")
occ_06_sf_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_06_EST_B24010 (1)\\ACS_06_EST_B24010_metadata.csv")
```

``` r
#puget sound area occupation imports
occ_16_sea <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_16_1YR_B24010 (1)\\ACS_16_1YR_B24010_with_ann.csv")
occ_16_sea_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_16_1YR_B24010 (1)\\ACS_16_1YR_B24010_metadata.csv")
occ_15_sea <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_15_1YR_B24010 (3)\\ACS_15_1YR_B24010_with_ann.csv")
occ_15_sea_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_15_1YR_B24010 (3)\\ACS_15_1YR_B24010_metadata.csv")
occ_14_sea <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_14_1YR_B24010 (2)\\ACS_14_1YR_B24010_with_ann.csv")
occ_14_sea_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_14_1YR_B24010 (2)\\ACS_14_1YR_B24010_metadata.csv")
occ_13_sea <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_13_1YR_B24010 (2)\\ACS_13_1YR_B24010_with_ann.csv")
occ_13_sea_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_13_1YR_B24010 (2)\\ACS_13_1YR_B24010_metadata.csv")
occ_12_sea <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_12_1YR_B24010 (2)\\ACS_12_1YR_B24010_with_ann.csv")
occ_12_sea_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_12_1YR_B24010 (2)\\ACS_12_1YR_B24010_metadata.csv")
occ_11_sea <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_11_1YR_B24010 (2)\\ACS_11_1YR_B24010_with_ann.csv")
occ_11_sea_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_11_1YR_B24010 (2)\\ACS_11_1YR_B24010_metadata.csv")
occ_10_sea <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_10_1YR_B24010 (2)\\ACS_10_1YR_B24010_with_ann.csv")
occ_10_sea_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_10_1YR_B24010 (2)\\ACS_10_1YR_B24010_metadata.csv")
occ_09_sea <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_09_1YR_B24010 (2)\\ACS_09_1YR_B24010_with_ann.csv")
occ_09_sea_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_09_1YR_B24010 (2)\\ACS_09_1YR_B24010_metadata.csv")
occ_08_sea <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_08_1YR_B24010 (2)\\ACS_08_1YR_B24010_with_ann.csv")
occ_08_sea_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_08_1YR_B24010 (2)\\ACS_08_1YR_B24010_metadata.csv")
occ_07_sea <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_07_1YR_B24010 (2)\\ACS_07_1YR_B24010_with_ann.csv")
occ_07_sea_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_07_1YR_B24010 (2)\\ACS_07_1YR_B24010_metadata.csv")
occ_06_sea <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_06_EST_B24010 (2)\\ACS_06_EST_B24010_with_ann.csv")
occ_06_sea_meta <- read.csv("C:\\Users\\Godot\\Downloads\\ACS_06_EST_B24010 (2)\\ACS_06_EST_B24010_metadata.csv")
```

``` r
variable_namer <- function(df, meta_df) {
  new_names <- meta_df$Id
  new_names <- data.frame(lapply(new_names, as.character), stringsAsFactors=FALSE)
  old_names <- meta_df$GEO.id
  old_names <- data.frame(lapply(old_names, as.character), stringsAsFactors=FALSE)

  df <- df %>%
    select(-1) 
  colnames(df) <- new_names
  return(df)
}
```

``` r
tidy_occupation <- function(df) {
  df_tidy <- df %>%
    filter(Id2 != "Id2") %>%
    select(Geography, contains("Estimate")) %>%
    gather(key=job, value = n_county, contains("-")) %>%
    separate(Geography, into = c("county", "junk"), sep = ("County,")) %>%
    select(county, total_pop = `Estimate; Total:`, job, n_county) %>%
    mutate(total_pop = as.integer(as.character(total_pop))) %>%
    separate(job, into = c("sex", "broad_category", "subcategory", "job", "overspecific"), sep = "-") %>%
    filter(is.na(overspecific)&!is.na(job)) %>%
    select(-sex, -broad_category, -subcategory, -overspecific) %>%
    #na.omit() %>%
    mutate(n_county=as.numeric(n_county)) %>%
    group_by(county, job) %>%
    mutate(n_county = as.integer(sum(n_county))) %>%
    unique() %>%
    ungroup() %>%
    mutate(prop_county = n_county/total_pop)
  
  job_list <- as.data.frame(df_tidy$job) %>%
    select(job=`df_tidy$job`) %>%
    unique() %>%
    mutate(row_id = row_number()) %>%
    mutate(job_class = ifelse(row_id %in% c(1:14,34:36), "white_collar", "blue_collar")) %>%
    mutate(job_type = ifelse(row_id %in%c(3,4), "tech",
                             ifelse(row_id %in%c(1,2,34:36), "business",
                                    ifelse(row_id %in%c(10:14), "healthcare",
                                           ifelse(row_id %in%c(15:17), "civil_servant",
                                                  ifelse(row_id %in%c(18:33,37:40), "service",
                                                         ifelse(row_id %in%c(61:69), "transportation",
                                                                ifelse(row_id %in%c(43:52), "construction\\contracting", "production")))))))) %>%
    select(-row_id)

  df_tidy <- df_tidy %>%
    left_join(job_list, by = c("job"="job")) %>%
    group_by(county, job_type) %>%
    mutate(n_county_type = sum(n_county), prop_county_type = n_county_type/total_pop) %>%
    ungroup() %>%
    group_by(county, job_class) %>%
    mutate(n_county_class = sum(n_county), prop_county_class = n_county_class/total_pop)
  return(df_tidy)
}

city_aggregate <- function(df) {
  df <- df %>%
    group_by(job, job_class, job_type, year) %>%
    summarise(population = sum(total_pop), n_city = sum(n_county)) %>%
    mutate(job_prop = n_city/population) %>%
    group_by(job_type, year) %>%
    mutate(job_type_n = sum(n_city), job_type_prop = job_type_n/population) %>%
    ungroup() %>%
    group_by(job_class, year) %>%
    mutate(job_class_n = sum(n_city), job_class_prop = job_class_n/population)
  return(df)
}
```

``` r
#pdx cleaning
occ_16 <- variable_namer(occ_16, occ_16_meta)
occ_16 <- tidy_occupation(occ_16) %>%
  mutate(year="2016")
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 66 locations: 43, 44, 45, 46, 47, 48, 58, 59,
    ## 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 130, 131, ...

    ## Warning: Too few values at 546 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 31,
    ## 32, 33, 49, 50, 51, 52, 53, 54, 73, 74, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_15 <- variable_namer(occ_15, occ_15_meta)
occ_15 <- tidy_occupation(occ_15) %>%
  mutate(year="2015")
```

    ## Warning: Too many values at 66 locations: 43, 44, 45, 46, 47, 48, 58, 59,
    ## 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 130, 131, ...

    ## Warning: Too few values at 546 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 31,
    ## 32, 33, 49, 50, 51, 52, 53, 54, 73, 74, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_14 <- variable_namer(occ_14, occ_14_meta)
occ_14 <- tidy_occupation(occ_14) %>%
  mutate(year="2014")
```

    ## Warning: Too many values at 66 locations: 43, 44, 45, 46, 47, 48, 58, 59,
    ## 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 130, 131, ...

    ## Warning: Too few values at 546 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 31,
    ## 32, 33, 49, 50, 51, 52, 53, 54, 73, 74, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_13 <- variable_namer(occ_13, occ_13_meta)
occ_13 <- tidy_occupation(occ_13) %>%
  mutate(year="2013")
```

    ## Warning: Too many values at 66 locations: 43, 44, 45, 46, 47, 48, 58, 59,
    ## 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 130, 131, ...

    ## Warning: Too few values at 546 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 31,
    ## 32, 33, 49, 50, 51, 52, 53, 54, 73, 74, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_12 <- variable_namer(occ_12, occ_12_meta)
occ_12 <- tidy_occupation(occ_12) %>%
  mutate(year="2012")
```

    ## Warning: Too many values at 66 locations: 43, 44, 45, 46, 47, 48, 58, 59,
    ## 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 130, 131, ...

    ## Warning: Too few values at 546 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 31,
    ## 32, 33, 49, 50, 51, 52, 53, 54, 73, 74, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_11 <- variable_namer(occ_11, occ_11_meta)
occ_11 <- tidy_occupation(occ_11) %>%
  mutate(year="2011")
```

    ## Warning: Too many values at 66 locations: 43, 44, 45, 46, 47, 48, 58, 59,
    ## 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 130, 131, ...

    ## Warning: Too few values at 546 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 31,
    ## 32, 33, 49, 50, 51, 52, 53, 54, 73, 74, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_10 <- variable_namer(occ_10, occ_10_meta)
occ_10 <- tidy_occupation(occ_10) %>%
  mutate(year="2010")
```

    ## Warning: Too many values at 66 locations: 43, 44, 45, 46, 47, 48, 58, 59,
    ## 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 130, 131, ...

    ## Warning: Too few values at 546 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 31,
    ## 32, 33, 49, 50, 51, 52, 53, 54, 73, 74, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_09 <- variable_namer(occ_09, occ_09_meta)
occ_09 <- tidy_occupation(occ_09) %>%
  mutate(year="2009")
```

    ## Warning: Too many values at 54 locations: 37, 38, 39, 40, 41, 42, 109, 110,
    ## 111, 112, 113, 114, 115, 116, 117, 142, 143, 144, 145, 146, ...

    ## Warning: Too few values at 504 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 28,
    ## 29, 30, 43, 44, 45, 46, 47, 48, 55, 56, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_08 <- variable_namer(occ_08, occ_08_meta)
occ_08 <- tidy_occupation(occ_08) %>%
  mutate(year="2008")
```

    ## Warning: Too many values at 54 locations: 37, 38, 39, 40, 41, 42, 109, 110,
    ## 111, 112, 113, 114, 115, 116, 117, 142, 143, 144, 145, 146, ...

    ## Warning: Too few values at 504 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 28,
    ## 29, 30, 43, 44, 45, 46, 47, 48, 55, 56, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_07 <- variable_namer(occ_07, occ_07_meta)
occ_07 <- tidy_occupation(occ_07) %>%
  mutate(year="2007")
```

    ## Warning: Too many values at 54 locations: 37, 38, 39, 40, 41, 42, 109, 110,
    ## 111, 112, 113, 114, 115, 116, 117, 142, 143, 144, 145, 146, ...

    ## Warning: Too few values at 504 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 28,
    ## 29, 30, 43, 44, 45, 46, 47, 48, 55, 56, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_06 <- variable_namer(occ_06, occ_06_meta)
occ_06 <- tidy_occupation(occ_06) %>%
  mutate(year="2006")
```

    ## Warning: Too many values at 54 locations: 37, 38, 39, 40, 41, 42, 109, 110,
    ## 111, 112, 113, 114, 115, 116, 117, 142, 143, 144, 145, 146, ...

    ## Warning: Too few values at 504 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 28,
    ## 29, 30, 43, 44, 45, 46, 47, 48, 55, 56, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
#bay area cleaning
occ_16_sf<-variable_namer(occ_16_sf, occ_16_sf_meta) 
occ_16_sf<-tidy_occupation(occ_16_sf) %>%
  mutate(year=2016)
```

    ## Warning: Too many values at 198 locations: 127, 128, 129, 130, 131, 132,
    ## 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 172, 173, ...

    ## Warning: Too few values at 1638 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_15_sf<-variable_namer(occ_15_sf, occ_15_sf_meta) 
occ_15_sf<-tidy_occupation(occ_15_sf)%>%
  mutate(year=2015)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 176 locations: 113, 114, 115, 116, 117, 118,
    ## 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 153, 154, 155, 156, ...

    ## Warning: Too few values at 1456 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_14_sf<-variable_namer(occ_14_sf, occ_14_sf_meta) 
occ_14_sf<-tidy_occupation(occ_14_sf)%>%
  mutate(year=2014)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 176 locations: 113, 114, 115, 116, 117, 118,
    ## 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 153, 154, 155, 156, ...

    ## Warning: Too few values at 1456 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_13_sf<-variable_namer(occ_13_sf, occ_13_sf_meta) 
occ_13_sf<-tidy_occupation(occ_13_sf)%>%
  mutate(year=2013)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 198 locations: 127, 128, 129, 130, 131, 132,
    ## 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 172, 173, ...

    ## Warning: Too few values at 1638 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_12_sf<-variable_namer(occ_12_sf, occ_12_sf_meta) 
occ_12_sf<-tidy_occupation(occ_12_sf)%>%
  mutate(year=2012)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 176 locations: 113, 114, 115, 116, 117, 118,
    ## 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 153, 154, 155, 156, ...

    ## Warning: Too few values at 1456 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_11_sf<-variable_namer(occ_11_sf, occ_11_sf_meta) 
occ_11_sf<-tidy_occupation(occ_11_sf)%>%
  mutate(year=2011)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 154 locations: 99, 100, 101, 102, 103, 104,
    ## 105, 106, 107, 108, 109, 110, 111, 112, 134, 135, 136, 137, 138, 139, ...

    ## Warning: Too few values at 1274 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_10_sf<-variable_namer(occ_10_sf, occ_10_sf_meta) 
occ_10_sf<-tidy_occupation(occ_10_sf)%>%
  mutate(year=2010)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 176 locations: 113, 114, 115, 116, 117, 118,
    ## 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 153, 154, 155, 156, ...

    ## Warning: Too few values at 1456 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_09_sf<-variable_namer(occ_09_sf, occ_09_sf_meta) 
occ_09_sf<-tidy_occupation(occ_09_sf)%>%
  mutate(year=2009)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 144 locations: 97, 98, 99, 100, 101, 102, 103,
    ## 104, 105, 106, 107, 108, 109, 110, 111, 112, 289, 290, 291, 292, ...

    ## Warning: Too few values at 1344 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_08_sf<-variable_namer(occ_08_sf, occ_08_sf_meta) 
occ_08_sf<-tidy_occupation(occ_08_sf)%>%
  mutate(year=2008)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 144 locations: 97, 98, 99, 100, 101, 102, 103,
    ## 104, 105, 106, 107, 108, 109, 110, 111, 112, 289, 290, 291, 292, ...

    ## Warning: Too few values at 1344 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_07_sf<-variable_namer(occ_07_sf, occ_07_sf_meta) 
occ_07_sf<-tidy_occupation(occ_07_sf)%>%
  mutate(year=2007)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 144 locations: 97, 98, 99, 100, 101, 102, 103,
    ## 104, 105, 106, 107, 108, 109, 110, 111, 112, 289, 290, 291, 292, ...

    ## Warning: Too few values at 1344 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_06_sf<-variable_namer(occ_06_sf, occ_06_sf_meta) 
occ_06_sf<-tidy_occupation(occ_06_sf)%>%
  mutate(year=2006)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 144 locations: 97, 98, 99, 100, 101, 102, 103,
    ## 104, 105, 106, 107, 108, 109, 110, 111, 112, 289, 290, 291, 292, ...

    ## Warning: Too few values at 1344 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
#seattle area cleaning
occ_16_sea<-variable_namer(occ_16_sea, occ_16_sea_meta) 
occ_16_sea<-tidy_occupation(occ_16_sea) %>%
  mutate(year=2016)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 110 locations: 71, 72, 73, 74, 75, 76, 77, 78,
    ## 79, 80, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, ...

    ## Warning: Too few values at 910 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 51, 52, 53, 54, 55, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_15_sea<-variable_namer(occ_15_sea, occ_15_sea_meta) 
occ_15_sea<-tidy_occupation(occ_15_sea)%>%
  mutate(year=2015)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 110 locations: 71, 72, 73, 74, 75, 76, 77, 78,
    ## 79, 80, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, ...

    ## Warning: Too few values at 910 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 51, 52, 53, 54, 55, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_14_sea<-variable_namer(occ_14_sea, occ_14_sea_meta) 
occ_14_sea<-tidy_occupation(occ_14_sea)%>%
  mutate(year=2014)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 110 locations: 71, 72, 73, 74, 75, 76, 77, 78,
    ## 79, 80, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, ...

    ## Warning: Too few values at 910 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 51, 52, 53, 54, 55, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_13_sea<-variable_namer(occ_13_sea, occ_13_sea_meta) 
occ_13_sea<-tidy_occupation(occ_13_sea)%>%
  mutate(year=2013)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 110 locations: 71, 72, 73, 74, 75, 76, 77, 78,
    ## 79, 80, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, ...

    ## Warning: Too few values at 910 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 51, 52, 53, 54, 55, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_12_sea<-variable_namer(occ_12_sea, occ_12_sea_meta) 
occ_12_sea<-tidy_occupation(occ_12_sea)%>%
  mutate(year=2012)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 110 locations: 71, 72, 73, 74, 75, 76, 77, 78,
    ## 79, 80, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, ...

    ## Warning: Too few values at 910 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 51, 52, 53, 54, 55, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_11_sea<-variable_namer(occ_11_sea, occ_11_sea_meta) 
occ_11_sea<-tidy_occupation(occ_11_sea)%>%
  mutate(year=2011)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 88 locations: 57, 58, 59, 60, 61, 62, 63, 64,
    ## 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, ...

    ## Warning: Too few values at 728 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 41, 42, 43, 44, 65, 66, 67, 68, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_10_sea<-variable_namer(occ_10_sea, occ_10_sea_meta) 
occ_10_sea<-tidy_occupation(occ_10_sea)%>%
  mutate(year=2010)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 110 locations: 71, 72, 73, 74, 75, 76, 77, 78,
    ## 79, 80, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, ...

    ## Warning: Too few values at 910 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 51, 52, 53, 54, 55, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_09_sea<-variable_namer(occ_09_sea, occ_09_sea_meta) 
occ_09_sea<-tidy_occupation(occ_09_sea)%>%
  mutate(year=2009)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 90 locations: 61, 62, 63, 64, 65, 66, 67, 68,
    ## 69, 70, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, ...

    ## Warning: Too few values at 840 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 46, 47, 48, 49, 50, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_08_sea<-variable_namer(occ_08_sea, occ_08_sea_meta) 
occ_08_sea<-tidy_occupation(occ_08_sea)%>%
  mutate(year=2008)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 90 locations: 61, 62, 63, 64, 65, 66, 67, 68,
    ## 69, 70, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, ...

    ## Warning: Too few values at 840 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 46, 47, 48, 49, 50, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_07_sea<-variable_namer(occ_07_sea, occ_07_sea_meta) 
occ_07_sea<-tidy_occupation(occ_07_sea)%>%
  mutate(year=2007)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 90 locations: 61, 62, 63, 64, 65, 66, 67, 68,
    ## 69, 70, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, ...

    ## Warning: Too few values at 840 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 46, 47, 48, 49, 50, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occ_06_sea<-variable_namer(occ_06_sea, occ_06_sea_meta) 
occ_06_sea<-tidy_occupation(occ_06_sea)%>%
  mutate(year=2006)
```

    ## Warning: attributes are not identical across measure variables;
    ## they will be dropped

    ## Warning: Too many values at 90 locations: 61, 62, 63, 64, 65, 66, 67, 68,
    ## 69, 70, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, ...

    ## Warning: Too few values at 840 locations: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    ## 11, 12, 13, 14, 15, 46, 47, 48, 49, 50, ...

    ## Warning: Column `job` joining character vector and factor, coercing into
    ## character vector

``` r
occupations_sea_counties <- rbind(occ_16_sea, occ_15_sea, occ_14_sea, occ_13_sea, occ_12_sea, occ_11_sea, occ_10_sea, occ_09_sea, occ_08_sea, occ_07_sea, occ_06_sea)
occupations_sea <- city_aggregate(occupations_sea_counties)
```

``` r
occupations_sf_counties <- rbind(occ_16_sf, occ_15_sf, occ_14_sf, occ_13_sf, occ_12_sf, occ_11_sf, occ_10_sf, occ_09_sf, occ_08_sf, occ_07_sf, occ_06_sf)
occupations_sf <- city_aggregate(occupations_sf_counties)
```

``` r
occupations_pdx_counties <- rbind(occ_16, occ_15, occ_14, occ_13, occ_12, occ_11, occ_10, occ_09, occ_08, occ_07, occ_06)
occupations_pdx <- city_aggregate(occupations_pdx_counties)
```

``` r
write.csv(occupations_pdx, "pdx_occupations.csv")
write.csv(occupations_pdx_counties, "pdx_counties_occupations.csv")
write.csv(occupations_sf, "sf_occupations.csv")
write.csv(occupations_sf_counties, "sf_counties_occupations.csv")
write.csv(occupations_sea_counties, "sea_counties_occupations.csv")
write.csv(occupations_sea, "sea_occupations.csv")
```
