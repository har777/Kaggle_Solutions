
library(FNN)

train <- read.csv("C:/Users/har777/Desktop/train.csv", header=TRUE)
test <- read.csv("C:/Users/har777/Desktop/test.csv", header=TRUE)

labels <- train[,1]
train <- train[,-1]

results <- (0:9)[knn(train, test, labels, k = 10, algorithm="cover_tree")]

final <- data.frame(c(1:28000), c(results[1:28000]))

write.table(final, file="C:/Users/har777/Desktop/knn_R.csv", sep=",",row.names=FALSE, col.names=FALSE)