
###READING CLEAN STUDENTS PERFORMANCE FILE AND VISUALIZING THE DATA

spfile <- read.csv('~/Desktop/ACHYUTHAYINALA/Question1/clean_data/Cleaned_StudentsPerformance.csv')

###PieChart
table(spfile$race.ethnicity)
nrows <- nrow(spfile)
percent_group <- table(spfile$race.ethnicity)/n * 100
pie(percent_group, main = "Groups PieChart", col = c("pink","blue","darkgreen","red","gold"),label=paste(c("group A - ","group B - ","group C - ","group D - ","group E - "),percent_group, "%"))


###ggplot
data_frame<-data.frame(spfile$lunch,spfile$parental.level.of.education)
ggplot(data_frame,aes(spfile$lunch))+ geom_bar(aes(fill = spfile$parental.level.of.education), position = "dodge")


###histogram
hist(spfile$math.score, main="Histogram of Students math score",col='green',ylim = c(0,300))

###barplot
myvar <- sample(c(spfile$parental.level.of.education), 100, replace=TRUE)
barplot(table(myvar),col=c("magenta","red","orange","darkgreen","blue","brown"),ylim=c(0,35),main="Barplot of Parent level of ethinicity")


###boxplot
boxplot(spfile$math.score,spfile$reading.score,spfile$writing.score, main="BOX PLOT FOR THE SCORES", col=c("green","yellow","red"))




