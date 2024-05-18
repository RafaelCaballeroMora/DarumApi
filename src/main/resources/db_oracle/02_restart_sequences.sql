-- Users
-- Drop and recreate the sequence for Usuario table
DROP SEQUENCE usuario_id_seq;
CREATE SEQUENCE usuario_id_seq START WITH 4;

-- Colors
-- Drop and recreate the sequence for Color table
DROP SEQUENCE color_id_seq;
CREATE SEQUENCE color_id_seq START WITH 6;

-- Darumas
-- Drop and recreate the sequence for Daruma table
DROP SEQUENCE daruma_id_seq;
CREATE SEQUENCE daruma_id_seq START WITH 7;

-- Skin
-- Drop and recreate the sequence for Skin table
DROP SEQUENCE skin_id_seq;
CREATE SEQUENCE skin_id_seq START WITH 6;
