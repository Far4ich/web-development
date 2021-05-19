CREATE TABLE facult
(
	facult_id INT AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    PRIMARY KEY (facult_id)
)
	DEFAULT CHARACTER SET utf8mb4
    COLLATE 'utf8mb4_unicode_c1'
	ENGINE InnoDB
;
CREATE TABLE `group`
(
	group_id INT AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    facult_id INT NOT NULL,
    PRIMARY KEY (group_id)
)
	DEFAULT CHARACTER SET utf8mb4
    COLLATE 'utf8mb4_unicode_c1'
	ENGINE InnoDB
;

CREATE TABLE student
(
	student_id INT AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    group_id INT NOT NULL,
    facult_id INT NOT NULL,
    PRIMARY KEY (student_id)
)
	DEFAULT CHARACTER SET utf8mb4
    COLLATE 'utf8mb4_unicode_c1'
	ENGINE InnoDB
;

INSERT INTO facult SET name = 'FirstFac';
INSERT INTO `group` SET facult_id = 1, `name` = 'FF1';
INSERT INTO student SET `name` = 'a', age = 19, group_id = 1, facult_id = 1;
INSERT INTO student SET `name` = 'b', age = 18, group_id = 1, facult_id = 1;
INSERT INTO student SET `name` = 'c', age = 19, group_id = 1, facult_id = 1;
INSERT INTO student SET `name` = 'd', age = 19, group_id = 1, facult_id = 1;
INSERT INTO student SET `name` = 'e', age = 18, group_id = 1, facult_id = 1;

INSERT INTO `group` SET facult_id = 1, `name` = 'FF2';
INSERT INTO student SET `name` = 'a', age = 18, group_id = 2, facult_id = 1;
INSERT INTO student SET `name` = 'b', age = 19, group_id = 2, facult_id = 1;
INSERT INTO student SET `name` = 'c', age = 18, group_id = 2, facult_id = 1;
INSERT INTO student SET `name` = 'd', age = 19, group_id = 2, facult_id = 1;
INSERT INTO student SET `name` = 'e', age = 19, group_id = 2, facult_id = 1;

INSERT INTO `group` SET facult_id = 1, `name` = 'FF3';
INSERT INTO student SET `name` = 'a', age = 19, group_id = 3, facult_id = 1;
INSERT INTO student SET `name` = 'b', age = 18, group_id = 3, facult_id = 1;
INSERT INTO student SET `name` = 'c', age = 19, group_id = 3, facult_id = 1;
INSERT INTO student SET `name` = 'd', age = 19, group_id = 3, facult_id = 1;
INSERT INTO student SET `name` = 'e', age = 19, group_id = 3, facult_id = 1;

INSERT INTO facult SET name = 'SecodFac';
INSERT INTO `group` SET facult_id = 2, `name` = 'SF1';
INSERT INTO student SET `name` = 'a', age = 19, group_id = 4, facult_id = 2;
INSERT INTO student SET `name` = 'b', age = 18, group_id = 4, facult_id = 2;
INSERT INTO student SET `name` = 'c', age = 19, group_id = 4, facult_id = 2;
INSERT INTO student SET `name` = 'd', age = 17, group_id = 4, facult_id = 2;
INSERT INTO student SET `name` = 'e', age = 19, group_id = 4, facult_id = 2;
INSERT INTO `group` SET facult_id = 2, `name` = 'SF2';
INSERT INTO student SET `name` = 'a', age = 19, group_id = 5, facult_id = 2;
INSERT INTO student SET `name` = 'b', age = 19, group_id = 5, facult_id = 2;
INSERT INTO student SET `name` = 'c', age = 19, group_id = 5, facult_id = 2;
INSERT INTO student SET `name` = 'd', age = 18, group_id = 5, facult_id = 2;
INSERT INTO student SET `name` = 'e', age = 19, group_id = 5, facult_id = 2;
INSERT INTO `group` SET facult_id = 2, `name` = 'SF3';
INSERT INTO student SET `name` = 'a', age = 18, group_id = 6, facult_id = 2;
INSERT INTO student SET `name` = 'b', age = 17, group_id = 6, facult_id = 2;
INSERT INTO student SET `name` = 'c', age = 18, group_id = 6, facult_id = 2;
INSERT INTO student SET `name` = 'd', age = 18, group_id = 6, facult_id = 2;
INSERT INTO student SET `name` = 'e', age = 18, group_id = 6, facult_id = 2;

INSERT INTO facult SET name = 'ThirdFac';
INSERT INTO `group` SET facult_id = 3, `name` = 'TF1';
INSERT INTO student SET `name` = 'a', age = 29, group_id = 7, facult_id = 3;
INSERT INTO student SET `name` = 'b', age = 29, group_id = 7, facult_id = 3;
INSERT INTO student SET `name` = 'c', age = 29, group_id = 7, facult_id = 3;
INSERT INTO student SET `name` = 'd', age = 29, group_id = 7, facult_id = 3;
INSERT INTO student SET `name` = 'e', age = 19, group_id = 7, facult_id = 3;
INSERT INTO `group` SET facult_id = 3, `name` = 'TF2';
INSERT INTO student SET `name` = 'a', age = 39, group_id = 8, facult_id = 3;
INSERT INTO student SET `name` = 'b', age = 39, group_id = 8, facult_id = 3;
INSERT INTO student SET `name` = 'c', age = 39, group_id = 8, facult_id = 3;
INSERT INTO student SET `name` = 'd', age = 39, group_id = 8, facult_id = 3;
INSERT INTO student SET `name` = 'e', age = 39, group_id = 8, facult_id = 3;
INSERT INTO `group` SET facult_id = 3, `name` = 'TF3';
INSERT INTO student SET `name` = 'a', age = 49, group_id = 9, facult_id = 3;
INSERT INTO student SET `name` = 'b', age = 49, group_id = 9, facult_id = 3;
INSERT INTO student SET `name` = 'c', age = 49, group_id = 9, facult_id = 3;
INSERT INTO student SET `name` = 'd', age = 49, group_id = 9, facult_id = 3;
INSERT INTO student SET `name` = 'e', age = 49, group_id = 9, facult_id = 3;

SELECT 
	student_id AS "id", 
    name
FROM 
	student
WHERE 
	age=19;
    
SELECT 
	student.name AS "StudentName",
    `group`.name AS "GroupName"
FROM
	`group` JOIN student ON `group`.group_id=student.group_id;	 
    
SELECT books.title AS "Title", borrowings.returndate AS "Return Date"
FROM borrowings JOIN books ON borrowings.bookid=books.bookid
WHERE books.author='Dan Brown';

SELECT
	student.name AS "StudentName", 
    facult.name AS "FacultName",
    `group`.name AS "GroupName",
FROM
	group
	JOIN facult ON facult.facult_id=student.facult_id
	JOIN student ON `group`.group_id=student.group_id

SELECT 
	student.name AS "StudentName", 
    facult.name AS "FacultName",
FROM 
	facult JOIN student ON facult.facult_id=student.facult_id



