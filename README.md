# BashDB
========
Create and View SQLite Tables in Bash Terminal

Features
------------

#### Main Functions
    1.  new
    2.  add
    3.  remove
    4.  update
    5.  find
    6.  print

> Below are descriptions of how each method works

    * new - used to create a new table with no records (Record ID's are automatically created for each new record)
        `new table [TableName]`
    * add - used to add columns or records to an existing table
        `[TableName] add column [ColumnName]`
        `[TableName] add record` (shows a table to enter data into)
    * remove - used to remove columns or records from an existing table
        `[TableName] remove column [ColumnName]`
        `[TableName] remove record` (shows a table to remove a record from by hitting enter above the desired record)
    * update - used to update the contents of a table (column or record)
        `[TableName] update column [OldColumnName] [NewColumnName]`
        `[TableName] update record` (shows the table to edit record)
    * find - used to search a table for a specific record
        `[TableName] find [ColumnName] = [ColumnValue]`
    * print - used to print an existing table
        `print [TableName]`

Usage Example:

  > ./bashdb
  > `new table Persons`
  1. Creates blank table named Persons
  > `Persons add column Name`
  2. Creates a column called Name in the Persons table
  > `Persons add record`
  3. Shows the existing Persons table for data record entry
  > `exit`
  4. Exits the program

Acceptance Criteria:

  * All user actions affect the table in the corresponding manner
  * Each scenario is given a number, which does not correspond to its database id

### Deleting a scenario
 
In order to remove duplicates and/or scenarios that aren't illuminating
I want to delete an existing scenario

Usage Example:

  > ./would_you_rather manage
  1. Add a scenario
  2. List all scenarios
  3. Exit
  > 2
  1. eat a snake
  2. eat a steak
  3. butcher a cow
  > 3
  butcher a cow
  Would you like to?
  1. Edit
  2. Delete
  3. Exit
  > 2
  "butcher a cow" has been deleted
  1. Add a scenario
  2. List all scenarios
  3. Exit

Acceptance Criteria:

  * Program prints out confirmation that the scenario was deleted
  * The deleted scenario is removed from the database
  * All references to the deleted scenario are removed from the database
  * After the deletion, the user is taken back to the main manage menu


