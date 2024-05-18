-- Drop columns in Usuario table
ALTER TABLE Usuario DROP COLUMN authorities;
ALTER TABLE Usuario DROP COLUMN firebase_user_id;

-- Add column in Usuario table
ALTER TABLE Usuario ADD (password VARCHAR2(255));
