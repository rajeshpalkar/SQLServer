select C.CategoryName from
Categories C
where NOT EXISTS 
(select CategoryID from 
Products P
where
C.CategoryID = P.CategoryID)