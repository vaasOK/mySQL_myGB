
INSERT INTO users (firstname, lastname, email)
SELECT first_name , last_name, email 
	FROM sakila.staff 
	
	
	
	SELECT * FROM users;
	


SELECT id, firstname, lastname, password_hash   
FROM users
where  password_hash is not  NULL;

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, status )
VALUES ('1', '2', 'requested');

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, status )
VALUES ('1', '3', 'requested');

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, status )
VALUES ('1', '4', 'requested');

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, status )
VALUES ('1', '5', 'requested');

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, status )
VALUES ('1', '6', 'requested');

UPDATE friend_requests 
set status = 'approved'
where initiator_user_id = 1 and target_user_id = 2
;

UPDATE friend_requests 
set status = 'declined'
where initiator_user_id = 1 and target_user_id = 3
;



select now();



INSERT INTO messages values
('1','1','2','Voluptatem ut quaerat quia. Pariatur esse amet ratione qui quia. In necessitatibus reprehenderit et. Nam accusantium aut qui quae nesciunt non.','1995-08-28 22:44:29'),
('2','2','1','Sint dolores et debitis est ducimus. Aut et quia beatae minus. Ipsa rerum totam modi sunt sed. Voluptas atque eum et odio ea molestias ipsam architecto.',now()),
('3','3','1','Sed mollitia quo sequi nisi est tenetur at rerum. Sed quibusdam illo ea facilis nemo sequi. Et tempora repudiandae saepe quo.','1993-09-14 19:45:58'),
('4','1','3','Quod dicta omnis placeat id et officiis et. Beatae enim aut aliquid neque occaecati odit. Facere eum distinctio assumenda omnis est delectus magnam.','1985-11-25 16:56:25'),
('5','1','5','Voluptas omnis enim quia porro debitis facilis eaque ut. Id inventore non corrupti doloremque consequuntur. Molestiae molestiae deleniti exercitationem sunt qui ea accusamus deserunt.','1999-09-19 04:35:46')
;

INSERT INTO messages
SET 
	from_user_id = 1, 
	to_user_id = 2, 
	body = '    debitis'
;





DELETE FROM messages 
WHERE from_user_id = 1 AND to_user_id = 2
;





DROP DATABASE IF EXISTS `vk_ch_vas_4` ;
CREATE DATABASE `vk_ch_vas_4` ;

-- vk_ch_vas_4.users definition

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL COMMENT 'Имя',
  `lastname` varchar(50) DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(120) DEFAULT NULL COMMENT 'Электропочта',
  `password_hash` varchar(100) DEFAULT NULL COMMENT 'Пароль',
  `phone` bigint unsigned DEFAULT NULL COMMENT 'Телефон',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
)
;

INSERT INTO vk_ch_vas_4.users
(firstname, lastname, email, password_hash, phone) VALUES
('Clara', 'Bogisich', 'raymond30@example.net', '7b5cd4d7747097d5c3b69bc413d27d2ad9dbb087', 79106233246);
('Martina', 'Lehner', 'ansel.rau@example.net', '80560fce279e7064d8c8934633c0ee9e54d32f43', 79374876133);
('Gladyce', 'Oberbrunner', 'yvonne.braun@example.com', '2cc6e421830ee4de858b90c29cfee3e87f0fc99a', 79984910584);
('Caesar', 'Waters', 'kuvalis.jonathon@example.org', '927720b489e6281cf7a0e00371d38470b5df2d25', 79531459647);
('Bonita', 'Beahan', 'homenick.lenore@example.net', '2f08500f49e6319a30c649fba48a878a38e8d606', 79615278429);
('Colleen', 'Feeney', 'nitzsche.sydni@example.net', 'ec1531d121c231886458b5a84ad0bbe4c53d1058', 79412080890);
('Albina', 'Homenick', 'marjolaine02@example.org', '89eea1026dbe76c4db8a4c3449efce032206adfb', 79655218789);
('Veda', 'Stoltenberg', 'emilia.batz@example.com', '66d1a596a66b4e22e1cf3f282ba0e98d765be7da', 79378098192);
('Bud', 'Wilkinson', 'chelsea59@example.com', '681f2521f6f1d70156aa2eda82e66fa18299753b', 79183983984);
('Royal', 'Turner', 'malika74@example.com', 'e5164c7eba22742c6db4b48aa4775f50efa4c88d', 79964500427);
('Ewell', 'Hintz', 'retta.mcclure@example.net', '5d694aef4bf176cef91e074b79b461a57472ed5e', 79745966428);
('Norma', 'Rodriguez', 'mitchell.anderson@example.com', 'e0ec46abb4657f412408809c49156cdd0354bc0b', 79417351516);
('Zita', 'Lebsack', 'virginie29@example.org', '74d351b8900c6b19868ba195f3cc6e2be9bf5a99', 79577122007);
('Myah', 'Bernier', 'raheem17@example.org', '7c4b5ecea54adbab43745f28f161cb73ecf79f88', 79537015435);
('Keara', 'Luettgen', 'owitting@example.org', 'ebc63103250aaa2047820cb70ebc92f1156e430d', 79233506649);
('Royal', 'Parisian', 'mireille10@example.org', '3319d675caff992040526701455c3066d5774c7e', 79316004897);
('Herbert', 'Wiza', 'bethel14@example.org', '9dfdc2e88f0c1bc08d9752c883b35b5145c6f548', 79673699719);
('Kailyn', 'McGlynn', 'weimann.aniya@example.com', '5ccb35b02a5abdbdf969b093e0be43681f6d6663', 79634745669);
('Wilton', 'Zulauf', 'uklein@example.org', '6d10ecbb542d82daa2691e2ca95f39e007ee8397', 79585695790),
('Lilyan', 'DuBuque', 'cormier.dayton@example.org', 'd65b15fca104b7c2118bafa1cf4184d6910a0edd', 79202429262)
;


