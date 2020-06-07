select * from petsale;

--1--

select sum(saleprice) from petsale;

--2--

select max(quantity) from petsale;

--3--

select min(ID) from petsale where animal='Dog';

--4--

select avg(saleprice) from petsale;

--5--

select avg(saleprice/quantity) from petsale where animal='Dog';

--6--

select round(saleprice) from petsale;

--7--

select length(animal) from petsale;

--8--

select ucase(animal) from petsale;

--9--

select * from petsale where lcase(animal)='cat';

--10--

select distinct(ucase(animal)) from petsale;
select distinct ucase(animal) from petsale;

--11--

select day(saledate) from petsale where animal='Cat';

--12--

select count(*) from petsale where month(saledate)='05';

--13--

select (saledate + 3 days) from petsale;

--14--

select (current_Date - saledate) from petsale;

--15--

select count(*),year(saledate) from petsale where month(saledate)='05' group by year(saledate);