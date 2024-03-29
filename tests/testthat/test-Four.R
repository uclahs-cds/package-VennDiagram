#Testing using package testthat for detailed error messages
library(testthat)

#Get the testing function applied to compare the two venn diagram objects
source('testFunction.R');

#load in the reference plot data
load('data/plotsFour.rda');

#Suppress plotting for sanity
options(device=pdf(file = NULL));

#initialize the testing list of venn diagrams
venn.test <- list();

#Colour

venn.test <- c(venn.test,list(draw.quad.venn(
    area1 = 72,
    area2 = 86,
    area3 = 50,
    area4 = 52,
    n12 = 44,
    n13 = 27,
    n14 = 32,
    n23 = 38,
    n24 = 32,
    n34 = 20,
    n123 = 18,
    n124 = 17,
    n134 = 11,
    n234 = 13,
    n1234 = 6,
    category = c('First', 'Second', 'Third', 'Fourth'),
    fill = c('orange', 'red', 'green', 'blue'),
    lty = 'dashed',
    cex = 2,
    cat.cex = 2,
    cat.col = c('orange', 'red', 'green', 'blue')
    )))

venn.test <- prepare.test.cases(venn.test);

testNames <- c('colour');

#Loop over all of the test cases
for (i in 1:length(venn.test)) {
	test_that(
	    paste('Case',testNames[i],'of four categories'), {
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
