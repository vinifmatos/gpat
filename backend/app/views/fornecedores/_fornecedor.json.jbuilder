json.extract! fornecedor, :id, :tipo, :documento, :razao_social, :nome_fantasia, :created_at, :updated_at
json.enderecos do
  json.array! fornecedor.enderecos do |endereco|
    json.extract! endereco, :id, :logradouro, :numero, :bairro, :complemento, :cep, :cidade_id, :principal, :created_at, :updated_at
    json.nome_cidade endereco.cidade.nome
    json.estado endereco.cidade.estado.sigla
  end
end
