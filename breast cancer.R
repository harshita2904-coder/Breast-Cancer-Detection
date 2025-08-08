library(memisc)
library(DMwR)
library(caret)
library(pROC)
library(ROCR)
library(dplyr)
library(e1071)
library(haven)
library(haven)
library(ggplot2)
library(scales)
library(fastAdaboost)

setwd("E:/Yoris/Paper/Biologi/Breast cancer")
bc <- read.csv("breast-cancer-wisconsin.csv", header=FALSE)[,-17]
names(bc) <- c(paste0("X",1:10),"Y")
bc$Y <- ifelse(bc$Y == '2', "Benign","Malignant")
for (i in 1:dim(mushroom)[2]) {
  mushroom[,i] <- factor(mushroom[,i])
}