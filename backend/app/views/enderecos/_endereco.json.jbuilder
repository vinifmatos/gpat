json.extract! endereco, :id, :logradouro, :numero, :bairro, :complemento, :cep, :cidade_id, :principal, :created_at, :updated_at
json.cidade do
  json.partial! endereco.cidade, partial: 'cidades/cidade'
end
