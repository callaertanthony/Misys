INSERT INTO stock (id, quantity) VALUES (1, 10);
INSERT INTO stock (id, quantity) VALUES (2, 10);
INSERT INTO stock (id, quantity) VALUES (3, 10);
INSERT INTO stock (id, quantity) VALUES (4, 10);
INSERT INTO stock (id, quantity) VALUES (5, 10);

INSERT INTO `misys`.`brand` (`id`, `name`) VALUES (NULL, 'Sony'), (NULL, 'Universal');

INSERT INTO `misys`.`product` (`id`, `name`, `price`, `brand_id`, `stock_id`)
VALUES (NULL, 'Batman', '9.95', '1', '3'), (NULL, 'Batwoman', '999', '1', '5');
INSERT INTO `misys`.`product` (`id`, `name`, `price`, `brand_id`, `stock_id`)
VALUES (NULL, 'Daft Punk', '15', '2', '2'), (NULL, 'James Bond', '8', '2', '1');
