rankhospital <- function(state, outcome, num = "best"){
  df <- read.csv('outcome-of-care-measures.csv')
  df <- df[df$State==state,]
  if(nrow(df)==0){
    stop("invalid state")
  }
  if(outcome == "heart attack"){
    col <- names(df)[11]
  }else if(outcome == "heart failure"){
    col <- names(df)[17]
  }else if(outcome == "pneumonia"){
    col <- names(df)[23]
  }
  else{
    stop("invalid outcome")
  }
  df <- df[!(df[,col] == "Not Available"),c("Hospital.Name",col)]
  options(digits=2)
  df[,col] <- as.numeric(levels(df[,col]))[df[,col]]
  df <- df[order(df[,2]),]
  if(num == "best"){
      as.character(df[1,1])
  }
  if(num == "worst"){
      as.character(df[nrow(df),1])
  }else{
      if(num <= nrow(df))
          as.character(df[num,1])
      else
          NA
  }
}
