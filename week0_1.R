bmi.rec <- function() {

  name <- readline(prompt="Enter name: ")
  age <- readline(prompt="Enter age: ")
  weight <- as.numeric(readline(prompt="Enter weight: "))
  height <- as.numeric(readline(prompt = "Enter height: "))

  BMI <- weight/height^2
  BMI
}

bmi <- bmi.rec()

write(bmi, file = "summary.txt")

cont <- readline(prompt = "Continue? (Y/N)")

while (cont == "Y") {
  bmi <- bmi.rec()
  write(bmi, file = "summary.txt", append = TRUE)
  cont <- readline(prompt = "Continue? (Y/N)")
}

data <- read.csv(file = "summary.txt", header = FALSE)
mean(data$V1)
var(data$V1)

barplot(data$V1)
