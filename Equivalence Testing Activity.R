#################################################
#     Equivalence Testing In-Class Activity     #
################################################

#Run lines 7-9 to install and/or load the
#Equivalence Testing package
install.packages("TOSTER","effsize") #disable this line if already installed
library(TOSTER)
library(effsize)


######Example Exercise
##A

#Eskine Data
#group 1
mean1 <- 5.08
stdv1 <- .62
sample1 <- 21

#mean of group 2
mean2 <- 5.58
stdv2 <- .59
sample2 <- 21

#Select lines 15-31 and click "Run"
set.seed(660)
Group1 <- rnorm(sample1, mean1, stdv1)
Group2 <- rnorm(sample2, mean2, stdv2)
t.test(Group1, Group2, var.equal = FALSE)
cohen.d(Group1,Group2)


##B
#Moery & Calin-Jageman Data
#group 1
mean1 <- 5.25
stdv1 <- .95
sample1 <- 95

#mean of group 2
mean2 <- 5.22
stdv2 <- .83
sample2 <- 89

#Select lines 37-51 and click "Run"
set.seed(660)
Group1 <- rnorm(sample1, mean1, stdv1)
Group2 <- rnorm(sample2, mean2, stdv2)
t.test(Group1, Group2, var.equal = FALSE)
cohen.d(Group1,Group2)

##C
#Equivalence Test
lower <- .48
upper <- .48

#Select lines 55-59 and click "Run"
TOSTtwo(m1=mean1, m2=mean2, sd1=stdv1, sd2=stdv2, n1=sample1, n2=sample2, low_eqbound_d=-lower, high_eqbound_d=upper, alpha = 0.05)



######Your turn! Exercise 1
#Enter the data below. Then, answer Question 1

#group 1
mean1 <- 
stdv1 <- 
sample1 <- 

#mean of group 2
mean2 <- 
stdv2 <- 
sample2 <- 
  
#Select lines 67-81 and click "Run"
set.seed(660)
Group1 <- rnorm(sample1, mean1, stdv1)
Group2 <- rnorm(sample2, mean2, stdv2)
t.test(Group1, Group2, var.equal = FALSE)
cohen.d(Group1,Group2)


#Enter the data below. Then, answer Question 2

lower <- 
upper <- 

#Select lines 90-94 and click "Run"
TOSTtwo(m1=mean1, m2=mean2, sd1=stdv1, sd2=stdv2, n1=sample1, n2=sample2, low_eqbound_d=-lower, high_eqbound_d=upper, alpha = 0.05)


#### See more TOSTER Functions:
## https://cran.r-project.org/web/packages/TOSTER/TOSTER.pdf 