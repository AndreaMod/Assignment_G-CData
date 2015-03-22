Assignment\_G-CData
===================

 

Test1: temporary table from subject\_test.txt

Test2: temporary table from x\_test.txt

Test3: temporary table from y\_test.txt

TableTest: cbind of Test1-2-3

 

Train1: temporary table from subject\_train.txt

Train2: temporary table from x\_train.txt

Train3: temporary table from y\_train.txt

TableTrain: cbind of Test1-2-3

 

TableMerge:Table containin the full Data Set

VarNames: Table with the names of each columns

VarNamesVect: Vector with the names of each column, from VarNames

VarNamesVect2: Added to VarNamesVect 2 column names the Users and the Type of
Activity

TableMergeSub:Extract only columns containing ‘mean’ or ’std’ (except users and
type)

ActivityLabels: table from external file containing labels for all activity
codes

TableMergeSubLabel: Change in the main Data Set the activity codes with their
description

TableMergeSubLabel\_v2 : this table come from ‘TableMergeSubLabel’ and groups
together Users and Activities.     All variables are summarized with the
‘mean()’ function

 
