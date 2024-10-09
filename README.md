# Relational Databases. Concepts and Techniques

### [# goit-rdb-fp](https://github.com/topics/goit-rdb-hw-fp)

<p align="center">
  <img align="center" src="./assets/thumbnail.jpg" width="300" title="Project thumbnail" alt="project thumbnail">
</p>


## SQL course finale assignment as a summary.

### Assignment Description

1. Load the Data:
    * Create a `pandemic` schema in the database using an SQL command.
    * Select it as the default schema using an SQL command.
    * Import [the data](./assets/task-dataset/infectious_cases.csv) using the Import wizard.
    * Review the data to get familiar with the context.

2. `Entity` and `Code` attributes are repeated constantly. Eliminate this redundancy through data normalization.
   Normalize the `infectious_cases` table to the 3rd normal form. Save two tables with the normalized data in the same schema.

3. Analyze the Data:
    * For each unique combination of `Entity` and `Code` or their `id`, calculate the average, minimum, maximum, and sum for the `Number_rabies` attribute.
        💡 Note that the `Number_rabies` attribute may contain empty values `''` — you need to filter these out beforehand.
    * Sort the results by the calculated average value in descending order.
    * Select only 10 rows for display.

4. Build a Year Difference Column

    For the original or normalized table for the field `Year`, use built-in SQL functions to:

    * Create an attribute that represents the first of January of the corresponding year,
        💡 For example, if the attribute contains the value `1996`, the new attribute value should be `1996-01-01`.
    * Create an attribute that equals the current date,
    * Create an attribute that equals the difference in years between the two aforementioned columns.
        💡 There is no need to recalculate all other attributes, such as `Number_malaria`.

5. Create Your Own Function
    * Create and use a function that builds an attribute like in the previous task: the function should take the year value as input and return the difference in years between the current date and the date created from the year attribute (e.g., 1996 → '1996-01-01').
        💡 If you didn't complete the previous task, you could create another function - a function that calculates the number of cases over a specific1. Write an SQL query that extracts the year, month, and day from the `date` attribute of the `orders` table. Display them as three separate attributes along with the `id` attribute and the original `date` attribute (a total of 5 attributes).

### Solution

Solutions are represented in [homework](./homework/) folder:

1. Part 1: solution for this task part is placed in [homework/p1](./homework/p1) folder.
2. Part 2: solution for this task part is placed in [homework/p2](./homework/p2) folder.
3. Part 3: solution for this task part is placed in [homework/p3](./homework/p3) folder.
4. Part 4: solution for this task part is placed in [homework/p4](./homework/p4) folder.
5. Part 5: solution for this task part is placed in [homework/p5](./homework/p5) folder.
