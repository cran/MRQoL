\name{RS}
\alias{RS}

\title{ Determination of Response shift effect (RS)
}

\description{ This function allow us to determine the RS given by Pre-test minus Then-test, applyed on each 
dimension of quality of life questionnaires in oncology using Then-test method. In addition, it calculates the 
number of patients, the RS, the confidence interval (lower and upper limits of confidence interval), the p-value
and the effect size for each category.  
}

\usage{RS(score_1, score_2, X)
}

\arguments{
  \item{score_1}{the Post-test score of each dimension
}
  \item{score_2}{ the Pre-test score if we calculate the minimal clinically important difference without RS, 
and it is the Then-test score in the case of minimal clinically important difference with RS of each dimension
}
  \item{X}{the Jaeschke's question with five categories
}
}

\value{

ID:
Dimension: Global Health Status (GHS) dimension, 
MW: the  category "much worse", 
LW: the  category "little worse", 
NC: the  category "no change", 
LB: the  category "little better", 
MB: the  category "much better".

N:
contain six values, the first value is the total number of patients for the quality of life dimension, and 
the five others values are the number of patients for each category of quality of life dimension.

RS:
used this formula "Pre-test minus Then-test" we can calculate the global RS for the dimension and the five others RS for each category.
 
LCI: 
column contain five values, these values are the lower limits of the confidence interval of the RS calculated for each category.
UCI: 
column contain five values, these values are the upper limits of the confidence interval of the RS calculated for each category.

p-value: 
used wilcoxon test we can obtained the global p-value for the dimension and the five others p-value for each category.

ES: 
the effect size obtained by divided the RS over the standard deviation at baseline. For example between (T1) and (T2) the baseline is (T1).
}
                                                                                                            
\author{ Ahmad Ousmen}

\note{ If we have more than five categories in the Jaeschke's question, we must recode this variable to 
obtain in the end five categories to implement this function. 
}


\examples{ 

#Example to calculate the Response Shift and the others statistics:
data(dataghs)
RS(dataghs$GHS0,dataghs$GHSr1, dataghs$anchor1)

}