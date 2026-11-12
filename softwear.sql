-- Importe no phpMyAdmin (aba "Importar") ou rode: mysql -u root < softwear.sql
CREATE DATABASE IF NOT EXISTS softwear
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE softwear;

CREATE TABLE IF NOT EXISTS contatos (
  id          INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome        VARCHAR(100) NOT NULL,
  email       VARCHAR(150) NOT NULL,
  ddd         CHAR(2)      NOT NULL,
  numero      VARCHAR(9)   NOT NULL,
  mensagem    TEXT         NOT NULL,
  data_envio  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
