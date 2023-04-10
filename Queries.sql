/* SQL: Query Set 1 */

/* Query 1: Which countries have the most Invoices?*/

select billcountry,count(billcountry) as Invoice_number from invoice
group by billcountry
order by Invoice_number desc


/* Query 2: Which city has the best customers?

We would like to throw a promotional Music Festival in the city we made the most money. 
Write a query that returns the 1 country that has the highest sum of invoice totals. 
Return both the city name and the sum of all invoice totals.*/
select * from invoice
select top 1 billcountry, sum(total) as invoice_total from invoice
group by billcountry 
order by billcountry desc


/*Query 3: Who is the best customer?

The customer who has spent the most money will be declared the best customer. 
Build a query that returns the person who has spent the most money. 
Invoice, InvoiceLine, and Customer tables to retrieve this information*/

select * from customer
SELECT customer.custid, firstname, lastname, SUM(total) AS total_spending  
FROM customer as customer
left join invoice as invo 
on customer.custid = invo.custid
GROUP BY (customer.custid)
ORDER BY total_spending DESC


/* SQL: Query Set 2 */

/*Query  1:
Use your query to return the email, first name, last name, and Genre of all Rock Music listeners.
Return your list ordered alphabetically by email address starting with A.*/
select * from genre
select distinct email,firstname, lastname ,trackname
from customer
join invoice 
on customer.custid=invoice.custid
join invoiceLine
on invoice.invoiceid=invoice.invoiceid
join track
on invoiceLine.trackid = track.trackid
join genre
on track.genreid=genre.genreid
where genre.genreName = 'Rock'
order by email

/*Query 2: Who is writing the rock music?

Now that we know that our customers love rock music, we can decide which musicians to invite to play at the concert.
Let's invite the artists who have written the most rock music in our dataset. 
Write a query that returns the Artist name and total track count of the top 10 rock bands.*/

SELECT top 10 Artist.ArtistID, Artist.Name,COUNT(Artist.ArtistID) AS number_of_songs
FROM track
JOIN Album ON Album.AlbumId = track.AlbumId
JOIN Artist ON Artist.ArtistID = Album.ArtistID
JOIN genre ON genre.genreid = track.genreid
WHERE genre.genreName LIKE 'Rock'
GROUP BY Artist.ArtistID,Artist.Name
ORDER BY number_of_songs DESC
