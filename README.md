# FACT TABLE AND DIMENSION TABLE
Basically we have 2 types of tables
Dimension tables holds the attributes of a object like product, customer table etc

Fact table basically hold the numerical values that are capable of deriving some business information like sales, profit for the attributes present in the dimension table.
It doesn't make sense to store the attributes in fact table, as there will be n number of analytical transactions, so the data gets duplicated and the db may slow down
so we only store primary keys of the attributes present in the dimension tables, so that it will point to the dim table

Basically the dimension table Info changes very slowly/ or very rarely
Ex:Daily new products aren't added in the Amazon
or Daily the customer data doesn't get changed

## MORE ABOUT FACT AND DIMENSION TABLE
Fact tables and dimension tables are key components of a schema in a data warehouse. A fact table contains records that combine attributes from different dimension tables. These records allow users to analyze different aspects of their business, which can aid in decision-making and improving the business. 

Dimension tables, on the other hand, provide the context and background information for the measures recorded in the fact table. One of the main differences between fact tables and dimension tables is that dimension tables contain the attributes that the measures in the fact table are based on.

### What is a Fact Table?
In a data warehouse, a fact table is a table that stores the measurements, metrics, or facts related to a business operation. 

### What is a Dimension Table?
Dimension tables contain descriptions of the objects in a fact table and provide information about dimensions such as values, characteristics, and keys. 

# Slowly Changing Dimensions
What is a Slowly Changing Dimension?

A Slowly Changing Dimension (SCD) is a dimension that stores and manages both current and historical data over time in a data warehouse. It is considered and implemented as one of the most critical ETL tasks in tracking the history of dimension records.

There are three types of SCDs and you can use Warehouse Builder to define, deploy, and load all three types of SCDs.

What are the three types of SCDs?

The three types of SCDs are:

## Type 1 SCDs - Overwriting

In a Type 1 SCD the new data overwrites the existing data. Thus the existing data is lost as it is not stored anywhere else. This is the default type of dimension you create. You do not need to specify any additional information to create a Type 1 SCD.

## Type 2 SCDs - Creating another dimension record

A Type 2 SCD retains the full history of values. When the value of a chosen attribute changes, the current record is closed. A new record is created with the changed data values and this new record becomes the current record. Each record contains the effective time and expiration time to identify the time period between which the record was active.

## Type 3 SCDs - Creating a current value field

A Type 3 SCD stores two versions of values for certain selected level attributes. Each record stores the previous value and the current value of the selected attribute. When the value of any of the selected attributes changes, the current value is stored as the old value and the new value becomes the current value.

In this Repo, we have code to implement SCD Type1 using the SqlAlchemy and Pandas Library, and we have used the ETL concept.
