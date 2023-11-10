# libraries used
library(tidyverse)

# data read in from Github
data <- read.csv("https://raw.githubusercontent.com/lcory15/Dani-Edwards-Analysis/main/Data%20Analysis%20Dani.csv")

# filter down only those that participated in the intervention
data <- filter(data, Participated.in.Intervention. == "Yes")

# four paired t-tests with bonferroni adjustments
t.testQ1 <- t.test(data$PreQ1, data$PostQ1, paired = TRUE)
t.testQ1
.004993*4 = 0.019972

t.testQ2 <- t.test(data$PreQ2, data$PostQ2, paired = TRUE)
t.testQ2
.3466*4 = 1

t.testQ3 <- t.test(data$PreQ3, data$PostQ3, paired = TRUE)
t.testQ3
.3466*4 = 1

t.testQ4 <- t.test(data$PreQ4, data$PostQ4, paired = TRUE)
t.testQ4
.1411*4 = .5644

