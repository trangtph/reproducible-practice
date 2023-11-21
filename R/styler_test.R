data_count <- read.csv("count_data_G8.csv")

data_count$subplotID <- as.factor(data_count$subplotID)
data_count$species <- as.factor(data_count$species)
data_count$garden <- as.factor(data_count$garden)
data_count$rater <- as.factor(data_count$rater)
data_count <- data_count %>% mutate(compound = paste("C", data_count$compound, sep = ""))
data_count$compound <- factor(data_count$compound,
  levels = c("C1", "C2", "C3", "C4", "C5", "C6", "C7", 
             "C8", "C9", "C10", "C11", "C12", "C13", "C14", "C15"),
  labels = c(
    "Water", "Apathic Acid", "Beerse Brew",
    "Concentrate of Caducues", "Distillate of Discovery",
    "Essence of Epiphaneia", "Four in December",
    "Granules of Geheref", "Kar-Hamel Mooh",
    "Lucifer's Liquid", "Noospherol",
    "Oil of John's son", "Powder of Perlimpinpin",
    "Spirit of Scienza", "Zest of Zen"
  )
)
