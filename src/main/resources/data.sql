INSERT INTO stock (id, quantity) VALUES (1, 10);
INSERT INTO stock (id, quantity) VALUES (2, 250);
INSERT INTO stock (id, quantity) VALUES (3, 104);
INSERT INTO stock (id, quantity) VALUES (4, 102);
INSERT INTO stock (id, quantity) VALUES (5, 1000);

INSERT INTO `misys`.`user` (`id`, `age`, `email`, `first_name`, `last_name`, `nickname`)
VALUES ('1', '12', 't@t.fr', 'Charles', 'Hot', 'Charlotte'), ('2', '99', 'z@z.com', 'Mat', 'Ou', 'Matou');

/*------------------------------Add brand-------------------------------------------*/
INSERT INTO `misys`.`brand` (`id`, `name`) VALUES ('1', 'Columbia'), ('2', 'Universal'),('3', 'Geffen'),('4', 'Vertigo'),('5', 'Studiocanal'),('6', 'M6 Video'),('7', 'Universal Picture'),('8', 'Warner Bros'),('9', 'Warner Music'),('10', 'Mosaert'),('11', 'On And On Record'),('12', 'HBO');

/*---------------------------------------------------------------------------------------------CD--------------------------------------------------------------------------------------------------------*/
/*-------------------------------------- DaftPunk-------------------------------------------*/
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

/*---------------------------------------------------------------------------------------------dvd--------------------------------------------------------------------------------------------------------*/
/*------------------------------Million Dollar Baby-------------------------------------------*/
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
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('102','Animation','Animation','103');
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('103','Comédie','Comédie','0');
INSERT INTO `misys`.`product` (`id`, `description`, `name`, `picture`, `price`, `reference`, `brand_id`, `category_id`, `stock_id`)
VALUES
  (NULL,
   'Ayant abandonné la super-criminalité et mis de côté ses activités funestes pour se consacrer à la paternité et élever Margo, Édith et Agnès, Gru, et avec lui, le Professeur Néfario et les Minions, doivent se trouver de nouvelles occupations. Alors qu''il commence à peine à s''adapter à sa nouvelle vie tranquille de père de famille, une organisation ultrasecrète, menant une lutte acharnée contre le Mal à l''échelle planétaire, vient frapper à sa porte. Soudain, c''est à Gru, et à sa nouvelle coéquipière Lucy, que revient la responsabilité de résoudre une série de méfaits spectaculaires. Après tout, qui mieux que l''ex plus méchant méchant de tous les temps, pourrait attraper celui qui rivalise pour lui voler la place qu''il occupait encore récemment...',
   'Moi, moche et méchant 2',
   'dvd/Moi_Moche_Et_Mechant_2[DVD].jpg',
   '9.99',
   'B00JG8GBEC',
   '3',
   '102',
   '22');
/*----------------------------------------------------------------bluray-----------------------------------------------------------------------------------------------*/
/*------------------------------Le Hobbit : La bataille des cinq armées-------------------------------------------*/
INSERT INTO stock (id, quantity) VALUES (200, 500);
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('1000','Science-Fiction','Science-Fiction','1001');
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('1001','Fantastique','Fantastique','0');
INSERT INTO `misys`.`product` (`id`, `description`, `name`, `picture`, `price`, `reference`, `brand_id`, `category_id`, `stock_id`)
VALUES
  (NULL,
   'Atteignant enfin la Montagne Solitaire, Thorin et les Nains, aidés par Bilbon le Hobbit, ont réussi à récupérer leur royaume et leur trésor. Mais ils ont également réveillé le dragon Smaug qui déchaîne désormais sa colère sur les habitants de Lac-ville. A présent, les Nains, les Elfes, les Humains mais aussi les Wrags et les Orques menés par le Nécromancien, convoitent les richesses de la Montagne Solitaire. La bataille des cinq armées est imminente et Bilbon est le seul à pouvoir unir ses amis contre les puissances obscures de Sauron.',
   'Le Hobbit : La bataille des cinq armées',
   'bluray/Hobbit_La_Bataille_Des_Cinq_Armées[Bluray].jpg',
   '19.99',
   'B00JG8GBFA',
   '8',
   '1000',
   '200');

/*------------------------------Game of Thrones - Saison 4-------------------------------------------*/
INSERT INTO stock (id, quantity) VALUES (201, 5400);
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('1002','Serie TV','Serie TV','0');
INSERT INTO `misys`.`product` (`id`, `description`, `name`, `picture`, `price`, `reference`, `brand_id`, `category_id`, `stock_id`)
VALUES
  (NULL,
   'L''emprise des Lannister sur le Trône de fer est désormais totale, après le massacre des Noces Pourpres, qui a vu la mort de nombreux partisans du camp Stark et de fait brisé le soulèvement du Nord. Alors que Stannis Baratheon poursuit la reconstruction de son armée à Peyredragon, un danger imminent arrive du Sud, en la personne d''Oberyn Martell. Ce dernier, arrivé à Port-Réal pour le mariage du roi Joffrey et de sa fiancée Margaery Tyrell, est habité par un désir de vengeance. Au Nord, la Garde de Nuit, affaiblie, semble dépassée par l''avancée de l''armée des Sauvageons de Mance Rayder, elle-même poursuivie par un ennemi plus redoutable : les Marcheurs blancs. À l''Est, Daenerys Targaryen, accompagnée de ses trois dragons et de son armée d''immaculés, s''apprête à libérer la ville de Meereen, qui pourrait lui fournir assez de navires pour gagner Westeros et ainsi réclamer le Trône de Fer.',
   'Game of Thrones -Saison 4',
   'bluray/Game_Of_Thrones-Saison_4[Bluray].jpg',
   '35.99',
   'B00JG8GBFB',
   '12',
   '1002',
   '201');

