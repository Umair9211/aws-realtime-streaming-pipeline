-- 1. Preview sensor records
SELECT *
FROM "hudi_demo_db"."hudi_demo_table"
LIMIT 10;


-- 2. Inspect Hudi record metadata
SELECT
    _hoodie_commit_seqno,
    _hoodie_record_key,
    column_to_update_string
FROM "hudi_demo_table";


-- 3. Inspect records after adding the new column
SELECT
    _hoodie_commit_seqno,
    _hoodie_record_key,
    column_to_update_string,
    new_column
FROM "hudi_demo_table";
