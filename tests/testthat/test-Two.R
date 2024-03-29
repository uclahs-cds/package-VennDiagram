#Testing using package testthat for detailed error messages
library(testthat)

#Get the testing function applied to compare the two venn diagram objects
source('testFunction.R');

#load in the reference plot data
load('data/plotsTwo.rda');

#Suppress plotting for sanity
options(device=pdf(file = NULL));

#initialize the testing list of venn diagrams
venn.test <- list();

#Scaled

venn.test <- c(venn.test,list(draw.pairwise.venn(100, 70, 30, c('First', 'Second'))))

#Not scaled

venn.test <- c(venn.test,list(draw.pairwise.venn(100, 70, 30, c('First', 'Second'), scaled = FALSE)))

#Area Labels

venn.test <- c(venn.test,list(draw.pairwise.venn(
    #area1 = 90,
    area1 = 100,
    area2 = 70,
    cross.area = 68,
    category = c('First', 'Second'),
    #fill = c('green', 'red'),
    fill = c('blue', 'red'),
    lty = 'blank',
    cex = 2,
    cat.cex = 2,
    cat.pos = c(285, 105),
    cat.dist = 0.09,
    cat.just = list(c(-1, -1), c(1, 1)),
    ext.pos = 30,
    ext.dist = -0.05,
    ext.length = 0.85,
    ext.line.lwd = 2,
    ext.line.lty = 'dashed'
    )))

#No intersect
venn.test <- c(venn.test,list(draw.pairwise.venn(
    area1 = 100,
    area2 = 70,
    cross.area = 0,
    category = c('First', 'Second'),
    cat.pos = c(0, 180),
    euler.d = TRUE,
    sep.dist = 0.03,
    rotation.degree = 45
    )))

venn.test <- prepare.test.cases(venn.test);

testNames <- c('scaled','not-scaled','area-labels','no-intersect');

#Loop over all of the test cases
for(i in 1:length(venn.test)){
	test_that(
	    paste( 'Case', testNames[i], 'of two categories'), {
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
    	)
    }
