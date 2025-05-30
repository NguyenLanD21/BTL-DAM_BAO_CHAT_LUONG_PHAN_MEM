-- SQL Script to fix duplicate statuses in status_is_approved table
-- This script will remove duplicate entries and add a unique constraint

-- First, create a temporary table to hold unique statuses with their lowest ID
CREATE TEMPORARY TABLE temp_statuses AS
SELECT MIN(id) as id, status 
FROM status_is_approved 
GROUP BY status;

-- Create a backup of the medical_registry_list table as it references status_is_approved
CREATE TABLE IF NOT EXISTS medical_registry_list_backup AS SELECT * FROM medical_registry_list;

-- Update any references in the medical_registry_list table to point to the lowest ID for each status
UPDATE medical_registry_list m
JOIN status_is_approved sa ON m.status_is_approved_id = sa.id
JOIN temp_statuses ts ON sa.status = ts.status
SET m.status_is_approved_id = ts.id
WHERE m.status_is_approved_id != ts.id;

-- Delete duplicate entries, keeping only the ones with the lowest ID
DELETE sa FROM status_is_approved sa
LEFT JOIN temp_statuses ts ON sa.id = ts.id
WHERE ts.id IS NULL;

-- Add a unique constraint to the status column to prevent future duplicates
-- First check if there's an existing index that needs to be dropped
SET @indexExists = (
    SELECT COUNT(1) 
    FROM information_schema.statistics 
    WHERE table_schema = DATABASE() 
    AND table_name = 'status_is_approved' 
    AND index_name = 'status_unique'
);

SET @sqlStatement = IF(@indexExists > 0, 
    'ALTER TABLE status_is_approved DROP INDEX status_unique', 
    'SELECT ''No existing status_unique index'' AS message');

PREPARE stmt FROM @sqlStatement;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- Now add the unique constraint
ALTER TABLE status_is_approved ADD CONSTRAINT status_unique UNIQUE (status);

-- Clean up
DROP TEMPORARY TABLE temp_statuses;

-- Output a success message
SELECT 'Successfully fixed status_is_approved table - duplicate statuses removed and unique constraint added.' AS Result; 