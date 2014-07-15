
### Source data
For this project, data correspond to measures of sensor signals from 30 volunteers.  File containig data is
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A full description of data is available at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

### Tidy data
##### Activity



<table>
<tr>	<td>	Tidy name	</td><td>	Original name	</td><td>	Values	</td></tr>
<tr>	<td>	Activity	</td><td>	NA	</td><td>	Activity:  WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING</td></tr>
<tr>	<td>	Subject	</td><td>	NA	</td><td>	Integre form 1 to 3	</td></tr>
<tr>	<td>	time_body_acelerometer_mean_X	</td><td>	tBodyAcc-mean()-X	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_acelerometer_mean_Y	</td><td>	tBodyAcc-mean()-Y	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_acelerometer_mean_Z	</td><td>	tBodyAcc-mean()-Z	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_acelerometer_std_X	</td><td>	tBodyAcc-std()-X	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_acelerometer_std_Y	</td><td>	tBodyAcc-std()-Y	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_acelerometer_std_Z	</td><td>	tBodyAcc-std()-Z	</td><td>	Double	</td></tr>
<tr>	<td>	time_gravity_acelerometer_mean_X	</td><td>	tGravityAcc-mean()-X	</td><td>	Double	</td></tr>
<tr>	<td>	time_gravity_acelerometer_mean_Y	</td><td>	tGravityAcc-mean()-Y	</td><td>	Double	</td></tr>
<tr>	<td>	time_gravity_acelerometer_mean_Z	</td><td>	tGravityAcc-mean()-Z	</td><td>	Double	</td></tr>
<tr>	<td>	time_gravity_acelerometer_std_X	</td><td>	tGravityAcc-std()-X	</td><td>	Double	</td></tr>
<tr>	<td>	time_gravity_acelerometer_std_Y	</td><td>	tGravityAcc-std()-Y	</td><td>	Double	</td></tr>
<tr>	<td>	time_gravity_acelerometer_std_Z	</td><td>	tGravityAcc-std()-Z	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_acelerometer_Jerk_mean_X	</td><td>	tBodyAccJerk-mean()-X	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_acelerometer_Jerk_mean_Y	</td><td>	tBodyAccJerk-mean()-Y	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_acelerometer_Jerk_mean_Z	</td><td>	tBodyAccJerk-mean()-Z	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_acelerometer_Jerk_std_X	</td><td>	tBodyAccJerk-std()-X	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_acelerometer_Jerk_std_Y	</td><td>	tBodyAccJerk-std()-Y	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_acelerometer_Jerk_std_Z	</td><td>	tBodyAccJerk-std()-Z	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_gyroscope_mean_X	</td><td>	tBodyGyro-mean()-X	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_gyroscope_mean_Y	</td><td>	tBodyGyro-mean()-Y	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_gyroscope_mean_Z	</td><td>	tBodyGyro-mean()-Z	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_gyroscope_std_X	</td><td>	tBodyGyro-std()-X	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_gyroscope_std_Y	</td><td>	tBodyGyro-std()-Y	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_gyroscope_std_Z	</td><td>	tBodyGyro-std()-Z	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_gyroscope_Jerk_mean_X	</td><td>	tBodyGyroJerk-mean()-X	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_gyroscope_Jerk_mean_Y	</td><td>	tBodyGyroJerk-mean()-Y	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_gyroscope_Jerk_mean_Z	</td><td>	tBodyGyroJerk-mean()-Z	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_gyroscope_Jerk_std_X	</td><td>	tBodyGyroJerk-std()-X	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_gyroscope_Jerk_std_Y	</td><td>	tBodyGyroJerk-std()-Y	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_gyroscope_Jerk_std_Z	</td><td>	tBodyGyroJerk-std()-Z	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_acelerometer_Mag_mean	</td><td>	tBodyAccMag-mean()	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_acelerometer_Mag_std	</td><td>	tBodyAccMag-std()	</td><td>	Double	</td></tr>
<tr>	<td>	time_gravity_acelerometer_Mag_mean	</td><td>	tGravityAccMag-mean()	</td><td>	Double	</td></tr>
<tr>	<td>	time_gravity_acelerometer_Mag_std	</td><td>	tGravityAccMag-std()	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_acelerometer_JerkMag_mean	</td><td>	tBodyAccJerkMag-mean()	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_acelerometer_JerkMag_std	</td><td>	tBodyAccJerkMag-std()	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_gyroscope_Mag_mean	</td><td>	tBodyGyroMag-mean()	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_gyroscope_Mag_std	</td><td>	tBodyGyroMag-std()	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_gyroscope_JerkMag_mean	</td><td>	tBodyGyroJerkMag-mean()	</td><td>	Double	</td></tr>
<tr>	<td>	time_body_gyroscope_JerkMag_std	</td><td>	tBodyGyroJerkMag-std()	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_acelerometer_mean_X	</td><td>	fBodyAcc-mean()-X	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_acelerometer_mean_Y	</td><td>	fBodyAcc-mean()-Y	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_acelerometer_mean_Z	</td><td>	fBodyAcc-mean()-Z	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_acelerometer_std_X	</td><td>	fBodyAcc-std()-X	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_acelerometer_std_Y	</td><td>	fBodyAcc-std()-Y	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_acelerometer_std_Z	</td><td>	fBodyAcc-std()-Z	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_acelerometer_Jerk_mean_X	</td><td>	fBodyAccJerk-mean()-X	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_acelerometer_Jerk_mean_Y	</td><td>	fBodyAccJerk-mean()-Y	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_acelerometer_Jerk_mean_Z	</td><td>	fBodyAccJerk-mean()-Z	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_acelerometer_Jerk_std_X	</td><td>	fBodyAccJerk-std()-X	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_acelerometer_Jerk_std_Y	</td><td>	fBodyAccJerk-std()-Y	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_acelerometer_Jerk_std_Z	</td><td>	fBodyAccJerk-std()-Z	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_gyroscope_mean_X	</td><td>	fBodyGyro-mean()-X	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_gyroscope_mean_Y	</td><td>	fBodyGyro-mean()-Y	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_gyroscope_mean_Z	</td><td>	fBodyGyro-mean()-Z	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_gyroscope_std_X	</td><td>	fBodyGyro-std()-X	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_gyroscope_std_Y	</td><td>	fBodyGyro-std()-Y	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_gyroscope_std_Z	</td><td>	fBodyGyro-std()-Z	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_acelerometer_Mag_mean	</td><td>	fBodyAccMag-mean()	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_acelerometer_Mag_std	</td><td>	fBodyAccMag-std()	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_Bodyacelerometer_JerkMag_mean	</td><td>	fBodyBodyAccJerkMag-mean()	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_Bodyacelerometer_JerkMag_std	</td><td>	fBodyBodyAccJerkMag-std()	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_Bodygyroscope_Mag_mean	</td><td>	fBodyBodyGyroMag-mean()	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_Bodygyroscope_Mag_std	</td><td>	fBodyBodyGyroMag-std()	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_Bodygyroscope_JerkMag_mean	</td><td>	fBodyBodyGyroJerkMag-mean()	</td><td>	Double	</td></tr>
<tr>	<td>	freq_body_Bodygyroscope_JerkMag_std	</td><td>	fBodyBodyGyroJerkMag-std()	</td><td>	Double	</td></tr>


</table>
