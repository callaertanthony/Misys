INSERT INTO stock (id, quantity) VALUES (1, 10);
INSERT INTO stock (id, quantity) VALUES (2, 10);
INSERT INTO stock (id, quantity) VALUES (3, 10);
INSERT INTO stock (id, quantity) VALUES (4, 10);
INSERT INTO stock (id, quantity) VALUES (5, 10);

INSERT INTO `misys`.`brand` (`id`, `name`) VALUES (NULL, 'Sony'), (NULL, 'Universal');

INSERT INTO `misys`.`product` (`id`, `description`, `name`, `price`, `reference`, `brand_id`, `stock_id`)
VALUES
(NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu vestibulum ipsum. Quisque bibendum ut lorem eu dictum.', 'Batman', '999', 'B00JG8GBDM', '1', '2'),
(NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu vestibulum ipsum. Quisque bibendum ut lorem eu dictum. Nullam sit amet tempor enim, sed lobortis sapien.', 'Batwoman', '99', 'B00JG8GBDS', '2', '5');