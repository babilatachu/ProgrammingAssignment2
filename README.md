### Code

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

cacheSolve <- function(x=matrix(), ...) {
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

## Procedure --note comments are with #

Procedure 1 and 2: Fork and clone repo

$ cd ~/Desktop/datascience   #change working directory
$ git clone https://github.com/babilatachu/ProgrammingAssignment2.git   #URL typed in as Insert on computer not known; ctrl V does not work on all computers on git
$ cd programmingAssignment2 # changes to directory

Then I get
susanna@BABS ~/Desktop/datascience/ProgrammingAssignment2 (master) # master implies you are in a folder being tracked by git and you are working on the master branch

$git remote -v  # to check on remotes ...shows processes created during cloning. Remote are references to repos not on computer. The result is:

$git remote -v
origin https://github.com/babilatachu/ProgrammingAssignment2.git (fetch)
origin https://github.com/babilatachu/ProgrammingAssignment2.git (push)

Open the file in the folder on the desktop with notepad # this is a markdown file



## Procedure 3 Writing the functions: See code above

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.

Computing the inverse of a square matrix can be done with the `solve`
function in R. For example, if `X` is a square invertible matrix, then
`solve(X)` returns its inverse.

For this assignment, assume that the matrix supplied is always
invertible. # in case this assumption were not there, it would make sense to first square the matrix so we can then get its inverse!

## Procedure 4 and 5:
Commit completed R file into my git repository after saving and push your
    git branch to the GitHub repository under your account.

