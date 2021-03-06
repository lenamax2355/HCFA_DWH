-- Index
DECLARE
    E_OBJECT_EXISTS        EXCEPTION;
    PRAGMA EXCEPTION_INIT  (E_OBJECT_EXISTS, -00955);
BEGIN
    EXECUTE IMMEDIATE '
        CREATE INDEX XIE1_HCFA_BILL_ITEM ON R_HCFA_BILL_ITEM
            (HCFA_TECH_START_DATE,
             HCFA_TECH_END_DATE)
            TABLESPACE PHOENIXINDEX';

    DBMS_OUTPUT.PUT_LINE ('[INFO]: Index XIE1_HCFA_BILL_ITEM was created');

EXCEPTION
    WHEN E_OBJECT_EXISTS
    THEN
        DBMS_OUTPUT.PUT_LINE ('[INFO]: Index XIE1_HCFA_BILL_ITEM already exists');
    WHEN OTHERS
    THEN
        DBMS_OUTPUT.PUT_LINE('[ERROR]: Error during creation of XIE1_HCFA_BILL_ITEM index:' || SQLERRM);
END;
/

-- Index
DECLARE
    E_OBJECT_EXISTS        EXCEPTION;
    PRAGMA EXCEPTION_INIT  (E_OBJECT_EXISTS, -00955);
BEGIN
    EXECUTE IMMEDIATE '
        CREATE INDEX XIE2_HCFA_BILL_ITEM ON R_HCFA_BILL_ITEM
            (HCFA_PROF_START_DATE,
             HCFA_PROF_END_DATE)
            TABLESPACE PHOENIXINDEX';

    DBMS_OUTPUT.PUT_LINE ('[INFO]: Index XIE2_HCFA_BILL_ITEM was created');

EXCEPTION
    WHEN E_OBJECT_EXISTS
    THEN
        DBMS_OUTPUT.PUT_LINE ('[INFO]: Index XIE2_HCFA_BILL_ITEM already exists');
    WHEN OTHERS
    THEN
        DBMS_OUTPUT.PUT_LINE('[ERROR]: Error during creation of XIE2_HCFA_BILL_ITEM index:' || SQLERRM);
END;
/
