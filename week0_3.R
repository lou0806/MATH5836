iris.data <- iris

unique(iris.data$Species)

iris.data$Class[iris.data$Species == "versicolor"] <- rep(1, 50)
iris.data$Class[iris.data$Species == "setosa"] <- rep(2, 50)
iris.data$Class[iris.data$Species == "virginica"] <- rep(3, 50)

head(iris.data)

mean(iris.data$Sepal.Length)
sqrt(var(iris.data$Sepal.Length))

mean(iris.data$Sepal.Width)
sqrt(var(iris.data$Sepal.Width))

mean(iris.data$Petal.Length)
sqrt(var(iris.data$Petal.Length))

mean(iris.data$Petal.Width)
sqrt(var(iris.data$Petal.Width))

length(iris.data$Class[iris.data$Class == 1])
length(iris.data$Class[iris.data$Class == 2])
length(iris.data$Class[iris.data$Class == 3])

par(mfrow = c(2,2))
hist(iris.data$Sepal.Length)
hist(iris.data$Sepal.Width)
hist(iris.data$Petal.Length)
hist(iris.data$Petal.Width)

n <- 150
n.train <- 0.6*150
train.vec <- sample(x = seq(from = 1, to = n, by = 1), size = n, replace = FALSE)

iris.train <- iris.data[train.vec[1:n.train],]
iris.test <- iris.data[train.vec[(n.train+1) : n],]

length(iris.train$Class[iris.train$Class == 1])
length(iris.train$Class[iris.train$Class == 2])
length(iris.train$Class[iris.train$Class == 3])

hist(iris.train$Sepal.Length)
hist(iris.train$Sepal.Width)
hist(iris.train$Petal.Length)
hist(iris.train$Petal.Width)

hist(iris.test$Sepal.Length)
hist(iris.test$Sepal.Width)
hist(iris.test$Petal.Length)
hist(iris.test$Petal.Width)

##Last part
iris.class <- iris.data[iris.data$Class != 3,]
n <- 100
n.train <- 0.6*100
train.vec <- sample(x = seq(from = 1, to = n, by = 1), size = n, replace = FALSE)

iris.train <- iris.class[train.vec[1:n.train],]
iris.test <- iris.class[train.vec[(n.train+1) : n],]
