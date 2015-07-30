\name{MCID}
\alias{MCID}

\title{ Determination of the Minimal Clinically Important Difference (MCID)
}

\description{A function to calculate the MCID for one dimension of health-related quality of life using the Anchor-based method. The anchor is composed of five categories which are detailed below.
}

\usage{MCID(score_1, score_2, X) 
}

\arguments{
  \item{score_1}{  the Post-test score of each dimension
}

  \item{score_2}{  the Pre-test score if we calculate the MCID without Response shift effect, and it is 
the Then-test score in the case of MCID with Response shift effect of each dimension
}

  \item{X}{  the Jaeschke's question with five categories
}
}

\details{ This function calculates the MCID with and without effect of response 
shift for the 5 categories cited in the Jaeschke's question (much worse (MW), little worse (LW), no change (NC), little better (LB), 
much better (MB)) for each quality of life dimension in oncology using the "Anchor-based method". The MCID is the Mean difference
between Post-test and Pre-test if we calculate the MCID without effect of response shift and the Mean difference between
Post-test and Then-test if we calculate the MCID with effect of response shift for each category of QoL dimension. More concretely, 
for example if we want to calculate the MCID with effect of Response shift at (T1) used the data (dataghs), we calculate 
the difference between the two variables 
GHS1 and GHSr1, then we calculate the average of the values associated for the category (MW) in the variable anchor1, 
in this case we obtain the MCID for the category much  worse, and the MCID for each other category is calculated by the same method. 
 
}

\value{The values returned by this function are the following:

MW: the MCID of the  category "much worse" 

LW: the MCID of the  category "little worse"

NC: the MCID of the  category "no change"

LB: the MCID of the  category "little better"

MB: the MCID of the  category "much better"
}

\author{ Ahmad Ousmen
}

\note{If we have more than five categories in the Jaeschke's question, we must recode this variable to obtain
in the end five categories to implement this function.  
}

\examples{
#Example 1: 
#Example to calculate the MCID without effect of Response Sift:
data(dataghs)
MCID(dataghs$GHS1,  dataghs$GHS0, dataghs$anchor1)


#Example 2: 
#Example to calculate the MCID with effect of Response Sift:

MCID(dataghs$GHS1,  dataghs$GHSr1, dataghs$anchor1)



}
