json.extract! movimentacao, :id, :data, :local_id, :motivo, :created_at, :updated_at
json.local do
  json.codigo movimentacao.local.codigo
  json.descricao movimentacao.local.descricao
end
if patrimonios
  json.patrimonios do
    json.array! movimentacao.patrimonios do |patrimonio|
      json.extract! patrimonio, :id, :codigo, :descricao, :situacao
    end
  end
end
