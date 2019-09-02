DROP DATABASE test;
CREATE DATABASE test;
USE test;

CREATE TABLE event (
  name VARCHAR(20), date DATE,
  type VARCHAR(15), remark VARCHAR(255)
);
