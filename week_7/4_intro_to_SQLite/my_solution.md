# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

"sqlite3 dummy.db"
"sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );"
## Release 1: Insert Data 

"sqlite> INSERT INTO users (
   ...>   (first_name, last_name, email, created_at, updated_at)
   ...>   VALUES
   ...>   ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));"
"sqlite> SELECT * FROM users" 

## Release 2: Multi-line commands

"sqlite> INSERT INTO users (
   ...>   (first_name, last_name, email, created_at, updated_at)
   ...>   VALUES
   ...>   ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));"

## Release 3: Add a column

"sqlite> ALTER TABLE users
   ...>  ADD nickname VARCHER(64);"
"sqlite> UPDATE users
   ...>   SET nickname = 'Kimchee';"
"sqlite> INSERT INTO users (
   ...>   (first_name, last_name, email, created_at, updated_at, nickname)
   ...>   VALUES
   ...>   ('Eiko', 'Seino', 'eikoseino@hotmail.com', DATETIME('now'), DATETIME('now'), 'chibi');"


## Release 4: Change a value

"sqlite> UPDATE users
   ...>   SET first_name = 'Kimmy', nickname = 'Ninja Coder';"

## Release 5: Reflect

- What parts of your strategy worked? What problems did you face?
	Just follow the direction and use the query I learnedin previous exercises. 
- What questions did you have while coding? What resources did you find to help you answer them?
	Is there any way to copy what's on the shell? I don't have the answer yet.
- What concepts are you having trouble with, or did you just figure something out? If so, what?
	On adding column on Release3, I was not able to specify the column as 'NOT NULL'. It kept
	giving back an error saying that NOT NULL row cannot have an empty value. 
- Did you learn any new skills or tricks?
	Updating/Modifying rows. Inserting values.
- How confident are you with each of the Learning Competencies?
	I'm OK so far...
- Which parts of the challenge did you enjoy?
	Once I got the right syntax, it was pretty fun to play with the data to practice. 
- Which parts of the challenge did you find tedious?
	Fixing errors.