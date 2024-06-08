json.array! @grupos do |grupo|
  json.extract! grupo, :id, :codigo, :descricao
end
