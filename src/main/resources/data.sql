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


INSERT INTO `misys`.`product` (`id`, `description`, `name`, `picture`, `price`, `reference`, `brand_id`, `category_id`, `stock_id`)
VALUES
  (NULL,
  'Batman! Le vrai le dur!', 'Batman', 'Electro-Deluxe-Hopeful.jpg', '999', 'B00JG8GBDM', '1', '2','1'),
  (NULL,
  'P1', 'P1', 'Electro-Deluxe-Hopeful.jpg', '99', 'B00JG8GBDW', '1', '5','2'),
  (NULL,
  'P2', 'P2', 'Electro-Deluxe-Hopeful.jpg', '99', 'B00JG8GBDR', '1', '6','3'),
  (NULL,
  'P3', 'P3', 'Electro-Deluxe-Hopeful.jpg', '99', 'B00JG8GBDG', '1', '3','4'),
  (NULL,
  'P4', 'P4', 'Electro-Deluxe-Hopeful.jpg', '99', 'B00JG8GBDB', '1', '8','5');

INSERT INTO `misys`.`review` (`id`, `note`, `review`, `product_id`, `user_id`)
VALUES (NULL, '6', 'Review 1', '1', '1'), (NULL, '5', 'Review 2', '1', '1');

