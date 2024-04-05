-- Julia just finished conducting a coding contest, and she needs your help
-- assembling the leaderboard! Write a query to print the respective hacker_id 
-- and name of hackers who achieved full scores for more than one challenge. 
-- Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

-- Input Format

-- The following tables contain contest data:
-- Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker. 

| Field             | Type         |
|------------------ |--------------|
| hacker_id         | NUMBER       |
| name              | STRING       |




-- Difficulty: The difficult_level is the level of difficulty of the challenge, 
-- and score is the score of the challenge for the difficulty level. 

| Field             | Type         |
|------------------ |--------------|
| difficulty_level  | INTEGER      |
| score             | INTEGER      |


-- Challenges: The challenge_id is the id of the challenge, 
-- the hacker_id is the id of the hacker who created the challenge, 
-- and difficulty_level is the level of difficulty of the challenge. 

| Field             | Type         |
|------------------ |--------------|
| challenge_id      | INTEGER      |
| hacker_id         | INTEGER      |
| difficulty_level  | INTEGER      |



-- Submissions: The submission_id is the id of the submission,
-- hacker_id is the id of the hacker who made the submission, 
-- challenge_id is the id of the challenge that the submission belongs to, 
-- and score is the score of the submission. 


| Field             | Type         |
|------------------ |--------------|
| submission_id     | INTEGER      |
| hacker_id         | INTEGER      |
| challenge_id      | INTEGER      |
| score             | INTEGER      |

SELECT
h.hacker_id,
h.name
FROM Hackers h
JOIN Submissions s ON h.hacker_id = s.hacker_id 
JOIN Challenges C ON s.challenge_id = c.challenge_id
JOIN difficulty d ON c.difficulty_level=d.difficulty_level 
WHERE s.score=d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.submission_id) > 1
ORDER BY COUNT(s.submission_id) DESC, h.hacker_id ASC;
