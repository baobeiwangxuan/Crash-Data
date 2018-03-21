ALTER TABLE dr_lic_num_table
DROP COLUMN NO

alter table dr_lic_num_table
alter column dr_lic_num nvarchar(225) not null

ALTER TABLE dr_lic_num_table
ADD CONSTRAINT PK_dr_lic_num_table_dr_lic_num PRIMARY KEY CLUSTERED (dr_lic_num)


SELECT ROW_NUMBER() OVER (ORDER BY sublicense3 ASC) AS No,[sublicense3],[testtime1]
      ,[testdate1]
      ,[sublast]
      ,[subfirst]
      ,[submid]
      ,[subdob]
      ,[issuestate]
      ,[agency]
      ,[subrace]
      ,[subsex]
      ,[subage]
      ,[offenseno]
      ,[accident]
      ,[parish]
      ,[diag1]
      ,[reported]
      ,[refused]
      ,[interfernt]
      ,[invalid]
      ,[test]
      ,[diag2]
into cobra_2013_new
FROM cobra_2013
where sublicense3 <> ' '

alter table cobra_2013_new
alter column No int not null

ALTER TABLE cobra_2013_new
ADD CONSTRAINT PK_cobra_2013_new_NO PRIMARY KEY CLUSTERED (NO);

alter table dr_lic_num
drop constraint PK_dr_lic_num_dr_lic_num

alter table dr_lic_num
alter column dr_lic_num1 nvarchar(225) not null

ALTER TABLE dr_lic_num
ADD CONSTRAINT PK_dr_lic_num_dr_lic_num1 PRIMARY KEY CLUSTERED (dr_lic_num1)

alter table cobra_2013_new
alter column sublicense3 nvarchar(225) null

ALTER TABLE cobra_2013_new
ADD constraint fk_cobra_2013_new_license FOREIGN KEY(dr_lic_num) references dr_lic_num_table(dr_lic_num)

ALTER TABLE Person.ContactBackup
ADD CONSTRAINT FK_ContactBacup_Contact FOREIGN KEY (ContactID)
REFERENCES Person.Person (BusinessEntityID) ;
ALTER TABLE Person.ContactBackup
DROP CONSTRAINT FK_ContactBacup_Contact ;


SELECT ROW_NUMBER() OVER (ORDER BY dr_lic_num1 ASC) AS No, dr_lic_num1, ticket_DAte, offense, conviction_date, ticket_date_2, conviction_date_2
into cobra_violations_new
FROM cobra_violations
where dr_lic_num1 is not null

alter table cobra_violations_new
alter column No int not null

alter table cobra_violations_new
alter column dr_lic_num nvarchar(225) null

delete 
from cobra_violations_new
where dr_lic_num1 in  ('0','1')

ALTER TABLE cobra_violations_new
ADD CONSTRAINT PK_cobra_violations_new_NO PRIMARY KEY CLUSTERED (NO);

ALTER TABLE cobra_violations_new
ADD constraint fk_cobra_violations_new_license FOREIGN KEY(dr_lic_num1) references dr_lic_num_table(dr_lic_num)

SELECT dr_lic_num1 FROM cobra_violations_new
WHERE dr_lic_num1 NOT IN (SELECT dr_lic_num FROM dr_lic_num_table);

select *
into crash_tb_2013_new
from CRASH_TB_2013

alter table crash_tb_2013_new
alter column crash_num nvarchar(20) not null

ALTER TABLE crash_tb_2013_new
ADD CONSTRAINT PK_crash_tb_2013_new_crash_num PRIMARY KEY CLUSTERED (crash_num);

