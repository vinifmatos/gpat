json.extract! responsavel, :id, :cpf, :nome, :ativo, :created_at, :updated_at
if incluir_locais
  json.locais do
    json.array! responsavel.locais do |local|
      json.extract! local, :id, :codigo, :descricao
    end
  end
end
if incluir_patrimonios
  json.patrimonios do
    json.array! responsavel.patrimonios do |patrimonio|
      json.extract! patrimonio, :id, :codigo, :descricao
    end
  end
end
