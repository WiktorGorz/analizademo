dane_pl<-dane%>%
  filter(Languages=="Polish")

Liczbatags <- dane_pl$Tags %>%
  paste0(collapse = ', ') %>%
  str_extract_all('[A-Za-z]+') %>%
  unlist() %>%
  table() %>%
  as.data.frame()%>%
  arrange(desc(Freq))
  
head(Liczbatags,10)
