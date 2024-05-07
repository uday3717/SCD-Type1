--deleting all the rows
delete from product
----
CREATE TABLE [dbo].[product](
	[product_id] [int] NULL,
	[product_name] [varchar](50) NULL,
	[price] [int] NULL
) 
----
select * from product --no rows are there
--
select * from products_stg
