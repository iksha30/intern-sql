DELIMITER $$

CREATE PROCEDURE AddStudent (
    IN p_id INT,
    IN p_name VARCHAR(50),
    IN p_marks INT
)
BEGIN
    INSERT INTO Students (student_id, name, marks)
    VALUES (p_id, p_name, p_marks);
END $$

DELIMITER ;
CALL AddStudent(101, 'David', 90);
CALL AddStudent(102, 'Anita', 67);
DELIMITER $$

CREATE FUNCTION GetPerformance(p_marks INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE result VARCHAR(20);

    IF p_marks > 80 THEN
        SET result = 'Above 80';
    ELSEIF p_marks BETWEEN 50 AND 80 THEN
        SET result = 'Between 50 and 80';
    ELSE
        SET result = 'Below 50';
    END IF;

    RETURN result;
END$$

DELIMITER ;
SELECT GetPerformance(85);  -- Output: Above 80











