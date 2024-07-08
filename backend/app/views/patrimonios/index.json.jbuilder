json.array! @patrimonios do |patrimonio|
  json.extract! patrimonio, :id, :codigo, :descricao, :data_aquisicao, :data_incorporacao, :valor_aquisicao, :data_baixa, :situacao, :created_at, :updated_at
end
