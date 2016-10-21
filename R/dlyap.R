dlyap <- function(A, QQ) {
  E <- diag(1, NCOL(A))
  sylvester(A = A, E = E, QQ = QQ, cond.number = FALSE)
}

