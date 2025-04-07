create database project_deit_health_care

    CREATE TABLE Doctor_deit (
    DoctorID varchar(200) PRIMARY KEY not null,
    FName VARCHAR(200) NULL,
	lname varchar(200)  null,
    Email VARCHAR(200)  not NULL,
   phone VARCHAR(200) NULL,
    Address VARCHAR(200)  NULL,
    Specialty VARCHAR(200)  NULL,
    Experience varchar(200)  NULL,
    FitnessLevel VARCHAR(200)  NULL,
	sex varchar(200)   null,
	department varchar(200)  null);

	alter table Doctor_deit 
	add constraint email_pk primary key (email)







	--drop table Doctor_deit;

	INSERT INTO Doctor_deit(  DoctorID,FName , lname,Email,   phone , address,  Specialty,   Experience,    FitnessLevel,sex,department )
VALUES (20217001,'farah','nour','farah11gamil.com',01023101662,'nasercity_street2_home5','plan_deit_food','take_less_time 2_months' ,'level2','F','online nutrition course'),
(20217002,'nada','ahmed','nada32gamil.com',01023109062,'maadicity_street3_home11','plan_deit_blood_sugar','take_less_time 3_months' ,'level3','F','paper nutrition course'),
(20217003,'farah','nour','farah12gamil.com',01023101662,'nasercity_street2_home5','plan_deit_food','take_less_time 2_months' ,'level2','F','online nutrition course'),
(20218004,'omar','ahmed','omar24gamil.com',01032410166,'newcairocity_street4_home3','plan_deit','take_less_time 1_months' ,'level1','M','online nutrition course'),
(20216005,'fatma','omar','fatma23gamil.com',01023101662,'maadicity_street1_home10','plan_deit_food','take_less_time 2_months' ,'level2','F','online nutrition course'),
(20210006,'mona','mohamed','mona99gamil.com',01023101362,'newnasercity_street3_home4','plan_deit_food','take_less_time 2_months' ,'level2','F','online nutrition course'),
(20219027,'Ahmed','elsayed','ahmed78gamil.com',01023111662,'nasercity_street4_home9','plan_deit_food','take_less_time 4_months' ,'level4','M','body nutrition '),
(20218038,'nada','omar','nada67gamil.com',01023111661,'maadicity_street6_home7','plan_deit_food','take_less_time 2_months' ,'level2','F','online nutrition course'),
(20210039,'tarek','omar','tarek22gamil.com',01513101662,'nasercity_street3_home5','plan_deit_sugar','take_less_time 3_months' ,'level3','M','paper nutrition course'),
(20219010,'reaal','samer','reaal45gamil.com',01123101662,'newnasercity_street2_home5','plan_deit_food','take_less_time 2_months' ,'level2','F','online nutrition course');

ALTER TABLE doctor_deit
ADD date_of_visit DATE;

ALTER TABLE doctor_diet
ADD CONSTRAINT ck_doctor_diet_calories CHECK (calories_per_day > 0);



