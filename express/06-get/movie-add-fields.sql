ALTER TABLE movie ADD COLUMN rating SMALLINT;
ALTER TABLE movie ADD COLUMN category ENUM('Comedy', 'Drama', 'Romance', 'Fantasy');

UPDATE movie SET rating = FLOOR(RAND()*6);
UPDATE movie SET category = CASE
  WHEN RAND() < 0.25 THEN 'Comedy'
  WHEN RAND() < 0.33 THEN 'Drama'
  WHEN RAND() < 0.5 THEN 'Romance'
  ELSE 'Fantasy'
END;