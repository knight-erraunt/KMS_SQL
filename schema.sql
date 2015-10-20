
CREATE TABLE categories (
    category_name VARCHAR(128) PRIMARY KEY
);

CREATE TABLE categories_to_archive_files (
    archive_file_id INTEGER REFERENCES archive_files,
    category_name VARCHAR(128) REFERENCES categories
);

CREATE TABLE people (
	person_id INTEGER PRIMARY KEY,
	name VARCHAR(128),
	surname VARCHAR(128)
);

CREATE TABLE archive_files (
	archive_file_id INTEGER PRIMARY KEY
	signature VARCHAR(128),
    date_lower_bound DATE,
    date_upper_bound DATE,
	description TEXT,
	check (date_lower_bound < date_upper_bound)
);

CREATE TABLE people_to_archive_files (
	person_id INTEGER REFERENCES people,
	archive_file_id INTEGER REFERENCES archive_files
);


