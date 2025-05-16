WITH RankedScores AS (
    SELECT
        student_id,
        subject,
        score,
        exam_date,
        ROW_NUMBER() OVER (PARTITION BY student_id, subject ORDER BY exam_date) AS rn_first,
        ROW_NUMBER() OVER (PARTITION BY student_id, subject ORDER BY exam_date DESC) AS rn_last
    FROM Scores
),
FirstLastScores AS (
    SELECT
        s1.student_id,
        s1.subject,
        s1.score AS first_score,
        s2.score AS latest_score
    FROM RankedScores s1
    JOIN RankedScores s2
        ON s1.student_id = s2.student_id
        AND s1.subject = s2.subject
        AND s1.rn_first = 1
        AND s2.rn_last = 1
    WHERE s1.exam_date <> s2.exam_date -- Ensures there are at least two different dates
)
SELECT
    student_id,
    subject,
    first_score,
    latest_score
FROM FirstLastScores
WHERE latest_score > first_score
ORDER BY student_id, subject;
