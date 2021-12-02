#Testing using package testthat for detailed error messages
library(testthat)

#Get the testing function applied to compare the two venn diagram objects
source('testFunction.R');

#load in the reference plot data
load('data/plotsOne.rda');

#Suppress plotting for sanity
options(device=pdf(file = NULL));

#initialize the testing list of venn diagrams
venn.test <- list();

#Simple

venn.test <- c(venn.test,list(draw.single.venn(100, 'First')))

#Colour and Labeled

venn.test <- c(venn.test,list(draw.single.venn(
    area = 365,
    category = 'All\nDays',
    lwd = 5,
    lty = 'blank',
    cex = 3,
    label.col = 'orange',
    cat.cex = 4,
    cat.pos = 180,
    cat.dist = -0.20,
    cat.col = 'white',
    fill = 'red',
    alpha = 0.15
    )))

venn.test <- prepare.test.cases(venn.test);

testNames <- c('simple','colour');

#Loop over all of the test cases
for (i in 1:length(venn.test)) {
	test_that(
	    paste('Case', testNames[i], 'of one category'), {
    		for (j in 1:length(venn.test[[i]])) {
    			expect_true(
    			    is_identical_without_name(
    			        venn.test[[i]][[j]],
    			        venn.plot[[i]][[j]],
    			        maxLength=3
    			        )
    			    );
    		    }
    	    }
    	);
    }
