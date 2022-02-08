create database `mario-maker`;
use `mario-maker`;

-- 1. 5 jogadores diferentes q tem mesmo id no brasil
select distinct plays.player, plays.id, players.flag from players
inner join plays 
on players.id = plays.player
where players.flag = "BR" and plays.id = "0230-0000-0386-B51F"
limit 5
;

-- 2. 10 jogadores aleatorios que entraram no jogo em 2018

select plays.player, plays.catch from plays
where plays.catch like "2018%"
order by catch
limit 10
;







