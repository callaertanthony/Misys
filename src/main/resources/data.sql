INSERT INTO stock (id, quantity) VALUES (1, 10), (2, 10), (3, 10), (4, 10), (5, 0), (6, 3);

INSERT INTO `misys`.`user` (`id`, `age`, `email`, `first_name`, `last_name`, `nickname`)
VALUES ('1', '12', 't@t.fr', 'Charles', 'Hot', 'Charlotte'), ('2', '99', 'z@z.com', 'Mat', 'Ou', 'Matou');

INSERT INTO `misys`.`brand` (`id`, `name`) VALUES (NULL, 'Sony'), (NULL, 'Universal');

INSERT INTO `misys`.`picture_link` (`id`, `link`) VALUES
(NULL, 'Penguins.jpg'), (NULL, 'Penguins.jpg'), (NULL, 'Penguins.jpg'),
(NULL, 'Penguins.jpg'), (NULL, 'Penguins.jpg'), (NULL, 'Penguins.jpg');


INSERT INTO `misys`.`product` (`id`, `description`, `name`, `price`, `reference`, `brand_id`, `stock_id`, `picturelink_id`)
VALUES
  (NULL,
   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu vestibulum ipsum. Quisque bibendum ut lorem eu dictum.',
   'Batman', '999', 'B00JG8GBDM', '1', '2', '1'),
  (NULL,
   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu vestibulum ipsum. Quisque bibendum ut lorem eu dictum. Nullam sit amet tempor enim, sed lobortis sapien.',
   'Batwoman', '99', 'B00JG8GBDS', '2', '5', '2'),
   (NULL,
   'La bat-mobile est super rapide !',
   'Batmobile', '50', 'B00JG8GBDV', '1', '3', '3'),
   (NULL,
   'Le bat-grappin pour faire comme les ninjas !',
   'Batgrappin', '25', 'B00JG8GBDG', '1', '6', '4'),
   (NULL,
   'Le i-bat, juste entre le i pelle et le i brouette',
   'Ibat', '75', 'B00JG8GBDI', '1', '4', '5'),
   (NULL,
   'Le maquillage de batwoman, super pratique quand même.',
   'Maquillage', '5000', 'B00JG8GBDR', '2', '1', '6');

INSERT INTO `misys`.`review` (`id`, `note`, `review`, `product_id`, `user_id`)
VALUES (NULL, '6', 'Review 1', '1', '1'), (NULL, '12', 'Review 2', '1', '1');
