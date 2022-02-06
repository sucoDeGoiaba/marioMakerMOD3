create database `mario-maker`;
use `mario-maker`;

-- 1. quantidade de jogadores que repetiram a mesma fase 10 vezes
select distinct count(player) as qnt_jogadores 
from `plays`
having count(player) > 10
;

-- 2. quantidade de id's diferentes existentes

select count(distinct id)
as id_diferente
from `mario-maker`.plays
;