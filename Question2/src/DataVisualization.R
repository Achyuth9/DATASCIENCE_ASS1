### Sunflower plot between reading score amd math score
sunflowerplot(MYFILE$reading.score, MYFILE$math.score,
              +               rotate = TRUE,
              +               main = "Plot of carb vs. gear")


###barplot between the genders of the data
x <- sample(c("female","male"), 100, replace=TRUE)
barplot(table(x),col=c("pink","red"))


###box plot between the scores of the data
boxplot(MYFILE$math.score,MYFILE$reading.score,MYFILE$writing.score, main="BOX PLOT FOR THE SCORES", col=c("red","blue","green"))

###histogram data between the reading score
hist(MYFILE$reading.score, main="Histogram of reading score",col='blue')

###qq norm 
qqnorm(MYFILE$math.score)


spfile <- read.csv('~/Desktop/ACHYUTHAYINALA/Question1/clean_data/Cleaned_StudentsPerformance.csv')
table(spfile$race.ethnicity)
nrows <- nrow(spfile)
percent_group <- table(spfile$race.ethnicity)/n * 100
pie(percent_group, main = "Groups PieChart", col = c("pink","blue","darkgreen","red","gold"),label=paste(c("group A - ","group B - ","group C - ","group D - ","group E - "),percent_group, "%"))
