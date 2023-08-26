-- Find All the Toys for Hermione's cats
-- Your code here
select toys.name from toys
join cat_owners on (toys.cat_id = cat_owners.cat_id)
join owners on (cat_owners.owner_id = owners.id)
where owners.first_name = 'Hermione';
