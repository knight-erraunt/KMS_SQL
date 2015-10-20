

CREATE TABLE people (
	person_id INTEGER PRIMARY KEY,
	name VARCHAR(20),
	surname VARCHAR(20)
);

CREATE TABLE archive_files (
	archive_file_id INTEGER PRIMARY KEY
	signature VARCHAR(20),
    time DATE,
    description TEXT
);

CREATE TABLE people_to_archive_files (
	person_id INTEGER REFERENCES people,
	archive_file_id INTEGER REFERENCES archive_files
);


