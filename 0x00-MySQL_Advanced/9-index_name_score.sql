-- Script to create a composite index on the first letter of the 'name' column and the 'score' column
-- This script assumes the table 'names' has been imported from the names.sql.zip dump.
-- The index will be named 'idx_name_first_score' and will include the first letter of the 'name' column and the 'score' column.

-- Create the composite index
CREATE INDEX idx_name_first_score
ON names(name(1), score);
