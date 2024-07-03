use library;

-- 2. available tables
show tables;

-- 3. books table
select * from books;

-- 4. loans table
select * from Borrowing;

-- 5. members table
select * from Members;

-- 6. staff table
select * from Staff;

-- 7. suppliers table
select * from Suppliers;

-- 8. view that shows the bookssavailable 
select * from BooksAvailable;

-- 9. view memberloan
select * from Memberborrowing;

-- 10. view that shows which books are on 'on loan' status
select * from Overdueborrowing;

-- 11. verifying the trigger 
select * from books where bookid = 5; 

select * from Borrowing where bookid = 5;

update Borrowing set ReturnDate = '2024-07-12' where bookid = 5;

select * from Borrowing;

select * from books; 

update borrowing set status ='Borrowed' where bookID = 5;

select * from Borrowing;

select * from books; 
