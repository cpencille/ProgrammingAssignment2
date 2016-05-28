## These functions will create a matrix, calculate the inverse,
## and then cache the inversed matrix

## The first function creates a matrix out of the provided data
## and then caches the inverse of that matrix

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
            x<<-y
            m<<-NULL
        }
        get<-funstion() x
        setinmatrix<-function(solve) m<<-solve
        getinmatrix<-function() m
        list(set=set,get=get,
             setinmatrix=setinmatrix,
             getinmatrix=getinmatrix)
}


## This function uses the cached matrix from the MakeMatrixCache 
## function and print it. If a matrix is not cached, it calculates
## one and then prints it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getinmatrix()
        if(!is.null(m)){
            message("getting cached data")
            return(m)
        }
        data<-x$get()
        m<-solve(data,...)
        x$setinmatrix(m)
        m
}
