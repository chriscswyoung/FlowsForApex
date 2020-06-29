CREATE TABLE "FLOW_CONNECTIONS" 
   (	"CONN_ID" VARCHAR2(50 CHAR), 
	"CONN_NAME" VARCHAR2(100 CHAR), 
	"CONN_SOURCE_REF" VARCHAR2(50 CHAR), 
	"CONN_TARGET_REF" VARCHAR2(50 CHAR), 
	"CONN_DGRM_NAME" VARCHAR2(150 CHAR), 
	"CONN_TYPE" VARCHAR2(50 CHAR), 
	"CONN_TAG_NAME" VARCHAR2(50 CHAR), 
	"CONN_ORIGIN" VARCHAR2(50 CHAR), 
	 CONSTRAINT "CONN_PK" PRIMARY KEY ("CONN_ID")
  USING INDEX  ENABLE
   )
/

ALTER TABLE "FLOW_CONNECTIONS" ADD CONSTRAINT "CONN_OBJT_FK" FOREIGN KEY ("CONN_DGRM_NAME", "CONN_SOURCE_REF")
	  REFERENCES "FLOW_OBJECTS" ("OBJT_DGRM_NAME", "OBJT_ID") DEFERRABLE INITIALLY DEFERRED ENABLE
/

ALTER TABLE "FLOW_CONNECTIONS" ADD CONSTRAINT "CONN_OBJT_FK2" FOREIGN KEY ("CONN_DGRM_NAME", "CONN_TARGET_REF")
	  REFERENCES "FLOW_OBJECTS" ("OBJT_DGRM_NAME", "OBJT_ID") DEFERRABLE INITIALLY DEFERRED ENABLE
/

ALTER TABLE "FLOW_CONNECTIONS" ADD CONSTRAINT "CONN_DGRM_FK" FOREIGN KEY ("CONN_DGRM_NAME")
	  REFERENCES "FLOW_DIAGRAMS" ("DGRM_NAME") ON DELETE CASCADE ENABLE
/