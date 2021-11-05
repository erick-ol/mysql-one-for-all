DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
  pla_id int AUTO_INCREMENT,
  pla_name VARCHAR(60) NOT NULL,
  pla_value DECIMAL(5,2) NOT NULL,
  PRIMARY KEY(pla_id)
) engine = InnoDB;

CREATE TABLE users(
  use_id int AUTO_INCREMENT,
  use_name VARCHAR(200) NOT NULL,
  use_age int NOT NULL,
  use_pla_id int NOT NULL,
  PRIMARY KEY(use_id),
  FOREIGN KEY(use_pla_id) REFERENCES plans(pla_id)
) engine = InnoDB;

CREATE TABLE artists(
  art_id int AUTO_INCREMENT,
  art_name VARCHAR(150) NOT NULL,
  PRIMARY KEY(art_id)
) engine = InnoDB;

CREATE TABLE albuns(
  alb_id int AUTO_INCREMENT,
  alb_name VARCHAR(240) NOT NULL,
  alb_art_id int NOT NULL,
  PRIMARY KEY(alb_id),
  FOREIGN key(arb_art_id) REFERENCES artists(art_id)
) engine = InnoDB;

CREATE TABLE songs(
  son_id int AUTO_INCREMENT,
  son_name VARCHAR(40) NOT NULL,
  son_alb_id int NOT NULL,
  PRIMARY KEY(son_id),
  FOREIGN KEY(son_alb_id) REFERENCES albuns(alb_id)
) engine = InnoDB;

CREATE TABLE history(
  his_use_id int NOT NULL,
  his_son_id int NOT NULL,
  PRIMARY KEY(his_use_id, his_son_id),
  FOREIGN KEY(his_use_id) REFERENCES users(use_id),
  FOREIGN KEY(his_son_id) REFERENCES songs(son_id)
) engine = InnoDB;

CREATE TABLE followed(
  fol_use_id int NOT NULL,
  fol_art_id int NOT NULL,
  PRIMARY KEY(fol_use_id, fol_art_id),
  FOREIGN KEY(fol_use_id) REFERENCES users(fol_use_id),
  FOREIGN KEY(fol_art_id) REFERENCES artists(fol_art_id)
) engine = InnoDB;

INSERT INTO
  plans (pla_name, pla_value)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

INSERT INTO
  users (use_name, use_age, use_pla_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

INSERT INTO
  artists (art_name)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO
  albuns (alb_name, alb_art_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

INSERT INTO
  songs (son_name, son_alb_id)
VALUES
  ("Soul For Us", 1),
  ("Reflections Of Magic", 1),
  ("Dance With Her Own", 1),
  ("Troubles Of My Inner Fire", 2),
  ("Time Fireworks", 2),
  ("Magic Circus", 3),
  ("Honey, So Do I", 3),
  ("Sweetie, Let's Go Wild", 3),
  ("She Knows", 3),
  ("Fantasy For Me", 4),
  ("Celebration Of More", 4),
  ("Rock His Everything", 4),
  ("Home Forever", 4),
  ("Diamond Power", 4),
  ("Honey, Let's Be Silly", 4),
  ("Thang Of Thunder", 5),
  ("Words Of Her Life", 5),
  ("Without My Streets", 5);

INSERT INTO
  history (his_use_id, his_son_id)
VALUES
  (1, 1),
  (1, 6),
  (1, 14),
  (1, 16),
  (2, 13),
  (2, 17),
  (2, 2),
  (2, 15),
  (3, 4),
  (3, 16),
  (3, 6),
  (4, 3),
  (4, 18),
  (4, 11);

INSERT INTO
  followed (fol_use_id, fol_art_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
