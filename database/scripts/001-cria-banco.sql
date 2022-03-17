CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	email TEXT NOT NULL UNIQUE,
	password TEXT NOT NULL
);

CREATE TABLE sessions (
   id SERIAL PRIMARY KEY,
   token TEXT NOT NULL UNIQUE,
   "userId" INTEGER NOT NULL REFERENCES users(id)
);

CREATE TABLE "urls" (
	"id" serial PRIMARY KEY,
	"bigUrl" TEXT NOT NULL,
	"shortenedUrl" TEXT NOT NULL UNIQUE,
	"userId" INTEGER NOT NULL REFERENCES users(id),
	"visits" bigint NOT NULL DEFAULT 0
);





