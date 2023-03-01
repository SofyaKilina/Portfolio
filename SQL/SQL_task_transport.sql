Составьте SQL- запрос для выбора всех перевозок в Москву с грузом более 2 тонн.
CREATE TABLE transport (
   id serial not null,
   point_of_departure varchar(50) not null,
   point_of_destination varchar(50) not null,
   weight int NOT null,
   volume int NOT null,
   PRIMARY KEY (id)
   );

   INSERT into transport (point_of_departure, point_of_destination, weight, volume)
   VALUES ('Москва', 'Санкт-Петербург','5', '10'),('Липецк', 'Москва','2', '7'),
	('Ярославль', 'Санкт-Петербург','3', '8'),('Санкт-Петербург', 'Москва','4', '12'),
	('Липецк', 'Курск','5', '15'),('Москва', 'Ярославль','2','10')
   
   SELECT point_of_departure from transport
   where point_of_destination='Москва' and weight>2;
