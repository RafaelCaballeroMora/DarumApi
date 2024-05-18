-- Add columns in Usuario table
ALTER TABLE Usuario ADD (authorities VARCHAR2(255));
ALTER TABLE Usuario ADD (firebase_user_id VARCHAR2(64));

-- Drop column in Usuario table
ALTER TABLE Usuario DROP COLUMN password;
