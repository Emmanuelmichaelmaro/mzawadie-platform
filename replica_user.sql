-- Script being executed on DB init, creates read only user
-- for replicas purposes.
CREATE USER mzawadie_read_only WITH PASSWORD 'mzawadie';
GRANT CONNECT ON DATABASE mzawadie TO mzawadie_read_only;
GRANT USAGE ON SCHEMA public TO mzawadie_read_only;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO mzawadie_read_only;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO mzawadie_read_only;