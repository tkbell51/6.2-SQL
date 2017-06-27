CREATE TABLE "todos" (
  "id" SERIAL NOT NULL UNIQUE ,
  "title" varchar(255) NOT NULL,
  "details" TEXT,
  "priority" integer NOT NULL DEFAULT 1,
  "created_at" TIMESTAMP NOT NULL,
  "completed_at" TIMESTAMP
);

-- ALTER TABLE todos ADD CONSTRAINT todos_key UNIQUE (id);
-- ALTER TABLE todos ALTER COLUMN priority SET DATA TYPE integer;
-- ALTER TABLE todos ALTER COLUMN priority SET DEFAULT 1;
DROP TABLE todos;

INSERT INTO todos (title, details,  created_at) VALUES ('Do Week 5 Project', 'work on hangman Project' , '2017-06-22 03:10:25' );
INSERT INTO todos (title, details,  created_at) VALUES ('Take out the trash', 'Get all the trash' , '2017-06-22 03:10:25' );
INSERT INTO todos (title, details, priority, created_at) VALUES ('Practice Music', 'Learn new music' , 3, '2017-06-22 03:10:25' );
INSERT INTO todos (title, details, priority, created_at) VALUES ('Exercise', 'Run for 30 minutes' , 4, '2017-06-22 03:10:25' );
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Wash the car', 'Vacuum the inside' , 5, '2017-06-22 03:10:25' , '2017-06-22 19:10:25-07');

SELECT * FROM todos;
SELECT * FROM todos WHERE NOT (todos IS NOT NULL);
SELECT * FROM todos WHERE priority = 1;
UPDATE todos SET completed_at = '2017-06-22 19:10:25-07' where id = 2;
DELETE FROM todos WHERE completed_at != NULL;
