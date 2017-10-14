
DROP DATABASE has_many_blogs;

DROP USER has_many_user;


CREATE USER has_many_user;

CREATE DATABASE has_many_blogs OWNER has_many_user;

\c has_many_blogs;


-- \i scripts/blog_data.sql;

-- create tables
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username varchar(90),
  first_name varchar(90) DEFAULT NULL,
  last_name varchar(90) DEFAULT NULL,
  created_at timestamp DEFAULT now(),
  updated_at timestamp DEFAULT now()
  -- FOREIGN KEY (postsID) REFERENCES posts(postsID),
  -- FOREIGN KEY (commentsID) REFERENCES comments(commentsID)

);

CREATE TABLE posts (
  id serial PRIMARY KEY,
  title varchar(180) NULL,
  url varchar(510) NULL,
  content text NULL,
  created_at timestamp DEFAULT now(),
  updated_at timestamp DEFAULT now(),
  users_id int REFERENCES users(id)
);

CREATE TABLE comments (
  id serial PRIMARY KEY,
  body varchar(510) NULL,
  created_at timestamp DEFAULT now(),
  updated_at timestamp DEFAULT now(),
  users_id int REFERENCES users(id),
  posts_id int REFERENCES posts(id)
);



--create neccessary foreign keys

 \i scripts/blog_data.sql;

-- then load data



