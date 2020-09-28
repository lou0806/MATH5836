iris.data <- iris

iris.data$Class[iris.data$Species == "versicolor"] <- rep(1, 50)
iris.data$Class[iris.data$Species == "setosa"] <- rep(2, 50)
iris.data$Class[iris.data$Species == "virginica"] <- rep(3, 50)

head(iris.data)

iris.lm.1 <- lm(Sepal.Length ~ Petal.Length, data= iris.data)
summary(iris.lm.1)
iris.lm.2 <- lm(Sepal.Length ~ Sepal.Width, data= iris.data)
summary(iris.lm.2)
iris.lm.3 <- lm(Sepal.Length ~ Petal.Width, data= iris.data)
summary(iris.lm.3)


##Part 2 (binary classification model)
iris.class <- iris.data[iris.data$Class != 3,]
n <- 100
n.train <- 0.6*100
train.vec <- sample(x = seq(from = 1, to = n, by = 1), size = n, replace = FALSE)

iris.train <- iris.class[train.vec[1:n.train],]
iris.test <- iris.class[train.vec[(n.train+1) : n],]