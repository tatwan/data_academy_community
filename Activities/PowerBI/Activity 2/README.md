# Sales Analysis Activity

After you completed your analysis for 2017 you realized there are additional data sources that are needed for a more comprehensive analysis. This includes sales data for 2018 and 2018, as well as store and product related data.

## Load the data & transform the data

* Load `sales_2018`, and `sales_2019` data sets

  ![image-20240309184516794](images/image-20240309184516794.png)

![image-20240309175004415](images/image-20240309175004415.png)

* In order to combine the sales data (2017, 2018, and 2019) make sure you have the same columns (names, and types) for all three data sets

Here are the columns and their data types. Make sure all three have the same 

![image-20240309183551673](images/image-20240309183551673.png)



* Select Append Queries to stack the data on top of each other (2017, 2018, and 2019)

![image-20240309183425021](images/image-20240309183425021.png)

Then select `Three or more tables`

![image-20240309183450528](images/image-20240309183450528.png)

Combined 2018 and 2019 data with 2017 

![image-20240309183637614](images/image-20240309183637614.png)

* Keep in mind the data is all combined under the `sales_2017` data. Rename the data from `sales_2017` to `combined`

## Load additional data to support your analysis 

* Now add three more files `sales_details`, `dim_products`, and `dim_stores`

![image-20240309184601493](images/image-20240309184601493.png)

* Inspect the `sales_details` dataset 

  ![image-20240309184629756](images/image-20240309184629756.png)

* Remove the last two columns 
* Inspect the `dim_products` dataset and notice we have several issues:

![image-20240309192212789](images/image-20240309192212789.png)

* Make the first row as headers 
* Click the `category || sub_category` column and split into two fields

![image-20240309192300380](images/image-20240309192300380.png)

![image-20240309192335278](images/image-20240309192335278.png)

![image-20240309192404307](images/image-20240309192404307.png)

* Rename the column as shown

![image-20240309192444206](images/image-20240309192444206.png)

* Final inspect the `dim_stores` data set
* Make the first row as column header

![image-20240309192539299](images/image-20240309192539299.png)

* Now for the remaining steps I will show you only the results and you will need to figure out how I split the columns.
* Strarting with the `state - state abr - city` column this is what I have after the transformation (spitting)

![image-20240309192714332](images/image-20240309192714332.png)

* For the `lat/long` here is what I have after the splitting

![image-20240309192757687](images/image-20240309192757687.png)

* Now, click Apply and Close

---

## Modeling the Data 

Click on the model icon 

![image-20240309192934578](images/image-20240309192934578.png)

* First thing hide the sales_2018 and sales_2019 data sets since we already combined them in the combined data set 

![image-20240309193013557](images/image-20240309193013557.png)

* Finish the modeling to obtain the following data model

![image-20240309193250876](images/image-20240309193250876.png)

----

## Dashboard 

![image-20240309202418173](images/image-20240309202418173.png)





