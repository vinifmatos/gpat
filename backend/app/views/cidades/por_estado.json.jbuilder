json.array! @estados do |estado|
  json.extract! estado, :id, :nome, :sigla
  json.cidades do
    json.array! estado.cidades do |cidade|
      json.extract! cidade, :id, :nome
    end
  end
end
