alter table municipios 
add check (censo >= vBlanco + vNulos + vCandidaturas);
