json.extract! fornecedor, :id, :tipo, :documento, :razao_social, :nome_fantasia, :created_at, :updated_at
json.endereco do
  if fornecedor.endereco
    json.extract! fornecedor.endereco, :id, :logradouro, :numero, :bairro, :complemento, :cep, :cidade_id, :principal, :created_at, :updated_at
    json.nome_cidade fornecedor.endereco.cidade.nome
    json.estado fornecedor.endereco.cidade.estado.sigla
  end
end
