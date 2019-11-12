pollutantmean <- function(directory, pollutant, id = 1:332){
  df <- data.frame()
  for(i in id){
    # setwd('C:\\Users\\Lenovo\\Documents\\GitHub\\Data-Science-Using-R\\Learning R\\Assignment')
    f = paste(directory,"/",list.files(path = directory)[i],sep = "")
    a <- read.csv(file = f, sep = ",")
    df <- rbind(df,a)
  }
  mean(df[!is.na(df[pollutant]),pollutant])
}