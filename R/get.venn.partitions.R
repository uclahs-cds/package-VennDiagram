get.venn.partitions <- function(x, force.unique = TRUE, keep.elements = TRUE, hierarchical = FALSE) {
    #Check typing of arguments
    stopifnot(typeof(x)=='list');
    stopifnot(typeof(force.unique)=='logical');
    
    #Check for empty entries in the list
    emptyInds <- unlist(lapply(x,is.null));
    if(any(emptyInds)){
        warning('removing NULL elements in list.');
        x <- x[!emptyInds];
    }
    
    out <- make.truth.table(x)
    names(x) <- names(out);#The assignment of names to x doesn't carry over after the function call. Reassign it from the out dataframe
    
    # intersect and union will get unique values anyway, but there's no 
    # point in the doing that many times.
    # Behaviour is equivalent to force.unique = TRUE in venn.diagram
    if(force.unique)
    {
        x <- lapply(x, unique)
    } else
    {
        x <- lapply(x, function(xRow){
            ret <- data.frame(x=xRow)
            ret <- cbind(ret,1);#For aggregating into a count by summing
            colnames(ret) <- c('x','n');
            ret <- aggregate(ret,by=list(ret$x),FUN=sum);
            ret$x <- ret$Group.1;
            ret$Group.1 <- NULL;
            return(ret);
        });
    }
    
    # There are never any values outside all the sets, so don't bother with 
    # case of FALSE in all columns.
    out <- out[apply(out, 1, any), ]
    
    #Compute the descriptive name of the set
    setNames <- apply(
        out,
        1,
        function(categories)
        {  
            include <- paste(names(x)[categories], collapse = '\u2229') # \u2229 = Unicode intersection
            if(all(categories))
            {
                return(include)
            }
            include <- paste0('(',include,')');
            exclude <- paste0('(',paste(names(x)[!categories], collapse = '\u222a'),')'); # \u222a = Unicode union
            paste(include, exclude, sep = '\u2216') # \u2216 = Unicode set difference
        }
    );
    
    #Compute the values within the sets
    if(force.unique){
        setValues <- apply(
            out,
            1,
            function(categories)
            {  
                include <- Reduce(intersect, x[categories])
                exclude <- Reduce(union, x[!categories])
                setdiff(include, exclude)
            }  
        );
    } else {
        if(hierarchical){
            setValues <- apply(
                out,
                1,
                function(categories)
                {  
                    #Assume that the number of a certain element is equal to the maximum number of that element in a category.
                    #Take the one with the largest in the include group
                    #And subtract from it the largest in the exclude group
                    
                    include <- Reduce(intersect, lapply(x[categories], function(z) z$x))
                    intData <- do.call(rbind,x[categories]);
                    intSum <- aggregate(intData,by=list(intData$x),min);
                    #Using the group names appended automatically by aggregate, reassign it to x
                    intSum$x <- intSum$Group.1;
                    intSum$Group.1 <- NULL;
                    intInds <- intSum$x %in% include;
                    intSum <- intSum[intInds,];
                    
                    #If there is nothing to subtract out, then return the result
                    if(all(categories))
                    {
                        return(rep.int(intSum$x,intSum$n));
                    }
                    
                    #Find the categories to subtract out
                    
                    unionData <- do.call(rbind,x[!categories]);
                    unionSum <- aggregate(unionData,by=list(unionData$x),max);
                    #Using the group names appended automatically by aggregate, reassign it to x
                    unionSum$x <- unionSum$Group.1;
                    unionSum$Group.1 <- NULL;
                    
                    #Find the overlapping values
                    overlapEle <- intersect(unionSum$x,intSum$x);
                    
                    #Index into the intersection set and the union set for subtraction
                    intSum[match(overlapEle,intSum$x),2] <- pmax(intSum[match(overlapEle,intSum$x),2] - unionSum[match(overlapEle,unionSum$x),2],0);
                    
                    return(rep.int(intSum$x,intSum$n));
                } 
            );
        }else{
            setValues <- apply(
                out,
                1,
                function(categories)
                {  
                    include <- Reduce(intersect, lapply(x[categories], function(z) z$x))
                    exclude <- Reduce(union, lapply(x[!categories], function(z) z$x))          
                    #The unique names of the values to include
                    y <- setdiff(include, exclude)
                    
                    totalData <- do.call(rbind,x[categories]);
                    totalSum <- aggregate(totalData,by=list(totalData$x),sum);
                    #Using the group names appended automatically by aggregate, reassign it to x
                    totalSum$x <- totalSum$Group.1;
                    totalSum$Group.1 <- NULL;
                    #Find the x's that are in the actual set
                    xInds <- totalSum$x %in% y;
                    totalSum <- totalSum[xInds,];
                    return(rep.int(totalSum$x,totalSum$n));
                } 
            );
        }
    }
    
    #Process the list of numbers into strings for easy cbinding
    setEle <- as.matrix(setValues);
    
    #Compute the total number of elements within each set
    setNum <- unlist(lapply(setValues,length));
    
    #Bind all of the output together
    out <- cbind(out,setNames);
    out <- cbind(out,setEle);
    out <- cbind(out,setNum);
    
    colnames(out)[(ncol(out)-2):(ncol(out))] <- c('..set..','..values..','..count..');
    
    #If the actual elements of the sets are not to be printed, remove them
    if(!keep.elements){
        out <- out[,-(ncol(out)-1)];
    }
    
    #Make the output of the set a character vector instead of a factor so you can encode the output
    out$..set.. <- as.character(out$..set..);
    
    Encoding(out$..set..) <- 'UTF-8'
    return(out)
    }
