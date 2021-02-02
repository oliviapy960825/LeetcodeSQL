SELECT SUM(b1.apple_count + CASE WHEN c1.apple_count IS NULL THEN 0 ELSE c1.apple_count END) AS apple_count, SUM(b1.orange_count + CASE WHEN c1.orange_count IS NULL THEN 0 ELSE c1.orange_count END) AS orange_count
FROM Boxes b1
LEFT JOIN Chests c1
ON b1.chest_id = c1.chest_id
