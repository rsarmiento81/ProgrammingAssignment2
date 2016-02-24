## This is Reginald Sarmiento's assignment 2 
## It takes an invertible matrix and caches it

## This first function will create a list of functions that will store an invertible matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setSolve <- function(solve) m <<- solve
  getSolve <- function() m
  list(set = set, get = get,
       setSolve = setSolve,
       getSolve = getSolve)
}


## This function will take the matrix produced in the first function and caches in invert

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getSolve()
  if(!is.null(m)) {
    message("getting cached data")  ## Displays a message when there is cached data
    return(m) 
  }
  data <- x$get()
  m <- solve(data, ...)   ##inverts the matrix
  x$setSolve(m)
  m ## returns the inverted matrix
}
