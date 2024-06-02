json.extract! grupo, :id, :codigo, :grupo_id, :descricao, :ativo, :created_at, :updated_at
if grupo.grupo_id
  json.pai do
    json.extract! grupo.pai, :id, :codigo, :descricao
  end
end
if grupo.grupo_id.nil?
  json.filhos do
    json.array! grupo.filhos do |filho|
      json.extract! filho, :id, :codigo, :grupo_id, :descricao, :ativo, :created_at, :updated_at
    end
  end
end
