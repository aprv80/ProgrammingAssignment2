## Put comments here that give an overall description of what your
## functions do

# This takes the matrix and calculates the inverse using solve function. The base
# file is taken from Assignment 2 of RDPENG. 

## Write a short comment describing this function
# This function gets the value of a matrix and chaches it using the <<- operator
# and assigns it to the object outside the function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(solve) m <<- solve
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}


## Write a short comment describing this function
## The function takes the previous function and checks for cached value. if cache
# value is present then it prints from chache, if not then solves for the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmean(m)
  m
  }
