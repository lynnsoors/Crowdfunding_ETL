-- Drop tables if they already exist
-- Create a new tables

--contacts table
DROP TABLE contacts

CREATE TABLE contacts(
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email VARCHAR(50)
)
;

SELECT * FROM contacts
;

--category table
DROP TABLE category
	
CREATE TABLE category (
	category_id VARCHAR(10) PRIMARY KEY,
	category VARCHAR(20)
)
;

SELECT * FROM category
;

--subcategory table
DROP TABLE subcategory
	
CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) PRIMARY KEY,
	subcategory VARCHAR(20)
)
;

SELECT * FROM subcategory
;

--campaign table
DROP TABLE campaign

CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT references contacts(contact_id),
	company_name VARCHAR(100),
	description VARCHAR(100),
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR(20),
	backers_count INT,
	country VARCHAR(3),
	currency VARCHAR(4),
	launch_date DATE,
	end_date DATE,
	category_id VARCHAR(10) references category(category_id),
	subcategory_id VARCHAR(10) references subcategory(subcategory_id)
)
;

SELECT * FROM campaign
;













