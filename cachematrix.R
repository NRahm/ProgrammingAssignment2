## Put comments here that give an overall description of what your
## functions do

## This func. creates a type of matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
	inv = NULL
	set = function(y) {
		x <<- y 
		inv <<- NULL
	}
get <- function() x
setmatrix <- function(solve) inv <<- solve
getmatrix <- function() inv
list(set = set, get = get,
   setmatrix = setmatrix,
   getmatrix = getmatrix)

}


## This func. computes the inverse of type of matrix created by makeCacheMatrix 

cacheSolve <- function(x, ...) {
	  inv <-x$getmatrix()
    if(!is.null(inv)){
      message("getting cached data"))
 	}

    else{
    	matrix<-x$get
    	inv<-solve(matrix, ...)
    	x$setmatrix(inv)
    	inv
    }
    return(inv)
        ## Return a matrix that is the inverse of 'x'
}
