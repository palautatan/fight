
library(ggmap)

google_key <- "AIzaSyCp8wAUfA4UeAutUwltsVTBchoLP7JuOyg"
register_google(key=google_key)

martial_arts_map <- get_map(location=c(lon=mean(start_dataset$longitude), lat=mean(start_dataset$latitude)),
                            zoom=10,
                            maptype="toner",
                            scale=2)

ggmap(martial_arts_map) +
  geom_point(data=start_dataset, aes(x=longitude, y=latitude, col=businesses.review_count), size=2)

start_dataset <- start_dataset %>% arrange(businesses.name) %>% rename(art=sapply.1.nrow.martial_arts3...function.k..paste0.martial_arts3.k..)
head(start_dataset)

ma <- start_dataset$art[grepl("Martial Arts", unlist(start_dataset$art))]
which(grepl("\\&", ma))
ma[which(grepl("\\&", ma))]
