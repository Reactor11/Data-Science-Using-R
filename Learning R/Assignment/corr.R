corr <- function(directory, threshold = 0){
  df <- complete("specdata")
  df <- df[df['nobs']>threshold,]
  if(NROW(df) == 0){
    numeric(length = 0L)
  }else {
    re <- numeric()
    for(i in 1:NROW(df)){
      f <- paste(directory,"/",list.files(path = directory)[df[i,"id"]],sep = "")
      x <- read.csv(file = f)
      xx <- !(is.na(x$sulfate) | is.na(x$nitrate))
      x <- x[xx,]
      c <- cor(x = x[,"nitrate"],y = x[,"sulfate"])
      re <- append(re,c)
    }
    re
  }
}