-- vk_ch_vas_4.profiles definition

CREATE TABLE `profiles` (
  `user_id` bigint unsigned NOT NULL,
  `gender` char(1) DEFAULT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL  COMMENT 'ДР',
  `photo_id` bigint unsigned DEFAULT NULL  COMMENT 'Фото в профиль',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'дата/время создания',
  `hometown` varchar(100) DEFAULT NULL  COMMENT 'из Города',
  UNIQUE KEY `user_id` (`user_id`),
  -- KEY `profiles_FK` (`photo_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  -- CONSTRAINT `profiles_FK` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`)
)
;

-- ALTER TABLE vk_ch_vas_4.profiles DROP FOREIGN KEY profiles_FK;
-- ALTER TABLE vk_ch_vas_4.profiles ADD CONSTRAINT FK_profiles_photos FOREIGN KEY (photo_id) REFERENCES vk_ch_vas_4.photos(id);


INSERT INTO vk_ch_vas_4.profiles
(gender, birthday, photo_id, created_at, hometown) VALUES
('f', '1983-11-03', 1, '2020-10-03 19:16:58', NULL),
('f', '1970-05-21', 2, '2020-09-10 02:52:55', NULL),
('f', '1991-08-16', 3, '2020-04-08 06:34:34', NULL),
('m', '1980-09-27', 4, '2020-11-22 12:44:45', NULL),
('f', '1977-08-24', 5, '2020-03-06 07:35:00', NULL),
('m', '2005-01-15', 6, '2020-09-24 02:28:25', NULL),
('m', '1974-02-19', 7, '2020-02-04 17:54:56', NULL),
('f', '1996-05-28', 8, '2020-02-11 22:11:09', NULL),
('m', '2002-11-07', 9, '2020-04-01 07:54:21', NULL),
('m', '1993-03-04', 10, '2020-07-21 20:01:46', NULL),
('f', '1977-09-27', 11, '2020-06-22 07:43:10', NULL),
('m', '1992-09-14', 12, '2020-04-25 04:06:15', NULL),
('f', '1997-04-18', 13, '2020-08-08 15:10:58', NULL),
('f', '2009-05-02', 14, '2020-12-20 03:37:49', NULL),
('m', '1017-10-29', 15, '2020-10-22 17:31:24', NULL),
('f', '1996-11-12', 16, '2020-12-26 12:25:23', NULL),
('m', '1973-12-14', 17, '2020-03-28 18:29:28', NULL),
('f', '2004-03-18', 18, '2020-06-05 05:41:43', NULL),
('f', '2013-05-31', 19, '2020-05-06 08:50:13', NULL),
('m', '1973-09-16', 20, '2020-06-14 10:16:40', NULL)
;




-- vk_ch_vas_4.messages definition

CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint unsigned NOT NULL,
  `to_user_id` bigint unsigned NOT NULL,
  `body` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
)


