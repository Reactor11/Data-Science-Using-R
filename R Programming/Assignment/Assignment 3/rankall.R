rankall <- function(o, n = "best") {
    df <- read.csv('outcome-of-care-measures.csv')
    s <- unique(df$State)
    r <- c()
    options(warn = -1)
    for(i in s){
        x <- rankhospital(i,o,n)
        r <- append(r,x)
    }
    df <- data.frame("state"=s,"hospital"=r)
    df <- df[order(df[,1]),]
}
