
#_______________________________________________________________________________
#----                         autoDetectNONMEM                              ----
#_______________________________________________________________________________

#' Auto-detect special variables from NONMEM as compartment properties.
#' Bioavailabilities, infusion durations/rates and lag times will be automatically
#' detected.
#' 
#' @param object object that has NONMEM special variables to be identified
#' @param ... extra arguments, unused
#' @return updated object
#' @export
#' @rdname autoDetectNONMEM
autoDetectNONMEM <- function(object, ...) {
  stop("No default function is provided")
}

setGeneric("autoDetectNONMEM", function(object, ...) {
  standardGeneric("autoDetectNONMEM")
})

#_______________________________________________________________________________
#----                              disable                                  ----
#_______________________________________________________________________________

#' Disable.
#' 
#' @param object generic object
#' @param x what needs to be disabled
#' @param ... extra arguments needed for disabling
#' @return object with some disabled features
#' @export
#' @rdname disable
disable <- function(object, x, ...) {
  stop("No default function is provided")
}

setGeneric("disable", function(object, x, ...) {
  standardGeneric("disable")
})

#_______________________________________________________________________________
#----                           export_type                                 ----
#_______________________________________________________________________________

#' Export type class.
#' 
#' @export
setClass(
  "export_type",
  representation(
  )
)

#_______________________________________________________________________________
#----                                export                                 ----
#_______________________________________________________________________________

#' Export function.
#' 
#' @param object generic object
#' @param dest destination
#' @param ... optional arguments
#' @return specific object depending on given destination
#' @export
#' @rdname export
export <- function(object, dest, ...) {
  stop("No default function is provided")
}

setGeneric("export", function(object, dest, ...) {
  standardGeneric("export")
})

#_______________________________________________________________________________
#----                          getCompartmentIndex                          ----
#_______________________________________________________________________________

#' Get the compartment index for the specified compartment name.
#' 
#' @param object generic object that contains compartments information
#' @param name compartment name
#' @return the corresponding compartment index
#' @export
#' @rdname getCompartmentIndex
getCompartmentIndex <- function(object, name) {
  stop("No default function is provided")
}

setGeneric("getCompartmentIndex", function(object, name) {
  standardGeneric("getCompartmentIndex")
})

#_______________________________________________________________________________
#----                                 read                                  ----
#_______________________________________________________________________________

#' Generic read method to read data from a file or a folder.
#' 
#' @param file path to the file or folder to be read
#' @param ... extra arguments
#' @return the object representation of the data contained in the file
#' @export
read <- function(file, ...) {
  stop("No default function is provided")
}

setGeneric("read", function(file, ...) {
  standardGeneric("read")
})

#_______________________________________________________________________________
#----                             replaceAll                                ----
#_______________________________________________________________________________

#' Replace all occurrences in object.
#' 
#' @param object generic object (e.g. model, code_record(s), etc.)
#' @param pattern pattern to be replaced
#' @param replacement replacement string
#' @param ... extra arguments
#' @return the same object with all occurrences replaced
#' @export
replaceAll <- function(object, pattern, replacement, ...) {
  stop("No default function is provided")
}

setGeneric("replaceAll", function(object, pattern, replacement, ...) {
  standardGeneric("replaceAll")
})

#_______________________________________________________________________________
#----                                 select                                ----
#_______________________________________________________________________________

#' Get a subset of an object.
#' 
#' @param object generic object
#' @param ... arguments to select
#' @return subset of an object
#' @export
#' @rdname select
select <- function(object, ...) {
  stop("No default function is provided")
}

setGeneric("select", function(object, ...) {
  standardGeneric("select")
})

#' @rdname select
setMethod("select", signature=c("data.frame"), definition=function(object, ...) {
  return(return(dplyr::select(.data=object, ...)))
})

#_______________________________________________________________________________
#----                            standardise                                ----
#_______________________________________________________________________________

#' Standardise.
#' 
#' @param object generic object
#' @param ... extra arguments needed for standardisation
#' @return standardised object
#' @export
#' @rdname standardise
standardise <- function(object, ...) {
  stop("No default function is provided")
}

setGeneric("standardise", function(object, ...) {
  standardGeneric("standardise")
})

#_______________________________________________________________________________
#----                             toString                                  ----
#_______________________________________________________________________________

#' ToString generic method.
#' 
#' @param object generic object
#' @param ... extra arguments needed for toString conversion
#' @return character value/vector
#' @export
#' @rdname toString
toString <- function(object, ...) {
  stop("No default function is provided")
}

setGeneric("toString", function(object, ...) {
  standardGeneric("toString")
})

#_______________________________________________________________________________
#----                                 write                                 ----
#_______________________________________________________________________________

#' Write generic object to files.
#' 
#' @param object generic object
#' @param file path of the output file or directory
#' @param ... extra arguments
#' @return logical value, TRUE for success, FALSE for failure
#' @export
#' @rdname write
write <- function(object, file, ...) {
  stop("No default function is provided")
}

setGeneric("write", function(object, file, ...) {
  standardGeneric("write")
})
