#Importing the dataset
df = read.csv("regrex1.csv")
#looking at data
head(df)

#plainly visualizing data (must keep space in front of x var)
plot(df$ x,df$y)

# Fitting Linear Regression to the Dataset
model = lm(y~x, data = df)

#defining summary stats
summary_stats = summary (model) 
summary_stats
summary_stats$r.squared
coef(model)
coef(model) [1]
coef(model) [2]

#plotting
#attempting adding axis titles

library(ggplot2)
ggtitle="Salary vs Experience"
xlab="Years of experience"
ylab="Salary"

y_predict = predict(model, df)
plot(df$ x,df$y)
lines(df$ x,y_predict)









