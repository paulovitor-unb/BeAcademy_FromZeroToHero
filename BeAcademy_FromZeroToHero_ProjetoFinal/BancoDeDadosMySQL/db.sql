-- Banco de dados db_from_zero_to_hero
CREATE DATABASE IF NOT EXISTS `db_from_zero_to_hero`
    DEFAULT CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE `db_from_zero_to_hero`;

-- Tabela de usuários
CREATE TABLE `users` (
    `id` CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    `username` VARCHAR(100) NOT NULL,
    `password_hash` CHAR(40) NOT NULL,
    `num_followers` INTEGER NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `phone` CHAR(15) NOT NULL,
    `birthday` DATE NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
ENGINE=InnoDB
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `username`, `password_hash`, `num_followers`, `email`, `phone`, `birthday`) VALUES ("d3b94841-bf44-48cf-9509-0a34368c5af1", "user1", "e38ad214943daad1d64c102faec29de4afe9da3d", "400", "user1@email.com", "(61) 12345-6789", "1991-01-10");
SELECT SLEEP(1);
INSERT INTO `users` (`id`, `username`, `password_hash`, `num_followers`, `email`, `phone`, `birthday`) VALUES ("0c30a1a2-7e99-42aa-b460-af046312d6a5", "user2", "2aa60a8ff7fcd473d321e0146afd9e26df395147", "200", "user2@email.com", "(61) 23456-7891", "1992-02-20");
SELECT SLEEP(1);
INSERT INTO `users` (`id`, `username`, `password_hash`, `num_followers`, `email`, `phone`, `birthday`) VALUES ("966451b7-f046-4f30-8560-8fad74b3324e", "user3", "1119cfd37ee247357e034a08d844eea25f6fd20f", "100", "user3@email.com", "(61) 34567-8912", "1993-03-30");
SELECT SLEEP(1);

-- Tabela de postagens
CREATE TABLE `posts` (
    `id` CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    `content` TEXT NOT NULL,
    `user_id` CHAR(36) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

INSERT INTO `posts` (`id`, `content`, `user_id`) VALUES ("af0881ee-529d-4211-9612-589ab8e72cd4", "post1", "d3b94841-bf44-48cf-9509-0a34368c5af1");
SELECT SLEEP(1);
INSERT INTO `posts` (`id`, `content`, `user_id`) VALUES ("08cc48f6-5b47-4ed4-9065-e7b05d638dec", "post2", "0c30a1a2-7e99-42aa-b460-af046312d6a5");
SELECT SLEEP(1);
INSERT INTO `posts` (`id`, `content`, `user_id`) VALUES ("2a5beecf-6480-4075-a2af-17d49cec5ee9", "post3", "d3b94841-bf44-48cf-9509-0a34368c5af1");
SELECT SLEEP(1);
INSERT INTO `posts` (`id`, `content`, `user_id`) VALUES ("6645a7f4-1188-4ca9-8d74-ad9e2a110c10", "post4", "966451b7-f046-4f30-8560-8fad74b3324e");
SELECT SLEEP(1);
INSERT INTO `posts` (`id`, `content`, `user_id`) VALUES ("82c3dc52-5675-4573-b27e-e633d65bb61a", "post5", "0c30a1a2-7e99-42aa-b460-af046312d6a5");
SELECT SLEEP(1);
INSERT INTO `posts` (`id`, `content`, `user_id`) VALUES ("77a1b418-7a67-47a7-b720-24021d5d57e0", "post6", "d3b94841-bf44-48cf-9509-0a34368c5af1");
SELECT SLEEP(1);
INSERT INTO `posts` (`id`, `content`, `user_id`) VALUES ("40e4bdd1-3b8d-4727-8f7b-2d034e468b78", "post7", "966451b7-f046-4f30-8560-8fad74b3324e");
SELECT SLEEP(1);

-- Tabela de comentários
CREATE TABLE `comments` (
    `id` CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    `content` TEXT NOT NULL,
    `user_id` CHAR(36) NOT NULL,
    `post_id` CHAR(36) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`post_id`) REFERENCES `posts`(`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`) VALUES ("4e858487-1bbf-4102-9eae-77b73df29e00", "comment01", "0c30a1a2-7e99-42aa-b460-af046312d6a5", "af0881ee-529d-4211-9612-589ab8e72cd4");
SELECT SLEEP(1);
INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`) VALUES ("54ca7458-b2cd-4e2c-b608-92e440f33529", "comment02", "966451b7-f046-4f30-8560-8fad74b3324e", "af0881ee-529d-4211-9612-589ab8e72cd4");
SELECT SLEEP(1);
INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`) VALUES ("e526371a-47ba-4a7b-949f-6783af54d426", "comment03", "d3b94841-bf44-48cf-9509-0a34368c5af1", "08cc48f6-5b47-4ed4-9065-e7b05d638dec");
SELECT SLEEP(1);
INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`) VALUES ("924476db-0dd1-40c8-a223-12bcb86d2cb3", "comment04", "966451b7-f046-4f30-8560-8fad74b3324e", "08cc48f6-5b47-4ed4-9065-e7b05d638dec");
SELECT SLEEP(1);
INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`) VALUES ("3da401bc-f44f-4550-886a-b23b9d50d9f7", "comment05", "0c30a1a2-7e99-42aa-b460-af046312d6a5", "2a5beecf-6480-4075-a2af-17d49cec5ee9");
SELECT SLEEP(1);
INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`) VALUES ("c4b65498-4ce3-44cf-bdee-d964d3bdf549", "comment06", "966451b7-f046-4f30-8560-8fad74b3324e", "2a5beecf-6480-4075-a2af-17d49cec5ee9");
SELECT SLEEP(1);
INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`) VALUES ("01b8cc52-0488-4379-a185-ea0b31ac45f6", "comment07", "d3b94841-bf44-48cf-9509-0a34368c5af1", "6645a7f4-1188-4ca9-8d74-ad9e2a110c10");
SELECT SLEEP(1);
INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`) VALUES ("6ef6a11f-c260-4fab-8915-62926f3e2f38", "comment08", "0c30a1a2-7e99-42aa-b460-af046312d6a5", "6645a7f4-1188-4ca9-8d74-ad9e2a110c10");
SELECT SLEEP(1);
INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`) VALUES ("00f96f90-72b8-4227-821f-9cc02ee72613", "comment09", "966451b7-f046-4f30-8560-8fad74b3324e", "6645a7f4-1188-4ca9-8d74-ad9e2a110c10");
SELECT SLEEP(1);
INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`) VALUES ("78925693-4d5e-43d3-ae88-c8cd83051d01", "comment10", "d3b94841-bf44-48cf-9509-0a34368c5af1", "82c3dc52-5675-4573-b27e-e633d65bb61a");
SELECT SLEEP(1);
INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`) VALUES ("86ce3ef5-e490-4da8-954f-8d07375c2667", "comment11", "966451b7-f046-4f30-8560-8fad74b3324e", "82c3dc52-5675-4573-b27e-e633d65bb61a");
SELECT SLEEP(1);
INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`) VALUES ("e5d4f535-7f7c-4133-a733-43db794378d8", "comment12", "966451b7-f046-4f30-8560-8fad74b3324e", "77a1b418-7a67-47a7-b720-24021d5d57e0");
SELECT SLEEP(1);
INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`) VALUES ("a1484e8a-45f8-42e4-983d-4c792ca07e1e", "comment13", "d3b94841-bf44-48cf-9509-0a34368c5af1", "40e4bdd1-3b8d-4727-8f7b-2d034e468b78");
SELECT SLEEP(1);
