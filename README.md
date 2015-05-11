# BashDB
========
Create and View SQLite Tables in Bash Terminal

Operation
------------

### Main Functions
    1.  new
    2.  add
    3.  remove
    4.  update
    5.  print

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
    * print - used to print an existing table
        `print [TableName]`


