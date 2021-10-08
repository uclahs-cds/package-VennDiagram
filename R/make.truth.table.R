make.truth.table <- function(x) {
  #Fix missing or duplicated names
  if(is.null(names(x)) || any(c(NA,'') %in% names(x)) || (length(unique(names(x))) != length(names(x))))
  {
    warning('fixing missing, empty or duplicated names.')
    nx <- if(is.null(names(x))) seq_along(x) else names(x)
    names(x) <- make.names(nx, unique = TRUE)
        }  
    
    tf <- lapply(seq_along(x), function(.) c(TRUE, FALSE))    
    setNames(do.call(expand.grid, tf), names(x))
    }
