-- Create the database
CREATE DATABASE IF NOT EXISTS desafio_engenheiro

-- Use the database
USE desafio_engenheiro

-- Create the cliente table
CREATE TABLE IF NOT EXISTS cliente (
    cliente_id BIGINT PRIMARY KEY NOT NULL IDENTITY(1,1),
    nome VARCHAR(30) NOT NULL
);

-- -- Insert data into the cliente table
-- INSERT INTO cliente VALUES ('Cliente A');
-- INSERT INTO cliente VALUES ('Cliente B');
-- INSERT INTO cliente VALUES ('Cliente C');
-- INSERT INTO cliente VALUES ('Cliente D');

-- -- Create the contrato table
-- CREATE TABLE contrato (
--     contrato_id BIGINT PRIMARY KEY NOT NULL IDENTITY(1,1),
--     ativo BIT NOT NULL,
--     percentual NUMERIC(10,2) NOT NULL,
--     cliente_id BIGINT NOT NULL REFERENCES cliente(cliente_id)
-- );

-- -- Insert data into the contrato table
-- INSERT INTO contrato VALUES (1, 2, 1);
-- INSERT INTO contrato VALUES (0, 1.95, 1);
-- INSERT INTO contrato VALUES (1, 1, 2);
-- INSERT INTO contrato VALUES (1, 3, 4);

-- -- Create the transacao table
-- CREATE TABLE transacao (
--     transacao_id BIGINT PRIMARY KEY NOT NULL IDENTITY(1,1),
--     contrato_id BIGINT NOT NULL REFERENCES contrato(contrato_id),
--     valor_total MONEY NOT NULL,
--     percentual_desconto NUMERIC(10,2) NULL
-- );

-- -- Insert data into the transacao table
-- INSERT INTO transacao VALUES (1, 3000, 6.99);
-- INSERT INTO transacao VALUES (2, 4500, 15);
-- INSERT INTO transacao VALUES (1, 57989, 1.45);
-- INSERT INTO transacao VALUES (4, 1, 0);
-- INSERT INTO transacao VALUES (4, 35, NULL);
