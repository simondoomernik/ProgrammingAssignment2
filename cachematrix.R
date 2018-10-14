## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}

# Computes the inverse of a matrix. If the inverse has already been
# calculated before, the cached inverse is returned.

# Args:
#   x: A matrix
#   ...: Extra arguments

# Returns:
#   The inverse of the matrix

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  
  # return cached matrix inverse if it's been already computed
  if (!is.null(inv)) {
    message("inverse is cached")
    return(inv)
  }
  
  # compute inverse of matrix 
  m <- x$get()
  inv <- solve(m, ...)
  
  # cache inverse
  x$setinv(inv)
  
  # return inverse of matrix
  return(inv)
}