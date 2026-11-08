dane %>%
  filter(
    str_detect(Genre, "Comedy"),
    str_detect(Languages, "Polish")
  ) %>%
  arrange(desc(IMDb.Score)) %>%
  select(Title, IMDb.Score, Genre, Languages) %>%
  head(3)