json.array! movimentacoes do |movimentacao|
  json.extract! movimentacao, :id, :data, :motivo, :created_at, :updated_at
  json.local do
    json.codigo movimentacao.local.codigo
    json.descricao movimentacao.local.descricao
  end
end
