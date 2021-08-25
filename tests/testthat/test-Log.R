#Testing using package testthat for detailed error messages
library(testthat)

#load in the reference plot data
load('data/plotsOne.rda');

#Suppress plotting for sanity
options(device = pdf());

disabled.output <- capture_output(
    venn.diagram(list(A = 1:20, B = 11:30), filename = NULL, disable.logging = TRUE)
    );

test_that(
    'Disabled log file export',
    expect_gt(nchar(disabled.output), 0)
    );
    
print('Logging tests complete. No discrepancies found');
