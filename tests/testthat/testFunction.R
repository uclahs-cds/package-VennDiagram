library(testthat);

#Checks that the two objects in the plot are the same with the exception of the name
#Reports the number of errors along with the types of the differing fields
is_identical_without_name <- function(x, y,maxLength=5){
	list.x <- unlist(x);
	list.y <- unlist(y);
	raw.x <- as.list(list.x[!names(list.x) %in% c('name')]);
	raw.y <- as.list(list.y[!names(list.y) %in% c('name')]);

	raw.x$'x' <- as.numeric(raw.x$'x');
	raw.x$'y' <- as.numeric(raw.x$'y');
	raw.y$'x' <- as.numeric(raw.y$'x');
	raw.y$'y' <- as.numeric(raw.y$'y');

	ret <- isTRUE(all.equal(raw.x,raw.y));

	if(!ret)#If there are differences between them, then print them out
	{
	    diffInd <- c(
		    which(!(raw.x %in% raw.y)),
		    if (length(raw.y) > length(raw.x)) (length(raw.x) + 1):length(raw.y) else c()
		    );
		
		diffNames <- names(raw.x)[diffInd];#Get the name of the differences
		diffValuesX <- raw.x[diffInd];
		diffValuesY <- raw.y[diffInd];
		
		totalDiff <- length(diffValuesY);
		numericDiff <- length(which(!is.na(as.numeric(diffValuesX))));
		characterDiff <- length(which(is.na(as.numeric(diffValuesX))));
		
		#If there are more than maxLength values to print, only print the first maxLength differences
		if (length(diffInd) > maxLength){
			diffNameStr <- paste0(toString(diffNames[1:maxLength]),'...');
			diffStrX <- paste0(toString(diffValuesX[1:maxLength]),'...');
			diffStrY <- paste0(toString(diffValuesY[1:maxLength]),'...');
		}
		else{
			diffNameStr <- toString(diffNames);
			diffStrX <- toString(diffValuesX);
			diffStrY <- toString(diffValuesY);
		}
		
		print(paste('has different', paste0('(', diffNameStr, ')'), 'in', x));
		print(paste('Total:', totalDiff, '| Numeric:', numericDiff, '| Character:', characterDiff));
		print(paste('The values are', paste0('(', diffStrX, ')'), 'compared to', paste0('(', diffStrY, ')')));
	    }
	
	return(ret);
	}


prepare.test.cases <- function(venn.test) {
    for (i in 1:length(venn.test)) {
    	for (j in 1:length(venn.test[[i]])) {
    	    test.grob <- venn.test[[i]][[j]];
    	    
    		if (is(test.grob, 'polygon')) {
    		    # Strip polygons of their x and y values
    	        # This is also included in the params field
    			venn.test[[i]][[j]]$x <- NULL;
    			venn.test[[i]][[j]]$y <- NULL;
    		} else if (is(test.grob, 'text')) {
    		    # Strip text of duplicate fontface value
    		    # for backwards compatbility
    		    venn.test[[i]][[j]]$gp$fontface <- NULL;
        		}
    	    }
        }
    
    return (venn.test);
    }