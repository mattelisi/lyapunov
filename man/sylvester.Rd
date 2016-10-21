\name{sylvester}
\Rdversion{1.1}
\alias{sylvester}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Solve Sylvester equation.
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
sylvester(A, E, C, cond.number = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{
%%     ~~Describe \code{A} here~~
}
  \item{E}{
%%     ~~Describe \code{E} here~~
}
  \item{C}{
%%     ~~Describe \code{C} here~~
}
  \item{cond.number}{
%%     ~~Describe \code{cond.number} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(A, E, C, cond.number = FALSE)
{
    dA <- dim(A)
    dB <- dim(B)
    dC <- dim(C)
    dd <- c(dA,dB,dC)
    if((max(dd)-min(dd))==0)
       stop('A,B,C must be square matrix')
    if(cond.number)
        ierr = 1
    else
        ierr = 0
    
    N     <- NAE <- NC <- dd[1]
    WKV   <- rep(0, 2*N^2+3*N)
    RCOND <- 0
    out <- .Fortran('SYLGD', as.integer(NAE), as.integer(NC), as.integer(N),
                      as.double(A), as.double(E), as.double(C),
                      as.double(WKV), as.integer(RCOND), as.integer(ierr))
    matrix(out[[6]], N, N)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
