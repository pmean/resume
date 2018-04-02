read_list <- function(gp, number_flag=TRUE) {
  fn <- paste0("~/resume/data/", gp, "-list.txt")
  ls <- readLines(fn)
  ls <- grep("^\\* ", ls, value=TRUE)
  if (number_flag) {
    n <- length(ls)
    ls <- gsub("^\\* ", "", ls)
    ls <- paste("[", n:1, "] ", ls, sep="")
  }
  paste0(ls, collapse="\n\n")
}

read_header <- function(gp) {
  fn <- paste0("~/resume/data/", gp, "-header.txt")
  paste0(readLines(fn), collapse="\n\n")
}

read_short <- function(gp) {
  fn <- paste0("~/resume/data/", gp, "-short.txt")
  readLines(fn)
}
