#updations in factors
survey.results <- factor(c("Disagree", "Neutral", "Strongly Disagree",
                           "Neutral", "Agree", "Strongly Agree",
                           "Disagree", "Strongly Agree", "Neutral",
                           "Strongly Disagree", "Neutral", "Agree"),
                         levels=c("Strongly Disagree", "Disagree",
                                  "Neutral", "Agree", "Strongly Agree"),
                         ordered=TRUE)
survey.results
class(survey.results)
survey1<-unclass(survey.results)
class(survey1)
