Q1
CREATE TABLE departments (
  department_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 	ON UPDATE CURRENT_TIMESTAMP,
);

Q2
ALTER TABLE peoole ADD department_id INT UNSIGNED AFTER email;

Q3
INSERT INTO departments (name)
VALUES
('営業'),
('開発'),
('経理'),
('人事'),
('情報システム'),

INSERT INTO people (name,email,departments_id,age,gender)
VALUES
('板橋たろう', 'tanaka@gizumo.jp', 1, 20, 1),
('練馬しんじ', 'tanaka@gizumo.jp', 1,25, 1),
('品川きょうこ', 'tanaka@gizumo.jp', 1, 30, 2),
('渋谷はる', 'tanaka@gizumo.jp', 2,35, 1),
('新宿あすか', 'tanaka@gizumo.jp', 2, 40, 2),
('杉並しずか', 'tanaka@gizumo.jp', 2, 45, 2),
('葛飾ほくさい', 'tanaka@gizumo.jp', 2, 50, 1),
('文京はくさん', 'tanaka@gizumo.jp', 3, 55, 1),
('目黒けいこ', 'tanaka@gizumo.jp', 4, 60, 2),
('太田みちひこ', 'tanaka@gizumo.jp', 5, 65, 1)；

INSERT INTO reports (person_id,content)
VALUES
(7,'初めての日報登録を行った'),
(8,'会社で情報リテラシー演習を受けた'),
(9,'東京本部から群馬支部に移動になった'),
(10,'アプリ開発で盛大な失敗をした'),
(11,'渋谷さんの失敗をふぉろーした'),
(12,'今日は福井まで出張しに行った'),
(13,'午前中体調不良で早退した'),
(14,'今日も今日とて健康診断に行った'),
(15,'業務の引継ぎを行った'),
(16,'今日付けで会社を定年退職することになった'),

Q4
UPDATE peoole SET department_id = 2 WHERE department_id IS NULL;

Q5
SELECT name,age FROM peoole WHERE gender = 1 ORDER BY age DESC;

Q6
SELECT
'name', 'email', 'age'
FROM
'people'
WHERE
'department_id' = 1
ORDER BY
'created_at';

Q7
SELECT name FROM peoole WHERE age between 20 AND 29 gender = 2
SELECT name FROM peoole WHERE age between 40 AND 49 gender = 1

Q8
SELECT name FROM peoole WHERE department_id = 1 ORDER BY age ASC;

Q9
SELECT AVG(age) AS average_age FROM peoole WHERE department_id = 2 AND gender = 2;

Q10
SELECT peoole.name,departments.name,reports.content FROM peoole
INSERT JOIN department ON
peoole.department_id = departments.department_id INSERT JOIN reports ON
peoole.person_id = reports.person_id
INNER JOIN departments ON peoole.department_id = departments.department_id;

Q11
SELECT name FROM peoole LEFT OUTER JOIN reports ON
(peoole.person_id = reports.person_id) WHERE reports.content IS NULL:
