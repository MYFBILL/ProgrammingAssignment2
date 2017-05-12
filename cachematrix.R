## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function set and get the value and mean of the matrix
## It outputs a list of the four functions defined

makeCacheMatrix <- function(x = matrix()) {
  inver<-NULL
  set<-function(y){
    x<<-y
    inver<<-NULL
  }
  get<-function()x
  setinverse<-function(inverse)m<<-inverse
  getinverse<-function()inver
  list(set=set, get=get,
       setinverse=setinverse,
       getinverse=getinverse)
}


## Write a short comment describing this function
## When it calls the function cacheSolve, it will check whether the
## Mean has been calculated and stored
## If yes, it will directly output the value, otherwise it will 
## Calculate first and output

cacheSolve <- function(x, ...) {
  inver<-x$getinverse()
  if(!is.null(inver)){
    message("getting cached data")
    return(inver)
  }
  data<-x$get()
  inver<-solve(data, ...)
  x$setinverse(i)
  inver
        ## Return a matrix that is the inverse of 'x'
}
