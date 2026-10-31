-- 003_single_store.sql: المحل أونلاين (فرع واحد). بيشيل شرط الفرع للموظفين.
alter table profiles drop constraint if exists branch_required_for_staff;
