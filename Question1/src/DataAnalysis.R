clean_people_data <- read.csv("~/Desktop/ACHYUTHAYINALA/Question1/clean_data/CLEANDATA.csv")
t_test_result <- with(clean_people_data, t.test(Age~Frailty))
t_test_result
capture.output(t_test_result, file="~/Desktop/ACHYUTHAYINALA/Question1/results/Test_Output.txt")
