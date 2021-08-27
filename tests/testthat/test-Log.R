#Testing using package testthat for detailed error messages
library(testthat)

#Suppress plotting for sanity
options(device = pdf());

test_that(
    'Disabled log file export', {
        disabled.output <- capture_output(
            venn.diagram(
                list(A = 1:20, B = 11:30),
                filename = NULL,
                disable.logging = TRUE
                )
            );
        
        expect_gt(nchar(disabled.output), 0);
        }
    );
