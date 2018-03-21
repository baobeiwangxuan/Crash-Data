alter table occup_TB_1999_2004
alter column crash_num nvarchar(20) not null;

select *
into occup_TB_1999_2013
from
(select
       [CRASH_NUM]
      ,[VEH_NUM]
      ,[OCC_NUM]
      ,[OCC_AGE]
      ,[OCC_AIRBAG_CD]
      ,[OCC_EJEC_CD]
      ,[OCC_INJ_CD]
      ,[OCC_NAME]
      ,[OCC_POS_CD]
      ,[OCC_PROTSYS_CD]
      ,[OCC_SEX]
      ,[OCC_TRAN_MED_CD]
      ,[OCC_TRAP_EXTR_CD]
      ,[OCC_ADDR]
      ,[OCC_CITY]
      ,[OCC_STATE]
      ,[OCC_ZIP]
      ,[OCC_RACE]
      ,[VEH_ID]
      ,[OCC_ID]
      ,[crash_year]
      ,[id]
      ,[OCC_MED_FAC_NAME]
from occup_TB_1999_2004
union all
select [CRASH_NUM]
      ,[VEH_NUM]
      ,[OCC_NUM]
      ,[OCC_AGE]
      ,[OCC_AIRBAG_CD]
      ,[OCC_EJEC_CD]
      ,[OCC_INJ_CD]
      ,[OCC_NAME]
      ,[OCC_POS_CD]
      ,[OCC_PROTSYS_CD]
      ,[OCC_SEX]
      ,[OCC_TRAN_MED_CD]
      ,[OCC_TRAP_EXTR_CD]
      ,[OCC_ADDR]
      ,[OCC_CITY]
      ,[OCC_STATE]
      ,[OCC_ZIP]
      ,[OCC_RACE]
      ,[VEH_ID]
      ,[OCC_ID]
      ,[crash_year]
      ,[id]
      ,[OCC_MED_FAC_NAME]
from occup_TB_2005_20013)a

select crash_num, crash_year, dr_age, dr_sex, dr_race, dr_pos_cd, veh_type_cd, dr_inj_cd, hwy_type_cd,
       weather_cd, dr_airbag_cd, dr_alcohol_cd, num_occ, severity_cd, man_coll_cd, 
	   dr_protsys_cd, dr_tran_med_cd, dr_trap_extr_cd,dr_ejec_cd
into vehic_crash_1999_2013_rollover
from vehic_crash_1999_2013
where f_harm_ev_cd= 'A'


select occup_TB_1999_2013.[CRASH_NUM]
      ,occup_TB_1999_2013.[VEH_NUM]
      ,[OCC_NUM]
      ,[OCC_AGE]
      ,[OCC_AIRBAG_CD]
      ,[OCC_EJEC_CD]
      ,[OCC_INJ_CD]
      ,[OCC_NAME]
      ,[OCC_POS_CD]
      ,[OCC_PROTSYS_CD]
      ,[OCC_SEX]
      ,[OCC_TRAN_MED_CD]
      ,[OCC_TRAP_EXTR_CD]
      ,[OCC_ADDR]
      ,[OCC_CITY]
      ,[OCC_STATE]
      ,[OCC_ZIP]
      ,[OCC_RACE]
      ,[VEH_ID]
      ,[OCC_ID]
      ,occup_TB_1999_2013.[crash_year]
      ,[id]
      ,[OCC_MED_FAC_NAME]
	  , veh_type_cd
	  , hwy_type_cd
	  , weather_Cd
	  , num_occ
	  , man_coll_cd
	  , SEVERITY_CD
into occup_TB_1999_2013_rollover_update
from occup_TB_1999_2013, vehic_crash_1999_2013
where (occup_TB_1999_2013.crash_num=vehic_crash_1999_2013.crash_num and 
      occup_TB_1999_2013.crash_year=vehic_crash_1999_2013.crash_year and F_HARM_EV_CD='A') or
	  ( occup_TB_1999_2013.crash_num=vehic_crash_1999_2013.crash_num and 
	  occup_TB_1999_2013.crash_year is null and F_HARM_EV_CD='A')


