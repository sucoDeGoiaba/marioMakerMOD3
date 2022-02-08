create database `marioWorld`;

use `marioWorld`;

CREATE TABLE `courses-meta` (
  `id` int primary key,
  `catch` varchar(100),
  `firstClear` varchar(100),
  `tag` varchar(100),
  `stars` int,
  `players` int,
  `tweets` int,
  `clears` int,
  `attempts` int,
  `clearRate` int
);

CREATE TABLE `players`(
`id` text,
`image` text,
`flag` text,
`name` text
);
CREATE TABLE `player`(
`catch` text,
`id` text,
`name` text
);

CREATE TABLE `clears`(
`catch` text,
`id` text,
`player` text
);
CREATE TABLE `courses`(
`difficulty` text,
`id` text,
`gameStyle` text,
`maker` text,
`title` text,
`thumbnail` text,
`image` text,
`creation` text
);
CREATE TABLE `likes`(
`catch` text,
`id` text,
`player` text
);
CREATE TABLE `records`(
`catch` text,
`id` text,
`name` text,
`timeRecord` int
);

select * from course_meta where stars order by stars desc  limit 10;
select course_meta.id, course_meta.clearRate, course_meta.players from course_meta where clearRate order by clearRate desc limit 15;
select players.flag, players.name from  players inner join course_meta on players.id = course_meta.id;
select * from players where name;