CREATE TABLE Patients_deit (
    PatientID varchar(200) PRIMARY KEY not null,
     FName VARCHAR(200) NULL,
	 LName varchar(200)  null,
    Email VARCHAR(200) not NULL,
    Phone VARCHAR(200)  NULL,
    Address VARCHAR(200)  NULL,
    Age varchar(200)  NULL,
    Gender VARCHAR(200)  NULL,
    FitnessLevel VARCHAR(200)  NULL,
	department varchar(200)  null);

	alter table Patients_deit
	add constraint email_pk primary key (email)

	alter table Doctor_deit 
	add constraint fk foreign key (DoctorID) references Patients_deit ( PatientID)


	INSERT INTO  Patients_deit(PatientID,FName,LName,Email,Phone,Address,Age,Gender,FitnessLevel,department)
     VALUES (20210001,'nour','Ahmed','nour23gamil.com',01035446789,'newnasercity_street9_home10',23,'F','Level3','gastric sleeve '),
	(20210002,'sahar','tarek','sahar29gamil.com',0155676879,'nasercity_street2_home5',21,'F','Level2',' online nutrition course'),
	(20200003,'farida','mohamed','farida34gamil.com',01234556783,'newnasercity_street2_home5',24,'F','Level1',' paper nutrition course'),
	(20215004,'fatma','elsayed','fatma73gamil.com',01567352675,'maadicity_street2_home5',19,'F','Level5','gastric sleeve '),
	(20210005,'farah','shehab','farah45gamil.com',0115678531,'nasercity_street2_home5',20,'F','Level4','nutrition '),
	(20210006,'reaal','mohmoud','reaal89gamil.com',0124678978,'newnasercity_street2_home5',22,'F','Level3','gastric sleeve '),
	(20210007,'tarek','samer','tarek97gamil.com',012345676489,'maadicity_street2_home5',19,'M','Level5',' online nutrition course'),
	(20210008,'shehab','nour','shehab99gamil.com',01243657682,'newnasercity_street2_home5',29,'M','Level3','paper  nutrition course '),
	(20210009,'samer','farrag','samer12gamil.com',01187986784,'Maadicity_street2_home5',34,'M','Level2',' online nutrition course'),
	(20210010,'omar','hossam','omar56gamil.com',0116765687,'nasercity_street2_home5',35,'M','Level1','gastric sleeve ');

	--drop table Patients_deit;


	  create table nurse_deit(
	    FName VARCHAR(200)  NULL,
	    LName varchar(200)  null,
		Experience varchar(200)  NULL,
	    NurseID varchar(200) PRIMARY KEY,
		Email VARCHAR(200)  NULL,
        Phone VARCHAR(200)  NULL,
	    Address VARCHAR(200)  NULL,
		 department varchar(200)  null,
		 Age varchar(200)  NULL,
       Gender VARCHAR(200)  NULL);

	 --  drop table nurse_deit;

	 INSERT INTO  nurse_deit(FName,LName,Experience,NurseID,Email,Phone,Address,department,Age,Gender)
VALUES ('farah','omar','sugar_blood',20210001,'farah23gamil.com',01020038293,'maadicity_street3_home2','blood_analysis',27,'F'),
('tarek','elsayed','loss_weight',20210002,'tarek93gamil.com',01020038293,'maadicity_street3_home2','exersice_body',29,'M'),
('reaal','samer','sugar_blood',20210003,'reaal20gamil.com',01012038293,'maadicity_street3_home2','blood_analysis',25,'F'),
('farida','ahmed','health_food',20210004,'farida29gamil.com',01054038293,'maadicity_street3_home2','analysis_weight',23,'F'),
('mona','farag','sugar_blood',20210005,'mona21gamil.com',01120038234,'maadicity_street3_home2','blood_analysis',34,'F'),
('sahar','tarek','check_body',20210006,'sahar63gamil.com',01020038293,'maadicity_street3_home2','analysis_body',30,'F'),
('ahmed','nour','heart_disease',20210007,'ahmed93gamil.com',01029938293,'maadicity_street3_home2','analysis_heart',20,'M'),
('omar','hossam','sugar_blood',20210008,'omar83gamil.com',01520038293,'maadicity_street3_home2','blood_analysis',22,'M'),
('ahmed','hatem','emergency',20210009,'ahmed13gamil.com',01120038233,'maadicity_street3_home2','analysis_body',33,'M'),
('mohmoud','elsyed','loss_weight',20210010,'mohmoud43gamil.com',01134038293,'maadicity_street3_home2','exersice-body',25,'M');

