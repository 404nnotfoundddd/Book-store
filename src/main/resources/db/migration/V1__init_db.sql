DROP SEQUENCE IF EXISTS author_id_seq;
CREATE SEQUENCE author_id_seq INCREMENT BY 50 START WITH 1;

DROP TABLE IF EXISTS "authors";
CREATE TABLE authors (
    "id" bigint NOT NULL,
    "age" smallint,
    "description" VARCHAR(512),
    "image" VARCHAR(512),
    "name" VARCHAR(512),
    CONSTRAINT "authors_pkey" PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "books";
CREATE TABLE books (
    "isbn" VARCHAR(512) NOT NULL,
    "title" VARCHAR(512),
    "description" VARCHAR(2048),
    "image" VARCHAR(512),
    "author_id" bigint NOT NULL,
    CONSTRAINT "books_pkey" PRIMARY KEY ("isbn")
);