best <- function(state, outcome){
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
  options(digits=1)
  df[,col] <- as.numeric(levels(df[,col]))[df[,col]]
  min_ = sort(as.double(df[,2]))[1]
  df <- df[df[,col]==min_,]
  best_ <- as.character(sort(df$Hospital.Name)[1])
  best_
}