ALTER TABLE nurse_deit
ADD new_column_name datatype;


	      create table home_day(
	      FName_patient_home VARCHAR(200)  NULL,
	       LName_patient_home varchar(200)  null,
	       NurseID varchar(200) , 
		   PatientID varchar(200) ,
		   Email VARCHAR(200)  NULL, 
		   Address VARCHAR(200)  NULL,
		   department_doctor_deit varchar(200)  null,
	       Experience_doctor_deit  varchar(200)  NULL,
			Experience_nurse_deit varchar(200)  NULL,
			report_file_from_doctor varchar(200)  null,
		  constraint  PK_home_day PRIMARY KEY (NurseID,PatientID));

		--  drop table home_day;

--INSERT INTO  home_day(FName_patient_home,LName_patient_home,NurseID,PatientID,Email,Address,department_doctor_deit,Experience_doctor_deit,Experience_nurse_deit,report_file_from_doctor)
--VALUES ('farah','samer',20210001,'farah23gamil.com','nasercity-street4-home6','online nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient'),
--('nour','nour',20213002,'nour27gamil.com','maadicity-street4-home6','paper nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient'),
--('sahar','samer',20218003,'sahar13gamil.com','maadicity-street4-home6','online nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient'),
--('nada','elsayed',20212004,'nada63gamil.com','nasercity-street4-home6','paper nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient'),
--('mona','farrag',20213005,'mona83gamil.com','maadicity-street4-home6','online nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient'),
--('farah','nour',20211005,'farah93gamil.com','newcairocity-street4-home6','paper nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient'),
--('reaal','mohmoud',20216006,'reaal53gamil.com','maadicity-street4-home6','paper nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient'),
--('samer','samer',20213007,'samer33gamil.com','nasercity-street4-home6','online nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient'),
--('omar','ahmed',20218008,'omar23gamil.com','newcairocity-street4-home6','online nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient'),
--('tarek','elsayed',20216009,'tarek17gamil.com','nasercity-street4-home6','paper nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient'),
--('omar','tarek',20212010,'omar21gamil.com','newcairocity-street4-home6','online nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient');--

 INSERT INTO  home_day(FName_patient_home,LName_patient_home,NurseID,PatientID,Email,Address,department_doctor_deit,Experience_doctor_deit,Experience_nurse_deit,report_file_from_doctor)
VALUES ('farah','samer',20210001,'farah23gamil.com','nasercity-street4-home6','online nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient','20 years','2 years'),
('nour','nour',20213002,'nour27gamil.com','maadicity-street4-home6','paper nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient','15 years','5 years'),
('sahar','samer',20218003,'sahar13gamil.com','maadicity-street4-home6','online nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient','25 years','3 years'),
('nada','elsayed',20212004,'nada63gamil.com','nasercity-street4-home6','paper nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient','10 years','4 years'),
('mona','farrag',20213005,'mona83gamil.com','maadicity-street4-home6','online nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient','5 years','5 years'),
('farah','nour',20211005,'farah93gamil.com','newcairocity-street4-home6','paper nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient','8 years','1 years'),
('reaal','mohmoud',20216006,'reaal53gamil.com','maadicity-street4-home6','paper nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient','9 years','6 years'),
('samer','samer',20213007,'samer33gamil.com','nasercity-street4-home6','online nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient','10 years','3 years'),
('omar','ahmed',20218008,'omar23gamil.com','newcairocity-street4-home6','online nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient','15 years','5 years'),
('tarek','elsayed',20216009,'tarek17gamil.com','nasercity-street4-home6','paper nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient','20 years','2 years'),
('omar','tarek',20212010,'omar21gamil.com','newcairocity-street4-home6','online nutrition course','exerise_used_from_doctor_with_list_istructions','report_effect_body_patient','7 years','6 years');

ALTER TABLE home_day
ADD home_address VARCHAR(100);

