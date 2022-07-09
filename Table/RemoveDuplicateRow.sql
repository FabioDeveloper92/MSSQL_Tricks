WITH CTE_delete AS
(
    SELECT rid = ROW_NUMBER() 
  				OVER(PARTITION BY code ORDER BY(SELECT NULL))
    FROM [dbo].[Students]
)
DELETE FROM [CTE_delete]
WHERE rid > 1;