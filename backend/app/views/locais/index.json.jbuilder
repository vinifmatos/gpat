json.array! @locais do |local|
  json.extract! local, :id, :codigo, :descricao, :ativo, :created_at, :updated_at
end
