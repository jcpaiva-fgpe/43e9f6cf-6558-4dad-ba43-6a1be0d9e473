ALTER TABLE candidatura_mesa DROP CONSTRAINT candidatura_mesa_fk;

delete from candidaturas where escanyos = 0;
