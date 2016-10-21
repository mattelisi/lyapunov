\name{dlyap}
\Rdversion{1.1}
\alias{dlyap}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Solve the discrete (real) Lyapunov equation.
}
\description{The Lyapunov equation is
\[
AXA'-X+C=0,
\]
where $A$,$C$ are square matrices and $C$ is real symmetric.
}
\usage{
dlyap(A, C)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{ The matrix A
%%     ~~Describe \code{A} here~~
}
  \item{C}{ The matrix C
%%     ~~Describe \code{C} here~~
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
Return the solution to the Lyapunov equation.
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
function(A, C)
{
    E <- diag(1, NCOL(A))
    sylvester(A, E, C, cond.number = FALSE)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