INSERT INTO vk_ch_vas_4.messages
(from_user_id, to_user_id, body, created_at) VALUES
(2, 1, 'Sint dolores et debitis est ducimus. Aut et quia beatae minus. Ipsa rerum totam modi sunt sed. Voluptas atque eum et odio ea molestias ipsam architecto.', '2021-08-29 15:27:15'),
(3, 1, 'Sed mollitia quo sequi nisi est tenetur at rerum. Sed quibusdam illo ea facilis nemo sequi. Et tempora repudiandae saepe quo.', '1993-09-14 19:45:58'),
(1, 3, 'Quod dicta omnis placeat id et officiis et. Beatae enim aut aliquid neque occaecati odit. Facere eum distinctio assumenda omnis est delectus magnam.', '1985-11-25 16:56:25'),
(1, 5, 'Voluptas omnis enim quia porro debitis facilis eaque ut. Id inventore non corrupti doloremque consequuntur. Molestiae molestiae deleniti exercitationem sunt qui ea accusamus deserunt.', '1999-09-19 04:35:46'),
(11, 1, 'Iusto qui ratione ut voluptates architecto nam ut. Commodi sed culpa dolorem ipsam. Debitis molestiae et et aliquam inventore officia. Excepturi modi explicabo ut quia cumque quia sit.', '1976-04-01 15:46:48'),
(12, 2, 'Ut corporis necessitatibus consequatur possimus in. Eos dolores officiis minus aut recusandae dicta eveniet. Veritatis iusto assumenda nemo at ullam praesentium pariatur tenetur. Vel in aliquid deserunt expedita dolore.', '2024-02-18 02:00:12'),
(13, 3, 'Quas ab consequuntur est similique. Consequatur eos vitae voluptas et aliquid vel voluptas. Hic adipisci itaque impedit assumenda.', '1985-12-20 17:05:44'),
(14, 4, 'Perferendis eius nam rem dolores. Necessitatibus quia quis incidunt assumenda qui quam. Et reiciendis laboriosam placeat ut est. Ipsam recusandae et ut est.', '2002-11-10 01:18:12'),
(15, 5, 'Tenetur aut placeat ut quia perferendis. Dolorum nihil sint illo magnam et aut aliquam ut. Amet facilis placeat sit excepturi culpa.', '2016-04-15 10:21:25'),
(16, 6, 'Consequatur itaque iure id ut. Doloremque voluptatibus aut autem ut. Aut ullam error laboriosam atque accusantium ducimus dicta. Ut qui illum qui.', '1980-12-22 07:25:49'),
(17, 7, 'Ex aut est molestiae ut veritatis impedit. Consectetur voluptatem iure incidunt inventore. Eveniet et mollitia ut est et est. Qui magni quam ipsa repellendus maxime cum occaecati.', '1999-06-04 17:04:01'),
(18, 8, 'Tempora qui soluta qui error possimus soluta dolor unde. Rerum qui est qui voluptatem labore. Explicabo ut rerum voluptas commodi rerum iste aut.', '2043-08-08 05:02:27'),
(19, 9, 'Nihil omnis velit provident in fugit sequi. Quisquam maiores qui deleniti ea ea. Neque quis deleniti corporis consectetur voluptatem occaecati suscipit odio. Architecto nam deleniti accusamus labore ad placeat.', '1998-08-01 18:17:54'),
(10, 8, 'Distinctio non omnis dolor sint soluta non. Et eum et architecto est incidunt sunt. Error natus voluptate aperiam consequatur. Voluptates laboriosam beatae culpa ad corrupti voluptatibus sequi.', '2020-04-19 12:02:09'),
(11, 1, 'Corporis hic ut odio perferendis facere in vel. Voluptatem dignissimos distinctio et quis consectetur sed aut. At atque esse iure maxime fuga. Incidunt distinctio quas dolorem sed est.', '2005-01-17 09:58:27'),
(12, 2, 'Iure repudiandae fugit rerum reiciendis. Dolorem quasi repellendus ut animi alias. Qui nam officia ut minima ullam consequatur eius.', '2032-10-06 17:16:33'),
(13, 3, 'Minus totam et rerum ut quas ratione sint. Molestias eum necessitatibus dolorem nihil est voluptatibus aut quas. Praesentium molestias autem corrupti eaque praesentium vero nulla rerum. Architecto sapiente nobis fugiat repudiandae.', '1974-12-26 02:31:40'),
(14, 4, 'Laboriosam quia tenetur eum illo suscipit pariatur quas temporibus. Ipsa illum dignissimos quasi qui natus natus. Reiciendis magnam sit et ab sunt. Incidunt similique qui totam minus quis.', '1976-12-03 05:35:12'),
(15, 5, 'Aliquam vel magni quia nobis non veniam reprehenderit exercitationem. Ab eum quidem et corrupti quis culpa eos aperiam. Aut nihil pariatur quae expedita. Consequatur laudantium ipsam reprehenderit voluptatem aut assumenda est.', '1974-01-21 20:38:36'),
(16, 6, 'Nesciunt harum eum hic odit velit necessitatibus aperiam. Optio eveniet ipsa quae hic reprehenderit. Sit non natus aspernatur quos. Tempora culpa commodi voluptatem maxime aut consectetur.', '2005-05-04 04:24:53'),
(17, 7, 'Ut ducimus nobis sit. A beatae sint dicta commodi eos architecto.', '1982-10-21 20:28:41'),
(18, 8, 'Voluptate pariatur reprehenderit omnis ab fuga et dolor. Facilis quae magnam ut officia quasi. Voluptatem illum dolor laudantium doloremque dolorum.', '1995-09-01 09:06:14'),
(19, 9, 'Illo alias excepturi id debitis quos pariatur. Ea illum velit perferendis est labore. Necessitatibus veniam sint asperiores excepturi. Dolor fuga voluptatem sapiente fugiat quia.', '1989-12-12 20:14:30'),
(10, 5, 'Qui rerum voluptatem voluptas suscipit minus accusantium. Dolor sequi est consequatur quis recusandae non. Et autem sunt esse.', '2018-08-18 13:09:12'),
(11, 1, 'Amet necessitatibus quia molestiae veniam explicabo repellendus magnam. Earum earum in maxime. Nam ipsa officia quae accusamus saepe et minus aut.', '1996-11-23 07:03:46'),
(12, 2, 'Sint aspernatur recusandae perspiciatis mollitia accusamus. Quasi animi nihil reiciendis dolorem officia maxime. Et et sint consectetur.', '1987-04-24 14:23:11'),
(13, 3, 'A optio magni unde et quam temporibus quibusdam. Officia id assumenda qui provident. Reiciendis tenetur hic incidunt voluptate ipsam maxime. Aut rerum aspernatur aut aliquid quo mollitia molestiae.', '2011-07-17 21:30:24'),
(14, 4, 'Ipsa laboriosam accusantium minima natus. Mollitia quos et atque quis. Totam qui aut odio accusantium mollitia ducimus et. Ipsam ut qui et ratione aut a.', '2021-01-09 15:37:53'),
(15, 5, 'Hic mollitia officiis odio corporis autem quam. Dolor et recusandae repudiandae et tempora cumque. Nihil ab voluptatem est aut. Voluptatem provident iure hic in est. Illo nesciunt ut veritatis voluptates voluptatum aperiam est dolore.', '2018-11-30 05:05:30'),
(16, 6, 'Commodi rerum enim consequatur sint minima et. Rerum praesentium explicabo beatae sunt accusamus aut expedita. Cumque iure ratione et rem provident a.', '1980-09-05 22:10:39'),
(17, 7, 'Rerum tempora eligendi ad amet. Fugit esse iure optio non repellendus. Sapiente odit ducimus quis quisquam.', '1987-02-18 12:17:23'),
(8, 18, 'Atque voluptates aut minima possimus sunt. Illo ipsa est veniam est. Eos ut delectus qui delectus laudantium. Quod voluptatem eum occaecati voluptatibus fugit.', '2013-04-13 06:03:33'),
(9, 19, 'Illum autem est distinctio nesciunt recusandae possimus debitis. Rem cum porro earum quae.', '2015-04-08 06:34:29'),
(3, 10, 'Fuga tempore tenetur nihil suscipit sequi molestiae. Quidem laudantium dolorem officiis natus ab. Vel inventore ex reiciendis ipsa vero aut. Dolorum quae sed voluptate est eum.', '2029-07-01 10:17:04'),
(1, 11, 'Animi et officiis vero aut. Esse eaque quis quia quia eos atque. Atque laborum odit qui modi sit voluptas.', '2018-02-17 16:55:56'),
(2, 12, 'Sed et quia iste voluptatum aut sit. Dicta voluptates molestiae harum nobis voluptatum ipsa possimus. Velit qui adipisci voluptas qui.', '1982-02-27 11:22:07'),
(3, 13, 'Beatae consequatur aspernatur deserunt minima ipsam. Ratione dicta blanditiis omnis amet facilis expedita vitae. Non laudantium aut reiciendis. Qui quas corrupti qui nulla voluptatibus.', '2019-02-23 00:35:52'),
(4, 14, 'Quo quia unde magni ducimus omnis pariatur. Ex nam non ea aliquid natus non facere. Sed necessitatibus quo molestiae iure ipsam. Tenetur temporibus nam quo fugiat quam.', '1987-11-01 13:31:21'),
(5, 15, 'Et facere tenetur quia impedit saepe omnis dignissimos. Vel facere dolores voluptas molestiae dignissimos dolores assumenda. Voluptate aut quis sapiente.', '1999-01-21 16:47:06'),
(6, 16, 'Atque enim consequatur ab non aperiam qui nobis. Commodi deleniti aut at eos et atque expedita. Voluptas eum voluptatum et unde officiis non.', '2011-11-08 19:17:41')
;






SELECT IF(TRUE, 'истина', 'ложь'), IF(FALSE, 'истина', 'ложь');