select *
into occup_driver_1999_2013
from
(select 
       [crash_num] as crash_num
      ,[crash_year] as crash_year
      ,[dr_age] as age
      ,[dr_sex] as sex
      ,[dr_race] as race
      ,[dr_pos_cd] as pos_cd
      ,[veh_type_cd] as veh_type_cd
      ,[dr_inj_cd] as inj_cd
      ,[hwy_type_cd] as hwy_type_cd
      ,[weather_cd] as weather_cd
      ,[dr_airbag_cd] as airbag_cd
      ,[dr_alcohol_cd] as dr_alcohol_cd
      ,[num_occ] as num_occ
      ,[severity_cd] as severity_cd
      ,[man_coll_cd] as man_coll_cd
      ,[dr_protsys_cd] as protsys_cd
      ,[dr_tran_med_cd] as tran_med_cd
      ,[dr_trap_extr_cd] as trap_extr_cd
      ,[dr_ejec_cd] as ejec_cd
from vehic_crash_1999_2013_rollover
      union all
select crash_num as crash_num
       , crash_year as crash_year
	   , occ_age as age
	   , occ_sex as sex
	   , occ_race as race
	   , occ_pos_cd as pos_cd
	   , veh_type_Cd as veh_type_cd
	   , occ_inj_cd as inj_cd
	   , hwy_type_cd as hwy_type_cd
	   , weather_cd as weather_Cd
	   , occ_airbag_cd as airbag_cd
	   , null as dr_alcohol_cd
	   , num_occ as num_occ
	   , severity_cd as severity_cd
	   , man_coll_cd as man_coll_Cd
	   , occ_protsys_cd as protsys_cd
	   , occ_tran_med_cd as tan_med_Cd
	   , occ_trap_extr_cd as trap_extr_cd
	   , occ_ejec_cd as ejec_cd
from occup_TB_1999_2013_rollover_update)a

select inj_cd, count(*) as total
from occup_driver_1999_2013
group by inj_Cd

alter table occup_driver_1999_2013_update
add inj_binary1 nvarchar(10) null

update occup_driver_1999_2013_update
set inj_binary1=case
when inj_cd in('A','B') then '1'
else '0'
end

update occup_driver_1999_2013_update
set protsys_binary='0'
where protsys_cd='A'

select protsys_binary, count(*) as total
from occup_driver_1999_2013_update
group by protsys_binary


select inj_cd, COUNT(*) as total
from occup_driver_1999_2013_update
group by inj_cd

select protsys_cd, count(*) as total
from occup_driver_1999_2013
group by protsys_cd

alter table occup_driver_1999_2013
add protsys_binary nvarchar(10) null

update occup_driver_1999_2013
set protsys_binary=case
when inj_cd in ('B','C','D','F') then '1'
else '0'
end

select veh_type_cd, count(*) as total
from occup_driver_1999_2013
group by veh_type_cd

select distinct crash_num, crash_year
from vehic_crash_1999_2013_rollover
order by crash_num

select race, count(*) as total
from occup_driver_1999_2013
group by race

UPDATE occup_driver_1999_2013 
SET race = NULL 
WHERE race=' '

select pos_cd, count(*) as total
from occup_driver_1999_2013
group by pos_cd

update occup_driver_1999_2013
set pos_cd='Y'
where pos_cd='P'

select veh_type_cd, count(*) as total
from occup_driver_1999_2013
group by veh_type_cd

update occup_driver_1999_2013
set veh_type_cd=null
where veh_type_cd=' '

select hwy_type_cd, count(*) as total
from occup_driver_1999_2013
group by hwy_type_cd

update occup_driver_1999_2013
set hwy_type_cd=null
where hwy_type_cd=' '

select weather_cd, count(*) as total
from occup_driver_1999_2013
group by weather_cd

update occup_driver_1999_2013
set weather_cd = null
where weather_cd=' '

select man_coll_cd, count(*) as total
from occup_driver_1999_2013
group by man_coll_cd

update occup_driver_1999_2013
set man_coll_cd='Z'
where man_coll_cd='L'

select num_occ, count(*) as total
from occup_driver_1999_2013
group by num_occ

select age, count(*) as total
from occup_driver_1999_2013
group by age
order by age

select protsys_cd, count(*) as total
from occup_driver_1999_2013
group by protsys_cd
 

select *
into occup_driver_1999_2013_update
from occup_driver_1999_2013
where protsys_cd in ('A','B','C','D')

