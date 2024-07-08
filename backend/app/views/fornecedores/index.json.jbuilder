json.array! @fornecedores do |fornecedor|
  json.extract! fornecedor, :id, :tipo, :documento, :razao_social, :nome_fantasia, :created_at, :updated_at
end
