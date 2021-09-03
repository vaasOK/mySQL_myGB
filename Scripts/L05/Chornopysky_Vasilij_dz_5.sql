/*
 * https://docs.google.com/document/d/1spUZwRiyKVwo7tB4X9NVUkPXvLoFc8UQ53LAkpPcURo/edit#

Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение”

1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
	Заполните их текущими датой и временем.
*/




/*
2. Таблица users была неудачно спроектирована. 
	Записи created_at и updated_at были заданы типом VARCHAR 
	и в них долгое время помещались значения в формате "20.10.2017 8:10". 
		Необходимо преобразовать поля к типу DATETIME, 
		сохранив введеные ранее значения.
*/




/*
3. В таблице складских запасов storehouses_products 
	в поле value могут встречаться самые разные цифры: 
		0, если товар закончился 
		и выше нуля, если на складе имеются запасы. 
	Необходимо отсортировать записи таким образом, 
		чтобы они выводились в порядке увеличения значения value. 
		Однако, нулевые запасы должны выводиться в конце, после всех записей.
*/


/*
4. (по желанию) 
	Из таблицы users необходимо извлечь пользователей, 
		родившихся в августе и мае. 
	Месяцы заданы в виде списка английских названий ('may', 'august')
*/

/*
5.(по желанию) 
	Из таблицы catalogs извлекаются записи при помощи запроса. 
		SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
	Отсортируйте записи в порядке, заданном в списке IN.
*/

/*
Практическое задание теме “Агрегация данных”

1. Подсчитайте средний возраст пользователей в таблице users
*/


/*
2. Подсчитайте количество дней рождения, 
		которые приходятся на каждый из дней недели. 
	Следует учесть, что необходимы дни недели текущего года, а не года рождения.
*/


/*
3. (по желанию) Подсчитайте произведение чисел в столбце таблицы
*/



