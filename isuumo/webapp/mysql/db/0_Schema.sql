DROP DATABASE IF EXISTS isuumo;
CREATE DATABASE isuumo;

DROP TABLE IF EXISTS isuumo.estate;
DROP TABLE IF EXISTS isuumo.chair;

CREATE TABLE isuumo.estate
(
  id          INTEGER             NOT NULL PRIMARY KEY,
  name        VARCHAR(64)         NOT NULL,
  description VARCHAR(4096)       NOT NULL,
  thumbnail   VARCHAR(128)        NOT NULL,
  address     VARCHAR(128)        NOT NULL,
  latitude    DOUBLE PRECISION    NOT NULL,
  longitude   DOUBLE PRECISION    NOT NULL,
  rent        INTEGER             NOT NULL,
  door_height INTEGER             NOT NULL,
  door_width  INTEGER             NOT NULL,
  features    VARCHAR(64)         NOT NULL,
  popularity  INTEGER             NOT NULL,
  index (door_width),
  index (door_height),
  index (rent),
  index (latitude, longitude),
  index (id, popularity)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE isuumo.chair
(
  id          INTEGER         NOT NULL PRIMARY KEY,
  name        VARCHAR(64)     NOT NULL,
  description VARCHAR(4096)   NOT NULL,
  thumbnail   VARCHAR(128)    NOT NULL,
  price       INTEGER         NOT NULL,
  height      INTEGER         NOT NULL,
  width       INTEGER         NOT NULL,
  depth       INTEGER         NOT NULL,
  color       VARCHAR(64)     NOT NULL,
  features    VARCHAR(64)     NOT NULL,
  kind        VARCHAR(64)     NOT NULL,
  popularity  INTEGER         NOT NULL,
  stock       INTEGER         NOT NULL,
  index (price),
  index (stock),
  index (id, popularity),
  index(kind),
  index(color),
  index(price),
  index(height),
  index(width),
  index(depth)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
