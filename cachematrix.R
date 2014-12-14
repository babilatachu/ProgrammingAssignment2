## The function makeCacheMatris 1) makes a matrix 2) gets its value 3) sets the
## value of the inverse and 4) gets its value Note assumption the matrix can be
##inversed, else we need first to take a square since only squate matrices can be
## inversed with the solve function

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
     setmatrix=setmatrix,
     getmatrix=getmatrix)
}

## calculates inverse of matrix created above
## verifies first if this has not been calculated and cached
## if so it gives a message it is retrieving it from cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}

