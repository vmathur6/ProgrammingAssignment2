## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function will create a matrix object with 
## four functions (set, get, setInv, getInv)

makeCacheMatrix <- function(x = matrix()) {
        cachedInv <- NULL
        set <- function(y){
                x <<- y
                cachedInv <<- NULL
        }
        
        get <- function() x
        
        setInv <- function(inverse) cachedInv <<- inverse
        getInv <- function() cachedInv
        list(set = set, get = get, setInv = setInv, getInv = getInv)
        
}


## Write a short comment describing this function
## this funciton will generate the inverse of a matrix and stores it in cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cacheInv <- x$getInv()
        if(!is.null(cacheInv)){
                message("returning cached value")
                return(cacheInv)
        }
        data <- x$get()
        cacheInv<-solve(data)
        m$setInv(cacheInv)
        cacheInv
        
}
