-- Users
INSERT INTO Usuario (id, name, email, password)
VALUES (1, 'Juanito', 'juanito@email.com', 'plaintext');

INSERT INTO Usuario (id, name, email, password)
VALUES (2, 'Pepito', 'pepito@email.com', 'plaintext');

-- Colors
INSERT INTO Color (id, color, tipo)
VALUES (1, 'ROJO', 'ROJO');

INSERT INTO Color (id, color, tipo)
VALUES (2, 'AZUL', 'AZUL');

INSERT INTO Color (id, color, tipo)
VALUES (3, 'AMARILLO', 'AMARILLO');

INSERT INTO Color (id, color, tipo)
VALUES (4, 'ROSA', 'ROSA');

-- Darumas
INSERT INTO Daruma (id, left_eye, right_eye, objetivo, color, skin)
VALUES (1, 1, 1, 'Primer objetivo', 1, NULL);

INSERT INTO Daruma (id, left_eye, right_eye, objetivo, color, skin)
VALUES (2, 1, 1, 'Segundo objetivo', 2, NULL);

INSERT INTO Daruma (id, left_eye, right_eye, objetivo, color, skin)
VALUES (3, 1, 0, 'Tercer objetivo', 3, NULL);

INSERT INTO Daruma (id, left_eye, right_eye, objetivo, color, skin)
VALUES (4, 0, 0, 'Cuarto objetivo', 1, NULL);

INSERT INTO Daruma (id, left_eye, right_eye, objetivo, color, skin)
VALUES (5, 0, 1, 'Quinto objetivo', 3, NULL);

-- Skin
INSERT INTO Skin (id, skin)
VALUES (1, 'MARBLE');

INSERT INTO Skin (id, skin)
VALUES (2, 'GOKU');

INSERT INTO Skin (id, skin)
VALUES (3, 'DEADPOOL');

INSERT INTO Skin (id, skin)
VALUES (4, 'GRASS');
