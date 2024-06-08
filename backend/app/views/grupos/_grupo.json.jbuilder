json.extract! grupo, :id, :codigo, :grupo_id, :descricao, :ativo, :created_at, :updated_at
if grupo.grupo_id
  json.grupo do
    json.extract! grupo.grupo, :id, :codigo, :descricao
  end
end
if grupo.grupo_id.nil?
  json.subgrupos do
    json.array! grupo.subgrupos do |subgrupo|
      json.extract! subgrupo, :id, :codigo, :grupo_id, :descricao, :ativo, :created_at, :updated_at
    end
  end
end
