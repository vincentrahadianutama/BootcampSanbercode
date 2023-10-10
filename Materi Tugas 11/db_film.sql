CREATE TABLE `profil` (
  `id` integer PRIMARY KEY,
  `umur` integer,
  `bio` varchar(255),
  `alamat` varchar(255)
);

CREATE TABLE `users` (
  `id` integer PRIMARY KEY,
  `username` varchar(255),
  `email` varchar(255),
  `password` varchar(255)
);

CREATE TABLE `cast` (
  `id` integer PRIMARY KEY,
  `nama` varchar(255),
  `umur` integer,
  `bio` varchar(255)
);

CREATE TABLE `film` (
  `id` integer PRIMARY KEY,
  `judul` varchar(255),
  `ringkasan` varchar(255),
  `tahun` integer,
  `poster` image
);

CREATE TABLE `genre` (
  `id` integer PRIMARY KEY,
  `nama` varchar(255)
);

ALTER TABLE `users` ADD FOREIGN KEY (`username`) REFERENCES `profil` (`bio`);

ALTER TABLE `users` ADD FOREIGN KEY (`email`) REFERENCES `profil` (`alamat`);

ALTER TABLE `users` ADD FOREIGN KEY (`password`) REFERENCES `genre` (`id`);

ALTER TABLE `genre` ADD FOREIGN KEY (`nama`) REFERENCES `film` (`judul`);

ALTER TABLE `film` ADD FOREIGN KEY (`ringkasan`) REFERENCES `cast` (`bio`);

ALTER TABLE `cast` ADD FOREIGN KEY (`nama`) REFERENCES `genre` (`nama`);

ALTER TABLE `profil` ADD FOREIGN KEY (`umur`) REFERENCES `cast` (`umur`);

ALTER TABLE `profil` ADD FOREIGN KEY (`id`) REFERENCES `users` (`id`);

ALTER TABLE `cast` ADD FOREIGN KEY (`id`) REFERENCES `profil` (`id`);
