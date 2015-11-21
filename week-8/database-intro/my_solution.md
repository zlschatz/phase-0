Release 5: SELECTing data from a database
  1. SELECT * FROM states;
  2. SELECT * FROM regions;
  3. select state_name, population from regions;
  4. select state_name, population from states order by population desc;
  5. select state_name from states where region_id='7';
  6. select state_name, population_density from states where population_density>'50' order by population_density asc;
  7. select state_name from states where population between 1000000 and 1500000;
  8. select state_name, region_id from states order by region_id asc;
  9. select region_name from regions where region_name like '%Central';
  10. select region_name, state_name from regions inner join states on regions.id=states.region_id order by region_id asc;


Release 6: Your Own Schema
![Release_6](/release_6_schema.png)


Release 7: Reflect
What are databases for?
  - Databases are for organizing large groups of data. These allow for quick and easy modification and retrieval of data. Similar to databases, hashes and arrays are also capable of storing data. The reason to use databases, is to store mass quanities and manage load time of sites. We can then use languages such as SQL to quickly and efficiently navigate through the database.
What is a one-to-many relationship?
  - One-to-many means that there is a data point that is related to multiple other data points. For example, in this challenge we worked with state data. Each state_name was attached to many other data points such as population, population_density and region_id. We are then able to manipulate the data set in multiple different ways due to this relationship.
What is a primary key? What is a foreign key? How can you determine which is which?
  - Primary Key: Unique identifier within a collection of data
  - Foreign Key: a collection of data points that are directly relatd to a separate collection stored within a different table
  - To determine the difference, it's best to see which is a unique data point. These can be names or identifiers that could not be shared by other groups of data. On the other hand, foreign keys can be used across multiple sets of data.
How can you select information out of a SQL database? What are some general guidelines for that?
  - SELECT (column_name) FROM (table_name);
  - There are tons of commands for selecting and organized data. The one above is the most basic way to find data from a table. It is important to include the semi-colon at the end of each line. Also, words do not necessarily have to be capitalized, but can be useful while reading SQL commands.