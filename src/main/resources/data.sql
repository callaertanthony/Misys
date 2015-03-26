INSERT INTO stock (id, quantity) VALUES (1, 10);
INSERT INTO stock (id, quantity) VALUES (2, 10);
INSERT INTO stock (id, quantity) VALUES (3, 10);
INSERT INTO stock (id, quantity) VALUES (4, 10);
INSERT INTO stock (id, quantity) VALUES (5, 0);

INSERT INTO `misys`.`user` (`id`, `age`, `email`, `first_name`, `last_name`, `nickname`)
VALUES ('1', '12', 't@t.fr', 'Charles', 'Hot', 'Charlotte'), ('2', '99', 'z@z.com', 'Mat', 'Ou', 'Matou');

INSERT INTO `misys`.`brand` (`id`, `name`) VALUES (NULL, 'Sony'), (NULL, 'Universal');

INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('1','Rock','Rock','2');
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('2','Heavy','Heavy','3');
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('3','Metal','Metal','4');
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('4','Autre','Autre','5');
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('5','test1','test1','6');
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('6','test2','test2','7');
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('7','test3','Autre','8');
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('8','test4','Autre','9');
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('9','test5','Autre','10');
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('10','test6','Autre','11');
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('11','test7','Autre','12');
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('12','test8','Autre','0');


INSERT INTO `misys`.`product` (`id`, `description`, `name`, `price`, `reference`, `brand_id`, `stock_id`, `picture`, `category_id`)
VALUES
  (NULL,
   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu vestibulum ipsum. Quisque bibendum ut lorem eu dictum.',
   'Batman', '999', 'B00JG8GBDM', '1', '2', 'Penguins.jpg','1'),
  (NULL,
   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu vestibulum ipsum. Quisque bibendum ut lorem eu dictum. Nullam sit amet tempor enim, sed lobortis sapien.',
   'Batwoman', '99', 'B00JG8GBDS', '2', '5', 'Penguins.jpg','1'),
   (NULL,
   'La bat-mobile est super rapide !',
   'Batmobile', '50', 'B00JG8GBDV', '1', '3', 'Penguins.jpg','1'),
   (NULL,
   'Le bat-grappin pour faire comme les ninjas !',
   'Batgrappin', '25', 'B00JG8GBDG', '1', '6', 'Penguins.jpg','1'),
   (NULL,
   'Le i-bat, juste entre le i pelle et le i brouette',
   'Ibat', '75', 'B00JG8GBDI', '1', '4', 'Penguins.jpg','1'),
   (NULL,
   'Le maquillage de batwoman, super pratique quand même.',
   'Maquillage', '5000', 'B00JG8GBDR', '2', '1', 'Penguins.jpg','1');

INSERT INTO `misys`.`review` (`id`, `note`, `review`, `product_id`, `user_id`)
VALUES (NULL, '6', 'Review 1', '1', '1'), (NULL, '5', 'Review 2', '1', '1');
