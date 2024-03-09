# Sales Analysis Activity

## Data Wrangling (Transformation)

1. Load the sales_2017.csv data 

![image-20240309164921715](images/image-20240309164921715.png)

2. There are some data issues that you will need to fix first. So, click on Transform Data 

![image-20240309165004410](images/image-20240309165004410.png)

* Remember, the profiling is base don the first 1000 rows. 

 ![image-20240309171227756](images/image-20240309171227756.png)

* Remove the first 2 rows
* Remove Column 2
* Then, make the first row as header

Your result should look like the following

![image-20240309165209319](images/image-20240309165209319.png)

Here are the applied steps so far

![image-20240309165223340](images/image-20240309165223340.png)

* From Remove Rows, select Remove Blank Rows
* Remove `promo_bin_1` , `promo_bin_2`, `promo_discount_2` columns
* Replace “ALL” `NA` values with blank or you can use the word `null`

![image-20240309165847906](images/image-20240309165847906.png)

* Then again, select Remove Blank Rows
* Convert `Oder_Date` to a date type
* Convert `Revenue`, `Stock`, and `Price` to proper type for calculations 
* For sales, extract the number of sales for example `3 sales` should be a numeric value `3`
  * Hint: Check out Split Column by Delimiter 
  * Is there another way to do this?

![image-20240309170916651](images/image-20240309170916651.png)

* Apply and close

## Data Visualization

Try to match the following the analysis using the dataset you just prepared 

**Screen 1**

![image-20240309172200902](images/image-20240309172200902.png)

![image-20240309172649219](images/image-20240309172649219.png)



