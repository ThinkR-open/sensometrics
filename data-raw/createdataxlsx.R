library(dplyr)

#_ Create xlsx data to be used during the tutorial

## Session 1 / 2024-04-25
data_sorting_task_session1 <- sensoreport:::create_toy_table(
  nbsessions = 1, 
  nbprod = 16, 
  nbconsumers = 40,
  type = "senso"
) |> 
  rename_with(
    tolower
  ) |> 
  pivot_wider(
    names_from = consumer, 
    values_from = group
  ) |> 
  select(
    - session
  )

data_liking_session1 <- sensoreport:::create_toy_table(
  nbsessions = 1, 
  nbprod = length(unique(data_sorting_task_session1$product)), 
  nbconsumers = 100,
  type = "hedo"
) |> 
  rename_with(
    tolower
  ) |> select(
    - session
  ) 

data_info_products_session1 <- tibble(
  product = data_sorting_task_session1 |> 
    distinct(product) |> 
    pull(),
  info = rep(
    "Lorem ipsum dolor sit amet", 
    length(unique(data_sorting_task_session1$product))
  ),
  brand = rep(
    c("Brand A", "Brand B", "Brand C", "Brand D"), 
    length(unique(data_sorting_task_session1$product)) / 4
  )
)

data_info_products_session1 |> 
  writexl::write_xlsx(
    path = "dev/report/data/data_info_products_20240425.xlsx"
  )

data_sorting_task_session1 |> 
  writexl::write_xlsx(
    path = "dev/report/data/data_sorting_task_20240425.xlsx"
  )

data_liking_session1 |> 
  writexl::write_xlsx(
    path = "dev/report/data/data_liking_20240425.xlsx"
  )

## Session 2 / 2024-05-21
data_sorting_task_session2 <- sensoreport:::create_toy_table(
  nbsessions = 1, 
  nbprod = 12, 
  nbconsumers = 35,
  type = "senso"
) |> 
  rename_with(
    tolower
  ) |> 
  pivot_wider(
    names_from = consumer, 
    values_from = group
  ) |> 
  select(
    - session
  )

data_liking_session2 <- sensoreport:::create_toy_table(
  nbsessions = 1, 
  nbprod = length(unique(data_sorting_task_session2$product)), 
  nbconsumers = 80,
  type = "hedo"
) |> 
  rename_with(
    tolower
  ) |> select(
    - session
  ) 

data_info_products_session2 <- tibble(
  product = data_sorting_task_session2 |> 
    distinct(product) |> 
    pull(),
  info = rep(
    "Lorem ipsum dolor sit amet", 
    length(unique(data_sorting_task_session2$product))
  ),
  brand = rep(
    c("Brand A", "Brand B", "Brand C", "Brand D"), 
    length(unique(data_sorting_task_session2$product)) / 4
  )
)

data_info_products_session2 |> 
  writexl::write_xlsx(
    path = "dev/report/data/data_info_products_20240521.xlsx"
  )

data_sorting_task_session2 |> 
  writexl::write_xlsx(
    path = "dev/report/data/data_sorting_task_20240521.xlsx"
  )

data_liking_session2 |> 
  writexl::write_xlsx(
    path = "dev/report/data/data_liking_20240521.xlsx"
  )