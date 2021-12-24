SELECT *
FROM users
LIMIT 20;

SELECT email, birthday
FROM users
WHERE birthday >= '1980-01-01' AND birthday <= '1989-12-31';

SELECT email, created_at
FROM users
WHERE created_at < '2017-05-01';

SELECT email, test
FROM users
WHERE test = 'bears';

SELECT email, campaign
FROM users
WHERE campaign LIKE 'BBB%';


SELECT email, campaign
FROM users
WHERE campaign LIKE '%-2';

SELECT email
FROM users
WHERE campaign IS NOT NULL AND test IS NOT NULL;

SELECT *, (created_at - birthday) AS age_when_signed_up
FROM users;



-- OR WHEN WE CAN DO THIS

ALTER TABLE users
ADD age_when_signed_up INTEGER;

UPDATE users
SET age_when_signed_up = (created_at-birthday);

SELECT *
FROM users;
