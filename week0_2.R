setClass("measure", slots=list(name="character", age="numeric", height = "numeric", weight = "numeric", BMI = "numeric"))

#obj.1 <- new("measure",name="Steven", age=22, height = 1.6, weight = 80)

bmi.rec <- function() {
  
  name.1 <- readline(prompt="Enter name: ")
  age.1 <- as.numeric(readline(prompt="Enter age: "))
  weight.1 <- as.numeric(readline(prompt="Enter weight: "))
  height.1 <- as.numeric(readline(prompt = "Enter height: "))
  BMI.1 <- weight.1/height.1^2
  
  obj.1 <- new("measure",name=name.1, age=age.1, height = height.1, weight = weight.1, BMI = BMI.1)
  obj.1
}

bmi <- bmi.rec()

write(bmi@BMI, file = "summary.txt")

cont <- readline(prompt = "Continue? (Y/N)")

while (cont == "Y") {
  bmi <- bmi.rec()
  write(bmi@BMI, file = "summary.txt", append = TRUE)
  cont <- readline(prompt = "Continue? (Y/N)")
}