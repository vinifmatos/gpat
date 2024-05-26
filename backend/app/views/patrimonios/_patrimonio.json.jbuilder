json.extract! patrimonio, :id, :codigo, :descricao, :especificacao, :data_aquisicao, :data_incorporacao, :valor_aquisicao, :vida_util, :valor_residual, :data_desincorporacao, :situacao, :grupo_id, :numero_empenho, :ano_empnho, :numero_processo_compra, :ano_processo_compra, :fornecedor_id, :created_at, :updated_at
json.grupo do
  if patrimonio.grupo
    json.id patrimonio.grupo.id
    json.codigo patrimonio.grupo.codigo
    json.descricao patrimonio.grupo.descricao
  end
end
json.localizacao_atual patrimonio.respond_to?(:localizacao_atual) ? patrimonio.localizacao_atual : patrimonio.localizacoes.sort_by{ |l| l.data }.last.local.descricao
json.fornecedor do
  if patrimonio.fornecedor
    json.id patrimonio.fornecedor.id
    json.documento patrimonio.fornecedor.documento
    json.nome patrimonio.fornecedor.razao_social
  end
end
if localizacoes
  json.localizacoes do
    json.array! patrimonio.localizacoes do |localizacao|
      json.id localizacao.id
      json.data localizacao.data
      json.local do
        json.id localizacao.local.id
        json.codigo localizacao.local.codigo
        json.descricao localizacao.local.descricao
      end
    end
  end
end
