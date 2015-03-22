INSERT INTO stock (id, quantity) VALUES (1, 10);
INSERT INTO stock (id, quantity) VALUES (2, 10);
INSERT INTO stock (id, quantity) VALUES (3, 10);
INSERT INTO stock (id, quantity) VALUES (4, 10);
INSERT INTO stock (id, quantity) VALUES (5, 0);

INSERT INTO `misys`.`user` (`id`, `age`, `email`, `first_name`, `last_name`, `nickname`)
VALUES ('1', '12', 't@t.fr', 'Charles', 'Hot', 'Charlotte'), ('2', '99', 'z@z.com', 'Mat', 'Ou', 'Matou');

INSERT INTO `misys`.`brand` (`id`, `name`) VALUES (NULL, 'Sony'), (NULL, 'Universal');

INSERT INTO `misys`.`picture_link` (`id`, `link`) VALUES (NULL, 'daft-punk.jpg');
INSERT INTO `misys`.`picture_link` (`id`, `link`) VALUES (NULL, 'electro-deluxe2.jpg');

INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('1','Rock','http://localhost:8080/','2');
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('2','Pop','http://localhost:8080/','0');

INSERT INTO `misys`.`product` (`id`, `description`, `name`, `price`, `reference`, `brand_id`, `stock_id`, `picturelink_id`,`category_id`)
VALUES
  (NULL,
   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu vestibulum ipsum. Quisque bibendum ut lorem eu dictum.',
   'Daft-Punk', '19', 'B00JG8GBDM', '1', '2', '1','1'),
  (NULL,
   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu vestibulum ipsum. Quisque bibendum ut lorem eu dictum. Nullam sit amet tempor enim, sed lobortis sapien.',
   'Electro-Deluxe', '15', 'B00JG8GBDS', '2', '5', '2','1');

INSERT INTO `misys`.`review` (`id`, `note`, `review`, `product_id`, `user_id`)
VALUES (NULL, '6', 'Review 1', '1', '1'), (NULL, '5', 'Review 2', '1', '1');
