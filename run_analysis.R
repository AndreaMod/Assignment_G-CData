
#Assignment 3

#Load packages
library(plyr)
library(dplyr)

#Read Data for Test Set and built a Table
Test1=read.table("./UCI HAR Dataset/test/subject_test.txt")
Test2=read.table("./UCI HAR Dataset/test/X_test.txt")
Test3=read.table("./UCI HAR Dataset/test/y_test.txt")
TableTest=cbind(Test1,Test2,Test3)

#Read Data for Train Set and built a Table
Train1=read.table("./UCI HAR Dataset/train/subject_train.txt")
Train2=read.table("./UCI HAR Dataset/train/X_train.txt")
Train3=read.table("./UCI HAR Dataset/train/y_train.txt")
TableTrain=cbind(Train1,Train2,Train3)

#Bulding a big Table with both Training and Test
TableMerge=rbind(TableTest,TableTrain)

#Read Variable Names from file
VarNames=read.table("./UCI HAR Dataset/features.txt")

#Built a vector with all names
VarNamesVect=as.vector(VarNames$V2)

#Change Column names to main Table
VarNamesVect2=c("User",VarNamesVect,"Type")
names(TableMerge)=VarNamesVect2

#Extract all columns with mean and std, except for User and Type(is the activity reference)
TableMergeSub=TableMerge[,grepl("User", colnames(TableMerge))|grepl("mean", colnames(TableMerge))|grepl("std", colnames(TableMerge))|grepl("Type", colnames(TableMerge))]


#Read activity labels from file
ActivityLabels=read.table("./UCI HAR Dataset/activity_labels.txt")

#Merge activity labels to Main Table
TableMergeSubLabel=merge(TableMergeSub,ActivityLabels,by.x="Type",by.y="V1",all=TRUE)

#Delect first row, unusefull comes from merging
TableMergeSubLabel=TableMergeSubLabel[,-c(1)]

#Rename Activity Column
TableMergeSubLabel=rename(TableMergeSubLabel,c(V2="Activity"))

#Group by User/Activity and compute mean for each variable
TableMergeSubLabel_v2=ddply(TableMergeSubLabel,.(User,Activity),numcolwise(mean))

#Write table to external file
write.table(TableMergeSubLabel_v2,"Final_Table.txt",row.name=FALSE)





