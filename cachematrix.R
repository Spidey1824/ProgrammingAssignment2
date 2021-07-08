## Pair of functions that cache the inverse of a matrix
## Creates a special matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
   
      ## Initialize the inverse property
      ## Method to set the matrix
      ## Method the get the matrix
      ## Method to set the inverse of the matrix
      ## Method to get the inverse of the matrix
      ## Return a list of the methods
      inv <- NULL
      set <- function(y){
            x <<- y
            inv <<- NULL
      }
      get <- function() x
      setInverse <- function(solveMatrix) inv <<- solveMatrix
      getInverse <- function() inv
      list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
      inv <- x$getInverse()
      if(!is.null(inv)){
            message("getting cached data")
            return(inv)
      }
      data <- x$get()
      inv <- solve(data)
      x$setInverse(inv)
      inv   
      ## Get the matrix from our object
      ## Set the inverse to the object
      
}