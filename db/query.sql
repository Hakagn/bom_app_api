-- * Select part hierarcy
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
  id,
  parentPart_id AS parent,
  partNumber,
  partName,
  SUM(quantity) AS "Total_qty"
FROM bom
INNER JOIN part
  ON part.id = bom.part_id
GROUP BY part_id, parentPart_id
ORDER BY part_id, parentPart_id;

-- * Single level explosion
/* WITH RECURSIVE bom_CTE AS( 
  SELECT
    part_id,
    parentPart_id,
    quantity
  FROM bom
  WHERE part_id = 22
  UNION ALL
  SELECT
    e.part_id,
    e.parentPart_id,
    e.quantity
  FROM bom AS e, bom_CTE AS ep
  WHERE e.part_id = ep.parentPart_id
  )
  SELECT DISTINCT
    part_id,
    partName, 
    parentPart_id,
    quantity
  FROM bom_CTE
  INNER JOIN part
    ON part.id = part_id
  ORDER BY part_id, parentPart_id, quantity; */

-- * Summarized explosion
/* WITH RECURSIVE bom_CTE AS
  ( SELECT part_id,
           parentPart_id,
           0 bomLevel,
           quantity
   FROM bom
   WHERE parentPart_id = 18
     UNION ALL
     SELECT e.part_id,
            e.parentPart_id,
            bomLevel+1,
            e.quantity*ep.quantity
     FROM bom AS e
     INNER JOIN bom_CTE AS ep ON ep.part_id = e.parentPart_id )
SELECT part_id,
       bomLevel,
       partName,
       partNumber,
       SUM(quantity) AS totQty,
       IFNULL(parentPart_id, "topLevel") AS parent
FROM bom_CTE ep
INNER JOIN part
  ON part.id = part_id
GROUP BY part_id, parentPart_id, bomLevel
ORDER BY part_id; */
