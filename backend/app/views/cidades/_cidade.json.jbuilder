json.extract! cidade, :id, :nome
json.estado do
  json.extract! cidade.estado, :id, :nome, :sigla if cidade.estado
end
