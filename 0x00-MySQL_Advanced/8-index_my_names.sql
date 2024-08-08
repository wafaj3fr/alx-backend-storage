-- Script to create an index on the first letter of the 'name' column
-- This script assumes the table 'names' has been imported from the names.sql.zip dump.
-- The index will be named 'idx_name_first' and will be based on the first letter of the 'name' column.

-- Create the index on the first letter of the 'name' column
CREATE INDEX idx_name_first
ON names (LEFT(name, 1));
