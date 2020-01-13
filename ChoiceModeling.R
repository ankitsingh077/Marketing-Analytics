


# Create a table of chosen sportscars by transmission type
chosen_by_trans <- xtabs(choice~trans, data = sportscar)

# Print the chosen_by_trans table to the console
chosen_by_trans

# Plot the chosen_by_trans object
barplot(chosen_by_trans)


# load the mlogit library 

library(mlogit)
# fit a choice model using mlogit() and assign the output to m1
m1 <- mlogit(choice ~ seat+trans+convert+price, data=sportscar)

# summarize the m1 object to see the output of the choice model
summary(m1)


# Use barplot to plot predicted market shares
barplot(shares$share, ylab="Predicted Market Share", 
        names.arg=c("Our Car", "Comp 1", "Comp 2", "Comp 3"))


