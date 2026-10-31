-- 002_branches_ops.sql: ربط الورديات والمبيعات بالفرع
-- شغّله بعد 001_base.sql
alter table shifts add column if not exists branch_id bigint references branches(id);
alter table sales add column if not exists branch_id bigint references branches(id);

-- المبيعات والورديات القديمة (قبل الفروع) مش هتتربط بفرع، وده طبيعي.
-- المنتجات والمخزون حالياً مشتركة بين الفروع (هنفصلها لاحقاً لو احتجت).
