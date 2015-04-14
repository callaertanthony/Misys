INSERT INTO stock (id, quantity) VALUES (1, 10);
INSERT INTO stock (id, quantity) VALUES (2, 250);
INSERT INTO stock (id, quantity) VALUES (3, 104);
INSERT INTO stock (id, quantity) VALUES (4, 102);
INSERT INTO stock (id, quantity) VALUES (5, 1000);

INSERT INTO `misys`.`user` (`id`, `age`, `email`, `first_name`, `last_name`, `nickname`)
VALUES ('1', '12', 't@t.fr', 'Charles', 'Hot', 'Charlotte'), ('2', '99', 'z@z.com', 'Mat', 'Ou', 'Matou');

/*------------------------------Add brand-------------------------------------------*/
INSERT INTO `misys`.`brand` (`id`, `name`) VALUES ('1', 'Columbia'), ('2', 'Universal'),('3', 'Geffen'),('4', 'Vertigo'),('5', 'Studiocanal'),('6', 'M6 Video'),('7', 'Universal Picture'),('8', 'Warner Bros'),('9', 'Warner Music'),('10', 'Mosaert'),('11', 'On And On Record');

/*---------------------------------------------------------------------------------------------CD--------------------------------------------------------------------------------------------------------*/
/*------------------------------Product DaftPunk-------------------------------------------*/
INSERT INTO stock (id, quantity) VALUES (6, 100000);
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('13','Dance','Dance','14'); /*Daft Punk*/
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('14','Electro','Electro','0'); /*Daft Punk*/
INSERT INTO `misys`.`product` (`id`, `description`, `name`, `picture`, `price`, `reference`, `brand_id`, `category_id`, `stock_id`)
VALUES
  (NULL,
  'DAFT PUNK « Random Access Memories »
   Un album ambitieux, plein de tubes en puissance qui joue sur un large éventaille d''émotions. Les instruments live remplacent les machines et les guests prestigieux se fondent parfaitement dans ce projet.',
   'Daft Punk - Random Access memories',
   'cd/Daft_Punk-Random_Access_Memories[CD].jpg',
   '9.99',
   'B00JG8GBDC',
   '5',
   '13',
   '6');

/*------------------------------Metalica-------------------------------------------*/
INSERT INTO stock (id, quantity) VALUES (7, 5000);
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('15','Rock','Rock','16'); /*Daft Punk*/
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('16','Hard','Hard','0'); /*Daft Punk*/
INSERT INTO `misys`.`product` (`id`, `description`, `name`, `picture`, `price`, `reference`, `brand_id`, `category_id`, `stock_id`)
VALUES
  (NULL,
   'Au total, METALLICA a totalisé plus de 100 millions d''albums vendus, plus de 80 numéro 1 dans les charts et a été certifié DISQUE DE PLATINE et DISQUE D''OR dans plus de 40 pays !',
   'Metallica - Black Album',
   'cd/Metalica-Black_Album[CD].jpg',
   '14.36',
   'B00JG8GBDD',
   '5',
   '15',
   '7');

/*------------------------------Nirvana-------------------------------------------*/
INSERT INTO stock (id, quantity) VALUES (8, 51000);
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('17','Indé','Indé','18'); /*Daft Punk*/
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('18','Grunge','Grunge','0'); /*Daft Punk*/
INSERT INTO `misys`.`product` (`id`, `description`, `name`, `picture`, `price`, `reference`, `brand_id`, `category_id`, `stock_id`)
VALUES
  (NULL,
   'Au total, METALLICA a totalisé plus de 100 millions d''albums vendus, plus de 80 numéro 1 dans les charts et a été certifié DISQUE DE PLATINE et DISQUE D''OR dans plus de 40 pays !',
   'Nirvana - Nevermind - 20ème Anniversaire',
   'cd/Nirvana-20_Years[CD].jpg',
   '9.82',
   'B00JG8GBDE',
   '3',
   '17',
   '8');

/*---------------------------------------------------------------------------------------------DVD--------------------------------------------------------------------------------------------------------*/
/*------------------------------Product Million Dollar Baby-------------------------------------------*/
INSERT INTO stock (id, quantity) VALUES (20, 100000);
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('100','Drame','Drame','0');
INSERT INTO `misys`.`product` (`id`, `description`, `name`, `picture`, `price`, `reference`, `brand_id`, `category_id`, `stock_id`)
VALUES
  (NULL,
   'Frankie (Clint Eastwood), vieil entraîneur de boxe usé et amer, dirige un petit gymnase avec l''aide de son ami Scrap (Morgan Freeman). Le jour où Maggie, une jeune boxeuse (Hilary Swank), lui demande de l''entraîner, Frankie lui oppose un refus catégorique. Mais c''est sans compter sans la détermination de la jeune femme…',
   'Million Dollar Baby',
   'dvd/Million_Dollar_Baby[DVD].jpg',
   '9.99',
   'B00JG8GBEA',
   '5',
   '100',
   '20');

/*------------------------------Kaamelott-------------------------------------------*/
INSERT INTO stock (id, quantity) VALUES (21, 5000);
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('101','Série humoristique','Rock','16');
INSERT INTO `misys`.`product` (`id`, `description`, `name`, `picture`, `price`, `reference`, `brand_id`, `category_id`, `stock_id`)
VALUES
  (NULL,
   'Le roi Arthur règne avec ses preux chevaliers sur le royaume de Kaamelott. Investi d''une mission divine, il veut guider son peuple vers la lumière Mais c''est sans compter les complications humaines et administratives : scènes conjuguales et visites guidées alternent avec les missions divines et les réunions au sommet.!',
   'Kaamelott : Livre I - Coffret 3 DVD',
   'dvd/Kaamelott_Livre_1[DVD].jpg',
   '29.99',
   'B00JG8GBEB',
   '6',
   '101',
   '21');

/*------------------------------Moi, moche et méchant 2-------------------------------------------*/
INSERT INTO stock (id, quantity) VALUES (22, 500);
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('102','Animation','Animation','103'); /*Daft Punk*/
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('103','Comédie','Comédie','0'); /*Daft Punk*/
INSERT INTO `misys`.`product` (`id`, `description`, `name`, `picture`, `price`, `reference`, `brand_id`, `category_id`, `stock_id`)
VALUES
  (NULL,
   'Ayant abandonné la super-criminalité et mis de côté ses activités funestes pour se consacrer à la paternité et élever Margo, Édith et Agnès, Gru, et avec lui, le Professeur Néfario et les Minions, doivent se trouver de nouvelles occupations. Alors qu''il commence à peine à s''adapter à sa nouvelle vie tranquille de père de famille, une organisation ultrasecrète, menant une lutte acharnée contre le Mal à l''échelle planétaire, vient frapper à sa porte. Soudain, c''est à Gru, et à sa nouvelle coéquipière Lucy, que revient la responsabilité de résoudre une série de méfaits spectaculaires. Après tout, qui mieux que l''ex plus méchant méchant de tous les temps, pourrait attraper celui qui rivalise pour lui voler la place qu''il occupait encore récemment...',
   'Moi, moche et méchant 2',
   'dvd/Moi_Moche_Et_Mechant_2[DVD].jpg',
   '9.99',
   'B00JG8GBEC',
   '3',
   '17',
   '22');


INSERT INTO `misys`.`review` (`id`, `note`, `review`, `product_id`, `user_id`)
VALUES (NULL, '6', 'Review 1', '1', '1'), (NULL, '5', 'Review 2', '1', '1');