ALTER TABLE home_day
ADD CONSTRAINT CHK_Home_Day_Duration
CHECK (duration >= 1 AND duration <= 24);

	   create table Diagosis(
	   Family_history varchar(200) null,
	   patient_deit varchar(200) PRIMARY KEY ,
	   lab_result varchar(200) null,
	   treatment_plan varchar(200)  null,
	   allergies varchar(200)  null,
	   Medications_prescribed varchar(200)  null,
	   date_of_diagnosis varchar(200)  null,
	   Diagnosis_description varchar(200)  null,
	   severity_of_diagnosis varchar(200)  null,
	   Diagnosis_code varchar(200) null );
	  -- drop table Diagosis;

-- INSERT INTO  Diagosis(Family_history,patient_deit,lab_result,treatment_plan,allergies,Medications_prescribed,date_of_diagnosis,Diagnosis_description,severity_of_diagnosis,Diagnosis_code)
   --    VALUES ('blood_sugar','gastric_sleeve','lab4','paper_plan','sugar_plan_deit','perfect_weight_loss','march 9_friday','body_weight_loss_with(sugar_blood)','body_anaylsis',201),
	--   ('heart_attack','gastric_sleeve','lab5','paper_plan_online','heart_attack_plan_deit','perfect_weight_loss','march 1_friday','body_weight_loss_with(heart_attack)','body_anaylsis',202),
	 --  ('respiration_of_breath','loss_weight','lab6','paper_plan','respiration_plan_deit','perfect_weight_loss','march 3_wensday','body_weight_loss_with(respiration_breath)','body_anaylsis',203),
	  -- ('blood_sugar','loss_weight','lab7','paper_plan_online','sugar_plan_deit','perfect_weight_loss','march 5_friday','body_weight_loss_with(sugar_blood)','body_anaylsis',204),
	 --  ('respiration_of_breath','gastric_sleeve','lab8','paper_plan','respiration_plan_deit','perfect_weight_loss','march 3_friday','body_weight_loss_with(respiration_breath)','body_anaylsis',205),
	  -- ('heart_attack','gastric_sleeve','lab9','paper_plan_online','heart_attack_plan_deit','perfect_weight_loss','march 2_sunday','body_weight_loss_with(heart_attack)','body_anaylsis',206),
	  -- ('respiration_of_breath','food_deit','lab3','paper_plan','respiration_plan_deit','perfect_weight_loss','march 3_sunday','body_weight_loss_with(respiration)','body_anaylsis',207),
	  -- ('heart_attack','gastric_sleeve','lab2','paper_plan_online','heart_attack_plan_deit','perfect_weight_loss','march 7_tuesday','body_weight_loss_with(heart_attack)','body_anaylsis',208),
	  -- ('blood_sugar','loss_weight','lab1','paper_plan','sugar_plan_deit','perfect_weight_loss','march 5_sunday','body_weight_loss_with(sugar_blood)','body_anaylsis',209),
	  -- ('respiration_of_breath','gastric-sleeve','lab7','paper_plan_online','respiration_plan_deit','perfect_weight_loss','march 3_monday','body_weight_loss_with(respiration_breath)','body_anaylsis',210);

	  
	   INSERT INTO  Diagosis(Family_history,patient_deit,lab_result,treatment_plan,allergies,Medications_prescribed,date_of_diagnosis,Diagnosis_description,severity_of_diagnosis,Diagnosis_code)
       VALUES ('blood_sugar','gastric_sleeve','lab4','paper_plan','sugar_plan_deit','perfect_weight_loss','march 9_friday','body_weight_loss_with(sugar_blood)','body_anaylsis',201),
	   ('heart_attack','gastric_sleeve','lab5','paper_plan_online','heart_attack_plan_deit','perfect_weight_loss','march 1_friday','body_weight_loss_with(heart_attack)','body_anaylsis',202),
	   ('respiration_of_breath','loss_weight','lab6','paper_plan','respiration_plan_deit','perfect_weight_loss','march 3_wensday','body_weight_loss_with(respiration_breath)','body_anaylsis',203),
	   ('blood_sugar','loss_weight','lab7','paper_plan_online','sugar_plan_deit','perfect_weight_loss','march 5_friday','body_weight_loss_with(sugar_blood)','body_anaylsis',204),
	   ('respiration_of_breath','gastric_sleeve','lab8','paper_plan','respiration_plan_deit','perfect_weight_loss','march 3_friday','body_weight_loss_with(respiration_breath)','body_anaylsis',205),
	   ('heart_attack','gastric_sleeve','lab9','paper_plan_online','heart_attack_plan_deit','perfect_weight_loss','march 2_sunday','body_weight_loss_with(heart_attack)','body_anaylsis',206),
	   ('respiration_of_breath','food_deit','lab3','paper_plan','respiration_plan_deit','perfect_weight_loss','march 3_sunday','body_weight_loss_with(respiration)','body_anaylsis',207),
	   ('heart_attack','gastric_sleeve','lab2','paper_plan_online','heart_attack_plan_deit','perfect_weight_loss','march 7_tuesday','body_weight_loss_with(heart_attack)','body_anaylsis',208),
	   ('blood_sugar','loss_weight','lab1','paper_plan','sugar_plan_deit','perfect_weight_loss','march 5_sunday','body_weight_loss_with(sugar_blood)','body_anaylsis',209),
	   ('respiration_of_breath','gastric_sleeve','lab7','paper_plan_online','respiration_plan_deit','perfect_weight_loss','march 3_monday','body_weight_loss_with(respiration_breath)','body_anaylsis',210);

	   ALTER TABLE Diagosis
