# A View with a Roomful of Queries

In this activity, you will work with a partner to practice your join and subquery skills, as well as build out a view.

## Instructions

* Write a query to get the number of payments and total payment amount for each customer in the `payment` table. Make sure to pull the customer `first_name` and `last_name` from the `customer` table via a `JOIN`.

  * The results should look similar to the following image.

  ![join](Images/join.png)

  * Then, create a view named `customer_revenues` from the above query.

  * Query the newly created `customer_revenues` view to find the revenues associated with customer 'THERESA WATSON'.

* Write a query to get the number of payments and total payment amount that the staff member 'Mike Hillyer' has facilitated for each day in the `payment` table. Make sure to use a subquery instead of a join to do so.

  * The results should look similar to the following image.

  ![subquery](Images/subquery.png)

  * Query the newly created `staff_sales` view to find the sales for `staff_id` = 1 on the date `2005-07-31`.

