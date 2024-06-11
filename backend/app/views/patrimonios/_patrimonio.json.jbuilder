json.extract! patrimonio, :id, :codigo, :descricao, :especificacao, :data_aquisicao, :data_incorporacao, :valor_aquisicao, :vida_util, :valor_residual, :data_baixa, :situacao, :grupo_id, :numero_empenho, :ano_empenho, :numero_processo_compra, :ano_processo_compra, :fornecedor_id, :localizacao_atual, :created_at, :updated_at
json.grupo do
  if patrimonio.grupo
    json.id patrimonio.grupo.id
    json.codigo patrimonio.grupo.codigo
    json.descricao patrimonio.grupo.descricao
  end
end
json.fornecedor do
  if patrimonio.fornecedor
    json.id patrimonio.fornecedor.id
    json.documento patrimonio.fornecedor.documento
    json.razao_social patrimonio.fornecedor.razao_social
  end
end
