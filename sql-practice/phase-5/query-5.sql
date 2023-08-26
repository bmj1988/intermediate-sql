-- Find names of the cats whose owners are both George Beatty and Melynda Abshire, or just George Beatty, or just Melynda Abshire
-- Your code here
select name from cats
join cat_owners on (cat_owners.cat_id = cats.id)
join owners on (owners.id = cat_owners.owner_id)
where owners.first_name = 'George' and owners.last_name = 'Beatty' or owners.first_name='Melynda' and owners.last_name = 'Abshire'
or owners.first_name in ('George', 'Melynda') and owners.last_name in ('Beatty', 'Abshire');
