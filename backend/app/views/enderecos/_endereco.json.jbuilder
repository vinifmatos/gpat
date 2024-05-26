json.extract! endereco, :id, :logradouro, :numero, :bairro, :complemento, :cep, :cidade_id, :local_id, :fornecedor_id, :principal, :created_at, :updated_at
json.nome_cidade endereco.cidade.nome
json.estado endereco.cidade.estado.sigla
