create function gera_codigo_patrimonio_tg()
returns trigger language plpgsql as $$
begin
  if nullif(trim(new.codigo), '') is null then
    new.codigo = (select coalesce(max(regexp_replace(codigo, '\D', '', 'g')::int), 0) + 1 from patrimonios);
  end if;

  return new;
end $$;
