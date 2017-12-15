## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

inverse <- NULL
set <- function(y) {
  x <<- y
  inverse <<- NULL
}
get <- function() x
setinversefunc <- function(inversefunc) inverse <<- inversefunc
getinversefunc <- function() inverse
list(set = set, get = get,
     setinversefunc = setinversefunc,
     getinversefunc = getinversefunc)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'



        inverse <- x$getinversefunc()
        if(!is.null(inverse)) {
          message("getting cached data")
          return(inverse)
        }
        data <- x$get()
        inverse <- solve(data, ...)
        x$setinversefunc(inverse)
        inverse

}
