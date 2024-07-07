json.array! @grupos do |grupo|
  json.extract! grupo, :id, :codigo, :descricao, :ativo, :created_at, :updated_at
  json.subgrupos do
    json.array! grupo.subgrupos do |subgrupo|
      json.extract! subgrupo, :id, :codigo, :descricao, :ativo, :created_at, :updated_at
    end
  end
end
