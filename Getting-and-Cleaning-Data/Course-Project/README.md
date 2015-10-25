## Run_Analysis Script Description

The run analysis script reads the training, test and features names data and creates a new text file with means and standard deviations.

### Input File Locations

Place the following files are in the working directory:

1. X_train.txt
2. X_test.txt
3. features.txt

If the the files are not in the working directory then provide the full directory location in the code.

### Data Extraction

The R-script file will read the test and training data files and combine them using rbind.  Then the script will extract the data that corresponds to mean and standard deviation of the variables.  Finally the script will combine the mean and standard deviation data using cbind.  Column headers will be applied using the data from the feautres.txt file.

### Final Data Writing

The final data will be written in "Mean_Std_Data.txt" in the working directory.  If another directory is required then please specify the full path with the file name.
