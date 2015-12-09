-------------------------------------------
--------		CREATE TABLES     ---------
-------------------------------------------

CREATE TABLE "Cadeautype" (
"Naam"	 			NVARCHAR2(255) 		NOT NULL
)
LOGGING
NOCOMPRESS
NOCACHE
;

CREATE TABLE "Vaardigheid" (
"Naam"	 			NVARCHAR2(255) 		NOT NULL
)
LOGGING
NOCOMPRESS
NOCACHE
;

CREATE TABLE "Gemeente" (
"ID"				NUMBER(10)		NOT NULL,
"Naam"	 			NVARCHAR2(255) 	NOT NULL,
"Provincie"	 		NVARCHAR2(255) 	NOT NULL,
"CoordX"	 		NUMBER(255) 	NOT NULL,
"CoordY"	 		NUMBER(255) 	NOT NULL,
"Kinderen"	 		NUMBER(255)	 	NOT NULL
)
LOGGING
NOCOMPRESS
NOCACHE
;

CREATE TABLE "Piet" (
"ID"				NUMBER(10)		NOT NULL,
"Naam"	 			NVARCHAR2(255) 	NOT NULL,
"Gemeente_ID"		NUMBER(10)		NULL

)
LOGGING
NOCOMPRESS
NOCACHE
;

CREATE TABLE "Cadeautype_Vaardigheid" (
"CADEAUTYPE_NAAM" 		NVARCHAR2(255)	NOT NULL ,
"VAARDIGHEID_NAAM"		NVARCHAR2(255)	NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE
;

CREATE TABLE "Vaardigheid_Piet" (
"PIET_ID" 				NUMBER(10) 		NOT NULL ,
"VAARDIGHEID_NAAM"		NVARCHAR2(255)	NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE
;

CREATE TABLE "Cadeautype_Gemeente" (
"GEMEENTE_ID" 			NUMBER(10) 		NOT NULL ,
"CADEAUTYPE_NAAM"		NVARCHAR2(255)	NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE
;

-------------------------------------------
--------Triggers, Sequences, Keys----------
-------------------------------------------