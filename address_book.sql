 select *
from address_book

--- select all people that live in Romania
SELECT * FROM address_book WHERE country = 'Romania'; 

--select count of all people that live in United States
SELECT * FROM address_book WHERE country = 'United States'; 

--select all people who's name starts with "J" and order them alphabetically by name 
SELECT * FROM address_book WHERE name LIKE 'J%' ORDER BY name;

--update phone_nr column for people who lives in US and who's number doesn't start with "+1-" make it start with "+1-"
UPDATE address_book SET phone_nr = '+1-' || phone_nr WHERE country = 'United States' AND NOT phone_nr LIKE '+1-%';

-- delete those people, who is older than 100 year now. They must have died already.
DELETE FROM address_book WHERE age(current_date, dob) > interval '100 years';
