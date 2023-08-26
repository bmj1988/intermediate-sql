-- Find the name of the cats who have an owner whose first name begins with an "H"
-- Your code here
select name from cats
join cat_owners on (cat_id = cats.id)
join owners on (cat_owners.owner_id = owners.id)
where first_name like 'H%';
