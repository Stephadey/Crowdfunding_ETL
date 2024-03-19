
create table category (
	category_id varchar NOT NULL ,
	category varchar NOT NULL ,
	PRIMARY KEY(category_id)
);

select * from category ;

create table subcategory (
	subcategory_id varchar NOT NULL ,
	subcategory varchar NOT NULL ,
	PRIMARY KEY(subcategory_id)

);

select * from subcategory ;

create table contacts (
	contact_id int NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	email varchar ,
	PRIMARY KEY(contact_id)

);

select * from contacts ;

create table campaign (
	cf_id int ,
	contact_id int NOT NULL ,
	company_name varchar ,
	decription varchar ,
	goal float ,
	pledged float ,
	outcome varchar ,
	backers_count int ,
	country varchar ,
	currency varchar ,
	launched_date DATE ,
	end_date DATE ,
	category_id varchar ,
	subcategory_id varchar ,
	PRIMARY KEY(contact_id) ,
	FOREIGN KEY(category_id) REFERENCES category(category_id) ,
	FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id) ,
	FOREIGN KEY(contact_id) REFERENCES contacts(contact_id)
);

select * from campaign ;


select * from category ;
select * from subcategory ;
select * from contacts ;
select * from campaign ;