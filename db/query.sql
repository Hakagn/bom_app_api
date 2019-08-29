-- Select part hierarcy;

WITH RECURSIVE bom_CTE (part_id, parentPart_id, quantity) AS
   (
      SELECT ROOT.PART, ROOT.SUBPART, ROOT.QUANTITY
       FROM PARTLIST ROOT
       WHERE parentPart_id IS NULL
    UNION ALL
      SELECT PARENT.PART, CHILD.SUBPART, PARENT.QUANTITY*CHILD.QUANTITY
       FROM RPL PARENT, PARTLIST CHILD
       WHERE PARENT.SUBPART = CHILD.PART
   )
SELECT
  partNumber,
  partName,
  parentPart_id,
  SUM(quantity) AS "Total_qty"
FROM bom
INNER JOIN part
  ON part.id = bom.part_id
GROUP BY part_id, parentPart_id
ORDER BY part_id, parentPart_id;
