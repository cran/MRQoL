\name{stat_MCID}
\alias{stat_MCID}

\title{ Statistics of the Minimal Clinically Important Difference

}
\description{ Calculate the number of patients, standard deviation and the confidence interval for each 
category of quality of life dimension.


}
\usage{stat_MCID(score_1, score_2, X)
}

\arguments{
  \item{score_1}{ the post-test score at (T1) or (T2)

}
  \item{score_2}{  the Pre-test score if we calculate the minimal clinically important difference without Response shift effect, 
and it is the Then-Test score in the case of MCID with Response shift effect of each dimension


}
  \item{X}{ the Jaeschke's question with five categories
}
}
\details{ This function help us to obtain the number of patients, standard deviation and the 
confidence interval in two columns (Lower Confidence interval and Upper confidence Interval) for 
each category of quality of life dimension, that it help us to interpret the 
result of the minimal clinically important difference.
 }
 
\value{

ID:
Dimension: Global Health Status (GHS) dimension, MW: the  category "much worse", LW: the  category "little worse", 
NC: the  category "no change", LB: the  category "little better", MB: the  category "much better".

N: 
column contain six values, he first value is the total number of patients for the quality of life dimension. 
The five others values are the number of patients for each category of quality of life dimension.

SD: 
column contain six values, he first value is the global SD for the quality of life dimension. 
The five others values are the SD for each category of quality of life dimension. 

LCI: 
column contain five values, these values are the lower limits of the confidence interval of the minimal 
clinically important difference calculated for each category.
UCI: 
column contain five values, these values are the upper limits of the confidence interval of the minimal 
clinically important difference calculated for each category.
}

\author{ Ahmad Ousmen

}
\note{ If we have more than five categories in the Jaeschke's question, we must recode this variable to 
obtain in the end five categories to implement this function.  
}


\examples{ 
#Example to calculate the statistics of minimal clinically important difference:
data(dataghs)
stat_MCID(dataghs$GHS1,  dataghs$GHS0, dataghs$anchor1)
 
}
