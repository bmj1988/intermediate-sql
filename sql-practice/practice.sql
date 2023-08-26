drop table if exists owners;
drop table if exists cats;
drop table if exists cat_owners;
drop table if exists toys;

create table owners (
    id integer primary key autoincrement,
    first_name varchar(50) not null,
    last_name varchar(50) not null
);

create table cats (
    id integer primary key autoincrement,
    name varchar(50),
    birth_year integer
);




create table cat_owners (
    cat_id integer,
    owner_id integer,
    foreign key (cat_id) references cats(id) on delete cascade,
    foreign key (owner_id) references owners(id) on delete cascade
);

create table toys (
    id integer primary key autoincrement,
    name varchar(50),
    cat_id integer,
    foreign key (cat_id) references cats(id) on delete cascade
);