select veh_type_cd, count(*) as total
from occup_driver_1999_2013_update
group by veh_type_cd

alter table occup_driver_1999_2013_update
add veh_type nvarchar(20) null

update occup_driver_1999_2013_update
set veh_type=case
when veh_type_Cd='A' then 'passenger car'
when veh_type_cd in ('B','D') then 'truck'
when veh_type_cd in ('C','S') then 'SUV'
else 'others'
end

select veh_type, count(*) total
from occup_driver_1999_2013_update
group by veh_type

select pos_cd, count(*) as total
from occup_driver_1999_2013_update
group by pos_cd

alter table occup_driver_1999_2013_update
add pos nvarchar(20) null

update occup_driver_1999_2013_update
set pos=case
when pos_cd='A' then 'driver seat'
when pos_cd in ('B','C') then 'front passenger'
when pos_cd in ('D','E','F','G','H','I') then 'back passenger'
else 'other'
end

select sex, COUNT(*) as total
from occup_driver_1999_2013_update
group by sex

alter table occup_driver_1999_2013_update
alter column sex nvarchar(10) null

update occup_driver_1999_2013_update
set sex='unknown'
where sex is null

select race, COUNT(*) as total
from occup_driver_1999_2013_update
group by race

update occup_driver_1999_2013_update
set race='O'
where race is null or race in ('H','I')

select airbag, COUNT(*) as total
from occup_driver_1999_2013_update
group by airbag

alter table occup_driver_1999_2013_update
add airbag nvarchar(20) null

update occup_driver_1999_2013_update
set airbag=case
when airbag_cd='A' then 'deployed'
when airbag_cd='B' then 'non-deployed'
when airbag_cd='C' then 'switch off'
when airbag_cd='D' then 'not applicable'
else 'unknown'
end

select weather_cd, COUNT(*) as total
from occup_driver_1999_2013_update
group by weather_cd

select man_coll_cd, COUNT(*) as total
from occup_driver_1999_2013_update
group by man_coll_cd

alter table occup_driver_1999_2013_update
add man_coll nvarchar(20) null

update occup_driver_1999_2013_update
set man_coll=case
when man_coll_cd='A' then 'rear end'
when man_coll_cd='B' then 'head on'
when man_coll_cd in ('D','E','F','G','H','I') then 'turn'
when man_coll_cd in ('J','K') then 'sideswipe'
else 'other'
end

alter table occup_driver_1999_2013_update
add hwy_type nvarchar(20) null;

select hwy_type_cd, COUNT(*) as total
from occup_driver_1999_2013_update
group by hwy_type_cd

alter table occup_driver_1999_2013_update
add weather nvarchar(20) null;

select weather_cd, COUNT(*) as total
from occup_driver_1999_2013_update
group by weather_cd

update occup_driver_1999_2013_update
set weather=case
when weather_cd in ('A','B') then 'clear cloudy'
when weather_cd in ('C','D') then 'rain fog'
when weather_cd in ('E','F') then 'snow'
else 'other'
end

select weather, COUNT(*) as total
from occup_driver_1999_2013_update
group by weather

select num_occ, COUNT(*) as total
from occup_driver_1999_2013_update
group by num_occ

update occup_driver_1999_2013_update
set hwy_type=case
when hwy_type_Cd='A'then 'interstate'
when hwy_type_cd='B' then 'US HWY'
when hwy_type_cd='C' then 'State HWY'
when hwy_type_cd='D' then  'District'
else 'other'
end

