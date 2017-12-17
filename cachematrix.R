## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
#Function for Cached inverse of matrix
inverse <- NULL
#Setting up the Matrix
set <- function(y) {
  x <<- y
  inverse <<- NULL
}
get <- function() x
#getting and setting up the Inverse Matrix
setinversefunc <- function(inversefunc) inverse <<- inversefunc
getinversefunc <- function() inverse
#Returning the list of functions for the Matrix
list(set = set, get = get,
     setinversefunc = setinversefunc,
     getinversefunc = getinversefunc)

}


## Write a short comment describing this function
# will get the Inverse of a Matrix, if it has been calculated already it returns the Cached Matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'



        inverse <- x$getinversefunc()
        # to return cached value if already calculated 
        if(!is.null(inverse)) {
          message("getting cached data")
          return(inverse)
        }
        data <- x$get()
        inverse <- solve(data, ...)
        x$setinversefunc(inverse)
        inverse

}
