
# Analysing the Sleep Dataset ---------------------------------------------

sleep <- sleep #load in our dataset

View(sleep) #this opens a new window to let us look at the sleep data set

summary(sleep) #this performs descriptive statistics


# Calculating the mean per group ------------------------------------------

aggregate(extra ~ group, data = sleep, FUN = "mean")
aggregate(extra ~ group, data = sleep, FUN = "sd")


# Visualising these differences


plot(sleep$group, sleep$extra, xlab = "Group", ylab = "Extra Hours of Sleep", main = "Effect of Drug on Duration of Sleep")


# Paired-Samples T-Test --------------------------------------------------

t.test(sleep$extra[sleep$group == 1],
       sleep$extra[sleep$group == 2],
       paired = TRUE)



