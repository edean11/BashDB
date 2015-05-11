require_relative '../helper'

### Adding Scenario

#   > ./bashdb
#   > `new table Persons`
#   1. Creates blank table named Persons
#   > `Persons add column Name`
#   2. Creates a column called Name in the Persons table
#   > `Persons add record`
#   3. Shows the existing Persons table for data record entry
#   > `exit`
#   4. Exits the program

# Acceptance Criteria:

#   * New table, column and record are created with the proper values
#   * The new record contains a RecordID automatically generated
#   * Calling `exit` exits the program

class AddingANewDBItemTest < MiniTest::Test

    def test_adding_table
        shell_output = ""
        expected = ""
        IO.popen('././bashdb','r+') do |pipe|
            expected << "Hello, what would you like to do?\n"
            pipe.puts "new table Persons"
            string = <<EOS
            ===============
            ||  PERSONS  ||
            ===============
            |-  RecordID -|
            ---------------
            |      1      |
            ---------------
EOS
            expected << string
            pipe.close_write
            shell_output = pipe.read
        end
        assert_equal expected,shell_output
    end

    def test_adding_column
        shell_output = ""
        expected = ""
        IO.popen('././bashdb','r+') do |pipe|
            expected << "Hello, what would you like to do?\n"
            pipe.puts "new table Persons"
            string1 = <<EOS
            ===============
            ||  PERSONS  ||
            ===============
            |-  RecordID -|
            ---------------
            |      1      |
            ---------------
EOS
            expected << string1
            pipe.puts "Persons add column FirstName"
            string2 = <<EOS
            ==============================
            ||          PERSONS         ||
            ==============================
            |-  RecordID -||- FirstName -|
            ------------------------------
            |      1      ||    NULL     |
            ------------------------------
EOS
            expected << string2
            pipe.close_write
            shell_output = pipe.read
        end
        assert_equal expected,shell_output
    end

    def test_adding_record
        shell_output = ""
        expected = ""
        IO.popen('././bashdb','r+') do |pipe|
            expected << "Hello, what would you like to do?\n"
            pipe.puts "new table Persons"
            string1 = <<EOS
            ===============
            ||  PERSONS  ||
            ===============
            |-  RecordID -|
            ---------------
            |      1      |
            ---------------
EOS
            expected << string1
            pipe.puts "Persons add column FirstName"
            string2 = <<EOS
            ==============================
            ||          PERSONS         ||
            ==============================
            |-  RecordID -||- FirstName -|
            ------------------------------
            |      1      ||    NULL     |
            ------------------------------
EOS
            expected << string2
            pipe.puts "Persons add record"
            string3 = <<EOS
            ==============================
            ||          PERSONS         ||
            ==============================
            |-  RecordID -||- FirstName -|
            ------------------------------
            |      1      ||    John     |
            ------------------------------
            |      2      ||    NULL     |
            ------------------------------
EOS
            expected << string3
            pipe.close_write
            shell_output = pipe.read
        end
        assert_equal expected,shell_output
    end

    def test_altering_record_value
        shell_output = ""
        expected = ""
        IO.popen('././bashdb','r+') do |pipe|
            expected << "Hello, what would you like to do?\n"
            pipe.puts "new table Persons"
            string1 = <<EOS
            ===============
            ||  PERSONS  ||
            ===============
            |-  RecordID -|
            ---------------
            |      1      |
            ---------------
EOS
            expected << string1
            pipe.puts "Persons add column FirstName"
            string2 = <<EOS
            ==============================
            ||          PERSONS         ||
            ==============================
            |-  RecordID -||- FirstName -|
            ------------------------------
            |      1      ||    NULL     |
            ------------------------------
EOS
            expected << string2
            pipe.puts "Persons alter record"
            expected << string2
            pipe.puts "John"
            string3 = <<EOS
            ==============================
            ||          PERSONS         ||
            ==============================
            |-  RecordID -||- FirstName -|
            ------------------------------
            |      1      ||    John     |
            ------------------------------
EOS
            expected << string3
            pipe.close_write
            shell_output = pipe.read
        end
        assert_equal expected,shell_output
    end

end