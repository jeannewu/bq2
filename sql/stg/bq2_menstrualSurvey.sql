/*
Objective:
  Select all non-PII variables from menstrualSurvey_v1_JP.

  For participants to be included:
   - Verification Status [821247024] MUST BE verified
   - Consent Withdrawn [747006172] MUST NOT be YES [353358909]
 
Note:
      This SQL query was generated by generate_bq2_queries.qmd. This code 
      lives in a GitHub repo (https://github.com/Analyticsphere/bq2). The 
      code was written by Jing Wu and edited by Jake Peters. The BQ2 tables 
      that are generated in this query are currated and maintained by Jake 
      Peters, Jing Wu and Rebecca Sansale. Other details will be documented here..
*/

SELECT 
  b.__has_error__, 
	b.Connect_ID, 
	b.D_593467240, 
	b.d_901199566, 
	b.D_951357171, 
	b.sha, 
	b.treeJSON, 
	b.uid, 
	b.date
FROM 
  `nih-nci-dceg-connect-stg-5519.FlatConnect.menstrualSurvey_v1_JP` b
INNER JOIN `nih-nci-dceg-connect-stg-5519.FlatConnect.participants_JP` p
  ON cast(b.Connect_ID as int64) = cast(p.Connect_ID as int64)
WHERE 
  p.d_821247024 = '197316935'      -- is verified
  AND p.d_747006172 != '353358909' -- has not withdrawn consent
