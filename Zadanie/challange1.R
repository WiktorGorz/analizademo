dane %>%
  mutate(
    Release = Release.Date %>% as.Date(format = '%m/%d/%Y')
    ,Netflix.Release = Netflix.Release.Date %>% as.Date(format = '%m/%d/%Y')
  ) %>%
  select(Director, Title, Release)%>% 
  filter(Director == "Woody Allen")%>%
  arrange(Release)
  head(10)
  
  