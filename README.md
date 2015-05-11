# BashDB
========
Create and View SQLite Tables in Bash Terminal

Project Vision
------------

Recreate simple database operations in order for them to be performed in the bash terminal

Features
------------

### Main Functions
    1.  new
    2.  add
    3.  remove
    4.  update
    5.  find
    6.  copy
    7.  paste
    8.  print

> Below are descriptions of how each method works

    * new - used to create a new table with no records (Record ID's are automatically created for each new record)
        `new table [TableName]`
    * add/alter - used to add columns or alter records to an existing table
        `[TableName] add column [ColumnName]`
        `[TableName] add record` (shows a table to enter data into)
        `[TableName] alter record` (shows a table to change record value)
    * remove - used to remove columns or records from an existing table
        `[TableName] remove column [ColumnName]`
        `[TableName] remove record` (shows a table to remove a record from by hitting enter above the desired record)
    * update - used to update the contents of a table (column or record)
        `[TableName] update column [OldColumnName] [NewColumnName]`
        `[TableName] update record` (shows the table to edit record)
    * find - used to search a table for a specific record (copies RecordID of the found record to the users clipboard if one result is returned)
        `[TableName] find [ColumnName] = [ColumnValue]`
        `[TableName] find [ColumnName] = [ColumnValue] and [ColumnName2] = [ColumnValue2]`
        `[TableName] find [ColumnName] = [ColumnValue] or [ColumnName3] = [ColumnValue3]`
    * copy - used to copy the given table, column or value
        `copy [TableName]`
        `[TableName] copy [ColumnName]`
        `[TableName] copy record [RecordID]`
    * paste - appends the table, column or record to the table supplied (for table and record pasting, values will be pasted according to the order they were copied, column names need not match. Pasting less values than there are columns will result in NULL value columns and pasting in more will cut off the extra values)
        `[TableName] paste`
    * print - used to print an existing table
        `print [TableName]`

Usage Examples
--------------

### Adding Scenario

  > ./bashdb
  > `new table Persons`
  1. Creates blank table named Persons
  > `Persons add column Name`
  2. Creates a column called Name in the Persons table
  > `Persons alter record`
  3. Shows the existing Persons table for data record entry
  > `exit`
  4. Exits the program

Acceptance Criteria:

  * New table, column and record are created with the proper values
  * The new record contains a RecordID automatically generated
  * Calling `exit` exits the program

### Deleting Scenario

Usage Example:

  > ./bashdb
  > `Persons remove record`
  1. Shows the table in gui format, user presses enter on the record to be deleted
  > `Persons remove LastName`
  2. Removes the LastName column from the Persons table
  > `remove Persons`
  3. Deletes the Persons table
  > `exit`
  4. Exits the program

Acceptance Criteria:

  * Program removes record, column and table coresponding to user input
  * Exits the program at the end


### Updating Scenario

Usage Example:

  > ./bashdb
  > `Persons update Name FirstName`
  1. Updates the column called "Name" in the Persons table to "FirstName"
  > `Persons update record`
  2. Shows table with ability to edit a record
  > `exit`
  3. Exits the program

Acceptance Criteria:

  * Program changes the Name column to FirstName
  * Program edits the record corresponding to what the user chose
  * Exits the program at the end

### Finding Scenario

Usage Example:

  > ./bashdb
  > `Persons find Name = John`
  1. Shows all records in the Persons table with the Name John
  > `Persons find Name = John and LastName = Smith`
  2. Shows all records in the Persons table with the Name John and LastName Smith (copies RecordID to clipboard if only one record found)
  > `exit`
  3. Exits the program

Acceptance Criteria:

  * Program finds records corresponding to user searches
  * Program copiesthe RecordID of any single record found to user's clipboard
  * Exits the program at the end

### Copying Scenario

Usage Example:

  > ./bashdb
  > `Persons find Name = John and LastName = Smith`
  1. Shows all records in the Persons table with the Name John and LastName and copies the RecordID found
  > `Persons copy record 1`
  2. Copies the record corresponding to RecordID = 1 in the Persons table
  > `Persons copy Name`
  3. Copies the entire Name column from the Persons table onto user's clipboard
  > `copy Persons`
  4. Copies the entire Persons table to the user's clipboard
  > `exit`
  5. Exits the program

Acceptance Criteria:

  * Program copies the proper content onto the user's clipboard
  * Exits the program at the end

### Pasting Scenario

Usage Example:

  > ./bashdb
  > `Persons copy record 1`
  1. Copies the record corresponding to RecordID = 1 in the Persons table
  > `Employees paste`
  2. Pastes record 1 from the Persons table into the Employees table
  > `copy Persons`
  3. Copies the entire Persons table to the user's clipboard
  > `Employees paste`
  4. Appends the entire Persons table to the Employees table
  > `exit`
  5. Exits the program

Acceptance Criteria:

  * Program pastes the proper information into the chosen table
  * Exits the program at the end

### Printing Scenario

Usage Example:

  > ./bashdb
  > `print Persons`
  1. Shows the entire Persons table
  > `exit`
  2. Exits the program

Acceptance Criteria:

  * Program prints the entire table to screen with proper formatting
  * Exits the program at the end

