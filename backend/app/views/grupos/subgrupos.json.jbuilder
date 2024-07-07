json.array! @grupos do |grupo|
  json.extract! grupo, :id, :codigo, :descricao, :ativo, :created_at, :updated_at
  json.grupo do
    json.extract! grupo.grupo, :id, :codigo, :descricao
  end
end
