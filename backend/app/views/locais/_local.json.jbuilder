json.extract! local, :id, :local_id, :codigo, :descricao, :ativo, :created_at, :updated_at
json.endereco do
  if local.endereco
    json.extract! local.endereco, :id, :logradouro, :numero, :bairro, :complemento, :cep, :cidade_id, :principal, :created_at, :updated_at
    json.nome_cidade local.endereco.cidade.nome
    json.estado local.endereco.cidade.estado.sigla
  end
end
if subordinados && local.local_id.nil?
  json.subordinados do
    json.array! local.subordinados do |subordinado|
      json.extract! subordinado, :id, :codigo, :descricao, :ativo, :created_at, :updated_at
    end
  end
end
