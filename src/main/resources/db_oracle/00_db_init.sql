CREATE SEQUENCE usuario_id_seq;
CREATE SEQUENCE color_id_seq;
CREATE SEQUENCE daruma_id_seq;
CREATE SEQUENCE skin_id_seq;

-- Creating the Usuario table
CREATE TABLE Usuario (
    id NUMBER DEFAULT usuario_id_seq.NEXTVAL PRIMARY KEY,
    name VARCHAR2(255),
    email VARCHAR2(255),
    password VARCHAR2(255)
);

-- Creating the Color table
CREATE TABLE Color (
    id NUMBER DEFAULT color_id_seq.NEXTVAL PRIMARY KEY,
    color VARCHAR2(255),
    tipo VARCHAR2(255)
);

-- Creating the Skin table
CREATE TABLE Skin (
    id NUMBER DEFAULT daruma_id_seq.NEXTVAL PRIMARY KEY,
    skin VARCHAR2(255)
);

-- Creating the Daruma table
CREATE TABLE Daruma (
    id NUMBER DEFAULT skin_id_seq.NEXTVAL PRIMARY KEY,
    objetivo VARCHAR2(255),
    color NUMBER,
    skin NUMBER,
    left_eye NUMBER(1),
    right_eye NUMBER(1),
    CONSTRAINT fk_color FOREIGN KEY (color) REFERENCES Color(id),
    CONSTRAINT fk_skin FOREIGN KEY (skin) REFERENCES Skin(id)
);