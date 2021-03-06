/****** Script for SelectTopNRows command from SSMS  ******/
SELECT ROW_NUMBER() OVER (ORDER BY crash_num_year ASC) AS No,crash_num_year, [CRASH_NUM]
      ,[DR_AGE]
      ,[DR_ALCOHOL]
      ,[DR_COND_CD]
      ,[DR_DOB]
      ,[DR_EJEC_CD]
      ,[DR_INJ_CD]
      ,[DR_LIC_NUM]
      ,[DR_POS_CD]
      ,[DR_SEX]
      ,[EST_SPEED]
      ,[MOVEMENT_REASON_CD]
      ,[NUM_INJ_IN_VEH]
      ,[PLATE_NUM]
      ,[POSTED_SPEED]
      ,[PRIOR_MOVEMENT_CD]
      ,[REG_STATE]
      ,[REG_YEAR]
      ,[TRAFF_CNTL_CD]
      ,[TRAFF_CNTL_COND_CD]
      ,[TRAVEL_DIR]
      ,[VEH_COND_CD]
      ,[VEH_LIGHTING_CD]
      ,[VEH_NUM]
      ,[VEH_TYPE_CD]
      ,[VEH_YEAR]
      ,[VIN]
      ,[VIOLATIONS_CD]
      ,[VISION_OBSCURE_CD]
      ,[vin10]
      ,[vin8]
      ,[DAMAGE_AREA1_CD]
      ,[DAMAGE_AREA2_CD]
      ,[DAMAGE_AREA3_CD]
      ,[DAMAGE_EXT1_CD]
      ,[DAMAGE_EXT2_CD]
      ,[DAMAGE_EXT3_CD]
      ,[DATE_ENTERED]
      ,[DL_CLASS]
      ,[DR_AIRBAG_CD]
      ,[DR_ALCOHOL_BAC]
      ,[DR_ALCOHOL_CD]
      ,[DR_A_D_PRES_CD]
      ,[DR_DRUGS_CD]
      ,[DR_LIC_STATE]
      ,[DR_NAME]
      ,[DR_PROTSYS_CD]
      ,[DR_RACE]
      ,[DR_TRAN_MED_CD]
      ,[DR_TRAP_EXTR_CD]
      ,[DR_ZIP]
      ,[ENDORSE]
      ,[EST_ALCOHOL]
      ,[EX_INFO]
      ,[F_HARM_EV_CD]
      ,[INSCO]
      ,[INS_EXP]
      ,[INS_POL_NUM]
      ,[M_HARM_EV_CD]
      ,[NUM_AXLES]
      ,[NUM_DOORS]
      ,[NUM_IK_IN_VEH]
      ,[NUM_KIL_IN_VEH]
      ,[NUM_OCC]
      ,[NUM_TIRES]
      ,[OWNER_NAME]
      ,[REAS_TOW_CD]
      ,[UTB_BOD_TYP_CD]
      ,[UTB_CAR_ADDR]
      ,[UTB_CAR_CITY]
      ,[UTB_CAR_NAME]
      ,[UTB_CAR_STATE]
      ,[UTB_CAR_ZIP]
      ,[UTB_DOT_IDNUM]
      ,[UTB_GVWR_TTB]
      ,[UTB_HAZ_CAR_REL]
      ,[UTB_HAZ_MAT_PLAC]
      ,[UTB_ICC_IDNUM]
      ,[UTB_STATE]
      ,[UTB_THM_HAZ_CLS_CD]
      ,[UTB_TRANS_HAZ_MAT]
      ,[VEH_MAKE]
      ,[VEH_MODEL]
      ,[VEH_TOWED_CD]
      ,[num_hospitalized]
      ,[num_occ_no_seatb]
      ,[violation]
      ,[ALCOHOL]
      ,[ALIGNMENT_CD]
      ,[AMBULANCE]
      ,[CITY_CD]
      ,[CRASH_DATE]
      ,[CRASH_TIME]
      ,[CRASH_YEAR]
      ,[DAY_OF_WK]
      ,[HIT_AND_RUN]
      ,[HWY_TYPE_CD]
      ,[INTERSECTION]
      ,[INVEST_AGENCY_CD]
      ,[LIGHTING_CD]
      ,[LOC_TYPE_CD]
      ,[MILEPOST]
      ,[NUM_DRI_INJ]
      ,[NUM_DRI_KIL]
      ,[NUM_OCC_INJ]
      ,[NUM_OCC_KIL]
      ,[NUM_PED_INJ]
      ,[NUM_PED_KIL]
      ,[NUM_TOT_INJ]
      ,[NUM_TOT_KIL]
      ,[NUM_VEH]
      ,[PARISH_CD]
      ,[PRI_HWY_NUM]
      ,[REPORT_NUM]
      ,[RESCUE_UNIT]
      ,[ROAD_COND_CD]
      ,[ROAD_TYPE_CD]
      ,[RPT_ORIGIN]
      ,[SEVERITY_CD]
      ,[SURF_COND_CD]
      ,[SURF_TYPE_CD]
      ,[TIME_AMB_ARR]
      ,[TIME_AMB_CALLED]
      ,[TIME_AMB_DEPART]
      ,[TROOP]
      ,[WEATHER_CD]
      ,[ACCESS_CNTL_CD]
      ,[CODE]
      ,[CONST_MAINT_ZN]
      ,[CR_HOUR]
      ,[CR_MONTH]
      ,[DATE_CHANGED]
      ,[DIST_ZONE]
      ,[DRUGS]
      ,[INTER_ROAD]
      ,[INVEST_COMP]
      ,[ISDS_CODE]
      ,[LAT]
      ,[LONG]
      ,[MAN_COLL_CD]
      ,[NUM_DRI_IK]
      ,[NUM_OCC_IK]
      ,[NUM_PED_IK]
      ,[NUM_TOT_IK]
      ,[PARISH]
      ,[PRI_ROAD_NAME]
      ,[PROCESS_DATE]
      ,[ROAD_REL_CD]
      ,[RR_TRAIN_INV]
      ,[TIME_AMB_ARR_HOSP]
      ,[TIME_LANES_OPEN]
      ,[TIME_POLICE_ARR]
      ,[TIME_POLICE_NOTE]
      ,[TIME_RESCUE_ARR]
      ,[TIME_RESCUE_CALLED]
      ,[TRK_BUS_INV]
      ,[WHO_ENTERED]
      ,[agressive]
      ,[distraction]
      ,[num_hospitalized_ped]
      ,[num_hospitalized_veh]
      ,[num_tot_inj_b]
      ,[num_tot_inj_b_ped]
      ,[num_tot_inj_b_veh]
      ,[num_tot_inj_c]
      ,[num_tot_inj_c_ped]
      ,[num_tot_inj_c_veh]
      ,[num_tot_inj_d]
      ,[num_tot_inj_d_ped]
      ,[num_tot_inj_d_veh]
      ,[speed]
  into vehic_crash_2005_2013_new1
  FROM [drug_driving].[dbo].[vehic_crash_2005_2013_new]

