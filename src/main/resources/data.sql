INSERT INTO stock (id, quantity) VALUES (1, 10);
INSERT INTO stock (id, quantity) VALUES (2, 10);
INSERT INTO stock (id, quantity) VALUES (3, 10);
INSERT INTO stock (id, quantity) VALUES (4, 10);
INSERT INTO stock (id, quantity) VALUES (5, 10);

INSERT INTO `misys`.`brand` (`id`, `name`) VALUES (NULL, 'Sony'), (NULL, 'Universal');

INSERT INTO `misys`.`picture_link` (`id`, `link`) VALUES (NULL, 'images\\product-details\\Penguins.jpg');

INSERT INTO `misys`.`product` (`id`, `name`, `price`, `brand_id`, `picturelink_id`, `stock_id`) VALUES (NULL, 'Batman', '999', '2', '1', '2');
