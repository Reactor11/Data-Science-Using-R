# CodeBook
## run_analysis.r  
  It is R script that contains procedure to clean and train data as required.  
  Final data frame is mean_df which is independent tidy data set with the mean of each variable for each activity and each subject.  
Details of mean_df : 
  1. Dimensions - 180 * 68
  2. Attributes/column name - 
       [1] "tbodyacc-mean()-x"           "tbodyacc-mean()-y"          
       [3] "tbodyacc-mean()-z"           "tgravityacc-mean()-x"       
       [5] "tgravityacc-mean()-y"        "tgravityacc-mean()-z"       
       [7] "tbodyaccjerk-mean()-x"       "tbodyaccjerk-mean()-y"      
       [9] "tbodyaccjerk-mean()-z"       "tbodygyro-mean()-x"         
      [11] "tbodygyro-mean()-y"          "tbodygyro-mean()-z"         
      [13] "tbodygyrojerk-mean()-x"      "tbodygyrojerk-mean()-y"     
      [15] "tbodygyrojerk-mean()-z"      "tbodyaccmag-mean()"         
      [17] "tgravityaccmag-mean()"       "tbodyaccjerkmag-mean()"     
      [19] "tbodygyromag-mean()"         "tbodygyrojerkmag-mean()"    
      [21] "fbodyacc-mean()-x"           "fbodyacc-mean()-y"          
      [23] "fbodyacc-mean()-z"           "fbodyaccjerk-mean()-x"      
      [25] "fbodyaccjerk-mean()-y"       "fbodyaccjerk-mean()-z"      
      [27] "fbodygyro-mean()-x"          "fbodygyro-mean()-y"         
      [29] "fbodygyro-mean()-z"          "fbodyaccmag-mean()"         
      [31] "fbodybodyaccjerkmag-mean()"  "fbodybodygyromag-mean()"    
      [33] "fbodybodygyrojerkmag-mean()" "tbodyacc-std()-x"           
      [35] "tbodyacc-std()-y"            "tbodyacc-std()-z"           
      [37] "tgravityacc-std()-x"         "tgravityacc-std()-y"        
      [39] "tgravityacc-std()-z"         "tbodyaccjerk-std()-x"       
      [41] "tbodyaccjerk-std()-y"        "tbodyaccjerk-std()-z"       
      [43] "tbodygyro-std()-x"           "tbodygyro-std()-y"          
      [45] "tbodygyro-std()-z"           "tbodygyrojerk-std()-x"      
      [47] "tbodygyrojerk-std()-y"       "tbodygyrojerk-std()-z"      
      [49] "tbodyaccmag-std()"           "tgravityaccmag-std()"       
      [51] "tbodyaccjerkmag-std()"       "tbodygyromag-std()"         
      [53] "tbodygyrojerkmag-std()"      "fbodyacc-std()-x"           
      [55] "fbodyacc-std()-y"            "fbodyacc-std()-z"           
      [57] "fbodyaccjerk-std()-x"        "fbodyaccjerk-std()-y"       
      [59] "fbodyaccjerk-std()-z"        "fbodygyro-std()-x"          
      [61] "fbodygyro-std()-y"           "fbodygyro-std()-z"          
      [63] "fbodyaccmag-std()"           "fbodybodyaccjerkmag-std()"  
      [65] "fbodybodygyromag-std()"      "fbodybodygyrojerkmag-std()" 
      [67] "activity"                    "subject_number"
  3. Detailed explanatino of these columns are given in "./DataSet/"
  
  
