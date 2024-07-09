json.array! @grupos do |subgrupo|
  json.extract! subgrupo, :id, :codigo, :descricao
  json.grupo do
    json.extract! subgrupo.grupo, :id, :codigo, :descricao
  end
end
