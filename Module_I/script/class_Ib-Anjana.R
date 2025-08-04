#create folder
dir.create("raw_data")
dir.create("script")
dir.create("clean_data")
dir.create("results")
data <- read.csv(file.choose())
View(data)
str(data)
# Convert the numeric Age variable into a factor
data$age_fac <- as.factor(data$age)
str(data)

data$bmi_fac <- as.factor(data$bmi)
str(data)
class(numeric)
str(data)

# Convert the numeric smoker variable into a factor
data$smoker_fac <- as.factor(data$smoker)
class(data$smoker_num)

data$smoker_num <- ifelse(data$smoker_fac == "yes", 1, 0)
class(data$smoker_num)

