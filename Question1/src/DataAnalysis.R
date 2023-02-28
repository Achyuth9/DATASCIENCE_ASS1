###Loading the cleaned data for analysis
clean_people_data <- read.csv("~/Desktop/ACHYUTHAYINALA/Question1/clean_data/CLEAN_DATA.csv")

###performing the t_test on Age and Frailty
My_t_test_result <- with(clean_people_data, t.test(Age~Frailty))

###printing the output of the test on console
MY_t_test_result

###Storing the result into a Test_Output.txt file
capture.output(MY_t_test_result, file="~/Desktop/ACHYUTHAYINALA/Question1/results/Test_Output.txt")



