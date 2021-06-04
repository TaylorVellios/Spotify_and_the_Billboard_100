#Load
avg_features <- read.csv('../Average_Features/All_AvgFeatures_1990_Today.csv', 
                         stringsAsFactors = F)

library(tidyverse)
library(ggplot2)


#Danceability
dance <- ggplot(avg_features, aes(x=danceability_avg))
dance + geom_density()
#Energy
energy <- ggplot(avg_features, aes(x=energy_avg))
energy + geom_density()


#Correlation?
ggplot(avg_features, aes(x=danceability_avg, y=energy_avg)) + 
  geom_point(color='brown')

cor(avg_features$danceability_avg, avg_features$energy_avg)
# R-Value = [1] -0.6657366 - Moderate Negative Relationship



feat_matrix <- as.matrix(avg_features[,
    c('danceability_avg','energy_avg','acousticness_avg','liveness_avg',
      'instrumentalness_avg','speechiness_avg','valence_avg')])
cor(feat_matrix)
