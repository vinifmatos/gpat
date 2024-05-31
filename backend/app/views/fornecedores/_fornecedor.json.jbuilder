json.extract! fornecedor, :id, :tipo, :documento, :razao_social, :nome_fantasia, :created_at, :updated_at
json.enderecos do
  json.array! fornecedor.enderecos do |endereco|
    json.extract! endereco, :id, :logradouro, :numero, :bairro, :complemento, :cep, :cidade_id, :principal, :created_at, :updated_at
    json.cidade do
      json.partial! endereco.cidade, partial: 'cidades/cidade'
    end
  end
end