ADD diagnosis_date date;

ALTER TABLE Diagnosis ADD CONSTRAINT unique_patient_id
UNIQUE (patient_id);

	   create table prescribe_Medicine(
	   Medicine_name varchar(200) PRIMARY KEY,
	  Dosage varchar(200)  null,
     Frequency varchar(200) not null,
   Route_of_administration  varchar(200)  null,
    Duration_of_treatment varchar(200)  null,
    Indications_for_use varchar(200)   null,
    Contraindications  varchar(200)   null,
     Side_effects varchar(200)  null,
    Interactions_with_other_medications   varchar(200)  null,
      Precautions  varchar(200)  null);

	  drop table prescribe_Medicine;

	  INSERT INTO prescribe_Medicine(Medicine_name,Dosage,Frequency,Duration_of_treatment,Indications_for_use,Contraindications,Side_effects,Interactions_with_other_medications,Precautions)
    VALUES ('medicine01_freedom_by_clinic','perday3_medicine','2_times_in_week','3_months','notes_happen_by_medcinie','effect_medicine','allegric_to_something','loss_weight','medicine_not_intreractions_without_effect'),
	('medicine02_freedom_by_clinic','perday2_medicine','3_times_in_week','2_months','notes_happen_medicine','effect_medicine','allegric_to_something','loss_weight','medicine_not_intreractions_without_effect'),
	('medicine03_freedom_by_clinic','perday5_medicine','2_times_in_week','5_months','notes_happen_medicine','effect_medicine','allegric_to_something','loss_weight','medicine_not_intreractions_without_effect'),
	('medicine04_freedom_by_clinic','perday4_medicine','3_times_in_week','7_months','notes_happen_medicine','effect_medicine','allegric_to_something','loss_weight','medicine_not_intreractions_without_effect'),
	('medicine05_freedom_by_clinic','perday3_medicine','5_times_in_week','2_months','notes_happen_medicine','effect_medicine','allegric_to_something','loss_weight','medicine_not_intreractions_without_effect'),
	('medicine06_freedom_by_clinic','perday4_medicine','2_times_in_week','8_months','notes_happen_medicine','effect_medicine','allegric_to_something','loss_weight','medicine_not_intreractions_without_effect'),
	('medicine07_freedom_by_clinic','perday5_medicine','4_times_in_week','1_months','notes_happen_medicine','effect_medicine','allegric_to_something','loss_weight','medicine_not_intreractions_without_effect'),
	('medicine08_freedom_by_clinic','perday2_medicine','6_times_in_week','3_months','notes_happen_medicine','effect_medicine','allegric_to_something','loss_weight','medicine_not_intreractions_without_effect'),
	('medicine09_freedom_by_clinic','perday5_medicine','3_times_in_week','9_months','notes_happen_medicine','effect_medicine','allegric_to_something','loss_weight','medicine_not_intreractions_without_effect'),
	('medicine10_freedom_by_clinic','perday4_medicine','2_times_in_week','4_months','notes_happen_medicine','effect_medicine','allegric_to_something','loss_weight','medicine_not_intreractions_without_effect');


	ALTER TABLE prescribe_medicine
