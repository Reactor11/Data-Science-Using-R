complete <- function(directory, id = 1:332){
  df <- data.frame()
  for(i in id){
    f <- paste(directory,"/",list.files(path = directory)[i],sep = "")
    a <- read.csv(file = f, sep = ",")
    a <- a[! (is.na(a['sulfate'])
         & is.na(a['nitrate']))]
    # print(a)
    x <- data.frame(id=i,nobs=NROW(x = a))
    df <- rbind(df,x)
  }
  print(df)
}