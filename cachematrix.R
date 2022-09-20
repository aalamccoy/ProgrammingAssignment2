## Put comments here that give an overall description of what your
## functions do
write a function to cache the inverse of a matrix

## Write a short comment describing this function
"makeCacheMatrix" is a function which will create a special matrix that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y){
x <<- y
inv <<- NULL
}
get <- function()x
setInverse <- function(inverse) inv <<- inverse
getinverse <- function()inv        
get = get
list(set = set, get = get, setinv = setinv, getinv = getinv)
}
## Write a short comment describing this function
cachsolve is a function that will solve the inverse of the special matrix
cacheSolve <- function(x, ...) {
inv <- x$getinv()
if(!is.null(inv)){
message("getting cached result")
return(inv)
}
data <- x$get()
inv <- solve(data, ...)
x$setinv(inv)
inv
}        
        ## Return a matrix that is the inverse of 'x'
}
m <- matrix(rnorm(16), 4, 4)
m1 <- makeCacheMatrix(m)
cachesolve(m1)