ADD Dosage VARCHAR(50) NOT NULL;

ALTER TABLE prescribe_medicine
ADD CONSTRAINT CHK_Dosage
CHECK (Dosage > 0);


	   create table appointment(
	   Patient_name  varchar(200)  null,
    Doctor_name  varchar(200)  null,
   Date_of_appointment  varchar(200)  null,
   Duration_of_appointment varchar(200)  null,
   Reason_for_appointment   varchar(200)  null,
  Appointment_type varchar(200)  null,
   Appointment_status varchar(200)  null,
  Location_of_appointment varchar(200)  null,
   Notes varchar(200)  null,
  Appointment_ID  varchar(200) PRIMARY KEY);

  --drop table appointment;

  INSERT INTO  appointment(patient_name, Doctor_name, Date_of_appointment, Duration_of_appointment,Reason_for_appointment,Appointment_type,Appointment_status,Location_of_appointment,notes,Appointment_ID )
VALUES ('reaal','DR.samer_elsayed' ,'sunday_month7' , '7pm','for_heart_ attack','heart_department','stress-fear-respiration of breath','maadicity','not make more presure-stress-fear',20200271),
('omar','DR.mhomoud_farag' ,'monday_month2' , '8am','for_body_emergency','emergency_department','pressure-fear-respiration of breath','newnasercity','not make more presure-stress-fear',20200272),
('shehab','DR.samer_mahmoud' ,'tuesday_month3' , '3pm','for_heart_ attack','heart_department','stress-fear-respiration of breath','newcairocity','not make more presure-stress-fear',20190273),
('sarah','DR.sahar_shehab' ,'sunday_month4' , '6pm','for_weight_body','weight_department','stress-fear-respiration of breath','newnasercity','not make more presure-stress-fear',20180274),
('samer','DR.tarek_mohmoud' ,'wesnday_month2' , '11am','for_loss_ respiration','respiration_department','stress-fear-respiration of breath','nasercity','not make more presure-stress-fear',20210275),
('tarek','DR.ahmed_tarek' ,'sunday_month9' , '7am','for_heart_ attack','heart_department','stress-fear-respiration of breath','maadicity','not make more presure-stress-fear',20210276),
('ahmed','DR.shehab_nour' ,'monday_month1' , '9am','for_suger_blood','sugar_blood_department','stress-fear-respiration of breath','newcairocity','not make more presure-stress-fear',20201277),
('mohmoud','DR.farah_elfarrag' ,'sunday_month3' , '8pm','for_heart_ attack','heart_department','stress-fear-respiration of breath','maadicity','not make more presure-stress-fear',20210278),
('mohmoud','DR.farah_elfarrag' ,'sunday_month3' , '8pm','for_heart_ attack','heart_department','stress-fear-respiration of breath','maadicity','not make more presure-stress-fear',20210279),
('farah','DR.nour_ahmed' ,'monday_month6' , '5pm','for_weight_body','weight_department','stress-respiration of breath','newnasercity','not make more presure-stress-fear',20210210);


ALTER TABLE appointment
ADD appointment_date DATETIME;

ALTER TABLE appointment
ADD CONSTRAINT ensure_future_date
CHECK (appointment_date >= GETDATE());


create table Dependant(
Dependant_number int unique ,
Dependant_name nvarchar(20),
Relationship nvarchar(20),
Patient_id int
);