alter table vehic_crash_2005_2013_new1
alter column No bigint not null

ALTER TABLE vehic_crash_2005_2013_new1
ADD CONSTRAINT PK_vehic_crash_2005_2013_new1_NO PRIMARY KEY CLUSTERED (NO);


select dr_lic_num
from vehic_crash_2005_2013_new1
where dr_lic_num is null or dr_lic_num=' '

delete 
from vehic_crash_2005_2013_new1
where dr_lic_num is null or dr_lic_num=' '


DECLARE @PaddingField1 nvarchar(7)  --field_length
 
DECLARE PadCursor CURSOR FOR
      SELECT [DR_LIC_NUM]
      FROM [vehic_crash_2005_2013_new1]
      WHERE Convert(char(1), left(RTrim(LTrim([DR_LIC_NUM])),1)) = '0'
 
OPEN PadCursor
FETCH NEXT FROM PadCursor INTO @PaddingField1
WHILE @@FETCH_STATUS = 0 BEGIN
      UPDATE [vehic_crash_2005_2013_new1]
     SET [DR_LIC_NUM] = Right(RTrim(LTrim([DR_LIC_NUM])),len(RTrim(LTrim([DR_LIC_NUM])))-1)
     WHERE Convert(char(1), left(RTrim(LTrim([DR_LIC_NUM])),1)) = '0'
     
      FETCH NEXT FROM PadCursor INTO @PaddingField1
END
CLOSE PadCursor
DEALLOCATE PadCursor 

update vehic_crash_2005_2013_new1
set dr_lic_num = REPLACE(dr_lic_num, 'end', '') 

delete
from vehic_crash_2005_2013_new1
where dr_lic_num not like '%[0-9]%'

delete
from vehic_crash_2005_2013_new1
where dr_lic_num='100'

