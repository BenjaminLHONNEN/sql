DROP DATABASE IF EXISTS ynov;
CREATE DATABASE ynov;
\c ynov;


CREATE TABLE students (
  students_id INTEGER PRIMARY KEY NOT NULL,
  firstname   VARCHAR(255),
  lastname    VARCHAR(255)
);

CREATE TABLE classes (
  classes_id  INTEGER PRIMARY KEY NOT NULL,
  professor   VARCHAR(255),
  classesname VARCHAR(255)
);

CREATE TABLE notes (
  notes_id  INTEGER PRIMARY KEY NOT NULL,
  classes_id INTEGER NOT NULL REFERENCES classes(classes_id),
  students_id INTEGER NOT NULL REFERENCES students(students_id),
  notes     INTEGER,
  notescoef INTEGER
);

INSERT INTO students VALUES (1, 'bnj', 'lh');
INSERT INTO students VALUES (2, 'nico', 'des');

INSERT INTO classes VALUES (1, 'PILLET', 'symfony');
INSERT INTO classes VALUES (2, 'PILLET', 'postgresql');

INSERT INTO notes VALUES (1, 1, 1,15,2);
INSERT INTO notes VALUES (2, 1, 1,8,1);

INSERT INTO notes VALUES (3, 1, 2,12,2);
INSERT INTO notes VALUES (4, 1, 2,11,1);

DROP VIEW IF EXISTS student_note_by_classes;
CREATE VIEW student_note_by_classes AS
  SELECT * FROM notes
    INNER JOIN classes c2 USING (classes_id)
    INNER JOIN students s2 USING (students_id);
