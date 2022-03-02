###NORMAL DISTRIBUTION###
#SAT scores - normal distribution with mean 550 and SD 50.
#What is the probability that an SAT score falls between 500 and 600?
#we will do this: pnorm(xmax, mean = μ, sd = σ, lower.tail=TRUE) - pnorm(xmin, mean = μ, sd = σ, lower.tail=TRUE)
(pnorm(600, mean = 550, sd = 50, lower.tail = TRUE)) - (pnorm(500, mean = 550, sd = 50, lower.tail = TRUE))

#what is the probability that an SAT score falls between 450 and 650?
(pnorm(650, mean = 550, sd = 50, lower.tail = TRUE)) - (pnorm(450, mean = 550, sd = 50, lower.tail = TRUE))

#what is the probability that an SAT score is less than 400?
#we will use lower.tail = TRUE
(pnorm(400, mean = 550, sd= 50, lower.tail = TRUE))


#suppose that the number of hours graduate students sleep is normally distributed with mean 6 and standard deviation 1
#what is the probability that a randomly chosen grad student slept 8 or more hours last night?
#we will use lower.tail = FALSE - because we are looking at x > 8
pnorm(8, mean = 6, sd = 1, lower.tail = FALSE)

#what is the probability that a randomly chosen grad student slept less than 4 hours last night?
pnorm(4, mean = 6, sd = 1, lower.tail = TRUE)

#what is the probability that a randomly chosen grad student slept between 5 and 7 hours last night?
(pnorm(7, mean = 6, sd= 1, lower.tail = TRUE)) - (pnorm(5, mean = 6, sd = 1, lower.tail = TRUE))

#Suppose we ask 30 people whether they believe Mayor Durkan is doing a good job of running the city.
#13 people said they “agree”, 6 said they were “neutral”, and 11 said they “disagree”. We believe the
#city is evenly split between the three viewpoints. Compute the chi-square test statistic to determine
#whether our belief is reasonable

#create a dataframe
df <- data.frame(
  category = c("agree", "neutral", "disagree"),
  numbers = c(13, 6, 11),
  Prob = c(1/3, 1/3, 1/3)
)
#obtain the chisq statistics

chisq.test(df$numbers, y = NULL, correct = TRUE,
           p = df$Prob, rescale.p = FALSE,
           simulate.p.value = FALSE, B = 2000)

#we can also use pchisq but chisq.test is a litte more efficient
pchisq(2.6, 3, lower.tail = TRUE, log.p = FALSE)
pchisq(2.6, 3, lower.tail = FALSE, log.p = FALSE)
#after testing both lower and upper tail, the chi square statistics is kind of in the middle of the distribution