SELECT ROW_NUMBER() OVER (ORDER BY dr_lic_num ASC) AS No,[dr_lic_num],[crash_num]
      ,[VEH_NUM]
      ,[DAMAGE_AREA1_CD]
      ,[DAMAGE_AREA2_CD]
      ,[DAMAGE_AREA3_CD]
      ,[DAMAGE_EXT1_CD]
      ,[DAMAGE_EXT2_CD]
      ,[DAMAGE_EXT3_CD]
      ,[DL_CLASS]
      ,[DR_A_D_PRES_CD]
      ,[DR_AGE]
      ,[DR_AIRBAG_CD]
      ,[DR_ALCOHOL_CD]
      ,[DR_ALCOHOL_BAC]
      ,[DR_BLOOD_ALC_KIT_NUM]
      ,[DR_COND_CD]
      ,[DR_DISTRACT_CD]
      ,[DR_DOB]
      ,[DR_DRUGS_CD]
      ,[DR_EJEC_CD]
      ,[DR_INJ_CD]
      ,[DR_LIC_STATE]
      ,[DR_NAME]
      ,[DR_POS_CD]
      ,[DR_PROTSYS_CD]
      ,[DR_RACE]
      ,[DR_SEX]
      ,[DR_TRAN_MED_CD]
      ,[DR_MED_FAC_NAME]
      ,[DR_TRAP_EXTR_CD]
      ,[DR_ST_DIR]
      ,[DR_ST_NUM]
      ,[DR_ST_NAME]
      ,[DR_ST_TYPE]
      ,[DR_CITY]
      ,[DR_STATE]
      ,[DR_ZIP]
      ,[DR_HOME_PHONE]
      ,[ENDORSE]
      ,[EST_SPEED]
      ,[EX_INFO]
      ,[F_HARM_EV_CD]
      ,[S_HARM_EV_CD]
      ,[T_HARM_EV_CD]
      ,[FO_HARM_EV_CD]
      ,[M_HARM_EV_CD]
      ,[F_CITATION_NO]
      ,[S_CITATION_NO]
      ,[T_CITATION_NO]
      ,[FO_CITATION_NO]
      ,[FI_CITATION_NO]
      ,[F_RS_ORD_NUM]
      ,[S_RS_ORD_NUM]
      ,[T_RS_ORD_NUM]
      ,[FO_RS_ORD_NUM]
      ,[FI_RS_ORD_NUM]
      ,[INSCO]
      ,[INS_POL_NUM]
      ,[INS_EXP]
      ,[INS_AGENT]
      ,[INS_PHONE]
      ,[MOVEMENT_REASON_CD]
      ,[NOTICE_INS_VIOL]
      ,[NUM_AXLES]
      ,[NUM_DOORS]
      ,[NUM_IK_IN_VEH]
      ,[NUM_INJ_IN_VEH]
      ,[NUM_KIL_IN_VEH]
      ,[NUM_OCC_VEH]
      ,[NUM_TIRES]
      ,[OWNER_NAME]
      ,[OWNER_HOME_PHONE]
      ,[OWNER_ST_DIR]
      ,[OWNER_ST_NUM]
      ,[OWNER_ST_NAME]
      ,[OWNER_ST_TYPE]
      ,[OWNER_CITY]
      ,[OWNER_STATE]
      ,[OWNER_ZIP]
      ,[PLATE_NUM]
      ,[PLATE_TYPE]
      ,[POSTED_SPEED]
      ,[PRIOR_MOVEMENT_CD]
      ,[REAS_TOW_CD]
      ,[REG_STATE]
      ,[REG_YEAR]
      ,[TRAFF_CNTL_CD]
      ,[TRAFF_CNTL_COND_CD]
      ,[TRAVEL_DIR]
      ,[TRAVEL_DIR_ROAD]
      ,[VEH_COND_CD]
      ,[VEH_MAKE]
      ,[VEH_MODEL]
      ,[VEH_LIGHTING_CD]
      ,[VEH_TOWED_CD]
      ,[VEH_REMOVED_BY]
      ,[VEH_TYPE_CD]
      ,[VEH_YEAR]
      ,[VIN]
      ,[VEH_FINAL_LOC]
      ,[VEH_DIST_TRAVELED]
      ,[VIOLATIONS_CD]
      ,[VISION_OBSCURE_CD]
      ,[UTB_BOD_TYP_CD]
      ,[UTB_CAR_ADDR]
      ,[UTB_CAR_CITY]
      ,[UTB_CAR_NAME]
      ,[UTB_CAR_STATE]
      ,[UTB_CAR_ZIP]
      ,[UTB_INTERSTATE_CAR]
      ,[UTB_DOT_IDNUM]
      ,[UTB_GVWR_TTB]
      ,[UTB_HAZ_CAR_REL]
      ,[UTB_HAZ_MAT_PLAC]
      ,[UTB_ICC_IDNUM]
      ,[UTB_STATE]
      ,[UTB_THM_HAZ_CLS_CD]
      ,[UTB_THM_HAZ_ID]
      ,[UTB_TRANS_HAZ_MAT]
      ,[VEH_TRAILER_YEAR]
      ,[VEH_TRAILER_MAKE]
      ,[VEH_TRAILER_TYPE]
      ,[VEH_TRAILER_PLATE_YR]
      ,[VEH_TRAILER_PLATE_ST]
      ,[VEH_TRAILER_PLATE_NUM]
      ,[EST_ALCOHOL_DR]
      ,[REPORT_NUM_2_veh]
      ,[COMM_BUS_VEH]
      ,[GOV_VEH]
      ,[PERSONAL_VEH]
      ,[UTB_CAR_ADDR_NAME]
      ,[UTB_CAR_ADDR_NUM]
      ,[UTB_CAR_ADDR_TYPE]
      ,[UTB_CAR_ADDR_DIR]
      ,[DR_ST]
      ,[OWNER_INFO_DR_SAME]
      ,[OWNER_ST]
      ,[SKID_FR]
      ,[SKID_FL]
      ,[SKID_RR]
      ,[SKID_RL]
      ,[F_VEH_CIT_RS]
      ,[S_VEH_CIT_RS]
      ,[T_VEH_CIT_RS]
      ,[FO_VEH_CIT_RS]
      ,[FI_VEH_CIT_RS]
      ,[DATE_ENTERED]
      ,[DR_ALCOHOL]
      ,[STATE_RPT_NUM_veh]
      ,[vin8]
      ,[vin10]
      ,[gvw_class]
      ,[REV_NUM]
      ,[Carr_name]
      ,[carr_add]
      ,[carr_city]
      ,[carr_state]
      ,[DOTD_number]
      ,[zip]
      ,[icc]
      ,[utb]
      ,[CURR_STAT]
      ,[REV_STAT]
      ,[PAGE_OWNER]
      ,[REV_DATE]
      ,[PAGE_OWNER_APPROVER]
      ,[p_plate]
      ,[pp_plate]
      ,[num_inj_in_veh_b]
      ,[num_inj_in_veh_c]
      ,[num_inj_in_veh_d]
      ,[num_occ_no_seatb]
      ,[num_hospitalized]
      ,[agressive]
      ,[distraction]
      ,[violation]
      ,[sublicense2]
into vehic_tb_2013_new
FROM vehic_tb_2013
where dr_lic_num <> ' '

alter table vehic_tb_2013_new
alter column No int not null

ALTER TABLE vehic_tb_2013_new
ADD CONSTRAINT PK_vehic_tb_2013_new_NO PRIMARY KEY CLUSTERED (NO);

SELECT dr_lic_num FROM vehic_tb_2013_new
WHERE dr_lic_num NOT IN (SELECT dr_lic_num FROM dr_lic_num_table);

ALTER TABLE vehic_tb_2013_new
ADD constraint fk_crash_num FOREIGN KEY(crash_num) references crash_tb_2013_new(crash_num)

