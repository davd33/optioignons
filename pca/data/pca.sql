DROP TABLE pca;
CREATE TABLE pca(
  id SERIAL PRIMARY KEY NOT NULL,
  city CHAR(50) NOT NULL UNIQUE,
  january REAL NOT NULL,
  february REAL NOT NULL,
  march REAL NOT NULL,
  april REAL NOT NULL,
  may REAL NOT NULL,
  juny REAL NOT NULL,
  july REAL NOT NULL,
  august REAL NOT NULL,
  september REAL NOT NULL,
  october REAL NOT NULL,
  november REAL NOT NULL,
  december REAL NOT NULL,
  longitude REAL NOT NULL,
  latitude REAL NOT NULL
);

--

INSERT INTO pca (city, january, february, march, april, may, juny, july, august, september, october, november, december, longitude, latitude)
VALUES ('Bordeaux', 5.6, 6.6, 10.3, 12.8, 15.8, 19.3, 20.9, 21, 18.6, 13.8, 9.1, 6.2, 44.5, -0.34);
INSERT INTO pca (city, january, february, march, april, may, juny, july, august, september, october, november, december, longitude, latitude)
VALUES ('Brest', 6.1, 5.8, 7.8, 9.2, 11.6, 14.4, 15.6, 16, 14.7, 12, 9, 7, 48.24, -4.29);
INSERT INTO pca (city, january, february, march, april, may, juny, july, august, september, october, november, december, longitude, latitude)
VALUES ('Clermont', 2.6, 3.7, 7.5, 10.3, 13.8, 17.3, 19.4, 19.1, 16.2, 11.2, 6.6, 3.6, 45.47, 3.05);
INSERT INTO pca (city, january, february, march, april, may, juny, july, august, september, october, november, december, longitude, latitude)
VALUES ('Grenoble', 1.5, 3.2, 7.7, 10.6, 14.5, 17.8, 20.1, 19.5, 16.7, 11.4, 6.5, 2.3, 45.1, 5.43);
INSERT INTO pca (city, january, february, march, april, may, juny, july, august, september, october, november, december, longitude, latitude)
VALUES ('Lille', 2.4, 2.9, 6, 8.9, 12.4, 15.3, 17.1, 17.1, 14.7, 10.4, 6.1, 3.5, 50.38, 3.04);
INSERT INTO pca (city, january, february, march, april, may, juny, july, august, september, october, november, december, longitude, latitude)
VALUES ('Lyon', 2.1, 3.3, 7.7, 10.9, 14.9, 18.5, 20.7, 20.1, 16.9, 11.4, 6.7, 3.1, 45.45, 4.51);
INSERT INTO pca (city, january, february, march, april, may, juny, july, august, september, october, november, december, longitude, latitude)
VALUES ('Marseille', 5.5, 6.6, 10, 13, 16.8, 20.8, 23.3, 22.8, 19.9, 15, 10.2, 6.9, 43.18, 5.24);
INSERT INTO pca (city, january, february, march, april, may, juny, july, august, september, october, november, december, longitude, latitude)
VALUES ('Montpellier', 5.6, 6.7, 9.9, 12.8, 16.2, 20.1, 22.7, 22.3, 19.3, 14.6, 10, 6.5, 43.36, 3.53);
INSERT INTO pca (city, january, february, march, april, may, juny, july, august, september, october, november, december, longitude, latitude)
VALUES ('Nantes', 5, 5.3, 8.4, 10.8, 13.9, 17.2, 18.8, 18.6, 16.4, 12.2, 8.2, 5.5, 47.13, -1.33);
INSERT INTO pca (city, january, february, march, april, may, juny, july, august, september, october, november, december, longitude, latitude)
VALUES ('Nice', 7.5, 8.5, 10.8, 13.3, 16.7, 20.1, 22.7, 22.5, 20.3, 16, 11.5, 8.2, 43.42, 7.15);
INSERT INTO pca (city, january, february, march, april, may, juny, july, august, september, october, november, december, longitude, latitude)
VALUES ('Paris', 3.4, 4.1, 7.6, 10.7, 14.3, 17.5, 19.1, 18.7, 16, 11.4, 7.1, 4.3, 48.52, 2.2);
INSERT INTO pca (city, january, february, march, april, may, juny, july, august, september, october, november, december, longitude, latitude)
VALUES ('Rennes', 4.8, 5.3, 7.9, 10.1, 13.1, 16.2, 17.9, 17.8, 15.7, 11.6, 7.8, 5.4, 48.05, -1.41);
INSERT INTO pca (city, january, february, march, april, may, juny, july, august, september, october, november, december, longitude, latitude)
VALUES ('Strasbourg', 0.4, 1.5, 5.6, 9.8, 14, 17.2, 19, 18.3, 15.1, 9.5, 4.9, 1.3, 48.35, 7.45);
INSERT INTO pca (city, january, february, march, april, may, juny, july, august, september, october, november, december, longitude, latitude)
VALUES ('Toulouse', 4.7, 5.6, 9.2, 11.6, 14.9, 18.7, 20.9, 20.9, 18.3, 13.3, 8.6, 5.5, 43.36, 1.26);
INSERT INTO pca (city, january, february, march, april, may, juny, july, august, september, october, november, december, longitude, latitude)
VALUES ('Vichy', 2.4, 3.4, 7.1, 9.9, 13.6, 17.1, 19.3, 18.8, 16, 11, 6.6, 3.4, 46.08, 3.26);

--

SELECT *
  FROM pca;