select distinct dr_lic_num, dr_lic_state, dr_name, dr_dob, dr_sex, dr_race
from vehic_crash_2005_2013_new1
where dr_lic_num='100'

SELECT distinct dr_lic_num, dr_lic_state, dr_name, dr_dob, dr_sex, dr_race
into dr_lic_num_missing_crash
FROM vehic_crash_2005_2013_new1
WHERE dr_lic_num NOT IN (SELECT dr_lic_num FROM dr_lic_num_table);

select dr_lic_num, count(*) as total
from dr_lic_num_missing_crash
group by dr_lic_num
order by total desc
select distinct dr_lic_num
into dr_lic_num_missing_crash1
from vehic_crash_2005_2013_new1
where dr_lic_num not in (select dr_lic_num from dr_lic_num_table)


insert into dr_lic_num_table (dr_lic_num, dr_lic_state, dr_lic_name, dr_dob, dr_sex, Dr_race)
 select dr_lic_num as dr_lic_num,
        null as dr_lic_state,
		null as dr_lic_name,
		null as dr_dob,
		null as dr_sex,
		null as dr_race
from dr_lic_num_missing_crash1

select dr_lic_num
from vehic_crash_2005_2013_new1
where dr_lic_num not in (select dr_lic_num from dr_lic_num_table)

alter table vehic_crash_2005_2013_new1
alter column dr_lic_num nvarchar(225) null;

ALTER TABLE vehic_crash_2005_2013_new1
ADD constraint  FK_vehic_crash_2005_2013_new1_license10 FOREIGN KEY(dr_lic_num) references dr_lic_num_table(dr_lic_num)

select dl_no
from crime_2014
where dl_no is null


select dr_lic_num, dr_lic_state, dr_lic_name, dr_race, dl_state, last, first
from dr_lic_num_table, crime_2014
where dl_no is null and dr_lic_num_table.dr_lic_state=crime_2014.dl_state
and dr_lic_num_table.dr_race=crime_2014.race

delete
from crime_2014
where dl_no is null

alter table crime_2014
alter column dl_no nvarchar(225) not null

DECLARE @PaddingField nvarchar(7)  --field_length
 
DECLARE PadCursor CURSOR FOR
      SELECT [dl_no]
      FROM [crime_2014]
      WHERE Convert(char(1), left(RTrim(LTrim([dl_no])),1)) = '0'
 
OPEN PadCursor
FETCH NEXT FROM PadCursor INTO @PaddingField
WHILE @@FETCH_STATUS = 0 BEGIN
      UPDATE [crime_2014]
     SET [dl_no] = Right(RTrim(LTrim([dl_no])),len(RTrim(LTrim([dl_no])))-1)
     WHERE Convert(char(1), left(RTrim(LTrim([dl_no])),1)) = '0'
     
      FETCH NEXT FROM PadCursor INTO @PaddingField
END
CLOSE PadCursor
DEALLOCATE PadCursor 

select distinct dl_no
into crime_2014_update
from crime_2014



select dl_no
into crime_2014_update1
from crime_2014_update
where dl_no not in (select dr_lic_num from dr_lic_num_table)

select dr_lic_num
from dr_lic_num_table
where dr_lic_num='10004900'



alter table crime_2014_update
alter column dob datetime null

insert into dr_lic_num_table(dr_lic_num, dr_lic_state, dr_lic_name, dr_dob, dr_sex, dr_race)
select dl_no as dr_lic_num,
       null as dr_lic_state,
	   null as dr_lic_name,
	   null as dr_dob,
	   null as dr_sex,
	   null as dr_race
from crime_2014_update1

alter table crime_2014_new
alter column dob datetime null

alter table crime_update_new
alter column ID5 nvarchar(255) null

alter table crime_2014_new
alter column off_date datetime null

alter table crime_2014_new
alter column age float null


insert into crime_update_new(No, dr_name, Case_ID, ID, ID2, ID3, ID4, id5, agc_name, acn, state_computer_#,
kit_#,descript, off_date, parish_LSP, evidtype, serious_injury_fatality, last, first, middle, race, gender, dob,
dl_state, dr_lic_num, BAC_Result, Drug, BAC, AGE, Crash, sublicense1)
select No as No,
       null as dr_name,
	   case_Id as case_ID,
	   ID as ID,
	   ID2 as ID2,
	   ID3 as ID3,
	   ID4 as ID4, 
	   id5 as id5,
	   agc_name as agc_name,
	   acn as acn,
	   state_computer_# as state_computer_#,
	   kit_# as kit_#,
	   descript as descript,
	   off_date as off_date,
	   parish as parish_LSP,
	   evidtype as evidtype,
	   serious_injury_fatality as serious_injury_fatality,
	   last as last,
	   first as first,
	   middle as middle,
	   race as race,
	   gender as gender,
	   dob as dob,
	   dl_state as dl_state,
	   dl_no as dl_no,
	   BAC_Result as BAC_Result,
	   Drug as Drug,
	   BAC as BAC,
	   AGE as AGE,
	   Crash as Crash,
	   null as sublicense1