select *
from dwi_cobra
where sublicense ='null'

 sublicense,
testdate,
sublast,
subfirst,
agency,
parish_cd1,
subage,
subsex,
dwi_month,
dwi_hour,
dwi_day,SELECT ROW_NUMBER() OVER (ORDER BY sublicense ASC) AS No,
dwi_year,
MAxoftest,
Maxofrefused
into dwi_cobra_new
FROM dwi_cobra
where sublicense <>' '

alter table dwi_cobra_new
alter column No int not null

alter table dwi_cobra_new
alter column dr_lic_num nvarchar(225) null;

ALTER TABLE dwi_cobra_new
ADD CONSTRAINT PK_dwi_cobra_new_NO PRIMARY KEY CLUSTERED (NO);

SELECT dr_lic_num FROM dwi_cobra_new
WHERE dr_lic_num NOT IN (SELECT dr_lic_num FROM dr_lic_num_table);

delete
from dwi_cobra_new
where dr_lic_num='1'

ALTER TABLE dwi_cobra_new
ADD constraint fk_dwi_cobra_new_license1 FOREIGN KEY(dr_lic_num) references dr_lic_num_table(dr_lic_num)


select *
from crime_lab_data_2013
where sublicense1 is null

SELECT ROW_NUMBER() OVER (ORDER BY dl_no ASC) AS No,dl_no ,[ID]
      ,[ID2]
      ,[ID3]
      ,[ID4]
      ,[id5]
      ,[agc_name]
      ,[acn]
      ,[state_computer_#]
      ,[kit_#]
      ,[descript]
      ,[off_date]
      ,[parish_LSP]
      ,[evidtype]
      ,[serious injury / fatality]
      ,[last]
      ,[first]
      ,[middle]
      ,[race]
      ,[gender]
      ,[dob]
      ,[dl_state]
      ,[BAC Result]
      ,[Drug]
      ,[BAC]
      ,[AGE]
      ,[Crash]
into crime_lab_data_2013_new
from crime_lab_data_2013
where dl_no is not null

alter table crime_lab_Data_2013_new
alter column No bigint not null;

alter table crime_lab_data_2013_new
alter column dr_lic_num nvarchar(225) null;

ALTER TABLE crime_lab_data_2013_new
ADD CONSTRAINT PK_crime_lab_data_2013_new_NO PRIMARY KEY CLUSTERED (NO);

SELECT dr_lic_num FROM crime_lab_data_2013_new
WHERE dr_lic_num NOT IN (SELECT dr_lic_num FROM dr_lic_num_table);

delete
from dwi_cobra_new
where dr_lic_num='1'

ALTER TABLE crime_lab_data_2013_new
ADD constraint fk_crime_lab_data_2013_new_license2 FOREIGN KEY(dr_lic_num) references dr_lic_num_table(dr_lic_num)

select *
from omv_violations
order by dr_lic_num

SELECT ROW_NUMBER() OVER (ORDER BY dr_lic_num ASC) AS No, dr_lic_num, ticket_date, offense, conviction_date, ticket_date_2, conviction_date_2
into omv_violations_new
from omv_violations
where dr_lic_num is not null

DECLARE @PaddingField1 nvarchar(7)  --field_length
 
DECLARE PadCursor CURSOR FOR
      SELECT [DR_LIC_NUM]
      FROM [omv_violations]
      WHERE Convert(char(1), left(RTrim(LTrim([DR_LIC_NUM])),1)) = '0'
 
OPEN PadCursor
FETCH NEXT FROM PadCursor INTO @PaddingField1
WHILE @@FETCH_STATUS = 0 BEGIN
      UPDATE [omv_violations]
     SET [DR_LIC_NUM] = Right(RTrim(LTrim([DR_LIC_NUM])),len(RTrim(LTrim([DR_LIC_NUM])))-1)
     WHERE Convert(char(1), left(RTrim(LTrim([DR_LIC_NUM])),1)) = '0'
     
      FETCH NEXT FROM PadCursor INTO @PaddingField1
END
CLOSE PadCursor
DEALLOCATE PadCursor 

alter table omv_violations_new
alter column No bigint not null;

alter table omv_violations_new
alter column dr_lic_num nvarchar(225) null;

ALTER TABLE omv_violations_new
ADD CONSTRAINT PK_omv_violations_new_NO PRIMARY KEY CLUSTERED (NO);

SELECT * FROM omv_violations_new
WHERE dr_lic_num NOT IN (SELECT dr_lic_num FROM dr_lic_num_table)
order by dr_lic_num

delete
from omv_violations_new
where dr_lic_num in ('0','1','10','100')

select dr_lic_num 
from omv_violations_new
WHERE dr_lic_num NOT IN (SELECT dr_lic_num FROM dr_lic_num_table)

select *
from dr_lic_num_table
where dr_lic_state ='WA'

delete
from omv_violations_missing
where dr_lic_num='10004087'

insert into dr_lic_num_table (dr_lic_num, dr_lic_state, dr_lic_name, dr_dob, dr_sex, Dr_race)
 select dr_lic_num as dr_lic_num,
        null as driver_lic_state,
		null as driver_lic_name,
		null as driver_dob,
		null as driver_sex,
		null as driver_race
from omv_violations_missing

ALTER TABLE omv_violations_new
ADD constraint fk_omv_violations_new_license3 FOREIGN KEY(dr_lic_num) references dr_lic_num_table(dr_lic_num)


select dr_lic_num 
from vehic_TB_1990_1998
WHERE dr_lic_num NOT IN (SELECT dr_lic_num FROM dr_lic_num_table)

DECLARE @PaddingField nvarchar(7)  --field_length
 
DECLARE PadCursor CURSOR FOR
      SELECT [DR_LIC_NUM]
      FROM [vehic_Tb_1990_1998]
      WHERE Convert(char(1), left(RTrim(LTrim([DR_LIC_NUM])),1)) = '0'
 
OPEN PadCursor
FETCH NEXT FROM PadCursor INTO @PaddingField
WHILE @@FETCH_STATUS = 0 BEGIN
      UPDATE [vehic_Tb_2013_new]
     SET [DR_LIC_NUM] = Right(RTrim(LTrim([DR_LIC_NUM])),len(RTrim(LTrim([DR_LIC_NUM])))-1)
     WHERE Convert(char(1), left(RTrim(LTrim([DR_LIC_NUM])),1)) = '0'
     
      FETCH NEXT FROM PadCursor INTO @PaddingField
END
CLOSE PadCursor
DEALLOCATE PadCursor 

select dr_lic_num
from dwi_cobra_new
 WHERE dr_lic_num NOT LIKE '%[0-9]%'

delete
from dr_lic_num_table
where dr_lic_num not like '%[0-9]%'

select dr_lic_num 
from vehic_TB_1990_1998_new
WHERE dr_lic_num NOT IN (SELECT dr_lic_num FROM dr_lic_num_table)

update vehic_Tb_1990_1998_new
set dr_lic_num = REPLACE(dr_lic_num, '#', '') 

delete
from vehic_Tb_1990_1998_new
where dr_lic_num in ('1', '100','hit&r7n')

SELECT ROW_NUMBER() OVER (ORDER BY dr_lic_num ASC) AS No, dr_lic_num, [CRASH_NUM]
      ,[VEH_NUM]
      ,[BODY_TYPE]
      ,[DAMAGE_SCALE]
      ,[DR_AGE]
      ,[DR_ALCOHOL]
      ,[DR_COND_CD]
      ,[DR_DOB]
      ,[DR_EJEC_CD]
      ,[DR_INJ_CD]
      ,[DR_POS_CD]
      ,[DR_SAFETY_DEVICE]
      ,[DR_SEAT_BELT]
      ,[DR_SEX]
      ,[EST_SPEED]
      ,[HAZ_CAR]
      ,[HAZ_CAR_CLS]
      ,[HAZ_CAR_REL]
      ,[MOVEMENT_REASON_CD]
      ,[NUM_INJ_IN_VEH]
      ,[OBJ_STRUCK]
      ,[OWNERSHIP]
      ,[PLATE_NUM]
      ,[POSTED_SPEED]
      ,[PRIOR_MOVEMENT_CD]
      ,[PT_IMPACT]
      ,[REG_STATE]
      ,[REG_YEAR]
      ,[TRAFF_CNTL_CD]
      ,[TRAFF_CNTL_COND_CD]
      ,[TRAVEL_DIR]
      ,[VEH_COND_CD]
      ,[VEH_DISABLED]
      ,[VEH_LIGHTING_CD]
      ,[VEH_TYPE_CD]
      ,[VEH_USE]
      ,[VEH_YEAR]
      ,[VIN]
      ,[VIOLATIONS_CD]
      ,[VISION_OBSCURE_CD]
      ,[vin8]
      ,[vin10]
into vehic_TB_1990_1998_new
from vehic_TB_1990_1998
where dr_lic_num like '%[0-9]%'

alter table vehic_TB_1990_1998_new
alter column crash_num int not null;

alter table vehic_TB_1990_1998_new
alter column dr_lic_num nvarchar(225) null;

ALTER TABLE vehic_TB_1990_1998_new
ADD CONSTRAINT PK_vehic_TB_1990_1998_new_no PRIMARY KEY CLUSTERED (no);

alter table vehic_TB_1990_1998_new
drop constraint PK_vehic_TB_1990_1998_new_NO 

ALTER TABLE vehic_TB_1990_1998_new
ADD constraint fk_vehic_TB_1990_1998_new_license4 FOREIGN KEY(dr_lic_num) references dr_lic_num_table(dr_lic_num)

alter table crash_TB_1990_1998
alter column crash_num int not null;


ALTER TABLE crash_TB_1990_1998
ADD CONSTRAINT PK_crash_TB_1990_1998_crash_num PRIMARY KEY CLUSTERED (crash_num);

ALTER TABLE vehic_TB_1990_1998_new
ADD constraint fk_vehic_TB_1990_1998_new_crash FOREIGN KEY(crash_num) references crash_Tb_1990_1998(crash_num)

SELECT ROW_NUMBER() OVER (ORDER BY crash_num ASC) AS No,[CRASH_NUM]
      ,[CRASH_DATE]
      ,[CRASH_TIME]
      ,[CRASH_YEAR]
      ,[ALCOHOL]
      ,[ALIGNMENT_CD]
      ,[AMBULANCE]
      ,[BYPASS]
      ,[CITY_CD]
      ,[CITY_REPT]
      ,[CONTRIB_PRI_CD]
      ,[CONTRIB_SEC_CD]
      ,[DATE_ENTERED]
      ,[DAY_OF_WK]
      ,[FIRST_AID]
      ,[HIT_AND_RUN]
      ,[HWY_TYPE_CD]
      ,[INTERSECTION]
      ,[INVEST_AGENCY_CD]
      ,[LIGHTING_CD]
      ,[LOC_ON_RD]
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
      ,[PDO]
      ,[PERIOD]
      ,[PID_NUM]
      ,[POP_CD]
      ,[PRI_HWY_NUM]
      ,[QUADRANT]
      ,[REPORT_NUM]
      ,[RESCUE_UNIT]
      ,[ROAD_COND_CD]
      ,[ROAD_TYPE_CD]
      ,[RPT_ORIGIN]
      ,[SEC_HWY_NUM]
      ,[SEVERITY_CD]
      ,[SPEC_EQUIP]
      ,[SURF_COND_CD]
      ,[SURF_TYPE_CD]
      ,[TIME_AMB_ARR]
      ,[TIME_AMB_CALLED]
      ,[TIME_AMB_DEPART]
      ,[TROOP]
      ,[TYPE_ACC]
      ,[TYPE_COLL]
      ,[WEATHER_CD]
into crash_Tb_1990_1998_table
from crash_Tb_1990_1998

select *
into crash_Tb_1990_1998_new
from (
select a.* from crash_Tb_1990_1998_table a
inner join 
(
 select distinct crash_num, min(NO) as NO from crash_Tb_1990_1998_table
  group by crash_num
) as b
on a.crash_num = b.crash_num
and a.NO = b.NO)a

alter table crash_TB_1990_1998
alter column crash_num int not null;


ALTER TABLE crash_TB_1990_1998_new
ADD CONSTRAINT PK_crash_TB_1990_1998_crash_num PRIMARY KEY CLUSTERED (crash_num);

ALTER TABLE vehic_TB_1990_1998_new
ADD constraint fk_vehic_TB_1990_1998_new_crash FOREIGN KEY(crash_num) references crash_Tb_1990_1998_new(crash_num)

delete
from vehic_TB_1990_1998_new
WHERE crash_num NOT IN (SELECT crash_num FROM crash_TB_1990_1998)

select distinct dr_lic_num
from vehic_tb_2013_new
where dr_lic_num not in (select dr_lic_num from dr_lic_num_table)

delete
from vehic_tb_2013_new
where dr_lic_num not like '%[0-9]%'

select dr_lic_num, dr_lic_state, dr_name, dr_dob, dr_sex, dr_race
into temp
from vehic_tb_2013_new
where dr_lic_num in ('CRUZPA120DM','K260101889190','PUCAM334J8')



update vehic_Tb_2013_new
set dr_lic_num = REPLACE(dr_lic_num, ',', '') 

select dr_lic_num, dr_lic_state, dr_name, dr_dob, dr_sex, dr_race
into vehic_tb_2013_missing
from vehic_tb_2013_new
where dr_lic_num not in (select dr_lic_num from dr_lic_num_table) 

select distinct dr_lic_num
from vehic_tb_2013_missing

delete
from vehic_tb_2013_missing
where dr_lic_num='PUCAM334J8'

insert into dr_lic_num_table (dr_lic_num, dr_lic_state, dr_lic_name, dr_dob, dr_sex, Dr_race)
 select dr_lic_num as dr_lic_num,
        dr_lic_state as dr_lic_state,
		dr_name as dr_lic_name,
		dr_dob as dr_dob,
		dr_sex as dr_sex,
		dr_race as dr_race
from vehic_tb_2013_missing

alter table vehic_tb_2013_new
alter column dr_lic_num nvarchar(225) null;

insert into dr_lic_num_table(dr_lic_num, dr_lic_state, DR_LIC_NAME,dr_dob, dr_sex, dr_race)
values ('K260101889190',	'FL',	'KAISER, ALICIA, CARINA',	'1988-11-19 00:00:00.000',	'F'	,'W')

insert into dr_lic_num_table(dr_lic_num, dr_lic_state, DR_LIC_NAME,dr_dob, dr_sex, dr_race)
values ('CRUZPA120DM',	'WA',	'PALACIOS, ARTURO, C',	'1988-03-14 00:00:00.000',	'M',	'W')

insert into dr_lic_num_table(dr_lic_num, dr_lic_state, DR_LIC_NAME,dr_dob, dr_sex, dr_race)
values ('PUCAM334J8',	'WA',	'PLAUCHE ASHLEY M',	'1967-04-28 00:00:00.000',	'F',	'W')


ALTER TABLE vehic_TB_2013_new
ADD constraint  FK_vehic_TB_2013_new_license5 FOREIGN KEY(dr_lic_num) references dr_lic_num_table(dr_lic_num)



alter table crash_tb_2013_new
alter column crash_num nvarchar(20) not null;

ALTER TABLE crash_TB_2013_new
ADD CONSTRAINT PK_crash_TB_2013_new_crash_num PRIMARY KEY CLUSTERED (crash_num);

ALTER TABLE vehic_TB_2013_new
ADD constraint fk_vehic_TB_2013_new_crash1 FOREIGN KEY(crash_num) references crash_Tb_2013_new(crash_num)

select crash_num
from vehic_tb_2013_new
where crash_num not in (select crash_num from crash_Tb_2013_new)

select distinct dr_lic_num
from cobra_2013_new
where dr_lic_num not in (select dr_lic_num from dr_lic_num_table)

select dr_lic_num
from Vehic_TB_1999_2004_new
where dr_lic_num not like '%[0-9]%'

delete
from Vehic_TB_1999_2004_new
where dr_lic_num not like '%[0-9]%'

delete
from cobra_2013_new
where dr_lic_num in ('0','00','1')

ALTER TABLE cobra_2013_new
ADD constraint fk_cobra_2013_new_license6 FOREIGN KEY(dr_lic_num) references dr_lic_num_table(dr_lic_num)

SELECT ROW_NUMBER() OVER (ORDER BY dr_lic_num ASC) AS No,[DR_LIC_NUM],[CRASH_NUM]
      ,[VEH_NUM]
      ,[DAMAGE_AREA1_CD]
      ,[DAMAGE_AREA1]
      ,[DAMAGE_AREA2_CD]
      ,[DAMAGE_AREA2]
      ,[DAMAGE_AREA3_CD]
      ,[DAMAGE_AREA3]
      ,[DAMAGE_EXT1_CD]
      ,[DAMAGE_EXT1]
      ,[DAMAGE_EXT2_CD]
      ,[DAMAGE_EXT2]
      ,[DAMAGE_EXT3_CD]
      ,[DAMAGE_EXT3]
      ,[DL_CLASS]
      ,[DR_A_D_PRES_CD]
      ,[DR_A_D_PRES]
      ,[DR_AGE]
      ,[DR_AIRBAG_CD]
      ,[DR_AIRBAG]
      ,[DR_ALCOHOL_CD]
      ,[DR_ALCOHOL]
      ,[DR_ALCOHOL_BAC]
      ,[DR_COND_CD]
      ,[DR_COND]
      ,[DR_DOB]
      ,[DR_DRUGS_CD]
      ,[DR_DRUGS]
      ,[DR_EJEC_CD]
      ,[DR_EJEC]
      ,[DR_INJ_CD]
      ,[DR_INJ]
      ,[DR_LIC_STATE]
      ,[DR_NAME]
      ,[DR_POS_CD]
      ,[DR_POS]
      ,[DR_PROTSYS_CD]
      ,[DR_PROTSYS]
      ,[DR_RACE]
      ,[DR_SEX]
      ,[DR_TRAN_MED_CD]
      ,[DR_TRAN_MED]
      ,[DR_TRAP_EXTR_CD]
      ,[DR_TRAP_EXTR]
      ,[DR_ZIP]
      ,[ENDORSE]
      ,[EST_SPEED]
      ,[EX_INFO]
      ,[F_HARM_EV_CD]
      ,[F_HARM_EV]
      ,[INSCO]
      ,[INS_POL_NUM]
      ,[INS_EFF]
      ,[INS_EXP]
      ,[M_HARM_EV_CD]
      ,[M_HARM_EV]
      ,[MOVEMENT_REASON_CD]
      ,[MOVEMENT_REASON]
      ,[NOV_ISSUED]
      ,[NUM_AXLES]
      ,[NUM_DOORS]
      ,[NUM_IK_IN_VEH]
      ,[NUM_INJ_IN_VEH]
      ,[NUM_KIL_IN_VEH]
      ,[NUM_OCC]
      ,[NUM_TIRES]
      ,[OWNER_NAME]
      ,[PLATE_NUM]
      ,[POSTED_SPEED]
      ,[PRIOR_MOVEMENT_CD]
      ,[PRIOR_MOVEMENT]
      ,[PROOF_INS]
      ,[REAS_TOW_CD]
      ,[REAS_TOW]
      ,[REG_STATE]
      ,[REG_YEAR]
      ,[TRAFF_CNTL_CD]
      ,[TRAFF_CNTL]
      ,[TRAFF_CNTL_COND_CD]
      ,[TRAFF_CONTL_COND]
      ,[TRAVEL_DIR]
      ,[VEH_COND_CD]
      ,[VEH_COND]
      ,[VEH_MAKE]
      ,[VEH_MODEL]
      ,[VEH_LIGHTING_CD]
      ,[VEH_LIGHTING]
      ,[VEH_TOWED_CD]
      ,[VEH_TOWED]
      ,[VEH_TYPE_CD]
      ,[VEH_TYPE]
      ,[VEH_YEAR]
      ,[VIN]
      ,[VIOLATIONS_CD]
      ,[VIOLATIONS]
      ,[VISION_OBSCURE_CD]
      ,[VISION_OBSCURE]
      ,[UTB_BOD_TYP_CD]
      ,[UTB_BOD_TYP]
      ,[UTB_CAR_ADDR]
      ,[UTB_CAR_CITY]
      ,[UTB_CAR_NAME]
      ,[UTB_CAR_PHONE]
      ,[UTB_CAR_SRC_CD]
      ,[UTB_CAR_SRC]
      ,[UTB_CAR_STATE]
      ,[UTB_CAR_ZIP]
      ,[UTB_DOT_IDNUM]
      ,[UTB_GVWR_TRAILER]
      ,[UTB_GVWR_TTB]
      ,[UTB_HAZ_CAR_REL]
      ,[UTB_HAZ_MAT_PLAC]
      ,[UTB_HCR_HAZ_CLS_CD]
      ,[UTB_HCR_HAZ_CLS]
      ,[UTB_HMP_HAZ_CLS_CD]
      ,[UTB_HMP_HAZ_CLS]
      ,[UTB_ICC_IDNUM]
      ,[UTB_NO_IDNUM]
      ,[UTB_SEQ_EVENT1_CD]
      ,[UTB_SEQ_EVENT2_CD]
      ,[UTB_SEQ_EVENT3_CD]
      ,[UTB_SEQ_EVENT4_CD]
      ,[UTB_SEQ_EVENT1]
      ,[UTB_SEQ_EVENT2]
      ,[UTB_SEQ_EVENT3]
      ,[UTB_SEQ_EVENT4]
      ,[UTB_STATE]
      ,[UTB_STATE_IDNUM]
      ,[UTB_THM_HAZ_CLS_CD]
      ,[UTB_THM_HAZ_CLS]
      ,[UTB_TRANS_HAZ_MAT]
      ,[UTB_VEH_CFG_CD]
      ,[UTB_VEH_CFG]
      ,[DATE_ENTERED]
      ,[DATE_CHANGED]
      ,[WHO_ENTERED]
      ,[PROCESS_DATE]
      ,[ADMIN]
      ,[EST_ALCOHOL]
      ,[vin8]
      ,[vin10]
      ,[Num_inj_in_veh_b]
      ,[Num_inj_in_veh_c]
      ,[Num_inj_in_veh_d]
      ,[num_occ_no_seatb]
      ,[violation]
      ,[num_hospitalized]
      ,[AGRESSIVE]
      ,[DISTRACTION]
into Vehic_TB_1999_2004_new
from VEHIC_TB_1999_2004
where dr_lic_num <> ' '

select dr_lic_num, dr_lic_state, dr_name, dr_sex, dr_dob
from vehic_TB_1999_2004_new
where dr_lic_num not in (select dr_lic_num from dr_lic_num_table)

update vehic_Tb_1999_2004_new
set dr_lic_num = REPLACE(dr_lic_num, 'permit', '') 

DECLARE @PaddingField2 nvarchar(225)  --field_length
 
DECLARE PadCursor CURSOR FOR
      SELECT [DR_LIC_NUM]
      FROM [vehic_Tb_1999_2004_new]
      WHERE Convert(char(1), left(RTrim(LTrim([DR_LIC_NUM])),1)) = '0'
 
OPEN PadCursor
FETCH NEXT FROM PadCursor INTO @PaddingField2
WHILE @@FETCH_STATUS = 0 BEGIN
      UPDATE [vehic_Tb_1999_2004_new]
     SET [DR_LIC_NUM] = Right(RTrim(LTrim([DR_LIC_NUM])),len(RTrim(LTrim([DR_LIC_NUM])))-1)
     WHERE Convert(char(1), left(RTrim(LTrim([DR_LIC_NUM])),1)) = '0'
     
      FETCH NEXT FROM PadCursor INTO @PaddingField2
END
CLOSE PadCursor
DEALLOCATE PadCursor

select No
from vehic_Tb_1999_2004_new 
where no is null

alter table vehic_Tb_1999_2004_new
alter column dr_lic_num nvarchar(225) null;

alter table vehic_Tb_1999_2004_new
alter column no bigint not null;

ALTER TABLE vehic_Tb_1999_2004_new
ADD CONSTRAINT PK_vehic_Tb_1999_2004_new_no PRIMARY KEY CLUSTERED (no);

alter table vehic_TB_1990_1998_new
drop constraint PK_vehic_TB_1990_1998_new_NO 

ALTER TABLE vehic_Tb_1999_2004_new
ADD constraint fk_vehic_Tb_1999_2004_new_license7 FOREIGN KEY(dr_lic_num) references dr_lic_num_table(dr_lic_num)

select crash_num
from vehic_Tb_1999_2004_new
where crash_num not in(select crash_num from crash_TB_1999_2004)

alter table crash_TB_1999_2004
alter column crash_num int not null;

ALTER TABLE crash_TB_1990_1998
ADD CONSTRAINT PK_crash_TB_1990_1998_crash_num PRIMARY KEY CLUSTERED (crash_num);

ALTER TABLE vehic_TB_1990_1998_new
ADD constraint fk_vehic_TB_1990_1998_new_crash FOREIGN KEY(crash_num) references crash_Tb_1990_1998(crash_num)



SELECT ROW_NUMBER() OVER (ORDER BY dr_lic_num ASC) AS No,[DR_LIC_NUM],[CRASH_NUM]
      ,[VEH_NUM]
      ,[DAMAGE_AREA1_CD]
      ,[DAMAGE_AREA2_CD]
      ,[DAMAGE_AREA3_CD]
      ,[DAMAGE_EXT1_CD]
      ,[DAMAGE_EXT2_CD]
      ,[DAMAGE_EXT3_CD]
      ,[DL_CLASS]
      ,[DR_A_D_PRES_CD]
      ,[DR_AGE]
      ,[DR_AIRBAG_CD]
      ,[DR_ALCOHOL_CD]
      ,[DR_ALCOHOL_BAC]
      ,[DR_BLOOD_ALC_KIT_NUM]
      ,[DR_COND_CD]
      ,[DR_DISTRACT_CD]
      ,[DR_DOB]
      ,[DR_DRUGS_CD]
      ,[DR_EJEC_CD]
      ,[DR_INJ_CD]
      ,[DR_LIC_STATE]
      ,[DR_NAME]
      ,[DR_POS_CD]
      ,[DR_PROTSYS_CD]
      ,[DR_RACE]
      ,[DR_SEX]
      ,[DR_TRAN_MED_CD]
      ,[DR_MED_FAC_NAME]
      ,[DR_TRAP_EXTR_CD]
      ,[DR_ST_DIR]
      ,[DR_ST_NUM]
      ,[DR_ST_NAME]
      ,[DR_ST_TYPE]
      ,[DR_CITY]
      ,[DR_STATE]
      ,[DR_ZIP]
      ,[DR_HOME_PHONE]
      ,[ENDORSE]
      ,[EST_SPEED]
      ,[EX_INFO]
      ,[F_HARM_EV_CD]
      ,[S_HARM_EV_CD]
      ,[T_HARM_EV_CD]
      ,[FO_HARM_EV_CD]
      ,[M_HARM_EV_CD]
      ,[F_CITATION_NO]
      ,[S_CITATION_NO]
      ,[T_CITATION_NO]
      ,[FO_CITATION_NO]
      ,[FI_CITATION_NO]
      ,[F_RS_ORD_NUM]
      ,[S_RS_ORD_NUM]
      ,[T_RS_ORD_NUM]
      ,[FO_RS_ORD_NUM]
      ,[FI_RS_ORD_NUM]
      ,[INSCO]
      ,[INS_POL_NUM]
      ,[INS_EXP]
      ,[INS_AGENT]
      ,[INS_PHONE]
      ,[MOVEMENT_REASON_CD]
      ,[NOTICE_INS_VIOL]
      ,[NUM_AXLES]
      ,[NUM_DOORS]
      ,[NUM_IK_IN_VEH]
      ,[NUM_INJ_IN_VEH]
      ,[NUM_KIL_IN_VEH]
      ,[NUM_OCC]
      ,[NUM_TIRES]
      ,[OWNER_NAME]
      ,[OWNER_HOME_PHONE]
      ,[OWNER_ST_DIR]
      ,[OWNER_ST_NUM]
      ,[OWNER_ST_NAME]
      ,[OWNER_ST_TYPE]
      ,[OWNER_CITY]
      ,[OWNER_STATE]
      ,[OWNER_ZIP]
      ,[PLATE_NUM]
      ,[PLATE_TYPE]
      ,[POSTED_SPEED]
      ,[PRIOR_MOVEMENT_CD]
      ,[REAS_TOW_CD]
      ,[REG_STATE]
      ,[REG_YEAR]
      ,[TRAFF_CNTL_CD]
      ,[TRAFF_CNTL_COND_CD]
      ,[TRAVEL_DIR]
      ,[TRAVEL_DIR_ROAD]
      ,[VEH_COND_CD]
      ,[VEH_MAKE]
      ,[VEH_MODEL]
      ,[VEH_LIGHTING_CD]
      ,[VEH_TOWED_CD]
      ,[VEH_REMOVED_BY]
      ,[VEH_TYPE_CD]
      ,[VEH_YEAR]
      ,[VIN]
      ,[VEH_FINAL_LOC]
      ,[VEH_DIST_TRAVELED]
      ,[VIOLATIONS_CD]
      ,[VISION_OBSCURE_CD]
      ,[UTB_BOD_TYP_CD]
      ,[UTB_CAR_ADDR]
      ,[UTB_CAR_CITY]
      ,[UTB_CAR_NAME]
      ,[UTB_CAR_STATE]
      ,[UTB_CAR_ZIP]
      ,[UTB_INTERSTATE_CAR]
      ,[UTB_DOT_IDNUM]
      ,[UTB_GVWR_TTB]
      ,[UTB_HAZ_CAR_REL]
      ,[UTB_HAZ_MAT_PLAC]
      ,[UTB_ICC_IDNUM]
      ,[UTB_STATE]
      ,[UTB_THM_HAZ_CLS_CD]
      ,[UTB_THM_HAZ_ID]
      ,[UTB_TRANS_HAZ_MAT]
      ,[VEH_TRAILER_YEAR]
      ,[VEH_TRAILER_MAKE]
      ,[VEH_TRAILER_TYPE]
      ,[VEH_TRAILER_PLATE_YR]
      ,[VEH_TRAILER_PLATE_ST]
      ,[VEH_TRAILER_PLATE_NUM]
      ,[EST_ALCOHOL]
      ,[REPORT_NUM_2]
      ,[COMM_BUS_VEH]
      ,[GOV_VEH]
      ,[PERSONAL_VEH]
      ,[UTB_CAR_ADDR_NAME]
      ,[UTB_CAR_ADDR_NUM]
      ,[UTB_CAR_ADDR_TYPE]
      ,[UTB_CAR_ADDR_DIR]
      ,[DR_ST]
      ,[OWNER_INFO_DR_SAME]
      ,[OWNER_ST]
      ,[SKID_FR]
      ,[SKID_FL]
      ,[SKID_RR]
      ,[SKID_RL]
      ,[F_VEH_CIT_RS]
      ,[S_VEH_CIT_RS]
      ,[T_VEH_CIT_RS]
      ,[FO_VEH_CIT_RS]
      ,[FI_VEH_CIT_RS]
      ,[DATE_ENTERED]
      ,[DR_ALCOHOL]
      ,[STATE_RPT_NUM]
      ,[vin8]
      ,[vin10]
      ,[gvw_class]
      ,[REV_NUM]
      ,[Carr_name]
      ,[carr_add]
      ,[carr_city]
      ,[carr_state]
      ,[DOTD_number]
      ,[zip]
      ,[icc]
      ,[utb]
      ,[CURR_STAT]
      ,[REV_STAT]
      ,[PAGE_OWNER]
      ,[REV_DATE]
      ,[PAGE_OWNER_APPROVER]
      ,[p_plate]
      ,[pp_plate]
      ,[num_inj_in_veh_b]
      ,[num_inj_in_veh_c]
      ,[num_inj_in_veh_d]
      ,[num_occ_no_seatb]
      ,[num_hospitalized]
      ,[agressive]
      ,[distraction]
      ,[violation]
      ,[id]
      ,[crash_year]
      ,[VEH_ID]
into Vehic_TB_2005_2013_new
from VEHIC_TB_2005_20013
where dr_lic_num <> ' '

DECLARE @PaddingField3 nvarchar(225)  --field_length
 
DECLARE PadCursor CURSOR FOR
      SELECT [DR_LIC_NUM]
      FROM [Vehic_TB_2005_2013_new]
      WHERE Convert(char(1), left(RTrim(LTrim([DR_LIC_NUM])),1)) = '0'
 
OPEN PadCursor
FETCH NEXT FROM PadCursor INTO @PaddingField3
WHILE @@FETCH_STATUS = 0 BEGIN
      UPDATE [Vehic_TB_2005_2013_new]
     SET [DR_LIC_NUM] = Right(RTrim(LTrim([DR_LIC_NUM])),len(RTrim(LTrim([DR_LIC_NUM])))-1)
     WHERE Convert(char(1), left(RTrim(LTrim([DR_LIC_NUM])),1)) = '0'
     
      FETCH NEXT FROM PadCursor INTO @PaddingField3
END
CLOSE PadCursor
DEALLOCATE PadCursor

delete
from vehic_TB_2005_2013_new
where dr_lic_num not like '%[0-9]%'

select dr_lic_num
from vehic_TB_2005_2013_new
where dr_lic_num not in (select dr_lic_num from dr_lic_num_table)
order by dr_lic_num

update dr_lic_num_table
set dr_lic_num = REPLACE(dr_lic_num, 'suspend ', '')
where dr_lic_num like '%suspend' 

select dr_lic_num
from vehic_TB_1999_2004_new
where dr_lic_num like '%suspend'