select distinct occup_driver_1999_2013_update.[crash_num]
      ,occup_driver_1999_2013_update.[crash_year]
      ,occup_driver_1999_2013_update.[age]
      ,occup_driver_1999_2013_update.[sex]
      ,occup_driver_1999_2013_update.[race]
      ,occup_driver_1999_2013_update.[pos_cd]
      ,occup_driver_1999_2013_update.[veh_type_cd]
      ,occup_driver_1999_2013_update.[inj_cd]
      ,occup_driver_1999_2013_update.[hwy_type_cd]
      ,occup_driver_1999_2013_update.[weather_cd]
      ,occup_driver_1999_2013_update.[airbag_cd]
      ,occup_driver_1999_2013_update.[dr_alcohol_cd]
      ,occup_driver_1999_2013_update.[num_occ]
      ,occup_driver_1999_2013_update.[severity_cd]
      ,occup_driver_1999_2013_update.[man_coll_cd]
      ,occup_driver_1999_2013_update.[protsys_cd]
      ,occup_driver_1999_2013_update.[tran_med_cd]
      ,occup_driver_1999_2013_update.[trap_extr_cd]
      ,occup_driver_1999_2013_update.[ejec_cd]
      ,occup_driver_1999_2013_update.[inj_binary]
      ,occup_driver_1999_2013_update.[protsys_binary]
      ,occup_driver_1999_2013_update.[veh_type]
      ,occup_driver_1999_2013_update.[pos]
      ,occup_driver_1999_2013_update.[airbag]
      ,occup_driver_1999_2013_update.[man_coll]
      ,occup_driver_1999_2013_update.[hwy_type]
      ,occup_driver_1999_2013_update.[weather]
      ,occup_driver_1999_2013_update.[inj_binary1]
	  ,vehic_crash_1999_2013.crash_time
	  ,vehic_crash_1999_2013.CR_HOUR
into vehic_crahs_1999_2013_rollover_hour
from occup_driver_1999_2013_update, vehic_crash_1999_2013
where (occup_driver_1999_2013_update.crash_num=vehic_crash_1999_2013.crash_num and
      occup_driver_1999_2013_update.crash_year=vehic_crash_1999_2013.crash_year)
	  or (occup_driver_1999_2013_update.crash_num=vehic_crash_1999_2013.crash_num and
	  occup_driver_1999_2013_update.num_occ=vehic_crash_1999_2013.num_occ)


select distinct [crash_num]
      ,[crash_year]
      ,[age]
      ,[sex]
      ,[race]
      ,[pos_cd]
      ,[veh_type_cd]
      ,[inj_cd]
      ,[hwy_type_cd]
      ,[weather_cd]
      ,[airbag_cd]
      ,[dr_alcohol_cd]
      ,[num_occ]
      ,[severity_cd]
      ,[man_coll_cd]
      ,[protsys_cd]
      ,[tran_med_cd]
      ,[trap_extr_cd]
      ,[ejec_cd]
      ,[inj_binary]
      ,[protsys_binary]
      ,[veh_type]
      ,[pos]
      ,[airbag]
      ,[man_coll]
      ,[hwy_type]
      ,[weather]
      ,[inj_binary1]
into occup_driver_1999_2013_update_copy
from occup_driver_1999_2013_update

select crash_year, count(*) as total
from occup_driver_1999_2013
group by crash_year

select *
from occup_driver_1999_2013_update
where crash_num='2980883'

select sex, count(*) as total
from vehic_crahs_1999_2013_rollover_hour
group by sex

delete
from occup_driver_1999_2013_update_copy
where sex='unknown'

select veh_type, count(*) as total
from vehic_crahs_1999_2013_rollover_hour
group by veh_type

delete
from occup_driver_1999_2013_update_copy
where veh_type='others'

select hwy_type, count(*) as total
from occup_driver_1999_2013_update_copy
group by hwy_type

update occup_driver_1999_2013_update_copy
set hwy_type='other' 
where hwy_type in ('state HWY ', 'district')

from vehic_crahs_1999_2013_rollover_hour
where hwy_type='other'

select age
from vehic_crahs_1999_2013_rollover_hour
where age <15 or age>98

delete
from occup_driver_1999_2013_update_copy
where age <15 or age>98

alter table occup_driver_1999_2013_update_copy
add groupage nvarchar(20) null

update occup_driver_1999_2013_update_copy
set groupage=case
when age >=15 and age<=24 then '15-24'
when age>=25 and age<=39 then '25-39'
when age>=40 and age<=98 then '40-98'
else 'other'
end

select cr_hour, count(*) as total
from vehic_crahs_1999_2013_rollover_hour
group by cr_hour

delete
from vehic_crahs_1999_2013_rollover_hour
where cr_hour is null

alter table vehic_crahs_1999_2013_rollover_hour
add day_night nvarchar(20) null

update vehic_crahs_1999_2013_rollover_hour
set day_night=case
when cr_hour>=6 and cr_hour<=21 then'daytime'
else'nighttime'
end

select age, count(*) as total
from occup_driver_1999_2013_update_copy
group by age

delete
from occup_driver_1999_2013_update_copy
where age is null