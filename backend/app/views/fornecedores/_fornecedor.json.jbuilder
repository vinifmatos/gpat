json.extract! fornecedor, :id, :tipo, :documento, :razao_social, :nome_fantasia, :created_at, :updated_at
json.enderecos do
  json.array! fornecedor.enderecos do |endereco|
    json.partial! endereco, partial: 'enderecos/endereco'
  end
end
