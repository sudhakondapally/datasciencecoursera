
library(swirl)

ls()
swirl()

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(solve) m <<- solve
  getin <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting inverse data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}

cachesolve <- function(x, ...)
      ## Return a matrix that is the inverse of 'x'
      inv <- x$getInverse()
      if (!is.null(inv))){
              message("getting cached data")
              return(inv)
      }
      mat <- x$get()
      inv <- solve(mat, .....)
      s$setInverse(inv)
      inv
  
  
  
  
  
  
  








