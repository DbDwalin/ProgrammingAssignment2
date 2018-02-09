## Programming Assingment 2 - R Programming

##makeCacheMatrix generates a matrix able to cache its inverse.

makeCacheMatrix<-function(x  = matrix()){
        inve<-NULL
        set<-function(y) {
                x<<-y
                inve<<-NULL
                
        }
        get<-function()x
        setinve<-function(solve) inve <<- solve
        getinve<-function() inve
        list(set = set,get = get, setinve = setinve, getinve = getinve)
}

## cacheSolve generates the inverse of a matrix returned by makeCacheMatrix!

cacheSolve<-function(x,...){
        ## Return a matrix that is the inverse of 'x'
        inve<-x$getinve()
        if(!is.null(inve)){
                ##no changes made in the matrix, then retrieve it from cached
                message("getting cached data!")
                return(inve)
        }
        dat<- x$get()
        inve <- solve(data,...)
        x$setinve(inve)
        inve
}
