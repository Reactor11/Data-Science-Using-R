## Put comments here that give an overall description of what your
## functions do
##makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

## Write a short comment describing this function

makeCacheMatrix <- function(x=matrix(),...){
  m<-NULL
  set<-function(y){
    x<<-y  ## value of matrix in parent environment
    m<<-NULL ## if there is a new matrix, reset inv to NULL
  }
  get<-function() x  ## define the get function - returns value of the matrix argument
  setM<-function(solve) m<<-solve ## assigns value of m in parent environment
  getM<-function() m ## gets the value of m where called
  list(set=set,get=get,setM=setM,getM=getM) ## you need this in order to the functions with the $ operator
}


## Write a short comment describing this function
##cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
##If the inverse has already been calculated (and the matrix has not changed),
##then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  m <- x$getM()
  if(!is.null(m)){
    message("TO cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setM(m)
  m
}