from crime_2014_new

select drug, count(*) as total
from crime_2014_new
group by drug

select distinct drug
from crime_2014_new
where drug not in (select drug from drug_category_new)

select sublicense
from cobra_2014
where sublicense is null

delete
from cobra_2014
where sublicense is null

alter table cobra_2014
alter column sublicense bigint null

alter table cobra_2014
alter column sublicense nvarchar(225) not null

select distinct sublicense
into miss_cobra_2014
from cobra_2014
where sublicense not in (select dr_lic_num from dr_lic_num_table)

insert into dr_lic_num_table(dr_lic_num, dr_lic_state, dr_lic_name, dr_dob, dr_sex, dr_race)
select sublicense as dr_lic_num,
       null as dr_lic_state,
	   null as dr_lic_name,
	   null as dr_dob,
	   null as dr_sex,
	   null as dr_race
from miss_cobra_2014

select maxoftest, count(*) as total
from cobra_2014
group by maxoftest

alter table cobra_2014
alter column maxoftest nvarchar(50) null

select maxoftest, count(*) as total
from dwi_cobra_new
group by maxoftest

select maxoftest
from cobra_2014
where maxoftest not in (select maxoftest from dwi_max)

insert into dwi_cobra_new (No, dr_lic_num, testdate, sublast, subfirst, agency, parish_cd1, subage, subsex, dwi_month,
dwi_hour, dwi_day, dwi_year, Maxoftest, maxofrefused)
select  No as no,
        sublicense as dr_lic_num,
		testdate as testdate,
		sublast as sublast,
		subfirst as subfirst,
		agency as agency,
		parish_cd as parish_cd1,
		subage as subage,
		subsex as subsex,
		dwi_month as dwi_month,
		dwi_hour as dwi_hour,
		dwi_day as dwi_day,
		dwi_year as dwi_year,
		maxoftest as maxoftest,
		maxofrefused as maxofrefused
from cobra_2014_new

alter table cobra_2014_new
alter column testdate datetime null

alter table cobra_2014_new
alter column agency int null

select no
from dwi_cobra_new
order by no desc

select dr_lic_num
from vehic_crash_2014
where dr_lic_num=' '

delete
from vehic_crash_2014
where dr_lic_num=' '

select distinct dr_lic_num
into miss_vehic_crash_2014
from vehic_crash_2014
where dr_lic_num not in (select dr_lic_num from dr_lic_num_table)
order by DR_LIC_NUM

DECLARE @PaddingField2 nvarchar(7)  --field_length
 
DECLARE PadCursor CURSOR FOR
      SELECT [dr_lic_num]
      FROM [vehic_crash_2014]
      WHERE Convert(char(1), left(RTrim(LTrim([DR_LIC_NUM])),1)) = '0'
 
OPEN PadCursor
FETCH NEXT FROM PadCursor INTO @PaddingField2
WHILE @@FETCH_STATUS = 0 BEGIN
      UPDATE [vehic_crash_2014]
     SET [dr_lic_num] = Right(RTrim(LTrim([dr_lic_num])),len(RTrim(LTrim([dr_lic_num])))-1)
     WHERE Convert(char(1), left(RTrim(LTrim([dr_lic_num])),1)) = '0'
     
      FETCH NEXT FROM PadCursor INTO @PaddingField2
END
CLOSE PadCursor
DEALLOCATE PadCursor 

update vehic_crash_2014
set DR_LIC_NUM=replace(dr_lic_num, '+','')

delete
from vehic_crash_2014
where dr_lic_num not like '%[1-9]%'

insert into dr_lic_num_table(dr_lic_num, dr_lic_state, dr_lic_name, dr_dob, dr_sex, dr_race)
select dr_lic_num as dr_lic_num,
       null as dr_lic_state,
	   null as dr_lic_name,
	   null as dr_dob,
	   null as dr_sex,
	   null as dr_race
from miss_vehic_crash_2014

select no
from vehic_crash_2005_2013_new1
order by no desc