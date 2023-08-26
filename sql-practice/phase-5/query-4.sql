-- Find the first and last names of the owner whose cats are born after the year 2015
-- Your code here
select first_name, last_name from owners
join cat_owners on (cat_owners.owner_id = owners.id)
join cats on (cat_owners.cat_id = cats.id)
where birth_year > 2015;
