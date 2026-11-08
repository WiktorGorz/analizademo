dane %>%
  mutate(
    Release = as.Date(Release.Date, format = '%m/%d/%Y'),
    Netflix.Release = as.Date(Netflix.Release.Date, format = '%m/%d/%Y'),
    Year = as.numeric(format(Release, "%Y"))
  ) %>%
  filter(Year %in% c(2019, 2020)) %>%
  summarise(
    Sredni_czas_dni = mean(as.numeric(Netflix.Release - Release), na.rm = TRUE)
  )