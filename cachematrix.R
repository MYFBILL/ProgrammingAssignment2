## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function set and get the value and mean of the matrix
## It outputs a list of the four functions defined

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function()x
  setInverse<-function(inverse)m<<-inverse
  getInverse<-function()inv
  list(set=set, get=get,
       setInverse=setInverse,
       getInverse=getInverse)
}


## Write a short comment describing this function
## When it calls the function cacheSolve, it will check whether the
## Mean has been calculated and stored
## If yes, it will directly output the value, otherwise it will 
## Calculate first and output

cacheSolve <- function(x, ...) {
  inv<-x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data<-x$get()
  inv<-solve(data, ...)
  x$setInverse(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}
