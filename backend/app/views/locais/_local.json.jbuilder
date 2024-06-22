json.extract! local, :id, :local_id, :codigo, :descricao, :ativo, :created_at, :updated_at
if local.endereco
  json.endereco do
    json.partial! local.endereco, partial: 'enderecos/endereco'
  end
end
json.subordinados do
  json.array! local.subordinados do |subordinado|
    json.extract! subordinado, :id, :codigo, :descricao
  end
end
if local.subordinacao
  json.subordinacao do
    json.extract! local.subordinacao, :id, :codigo, :descricao
  end
end
