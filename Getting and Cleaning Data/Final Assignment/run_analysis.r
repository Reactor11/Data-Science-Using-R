# Importing necessary libraries.
library(dplyr)
library(tidyr)
warning(FALSE)

# Reading test and train data.
test_x <- read.table('./DataSet/test/X_test.txt',header = FALSE)
test_y <- read.table('./DataSet/test/y_test.txt', header = FALSE)
train_x <- read.table('./DataSet/train/X_train.txt', header = FALSE)
train_y <- read.table('./DataSet/train/y_train.txt', header = FALSE)

# Looking into data.
head(test_x)
head(test_y)
head(train_x)
head(train_y)

# Checking the dimension of the data.
dim(test_x)
dim(test_y)
dim(train_x)
dim(train_y)

# Renaming the columns of the data.
col <- read.table('./DataSet/features.txt',header = FALSE)
names(train_x) <- col$V2
names(test_x) <- col$V2

subject_test <- read.table('DataSet/test/subject_test.txt',header = FALSE)
subject_train <- read.table('DataSet/train/subject_train.txt',header = FALSE)


# Checking if the columns has been changed or not.
print(names(test_x))
print(names(train_x))

test_x$activity <- test_y$V1
train_x$activity <- train_y$V1
test_x$subject_number <- subject_test$V1
train_x$subject_number <- subject_train$V1


head(test_x)

head(train_x)

df <- rbind(test_x,train_x)

head(df)

names(df) <- tolower(names(df))

mean_index <- grep(pattern = ".*mean\\(\\).*",names(df))
std_index <- grep(".*std\\(\\).*",names(df))

index <- c()
index <- append(index,mean_index)
index <- append(index,std_index)
index <- append(index,NCOL(df))
index <- append(index,NCOL(df)-1)
print(index)

df <- df[,index]
# head(df)
dim(df)

print(names(df))
print(length(index))

label <- read.table('DataSet/activity_labels.txt')

for(i in 1:NROW(df)){
  if(df[i,NCOL(df)] == 1) df[i,NCOL(df)] <- "WALKING"
  else if(df[i,NCOL(df)] == 2) df[i,NCOL(df)] <- "WALKING_UPSTAIRS"
  else if(df[i,NCOL(df)] == 3) df[i,NCOL(df)] <- "WALKING_DOWNSTAIRS"
  else if(df[i,NCOL(df)] == 4) df[i,NCOL(df)] <- "SITTING"
  else if(df[i,NCOL(df)] == 5) df[i,NCOL(df)] <- "STANDING"
  else if(df[i,NCOL(df)] == 6) df[i,NCOL(df)] <- "LAYING"
}

# Converting columns data type from string to floating point
for(i in 1:(ncol(df)-1)){
  df[,i] <- as.double(df[,i])
}
mean_df <- data.frame()

for(i in 1:30){
  for(j in label$V2){
    mean_df <- rbind(mean_df,(apply(df[(df$subject_number == i & df$activity == j),1:(ncol(df)-2)],2,mean)))
  }
}
label$V1 <- NULL
names(mean_df) <- names(df)[1:(ncol(df)-2)]
mean_df <- cbind(mean_df,merge(label,1:30))
mean_df <- rename(mean_df,'activity'='V2')
mean_df <- rename(mean_df,'subject_number'='y')
write.table(file = './mean_df.txt',x = mean_df,row.name=FALSE) 
