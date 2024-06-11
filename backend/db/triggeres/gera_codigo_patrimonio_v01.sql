create trigger gera_codigo_patrimonio
before insert on patrimonios
for each row execute procedure gera_codigo_patrimonio_tg();
