complete <- function(directory, id = 1:332){
  df <- data.frame()
  for(i in id){
    f <- paste(directory,"/",list.files(path = directory)[i],sep = "")
    a <- read.csv(file = f, sep = ",")
    xx <- !(is.na(a$sulfate) | is.na(a$nitrate))
    # print(xx[xx==TRUE])
    x <- data.frame(id=i,nobs=length(xx[xx==TRUE]))
    df <- rbind(df,x)
  }
  df
}