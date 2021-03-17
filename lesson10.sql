-- Задания на БД vk:

-- Проанализировать какие запросы могут выполняться наиболее
-- часто в процессе работы приложения и добавить необходимые индексы.
-- Сочетание имени и фамилии

show index from users;
show index from profiles;
show index from communities_users;
show index from communities;
show index from posts;
show index from media;
show index from media_types;
show index from likes;
show index from target_types;
show index from friendship;
show index from friendship_statuses;

-- не создаю индексов для того, что уже имеется

-- имя и фамилия
create index users_full_name_idx on users (first_name, last_name);
-- название файла и тип
create index media_name_type_idx on media (filename, media_type_id);
-- дата рождения
create index profiles_birthday_idx on profiles(birthday);
-- поиск по нику
create index users_username_idx on users (username);
-- поиск по городу
create index profiles_city_idx on profiles(city);
-- стране
create index profiles_country_idx on profiles(country);
-- по городу и стране
create index profiles_country_city_idx on profiles(country, city);

-- Задание на оконные функции
/* Построить запрос, который будет выводить следующие столбцы:
    имя группы;
    среднее количество пользователей в группах;
    самый молодой пользователь в группе;
    самый старший пользователь в группе;
    общее количество пользователей в группе;
    всего пользователей в системе;
    отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100.*/

-- в качестве группы я выбрал сообщества в ВК. Или их и надо было, но я этого не понял, но в любом случае тогда совпало (:

-- сначала создаю join запрос, от которого буду отталкиваться в построении.
select count(*), g.name, g.id 
from communities_users as c
join users as u
join communities as g
on c.user_id = u.id
join profiles as p 
on p.user_id = u.id
where c.community_id = g.id 
group by g.id 

-- Проверяю правильность отображаемого количества участников подставляя разные значения групп

select * from communities_users where community_id = 13
select * from communities_users where community_id = 5
select * from communities_users where community_id = 1

select distinct 
    g.id, g.name as название, 
    count(u.id) over w as `кол-во в группе`,
    count(u.id) over() as `общее кол-во`,
    (select count(id) from communities) as `кол-во групп`,
    count(u.id) over() / (select count(id) from communities) as `cред. кол-во`,
    count(u.id) over w / count(u.id) over() * 100 as `отн. кол-во`,
    last_value(u.username) over q as `youngest's username`,
    first_value(u.username) over e as `oldest's username`
from 
    communities_users as c
    join users as u
    join communities as g
    join profiles as p 
    on c.user_id = u.id and c.community_id = g.id and p.user_id = u.id
window 
    w as (partition by g.id),
    q as (partition by g.id order by p.birthday range between unbounded preceding and unbounded following),
    e as (partition by g.id order by p.birthday)
order by g.id;




