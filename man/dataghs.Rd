\name{dataghs}
\alias{dataghs}
\docType{data}
\title{ Data of Global Health Status (GHS) dimension.
}

\description{ This data contain 5 scores at 3 measurement times (at baseline, after three months (T1) and after six months (T2)), 
and 2 Anchor's questions (anchor1 at (T1) and anchor2 at (T2)).
}

\usage{data("dataghs")}
\format{
  A data frame is composed of 100 observations and 7 variables.
  \describe{
    \item{\code{anchor1}}{The Jaeschke's questions at (T1) }
    \item{\code{anchor2}}{The Jaeschke's questions at (T2)}
    \item{\code{GHS0}}{The Pre-test score at baseline}
    \item{\code{GHSr1}}{The Then-test score at (T1)}
    \item{\code{GHS1}}{The Post-test score at (T1)}
    \item{\code{GHSr2}}{The Then-test score at (T2)}
    \item{\code{GHS2}}{The Post-test score at (T2)}
  }
}

\details{ This data is composed of 7 variables:
anchor1, anchor2: the first and second anchor's question at (T1) and  (T2) respectively, and it have five categories ((much worse (MW), little worse (LW), no change (NC), little better (LB), 
much better (MB)),  
GHS0: the Pre-test score of GHS at baseline, 
GHS1: the Post-test score of GHS at (T1) (after 3 months of the baseline), 
GHSr1: the Then-test score of GHS at (T1) (the retrospective score of GHS0), 
GHS2: the Post-test score of GHS at (T2), 
GHSr2: the Then-test score of GHS at (T2) (the retrospective score of GHS1).
}


