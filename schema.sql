

CREATE TABLE people (
	person_id INTEGER PRIMARY KEY,
	name VARCHAR(20),
	surname VARCHAR(20)
);

CREATE TABLE archive_files (
	archive_file_id INTEGER PRIMARY KEY
);

CREATE TABLE people_to_archive_files (
	person_id INTEGER REFERENCES people,
	archive_file_id INTEGER REFERENCES archive_files
);

CREATE TABLE events (
	event_id INTEGER PRIMARY KEY,
	event_name VARCHAR(20),
	event_description TEXT,
	event_begin TIMESTAMP NOT NULL,
	event_end TIMESTAMP NOT NULL,
	CHECK (event_begin < event_end)
);

CREATE TABLE event_to_files (
	event_id INTEGER REFERENCES events,
	archive_file INTEGER REFERENCES archive_files
);

CREATE TABLE events_people ( -- Do we want to log all people present at an event?
	event_id INTEGER REFERENCES events,
	person_id INTEGER REFERENCES people
);




