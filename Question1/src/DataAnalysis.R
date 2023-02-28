clean_people_data <- read.csv("~/Desktop/ACHYUTHAYINALA/Question1/clean_data/CLEANDATA.csv")
My_t_test_result <- with(clean_people_data, t.test(Age~Frailty))
MY_t_test_result
capture.output(MY_t_test_result, file="~/Desktop/ACHYUTHAYINALA/Question1/results/Test_Output.txt")
