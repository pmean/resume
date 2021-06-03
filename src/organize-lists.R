read_list <- function(gp, number_flag=TRUE, sp="\n\n", k=999) {
  fn <- paste0("../data/", gp, "-header.txt")
  hd <- readLines(fn)
  fn <- paste0("../data/", gp, "-list.txt")
  ls <- readLines(fn)
  if (number_flag) {
    ls <- grep("^\\* ", ls, value=TRUE)
  }
  n <- length(ls)
  if (number_flag) {
    ls <- gsub("^\\* ", "", ls)
    ls <- paste("[", n:1, "] ", ls, sep="")
  }
  if (k < n) {
    warn <- paste(n-k, "additional", gp, "not shown.")
    ls <- c(ls[1:k], warn)
  }
  paste0(c(hd, ls), collapse=sp)
  }

read_short <- function(gp) {
  fn <- paste0("../data/", gp, "-short.txt")
  readLines(fn)
}
