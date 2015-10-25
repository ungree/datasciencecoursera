run_analysis = function(){
        
        ## Reading training, test, and feature names data
        ## Place the following files are in the working directory:
        ##
        ## 1. X_train.txt
        ## 2. X_test.txt
        ## 3. features.txt
        ##
        ## If the the files are not in the working directory then provide the full directory location
        
        train = train = read.table("X_train.txt")
        test = read.table("X_test.txt")
        headers = read.table("features.txt")  ## Feature names provide the column header names for the final data
        
        ## combined the training and test data
        combined_data = rbind(train,test)
        
        ## extracting header names which represent mean and standard deviation data
        headers_mean = grep("mean()", headers$V2, fixed = TRUE)
        headers_std = grep("std()", headers$V2, fixed = TRUE)
        
        ## extracting data with mean and standard deviation data
        mean_data = combined_data[,headers_mean]
        std_data = combined_data[,headers_std]
        
        ## adding header names to each data set
        colnames(mean_data) = headers[headers_mean,2]
        colnames(std_data) = headers[headers_std,2]
        
        ## combining mean and standard deviation data
        final_data = cbind(mean_data,std_data)
        
        ## writing final data to file
        ## Note: The file will be written to the working directory. 
        ## If another directory is required then specify directory path
        write.table(final_data, "Mean_Std_Data.txt", row.name=FALSE)
        
}
