# "LIBRARY MANAGEMENT SYSTEM"
by Vejandla Chakrish

Viedo overview :

## SCOPE 

The purpose of the Library Management System Database is to facilitate the efficient management of library operations within an organization.it includes entities related to Books, Borrowing, Members, Staff and Suppliers.

### Included in Scope:

* Books: Basic information about Books including their Book details, Publisher details and number of CopiesAvailable.

*  Borrowing: Basic information about Borrowed books including their BorrowingID, MemberID, Due and Returned Dates.

*  Members: Basic information about Visited Members including their Name, Personal details and Membership dates.

*  Staff: Basic information about Staff including their Personal details and StaffID.

*  Suppliers: Basic information about Suppliers including their Personal details and SupplierID.

## Functional Requirements

Users should be able to perform CRUD operations on Books, Borrowing, Members, Staff and Suppliers. they should also be able to:
* Retrieve Books details along with the Borrowing and Members information.
* Caluculate total books and total available books in library.
* List Books tittles and Suppliers names.
* identify books tittles of available books.

## Representation

Entities are present in SQL tables with the following schema.

### Entities

The database includes the following entities;

#### Books

The Books table includes;

* `BookID` (`INT`): PRIMARY KEY constraint.
* `Tittle` (`VARCHAR`): Tittle of the Book.
* `Author` (`VARCHAR`): Author of the Book.
* `ISBN` (`VARCHAR`): ISBN number of the Book.
* `Genre` (`VARCHAR`): Genre of the Book.
* `Publisher` (`VARCHAR`): Publisher of the Book.
* `YearPublished` (`INT`): Book Published Year.
* `CopiesAvailable` (`INT`): Number of Copies Available in the Library.

#### Borrowing

The Borrowing table includes;

* `BorrowingID` (`INTR`): PRIMARY KEY constraint.
* `BookID` (`INT`): Foreign Key constraint to the Books table.
* `MemberID` (`INT`): Foreign Key constraint to the Members table.
* `BorrowingDate` (`DATE`): Borrowing Date of the Book.
* `DueDate` (`DATE`): Due Date of the Book.
* `ReturnedDate` (`DATE`): Returned Date of the Book.
* `Fine` (`INT`): Fine of the Book.
* `Status` (`VARCHAR`): Status of the Book.

#### Members

The Members table includes;

* `MemberID` (`INT`): PRIMARY KEY constraint.
* `FirstName` (`VARCHAR`): FirstName of the Member.
* `LastName` (`VARCHAR`): LastName of the Member.
* `Address` (`VARCHAR`): Address of the Member.
* `PhoneNumber` (`VARCHAR`): Phone Number of the Member.
* `Email` (`VARCHAR`): Email of the Member.
* `MembershipDate` (`VARCHAR`): membership ending date.

#### Staff

The Staff table includes;

* `StaffID` (`INT`): PRIMARY KEY constraint.
* `FirstName` (`VARCHAR`): FirstName of the Staff.
* `LastName` (`VARCHAR`): LastName of the Staff.
* `Address` (`VARCHAR`): Address of the Staff.
* `PhoneNumber` (`VARCHAR`): Phone Number of the Staff.
* `ContactInfo` (`VARCHAR`): ContactInfo of the Staff.
* `Role` (`VARCHAR`): Role of the Staff.
* `Salary` (`INT`): Salary of the Staff.
* `HireDate` (`DATE`): Hire Date of the Staff.

#### Suppliers

The Suppliers table includes;

* `SupplierID` (`INT`): PRIMARY KEY constraint.
* `SupplierName` (`VARCHAR`): Name of the Supplier.
* `ContactInfo` (`VARCHAR`): ContactInfo of the Supplier.
* `ItemsSupplied` (`VARCHAR`): Name of items supplied.

### Entity Relationship

The below entity relationship diagram describes the relationships among the entities in the library database.

![Library database ER diagram](<Untitled Diagram_page-0001.jpg>)

As detailed by the diagram:

* Books - Borrowing: One book can be borrowed many times ( One-to-Many Relationship)
* Members - Borrowing: One member can have many borrowings ( One-to-Many Relationship)
* Staff - Borrowing: One staff member can process many borrowings (One-to-Many Relationship)
* Staff - Books: One staff member can add many books (One-to-Many Relationship)
* Books - Suppliers: One book can be provided by many suppliers and one supplier can provide many books, managed through a junction table (Many-to-Many Relationship)

### Triggers

Automatically execute predefined actions in response to data modifications. Triggers are `update_Copiesavailable_in_books`, `Reset_If_Borrowed`,`update_Fine`.

### Optimizations

View in the library database makes it easier to access complicated data by saving common queries, like showing book details with author names. views are `BooksAvailable`, `MemberBorrowing`, `OverDueBorrowing`.

Index makes searches faster by organizing data for quick lookups, like finding book titles or member names quickly. index are `idx_book_title`, `idx_member_name`, `idx_borrowing_book_id`, `idx_book_member_borrowing`,`idx_borrowing_member_id`.


### Limitations

Storage Overhead: Indexes need extra space on the disk to store their data structures. In large databases with many indexed columns, this can lead to significant storage requirements, increasing overall storage costs. 

Maintenance Cost: Keeping indexes up-to-date can slow down operations like adding, updating, or deleting data, because the index structures also need to be adjusted. Every modification to the data in a table requires corresponding updates to its indexes, which can significantly impact performance. 

View Performance: Views that encapsulate complex queries can be slow, particularly when they involve large datasets or multiple joins, as they might not be optimized by the database engine. This can degrade overall performance when accessing data through these views.
