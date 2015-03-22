Assignment\_G-CData
===================

 

This is a description of all the operations made by the R code

 

First of all I load the packages 'plyr' and 'dplyr'

Then i read the data from both Training and Test files. Then i built a table for
each group

Then i built a big table with both the data set training and test

Then i read columns names from exernal file and changed column names to the data
set

Then i have extract only the columns that contain mean or std, exception for
User and activity

Then i have renamed the activities values merging the tables with the table
containing the activities’ descriptions (from external file)

At the end i have built a new table grouping by user and activity. Then i have
computed the mean of each variable

Then i have written the table to an external file
