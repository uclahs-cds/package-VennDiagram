# The VennDiagram package is copyright (c) 2012 Ontario Institute for Cancer Research (OICR)
# This package and its accompanying libraries is free software; you can redistribute it and/or modify it under the terms of the GPL
# (either version 1, or at your option, any later version) or the Artistic License 2.0.  Refer to LICENSE for the full license text.
# OICR makes no representations whatsoever as to the SOFTWARE contained herein.  It is experimental in nature and is provided WITHOUT
# WARRANTY OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE OR ANY OTHER WARRANTY, EXPRESS OR IMPLIED. OICR MAKES NO REPRESENTATION
# OR WARRANTY THAT THE USE OF THIS SOFTWARE WILL NOT INFRINGE ANY PATENT OR OTHER PROPRIETARY RIGHT.
# By downloading this SOFTWARE, your Institution hereby indemnifies OICR against any loss, claim, damage or liability, of whatsoever kind or
# nature, which may arise from your Institution's respective use, handling or storage of the SOFTWARE.
# If publications result from research using this SOFTWARE, we ask that the Ontario Institute for Cancer Research be acknowledged and/or
# credit be given to OICR scientists, as scientifically appropriate.

### HELPER FUNCTIONS TO HANDLE LOGGING ############################################################
raise.error <- function(message) {
    flog.error(paste0('(', message, ')'), name = 'VennDiagramLogger');
    stop(message);
    };

raise.length.error <- function(parameter.name) {
    error.message <- paste0('Unexpected parameter length for "', parameter.name, '"');
    raise.error(error.message);
    }

check.parameter.length <- function(
    value,
    expected.length,
    parameter.name,
    condition = NULL,
    empty.valid = FALSE
    ) {

    result <- value;

    if (is.null(condition)) {
        is.valid <- length(value) == expected.length | (empty.valid & length(value) == 0);
        } else {
            is.valid <- condition(value);
            }

    if (length(value) == 1) {
        result <- rep(value, expected.length);
        } else if (!is.valid) {
            raise.length.error(parameter.name);
            }

    return(result);
    }

check.list.parameter <- function(
    values,
    expected.list.length,
    expected.value.length,
    parameter.name
    ) {

    error.message <- paste0('Unexpected parameter format for "', parameter.name, '"');

    if (!(is.list(values) && length(values) == expected.list.length)) {
        raise.error(error.message);
        }

    for (v in values) {
        if (length(v) != expected.value.length) {
            raise.error(error.message);
            }
        }
    }