/*------------------------------American Sniper-------------------------------------------*/
INSERT INTO stock (id, quantity) VALUES (202, 5700);
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('1003','Action, Aventure','Action, Aventure','1004');
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('1004','Guerre','Guerre','0');
INSERT INTO `misys`.`product` (`id`, `description`, `name`, `picture`, `price`, `reference`, `brand_id`, `category_id`, `stock_id`)
VALUES
  (NULL,
   'Tireur d''élite des Navy SEAL, Chris Kyle est envoyé en Irak dans un seul but : protéger ses camarades. Sa précision chirurgicale sauve d''innombrables vies humaines sur le champ de bataille et, tandis que les récits de ses exploits se multiplient, il décroche le surnom de "La Légende". Cependant, sa réputation se propage au-delà des lignes ennemies, si bien que sa tête est mise à prix et qu''il devient une cible privilégiée des insurgés. Malgré le danger, et l''angoisse dans laquelle vit sa famille, Chris participe à quatre batailles décisives parmi les plus terribles de la guerre en Irak, s''imposant ainsi comme l''incarnation vivante de la devise des SEAL : "Pas de quartier !" Mais en rentrant au pays, Chris prend conscience qu''il ne parvient pas à retrouver une vie normale.',
   'American Sniper',
   'bluray/American_Sniper[Bluray].jpg',
   '19.99',
   'B00JG8GBFC',
   '12',
   '1003',
   '202');


/*----------------------------------------------------------------vinyle-----------------------------------------------------------------------------------------------*/
/*------------------------------Selah Sue - REASON - Double vinyle + CD-------------------------------------------*/
INSERT INTO stock (id, quantity) VALUES (2000, 20);
INSERT INTO `misys`.`category` (`id`, `category`,`category_link`,`id_parent`) VALUES ('10000','Vinyle','Vinyle','0');
INSERT INTO `misys`.`product` (`id`, `description`, `name`, `picture`, `price`, `reference`, `brand_id`, `category_id`, `stock_id`)
VALUES
  (NULL,
   'Edition Double vinyle gatefold + CD. Le CD joint au vinyle comporte les 13 titres de l’album + 4 titres inédits bonus. 4 ans après son premier album , Selah Sue n’en a peut-être pas fini avec ses démons mais elle les a domptés pour composer les chansons de « Reason », nouvel album avec lequel elle a trouvé sa véritable identité musicale « à équation variable » comme elle le dit elle-même. Toujours de superbes ballades acoustiques telle « I won’t go for more », une incursion vers le disco 80’s avec « Alone », une rayonnante déclaration d’amour hip hop avec « Together », un tour de force vocal aux embruns trip hop avec « Fear Nothing »...Ce 2ème album est celui de l’épanouissement vocal d’une chanteuse de soul et sa guitare acoustique , à la voix sublimée de chœurs façon Motown, d’arrangements de cordes et d ‘une multitude de tempos différents.',
   'Selah Sue - REASON - Double Vinyle + CD',
   'vinyle/Selah_Sue_Alone[Vinyle].jpg',
   '19.99',
   'B00JG8GBGA',
   '9',
   '10000',
   '2000');

/*------------------------------Stromae - Racine Carrée (Double Album vinyle)-------------------------------------------*/
INSERT INTO stock (id, quantity) VALUES (2001, 40);
INSERT INTO `misys`.`product` (`id`, `description`, `name`, `picture`, `price`, `reference`, `brand_id`, `category_id`, `stock_id`)
VALUES
  (NULL,
   'Extra-terrestre capable de tubes dancefloor minimalistes comme d’airs nettement plus sombres, Stromae propose un bel instantané de l’air du temps. Car, à l’image de son hymne Papaoutai, derrière sa bande son festive plane toujours une touchante mélancolie et des textes plus sérieux qu’ils n’y paraissent. Bluffant.',
   'Stromae - Racine Carrée (Double Album Vinyle)',
   'vinyle/Stromae_Racine_Carre[Vinyle].jpg',
   '21.99',
   'B00JG8GBGB',
   '8',
   '10000',
   '2001');

/*------------------------------C2C - Tetra-------------------------------------------*/
INSERT INTO stock (id, quantity) VALUES (2002, 50);
INSERT INTO `misys`.`product` (`id`, `description`, `name`, `picture`, `price`, `reference`, `brand_id`, `category_id`, `stock_id`)
VALUES
  (NULL,
   'Les maîtres nantais des platines signent l’album le plus kaléidoscopique de 2012. Électro, soul, pop, blues, rock, rap, tout passe entre les doigts de fée de 20 Syl, Greem, Atom et Pfel, anciens champions du monde de DJ par équipe.',
   'C2C - Tetra',
   'vinyle/C2C_Tetra[Vinyle].jpg',
   '19.47',
   'B00JG8GBGC',
   '11',
   '10000',
   '2002');

INSERT INTO `misys`.`review` (`id`, `note`, `review`, `product_id`, `user_id`)
VALUES (NULL, '6', 'Review 1', '1', '1'), (NULL, '5', 'Review 2', '1', '1');