--film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
select rating,Count(*)
from film
group by rating;
--film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
select replacement_cost,Count(*)
from film
group by replacement_cost
having Count(*)>50;
--customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
select store_id,Count(customer)
from customer
group by store_id;
--city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
select country_id,count(*)
from city
group by country_id
order by count(*) desc
limit 1


