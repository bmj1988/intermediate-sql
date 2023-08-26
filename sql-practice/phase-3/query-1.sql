-- Find Hermione's cats
-- Your code here
select cats.name from cats
join cat_owners on (cats.id = cat_id)
join owners on (cat_owners.owner_id = owners.id)
where owners.first_name = 'Hermione';
