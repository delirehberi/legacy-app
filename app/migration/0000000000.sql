CREATE TABLE migratos_migration_versions (
    id int(11) NOT NULL AUTO_INCREMENT, 
    version int(11),
    run_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    direction ENUM('u','d'),
    current_version varchar(255),
    PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `type` enum('admin','member') DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
