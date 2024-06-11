# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ['Action', 'Comedy', 'Drama', 'Horror'].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
estados = JSON.parse <<~JSON
[
  {
    "id": 11,
    "nome": "Rondônia",
    "sigla": "RO"
  },
  {
    "id": 12,
    "nome": "Acre",
    "sigla": "AC"
  },
  {
    "id": 13,
    "nome": "Amazonas",
    "sigla": "AM"
  },
  {
    "id": 14,
    "nome": "Roraima",
    "sigla": "RR"
  },
  {
    "id": 15,
    "nome": "Pará",
    "sigla": "PA"
  },
  {
    "id": 16,
    "nome": "Amapá",
    "sigla": "AP"
  },
  {
    "id": 17,
    "nome": "Tocantins",
    "sigla": "TO"
  },
  {
    "id": 21,
    "nome": "Maranhão",
    "sigla": "MA"
  },
  {
    "id": 22,
    "nome": "Piauí",
    "sigla": "PI"
  },
  {
    "id": 23,
    "nome": "Ceará",
    "sigla": "CE"
  },
  {
    "id": 24,
    "nome": "Rio Grande do Norte",
    "sigla": "RN"
  },
  {
    "id": 25,
    "nome": "Paraíba",
    "sigla": "PB"
  },
  {
    "id": 26,
    "nome": "Pernambuco",
    "sigla": "PE"
  },
  {
    "id": 27,
    "nome": "Alagoas",
    "sigla": "AL"
  },
  {
    "id": 28,
    "nome": "Sergipe",
    "sigla": "SE"
  },
  {
    "id": 29,
    "nome": "Bahia",
    "sigla": "BA"
  },
  {
    "id": 31,
    "nome": "Minas Gerais",
    "sigla": "MG"
  },
  {
    "id": 32,
    "nome": "Espírito Santo",
    "sigla": "ES"
  },
  {
    "id": 33,
    "nome": "Rio de Janeiro",
    "sigla": "RJ"
  },
  {
    "id": 35,
    "nome": "São Paulo",
    "sigla": "SP"
  },
  {
    "id": 41,
    "nome": "Paraná",
    "sigla": "PR"
  },
  {
    "id": 42,
    "nome": "Santa Catarina",
    "sigla": "SC"
  },
  {
    "id": 43,
    "nome": "Rio Grande do Sul",
    "sigla": "RS"
  },
  {
    "id": 50,
    "nome": "Mato Grosso do Sul",
    "sigla": "MS"
  },
  {
    "id": 51,
    "nome": "Mato Grosso",
    "sigla": "MT"
  },
  {
    "id": 52,
    "nome": "Goiás",
    "sigla": "GO"
  },
  {
    "id": 53,
    "nome": "Distrito Federal",
    "sigla": "DF"
  }
]
JSON

Estado.import(%w[id nome sigla], estados, on_duplicate_key_ignore: true)

cidades = JSON.parse <<~JSON
[
  {
    "id": 1100015,
    "nome": "Alta Floresta D'Oeste",
    "estado_id": 11
  },
  {
    "id": 1100023,
    "nome": "Ariquemes",
    "estado_id": 11
  },
  {
    "id": 1100031,
    "nome": "Cabixi",
    "estado_id": 11
  },
  {
    "id": 1100049,
    "nome": "Cacoal",
    "estado_id": 11
  },
  {
    "id": 1100056,
    "nome": "Cerejeiras",
    "estado_id": 11
  },
  {
    "id": 1100064,
    "nome": "Colorado do Oeste",
    "estado_id": 11
  },
  {
    "id": 1100072,
    "nome": "Corumbiara",
    "estado_id": 11
  },
  {
    "id": 1100080,
    "nome": "Costa Marques",
    "estado_id": 11
  },
  {
    "id": 1100098,
    "nome": "Espigão D'Oeste",
    "estado_id": 11
  },
  {
    "id": 1100106,
    "nome": "Guajará-Mirim",
    "estado_id": 11
  },
  {
    "id": 1100114,
    "nome": "Jaru",
    "estado_id": 11
  },
  {
    "id": 1100122,
    "nome": "Ji-Paraná",
    "estado_id": 11
  },
  {
    "id": 1100130,
    "nome": "Machadinho D'Oeste",
    "estado_id": 11
  },
  {
    "id": 1100148,
    "nome": "Nova Brasilândia D'Oeste",
    "estado_id": 11
  },
  {
    "id": 1100155,
    "nome": "Ouro Preto do Oeste",
    "estado_id": 11
  },
  {
    "id": 1100189,
    "nome": "Pimenta Bueno",
    "estado_id": 11
  },
  {
    "id": 1100205,
    "nome": "Porto Velho",
    "estado_id": 11
  },
  {
    "id": 1100254,
    "nome": "Presidente Médici",
    "estado_id": 11
  },
  {
    "id": 1100262,
    "nome": "Rio Crespo",
    "estado_id": 11
  },
  {
    "id": 1100288,
    "nome": "Rolim de Moura",
    "estado_id": 11
  },
  {
    "id": 1100296,
    "nome": "Santa Luzia D'Oeste",
    "estado_id": 11
  },
  {
    "id": 1100304,
    "nome": "Vilhena",
    "estado_id": 11
  },
  {
    "id": 1100320,
    "nome": "São Miguel do Guaporé",
    "estado_id": 11
  },
  {
    "id": 1100338,
    "nome": "Nova Mamoré",
    "estado_id": 11
  },
  {
    "id": 1100346,
    "nome": "Alvorada D'Oeste",
    "estado_id": 11
  },
  {
    "id": 1100379,
    "nome": "Alto Alegre dos Parecis",
    "estado_id": 11
  },
  {
    "id": 1100403,
    "nome": "Alto Paraíso",
    "estado_id": 11
  },
  {
    "id": 1100452,
    "nome": "Buritis",
    "estado_id": 11
  },
  {
    "id": 1100502,
    "nome": "Novo Horizonte do Oeste",
    "estado_id": 11
  },
  {
    "id": 1100601,
    "nome": "Cacaulândia",
    "estado_id": 11
  },
  {
    "id": 1100700,
    "nome": "Campo Novo de Rondônia",
    "estado_id": 11
  },
  {
    "id": 1100809,
    "nome": "Candeias do Jamari",
    "estado_id": 11
  },
  {
    "id": 1100908,
    "nome": "Castanheiras",
    "estado_id": 11
  },
  {
    "id": 1100924,
    "nome": "Chupinguaia",
    "estado_id": 11
  },
  {
    "id": 1100940,
    "nome": "Cujubim",
    "estado_id": 11
  },
  {
    "id": 1101005,
    "nome": "Governador Jorge Teixeira",
    "estado_id": 11
  },
  {
    "id": 1101104,
    "nome": "Itapuã do Oeste",
    "estado_id": 11
  },
  {
    "id": 1101203,
    "nome": "Ministro Andreazza",
    "estado_id": 11
  },
  {
    "id": 1101302,
    "nome": "Mirante da Serra",
    "estado_id": 11
  },
  {
    "id": 1101401,
    "nome": "Monte Negro",
    "estado_id": 11
  },
  {
    "id": 1101435,
    "nome": "Nova União",
    "estado_id": 11
  },
  {
    "id": 1101450,
    "nome": "Parecis",
    "estado_id": 11
  },
  {
    "id": 1101468,
    "nome": "Pimenteiras do Oeste",
    "estado_id": 11
  },
  {
    "id": 1101476,
    "nome": "Primavera de Rondônia",
    "estado_id": 11
  },
  {
    "id": 1101484,
    "nome": "São Felipe D'Oeste",
    "estado_id": 11
  },
  {
    "id": 1101492,
    "nome": "São Francisco do Guaporé",
    "estado_id": 11
  },
  {
    "id": 1101500,
    "nome": "Seringueiras",
    "estado_id": 11
  },
  {
    "id": 1101559,
    "nome": "Teixeirópolis",
    "estado_id": 11
  },
  {
    "id": 1101609,
    "nome": "Theobroma",
    "estado_id": 11
  },
  {
    "id": 1101708,
    "nome": "Urupá",
    "estado_id": 11
  },
  {
    "id": 1101757,
    "nome": "Vale do Anari",
    "estado_id": 11
  },
  {
    "id": 1101807,
    "nome": "Vale do Paraíso",
    "estado_id": 11
  },
  {
    "id": 1200013,
    "nome": "Acrelândia",
    "estado_id": 12
  },
  {
    "id": 1200054,
    "nome": "Assis Brasil",
    "estado_id": 12
  },
  {
    "id": 1200104,
    "nome": "Brasiléia",
    "estado_id": 12
  },
  {
    "id": 1200138,
    "nome": "Bujari",
    "estado_id": 12
  },
  {
    "id": 1200179,
    "nome": "Capixaba",
    "estado_id": 12
  },
  {
    "id": 1200203,
    "nome": "Cruzeiro do Sul",
    "estado_id": 12
  },
  {
    "id": 1200252,
    "nome": "Epitaciolândia",
    "estado_id": 12
  },
  {
    "id": 1200302,
    "nome": "Feijó",
    "estado_id": 12
  },
  {
    "id": 1200328,
    "nome": "Jordão",
    "estado_id": 12
  },
  {
    "id": 1200336,
    "nome": "Mâncio Lima",
    "estado_id": 12
  },
  {
    "id": 1200344,
    "nome": "Manoel Urbano",
    "estado_id": 12
  },
  {
    "id": 1200351,
    "nome": "Marechal Thaumaturgo",
    "estado_id": 12
  },
  {
    "id": 1200385,
    "nome": "Plácido de Castro",
    "estado_id": 12
  },
  {
    "id": 1200393,
    "nome": "Porto Walter",
    "estado_id": 12
  },
  {
    "id": 1200401,
    "nome": "Rio Branco",
    "estado_id": 12
  },
  {
    "id": 1200427,
    "nome": "Rodrigues Alves",
    "estado_id": 12
  },
  {
    "id": 1200435,
    "nome": "Santa Rosa do Purus",
    "estado_id": 12
  },
  {
    "id": 1200450,
    "nome": "Senador Guiomard",
    "estado_id": 12
  },
  {
    "id": 1200500,
    "nome": "Sena Madureira",
    "estado_id": 12
  },
  {
    "id": 1200609,
    "nome": "Tarauacá",
    "estado_id": 12
  },
  {
    "id": 1200708,
    "nome": "Xapuri",
    "estado_id": 12
  },
  {
    "id": 1200807,
    "nome": "Porto Acre",
    "estado_id": 12
  },
  {
    "id": 1300029,
    "nome": "Alvarães",
    "estado_id": 13
  },
  {
    "id": 1300060,
    "nome": "Amaturá",
    "estado_id": 13
  },
  {
    "id": 1300086,
    "nome": "Anamã",
    "estado_id": 13
  },
  {
    "id": 1300102,
    "nome": "Anori",
    "estado_id": 13
  },
  {
    "id": 1300144,
    "nome": "Apuí",
    "estado_id": 13
  },
  {
    "id": 1300201,
    "nome": "Atalaia do Norte",
    "estado_id": 13
  },
  {
    "id": 1300300,
    "nome": "Autazes",
    "estado_id": 13
  },
  {
    "id": 1300409,
    "nome": "Barcelos",
    "estado_id": 13
  },
  {
    "id": 1300508,
    "nome": "Barreirinha",
    "estado_id": 13
  },
  {
    "id": 1300607,
    "nome": "Benjamin Constant",
    "estado_id": 13
  },
  {
    "id": 1300631,
    "nome": "Beruri",
    "estado_id": 13
  },
  {
    "id": 1300680,
    "nome": "Boa Vista do Ramos",
    "estado_id": 13
  },
  {
    "id": 1300706,
    "nome": "Boca do Acre",
    "estado_id": 13
  },
  {
    "id": 1300805,
    "nome": "Borba",
    "estado_id": 13
  },
  {
    "id": 1300839,
    "nome": "Caapiranga",
    "estado_id": 13
  },
  {
    "id": 1300904,
    "nome": "Canutama",
    "estado_id": 13
  },
  {
    "id": 1301001,
    "nome": "Carauari",
    "estado_id": 13
  },
  {
    "id": 1301100,
    "nome": "Careiro",
    "estado_id": 13
  },
  {
    "id": 1301159,
    "nome": "Careiro da Várzea",
    "estado_id": 13
  },
  {
    "id": 1301209,
    "nome": "Coari",
    "estado_id": 13
  },
  {
    "id": 1301308,
    "nome": "Codajás",
    "estado_id": 13
  },
  {
    "id": 1301407,
    "nome": "Eirunepé",
    "estado_id": 13
  },
  {
    "id": 1301506,
    "nome": "Envira",
    "estado_id": 13
  },
  {
    "id": 1301605,
    "nome": "Fonte Boa",
    "estado_id": 13
  },
  {
    "id": 1301654,
    "nome": "Guajará",
    "estado_id": 13
  },
  {
    "id": 1301704,
    "nome": "Humaitá",
    "estado_id": 13
  },
  {
    "id": 1301803,
    "nome": "Ipixuna",
    "estado_id": 13
  },
  {
    "id": 1301852,
    "nome": "Iranduba",
    "estado_id": 13
  },
  {
    "id": 1301902,
    "nome": "Itacoatiara",
    "estado_id": 13
  },
  {
    "id": 1301951,
    "nome": "Itamarati",
    "estado_id": 13
  },
  {
    "id": 1302009,
    "nome": "Itapiranga",
    "estado_id": 13
  },
  {
    "id": 1302108,
    "nome": "Japurá",
    "estado_id": 13
  },
  {
    "id": 1302207,
    "nome": "Juruá",
    "estado_id": 13
  },
  {
    "id": 1302306,
    "nome": "Jutaí",
    "estado_id": 13
  },
  {
    "id": 1302405,
    "nome": "Lábrea",
    "estado_id": 13
  },
  {
    "id": 1302504,
    "nome": "Manacapuru",
    "estado_id": 13
  },
  {
    "id": 1302553,
    "nome": "Manaquiri",
    "estado_id": 13
  },
  {
    "id": 1302603,
    "nome": "Manaus",
    "estado_id": 13
  },
  {
    "id": 1302702,
    "nome": "Manicoré",
    "estado_id": 13
  },
  {
    "id": 1302801,
    "nome": "Maraã",
    "estado_id": 13
  },
  {
    "id": 1302900,
    "nome": "Maués",
    "estado_id": 13
  },
  {
    "id": 1303007,
    "nome": "Nhamundá",
    "estado_id": 13
  },
  {
    "id": 1303106,
    "nome": "Nova Olinda do Norte",
    "estado_id": 13
  },
  {
    "id": 1303205,
    "nome": "Novo Airão",
    "estado_id": 13
  },
  {
    "id": 1303304,
    "nome": "Novo Aripuanã",
    "estado_id": 13
  },
  {
    "id": 1303403,
    "nome": "Parintins",
    "estado_id": 13
  },
  {
    "id": 1303502,
    "nome": "Pauini",
    "estado_id": 13
  },
  {
    "id": 1303536,
    "nome": "Presidente Figueiredo",
    "estado_id": 13
  },
  {
    "id": 1303569,
    "nome": "Rio Preto da Eva",
    "estado_id": 13
  },
  {
    "id": 1303601,
    "nome": "Santa Isabel do Rio Negro",
    "estado_id": 13
  },
  {
    "id": 1303700,
    "nome": "Santo Antônio do Içá",
    "estado_id": 13
  },
  {
    "id": 1303809,
    "nome": "São Gabriel da Cachoeira",
    "estado_id": 13
  },
  {
    "id": 1303908,
    "nome": "São Paulo de Olivença",
    "estado_id": 13
  },
  {
    "id": 1303957,
    "nome": "São Sebastião do Uatumã",
    "estado_id": 13
  },
  {
    "id": 1304005,
    "nome": "Silves",
    "estado_id": 13
  },
  {
    "id": 1304062,
    "nome": "Tabatinga",
    "estado_id": 13
  },
  {
    "id": 1304104,
    "nome": "Tapauá",
    "estado_id": 13
  },
  {
    "id": 1304203,
    "nome": "Tefé",
    "estado_id": 13
  },
  {
    "id": 1304237,
    "nome": "Tonantins",
    "estado_id": 13
  },
  {
    "id": 1304260,
    "nome": "Uarini",
    "estado_id": 13
  },
  {
    "id": 1304302,
    "nome": "Urucará",
    "estado_id": 13
  },
  {
    "id": 1304401,
    "nome": "Urucurituba",
    "estado_id": 13
  },
  {
    "id": 1400027,
    "nome": "Amajari",
    "estado_id": 14
  },
  {
    "id": 1400050,
    "nome": "Alto Alegre",
    "estado_id": 14
  },
  {
    "id": 1400100,
    "nome": "Boa Vista",
    "estado_id": 14
  },
  {
    "id": 1400159,
    "nome": "Bonfim",
    "estado_id": 14
  },
  {
    "id": 1400175,
    "nome": "Cantá",
    "estado_id": 14
  },
  {
    "id": 1400209,
    "nome": "Caracaraí",
    "estado_id": 14
  },
  {
    "id": 1400233,
    "nome": "Caroebe",
    "estado_id": 14
  },
  {
    "id": 1400282,
    "nome": "Iracema",
    "estado_id": 14
  },
  {
    "id": 1400308,
    "nome": "Mucajaí",
    "estado_id": 14
  },
  {
    "id": 1400407,
    "nome": "Normandia",
    "estado_id": 14
  },
  {
    "id": 1400456,
    "nome": "Pacaraima",
    "estado_id": 14
  },
  {
    "id": 1400472,
    "nome": "Rorainópolis",
    "estado_id": 14
  },
  {
    "id": 1400506,
    "nome": "São João da Baliza",
    "estado_id": 14
  },
  {
    "id": 1400605,
    "nome": "São Luiz",
    "estado_id": 14
  },
  {
    "id": 1400704,
    "nome": "Uiramutã",
    "estado_id": 14
  },
  {
    "id": 1500107,
    "nome": "Abaetetuba",
    "estado_id": 15
  },
  {
    "id": 1500131,
    "nome": "Abel Figueiredo",
    "estado_id": 15
  },
  {
    "id": 1500206,
    "nome": "Acará",
    "estado_id": 15
  },
  {
    "id": 1500305,
    "nome": "Afuá",
    "estado_id": 15
  },
  {
    "id": 1500347,
    "nome": "Água Azul do Norte",
    "estado_id": 15
  },
  {
    "id": 1500404,
    "nome": "Alenquer",
    "estado_id": 15
  },
  {
    "id": 1500503,
    "nome": "Almeirim",
    "estado_id": 15
  },
  {
    "id": 1500602,
    "nome": "Altamira",
    "estado_id": 15
  },
  {
    "id": 1500701,
    "nome": "Anajás",
    "estado_id": 15
  },
  {
    "id": 1500800,
    "nome": "Ananindeua",
    "estado_id": 15
  },
  {
    "id": 1500859,
    "nome": "Anapu",
    "estado_id": 15
  },
  {
    "id": 1500909,
    "nome": "Augusto Corrêa",
    "estado_id": 15
  },
  {
    "id": 1500958,
    "nome": "Aurora do Pará",
    "estado_id": 15
  },
  {
    "id": 1501006,
    "nome": "Aveiro",
    "estado_id": 15
  },
  {
    "id": 1501105,
    "nome": "Bagre",
    "estado_id": 15
  },
  {
    "id": 1501204,
    "nome": "Baião",
    "estado_id": 15
  },
  {
    "id": 1501253,
    "nome": "Bannach",
    "estado_id": 15
  },
  {
    "id": 1501303,
    "nome": "Barcarena",
    "estado_id": 15
  },
  {
    "id": 1501402,
    "nome": "Belém",
    "estado_id": 15
  },
  {
    "id": 1501451,
    "nome": "Belterra",
    "estado_id": 15
  },
  {
    "id": 1501501,
    "nome": "Benevides",
    "estado_id": 15
  },
  {
    "id": 1501576,
    "nome": "Bom Jesus do Tocantins",
    "estado_id": 15
  },
  {
    "id": 1501600,
    "nome": "Bonito",
    "estado_id": 15
  },
  {
    "id": 1501709,
    "nome": "Bragança",
    "estado_id": 15
  },
  {
    "id": 1501725,
    "nome": "Brasil Novo",
    "estado_id": 15
  },
  {
    "id": 1501758,
    "nome": "Brejo Grande do Araguaia",
    "estado_id": 15
  },
  {
    "id": 1501782,
    "nome": "Breu Branco",
    "estado_id": 15
  },
  {
    "id": 1501808,
    "nome": "Breves",
    "estado_id": 15
  },
  {
    "id": 1501907,
    "nome": "Bujaru",
    "estado_id": 15
  },
  {
    "id": 1501956,
    "nome": "Cachoeira do Piriá",
    "estado_id": 15
  },
  {
    "id": 1502004,
    "nome": "Cachoeira do Arari",
    "estado_id": 15
  },
  {
    "id": 1502103,
    "nome": "Cametá",
    "estado_id": 15
  },
  {
    "id": 1502152,
    "nome": "Canaã dos Carajás",
    "estado_id": 15
  },
  {
    "id": 1502202,
    "nome": "Capanema",
    "estado_id": 15
  },
  {
    "id": 1502301,
    "nome": "Capitão Poço",
    "estado_id": 15
  },
  {
    "id": 1502400,
    "nome": "Castanhal",
    "estado_id": 15
  },
  {
    "id": 1502509,
    "nome": "Chaves",
    "estado_id": 15
  },
  {
    "id": 1502608,
    "nome": "Colares",
    "estado_id": 15
  },
  {
    "id": 1502707,
    "nome": "Conceição do Araguaia",
    "estado_id": 15
  },
  {
    "id": 1502756,
    "nome": "Concórdia do Pará",
    "estado_id": 15
  },
  {
    "id": 1502764,
    "nome": "Cumaru do Norte",
    "estado_id": 15
  },
  {
    "id": 1502772,
    "nome": "Curionópolis",
    "estado_id": 15
  },
  {
    "id": 1502806,
    "nome": "Curralinho",
    "estado_id": 15
  },
  {
    "id": 1502855,
    "nome": "Curuá",
    "estado_id": 15
  },
  {
    "id": 1502905,
    "nome": "Curuçá",
    "estado_id": 15
  },
  {
    "id": 1502939,
    "nome": "Dom Eliseu",
    "estado_id": 15
  },
  {
    "id": 1502954,
    "nome": "Eldorado do Carajás",
    "estado_id": 15
  },
  {
    "id": 1503002,
    "nome": "Faro",
    "estado_id": 15
  },
  {
    "id": 1503044,
    "nome": "Floresta do Araguaia",
    "estado_id": 15
  },
  {
    "id": 1503077,
    "nome": "Garrafão do Norte",
    "estado_id": 15
  },
  {
    "id": 1503093,
    "nome": "Goianésia do Pará",
    "estado_id": 15
  },
  {
    "id": 1503101,
    "nome": "Gurupá",
    "estado_id": 15
  },
  {
    "id": 1503200,
    "nome": "Igarapé-Açu",
    "estado_id": 15
  },
  {
    "id": 1503309,
    "nome": "Igarapé-Miri",
    "estado_id": 15
  },
  {
    "id": 1503408,
    "nome": "Inhangapi",
    "estado_id": 15
  },
  {
    "id": 1503457,
    "nome": "Ipixuna do Pará",
    "estado_id": 15
  },
  {
    "id": 1503507,
    "nome": "Irituia",
    "estado_id": 15
  },
  {
    "id": 1503606,
    "nome": "Itaituba",
    "estado_id": 15
  },
  {
    "id": 1503705,
    "nome": "Itupiranga",
    "estado_id": 15
  },
  {
    "id": 1503754,
    "nome": "Jacareacanga",
    "estado_id": 15
  },
  {
    "id": 1503804,
    "nome": "Jacundá",
    "estado_id": 15
  },
  {
    "id": 1503903,
    "nome": "Juruti",
    "estado_id": 15
  },
  {
    "id": 1504000,
    "nome": "Limoeiro do Ajuru",
    "estado_id": 15
  },
  {
    "id": 1504059,
    "nome": "Mãe do Rio",
    "estado_id": 15
  },
  {
    "id": 1504109,
    "nome": "Magalhães Barata",
    "estado_id": 15
  },
  {
    "id": 1504208,
    "nome": "Marabá",
    "estado_id": 15
  },
  {
    "id": 1504307,
    "nome": "Maracanã",
    "estado_id": 15
  },
  {
    "id": 1504406,
    "nome": "Marapanim",
    "estado_id": 15
  },
  {
    "id": 1504422,
    "nome": "Marituba",
    "estado_id": 15
  },
  {
    "id": 1504455,
    "nome": "Medicilândia",
    "estado_id": 15
  },
  {
    "id": 1504505,
    "nome": "Melgaço",
    "estado_id": 15
  },
  {
    "id": 1504604,
    "nome": "Mocajuba",
    "estado_id": 15
  },
  {
    "id": 1504703,
    "nome": "Moju",
    "estado_id": 15
  },
  {
    "id": 1504752,
    "nome": "Mojuí dos Campos",
    "estado_id": 15
  },
  {
    "id": 1504802,
    "nome": "Monte Alegre",
    "estado_id": 15
  },
  {
    "id": 1504901,
    "nome": "Muaná",
    "estado_id": 15
  },
  {
    "id": 1504950,
    "nome": "Nova Esperança do Piriá",
    "estado_id": 15
  },
  {
    "id": 1504976,
    "nome": "Nova Ipixuna",
    "estado_id": 15
  },
  {
    "id": 1505007,
    "nome": "Nova Timboteua",
    "estado_id": 15
  },
  {
    "id": 1505031,
    "nome": "Novo Progresso",
    "estado_id": 15
  },
  {
    "id": 1505064,
    "nome": "Novo Repartimento",
    "estado_id": 15
  },
  {
    "id": 1505106,
    "nome": "Óbidos",
    "estado_id": 15
  },
  {
    "id": 1505205,
    "nome": "Oeiras do Pará",
    "estado_id": 15
  },
  {
    "id": 1505304,
    "nome": "Oriximiná",
    "estado_id": 15
  },
  {
    "id": 1505403,
    "nome": "Ourém",
    "estado_id": 15
  },
  {
    "id": 1505437,
    "nome": "Ourilândia do Norte",
    "estado_id": 15
  },
  {
    "id": 1505486,
    "nome": "Pacajá",
    "estado_id": 15
  },
  {
    "id": 1505494,
    "nome": "Palestina do Pará",
    "estado_id": 15
  },
  {
    "id": 1505502,
    "nome": "Paragominas",
    "estado_id": 15
  },
  {
    "id": 1505536,
    "nome": "Parauapebas",
    "estado_id": 15
  },
  {
    "id": 1505551,
    "nome": "Pau D'Arco",
    "estado_id": 15
  },
  {
    "id": 1505601,
    "nome": "Peixe-Boi",
    "estado_id": 15
  },
  {
    "id": 1505635,
    "nome": "Piçarra",
    "estado_id": 15
  },
  {
    "id": 1505650,
    "nome": "Placas",
    "estado_id": 15
  },
  {
    "id": 1505700,
    "nome": "Ponta de Pedras",
    "estado_id": 15
  },
  {
    "id": 1505809,
    "nome": "Portel",
    "estado_id": 15
  },
  {
    "id": 1505908,
    "nome": "Porto de Moz",
    "estado_id": 15
  },
  {
    "id": 1506005,
    "nome": "Prainha",
    "estado_id": 15
  },
  {
    "id": 1506104,
    "nome": "Primavera",
    "estado_id": 15
  },
  {
    "id": 1506112,
    "nome": "Quatipuru",
    "estado_id": 15
  },
  {
    "id": 1506138,
    "nome": "Redenção",
    "estado_id": 15
  },
  {
    "id": 1506161,
    "nome": "Rio Maria",
    "estado_id": 15
  },
  {
    "id": 1506187,
    "nome": "Rondon do Pará",
    "estado_id": 15
  },
  {
    "id": 1506195,
    "nome": "Rurópolis",
    "estado_id": 15
  },
  {
    "id": 1506203,
    "nome": "Salinópolis",
    "estado_id": 15
  },
  {
    "id": 1506302,
    "nome": "Salvaterra",
    "estado_id": 15
  },
  {
    "id": 1506351,
    "nome": "Santa Bárbara do Pará",
    "estado_id": 15
  },
  {
    "id": 1506401,
    "nome": "Santa Cruz do Arari",
    "estado_id": 15
  },
  {
    "id": 1506500,
    "nome": "Santa Izabel do Pará",
    "estado_id": 15
  },
  {
    "id": 1506559,
    "nome": "Santa Luzia do Pará",
    "estado_id": 15
  },
  {
    "id": 1506583,
    "nome": "Santa Maria das Barreiras",
    "estado_id": 15
  },
  {
    "id": 1506609,
    "nome": "Santa Maria do Pará",
    "estado_id": 15
  },
  {
    "id": 1506708,
    "nome": "Santana do Araguaia",
    "estado_id": 15
  },
  {
    "id": 1506807,
    "nome": "Santarém",
    "estado_id": 15
  },
  {
    "id": 1506906,
    "nome": "Santarém Novo",
    "estado_id": 15
  },
  {
    "id": 1507003,
    "nome": "Santo Antônio do Tauá",
    "estado_id": 15
  },
  {
    "id": 1507102,
    "nome": "São Caetano de Odivelas",
    "estado_id": 15
  },
  {
    "id": 1507151,
    "nome": "São Domingos do Araguaia",
    "estado_id": 15
  },
  {
    "id": 1507201,
    "nome": "São Domingos do Capim",
    "estado_id": 15
  },
  {
    "id": 1507300,
    "nome": "São Félix do Xingu",
    "estado_id": 15
  },
  {
    "id": 1507409,
    "nome": "São Francisco do Pará",
    "estado_id": 15
  },
  {
    "id": 1507458,
    "nome": "São Geraldo do Araguaia",
    "estado_id": 15
  },
  {
    "id": 1507466,
    "nome": "São João da Ponta",
    "estado_id": 15
  },
  {
    "id": 1507474,
    "nome": "São João de Pirabas",
    "estado_id": 15
  },
  {
    "id": 1507508,
    "nome": "São João do Araguaia",
    "estado_id": 15
  },
  {
    "id": 1507607,
    "nome": "São Miguel do Guamá",
    "estado_id": 15
  },
  {
    "id": 1507706,
    "nome": "São Sebastião da Boa Vista",
    "estado_id": 15
  },
  {
    "id": 1507755,
    "nome": "Sapucaia",
    "estado_id": 15
  },
  {
    "id": 1507805,
    "nome": "Senador José Porfírio",
    "estado_id": 15
  },
  {
    "id": 1507904,
    "nome": "Soure",
    "estado_id": 15
  },
  {
    "id": 1507953,
    "nome": "Tailândia",
    "estado_id": 15
  },
  {
    "id": 1507961,
    "nome": "Terra Alta",
    "estado_id": 15
  },
  {
    "id": 1507979,
    "nome": "Terra Santa",
    "estado_id": 15
  },
  {
    "id": 1508001,
    "nome": "Tomé-Açu",
    "estado_id": 15
  },
  {
    "id": 1508035,
    "nome": "Tracuateua",
    "estado_id": 15
  },
  {
    "id": 1508050,
    "nome": "Trairão",
    "estado_id": 15
  },
  {
    "id": 1508084,
    "nome": "Tucumã",
    "estado_id": 15
  },
  {
    "id": 1508100,
    "nome": "Tucuruí",
    "estado_id": 15
  },
  {
    "id": 1508126,
    "nome": "Ulianópolis",
    "estado_id": 15
  },
  {
    "id": 1508159,
    "nome": "Uruará",
    "estado_id": 15
  },
  {
    "id": 1508209,
    "nome": "Vigia",
    "estado_id": 15
  },
  {
    "id": 1508308,
    "nome": "Viseu",
    "estado_id": 15
  },
  {
    "id": 1508357,
    "nome": "Vitória do Xingu",
    "estado_id": 15
  },
  {
    "id": 1508407,
    "nome": "Xinguara",
    "estado_id": 15
  },
  {
    "id": 1600055,
    "nome": "Serra do Navio",
    "estado_id": 16
  },
  {
    "id": 1600105,
    "nome": "Amapá",
    "estado_id": 16
  },
  {
    "id": 1600154,
    "nome": "Pedra Branca do Amapari",
    "estado_id": 16
  },
  {
    "id": 1600204,
    "nome": "Calçoene",
    "estado_id": 16
  },
  {
    "id": 1600212,
    "nome": "Cutias",
    "estado_id": 16
  },
  {
    "id": 1600238,
    "nome": "Ferreira Gomes",
    "estado_id": 16
  },
  {
    "id": 1600253,
    "nome": "Itaubal",
    "estado_id": 16
  },
  {
    "id": 1600279,
    "nome": "Laranjal do Jari",
    "estado_id": 16
  },
  {
    "id": 1600303,
    "nome": "Macapá",
    "estado_id": 16
  },
  {
    "id": 1600402,
    "nome": "Mazagão",
    "estado_id": 16
  },
  {
    "id": 1600501,
    "nome": "Oiapoque",
    "estado_id": 16
  },
  {
    "id": 1600535,
    "nome": "Porto Grande",
    "estado_id": 16
  },
  {
    "id": 1600550,
    "nome": "Pracuúba",
    "estado_id": 16
  },
  {
    "id": 1600600,
    "nome": "Santana",
    "estado_id": 16
  },
  {
    "id": 1600709,
    "nome": "Tartarugalzinho",
    "estado_id": 16
  },
  {
    "id": 1600808,
    "nome": "Vitória do Jari",
    "estado_id": 16
  },
  {
    "id": 1700251,
    "nome": "Abreulândia",
    "estado_id": 17
  },
  {
    "id": 1700301,
    "nome": "Aguiarnópolis",
    "estado_id": 17
  },
  {
    "id": 1700350,
    "nome": "Aliança do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1700400,
    "nome": "Almas",
    "estado_id": 17
  },
  {
    "id": 1700707,
    "nome": "Alvorada",
    "estado_id": 17
  },
  {
    "id": 1701002,
    "nome": "Ananás",
    "estado_id": 17
  },
  {
    "id": 1701051,
    "nome": "Angico",
    "estado_id": 17
  },
  {
    "id": 1701101,
    "nome": "Aparecida do Rio Negro",
    "estado_id": 17
  },
  {
    "id": 1701309,
    "nome": "Aragominas",
    "estado_id": 17
  },
  {
    "id": 1701903,
    "nome": "Araguacema",
    "estado_id": 17
  },
  {
    "id": 1702000,
    "nome": "Araguaçu",
    "estado_id": 17
  },
  {
    "id": 1702109,
    "nome": "Araguaína",
    "estado_id": 17
  },
  {
    "id": 1702158,
    "nome": "Araguanã",
    "estado_id": 17
  },
  {
    "id": 1702208,
    "nome": "Araguatins",
    "estado_id": 17
  },
  {
    "id": 1702307,
    "nome": "Arapoema",
    "estado_id": 17
  },
  {
    "id": 1702406,
    "nome": "Arraias",
    "estado_id": 17
  },
  {
    "id": 1702554,
    "nome": "Augustinópolis",
    "estado_id": 17
  },
  {
    "id": 1702703,
    "nome": "Aurora do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1702901,
    "nome": "Axixá do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1703008,
    "nome": "Babaçulândia",
    "estado_id": 17
  },
  {
    "id": 1703057,
    "nome": "Bandeirantes do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1703073,
    "nome": "Barra do Ouro",
    "estado_id": 17
  },
  {
    "id": 1703107,
    "nome": "Barrolândia",
    "estado_id": 17
  },
  {
    "id": 1703206,
    "nome": "Bernardo Sayão",
    "estado_id": 17
  },
  {
    "id": 1703305,
    "nome": "Bom Jesus do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1703602,
    "nome": "Brasilândia do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1703701,
    "nome": "Brejinho de Nazaré",
    "estado_id": 17
  },
  {
    "id": 1703800,
    "nome": "Buriti do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1703826,
    "nome": "Cachoeirinha",
    "estado_id": 17
  },
  {
    "id": 1703842,
    "nome": "Campos Lindos",
    "estado_id": 17
  },
  {
    "id": 1703867,
    "nome": "Cariri do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1703883,
    "nome": "Carmolândia",
    "estado_id": 17
  },
  {
    "id": 1703891,
    "nome": "Carrasco Bonito",
    "estado_id": 17
  },
  {
    "id": 1703909,
    "nome": "Caseara",
    "estado_id": 17
  },
  {
    "id": 1704105,
    "nome": "Centenário",
    "estado_id": 17
  },
  {
    "id": 1704600,
    "nome": "Chapada de Areia",
    "estado_id": 17
  },
  {
    "id": 1705102,
    "nome": "Chapada da Natividade",
    "estado_id": 17
  },
  {
    "id": 1705508,
    "nome": "Colinas do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1705557,
    "nome": "Combinado",
    "estado_id": 17
  },
  {
    "id": 1705607,
    "nome": "Conceição do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1706001,
    "nome": "Couto Magalhães",
    "estado_id": 17
  },
  {
    "id": 1706100,
    "nome": "Cristalândia",
    "estado_id": 17
  },
  {
    "id": 1706258,
    "nome": "Crixás do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1706506,
    "nome": "Darcinópolis",
    "estado_id": 17
  },
  {
    "id": 1707009,
    "nome": "Dianópolis",
    "estado_id": 17
  },
  {
    "id": 1707108,
    "nome": "Divinópolis do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1707207,
    "nome": "Dois Irmãos do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1707306,
    "nome": "Dueré",
    "estado_id": 17
  },
  {
    "id": 1707405,
    "nome": "Esperantina",
    "estado_id": 17
  },
  {
    "id": 1707553,
    "nome": "Fátima",
    "estado_id": 17
  },
  {
    "id": 1707652,
    "nome": "Figueirópolis",
    "estado_id": 17
  },
  {
    "id": 1707702,
    "nome": "Filadélfia",
    "estado_id": 17
  },
  {
    "id": 1708205,
    "nome": "Formoso do Araguaia",
    "estado_id": 17
  },
  {
    "id": 1708254,
    "nome": "Tabocão",
    "estado_id": 17
  },
  {
    "id": 1708304,
    "nome": "Goianorte",
    "estado_id": 17
  },
  {
    "id": 1709005,
    "nome": "Goiatins",
    "estado_id": 17
  },
  {
    "id": 1709302,
    "nome": "Guaraí",
    "estado_id": 17
  },
  {
    "id": 1709500,
    "nome": "Gurupi",
    "estado_id": 17
  },
  {
    "id": 1709807,
    "nome": "Ipueiras",
    "estado_id": 17
  },
  {
    "id": 1710508,
    "nome": "Itacajá",
    "estado_id": 17
  },
  {
    "id": 1710706,
    "nome": "Itaguatins",
    "estado_id": 17
  },
  {
    "id": 1710904,
    "nome": "Itapiratins",
    "estado_id": 17
  },
  {
    "id": 1711100,
    "nome": "Itaporã do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1711506,
    "nome": "Jaú do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1711803,
    "nome": "Juarina",
    "estado_id": 17
  },
  {
    "id": 1711902,
    "nome": "Lagoa da Confusão",
    "estado_id": 17
  },
  {
    "id": 1711951,
    "nome": "Lagoa do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1712009,
    "nome": "Lajeado",
    "estado_id": 17
  },
  {
    "id": 1712157,
    "nome": "Lavandeira",
    "estado_id": 17
  },
  {
    "id": 1712405,
    "nome": "Lizarda",
    "estado_id": 17
  },
  {
    "id": 1712454,
    "nome": "Luzinópolis",
    "estado_id": 17
  },
  {
    "id": 1712504,
    "nome": "Marianópolis do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1712702,
    "nome": "Mateiros",
    "estado_id": 17
  },
  {
    "id": 1712801,
    "nome": "Maurilândia do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1713205,
    "nome": "Miracema do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1713304,
    "nome": "Miranorte",
    "estado_id": 17
  },
  {
    "id": 1713601,
    "nome": "Monte do Carmo",
    "estado_id": 17
  },
  {
    "id": 1713700,
    "nome": "Monte Santo do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1713809,
    "nome": "Palmeiras do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1713957,
    "nome": "Muricilândia",
    "estado_id": 17
  },
  {
    "id": 1714203,
    "nome": "Natividade",
    "estado_id": 17
  },
  {
    "id": 1714302,
    "nome": "Nazaré",
    "estado_id": 17
  },
  {
    "id": 1714880,
    "nome": "Nova Olinda",
    "estado_id": 17
  },
  {
    "id": 1715002,
    "nome": "Nova Rosalândia",
    "estado_id": 17
  },
  {
    "id": 1715101,
    "nome": "Novo Acordo",
    "estado_id": 17
  },
  {
    "id": 1715150,
    "nome": "Novo Alegre",
    "estado_id": 17
  },
  {
    "id": 1715259,
    "nome": "Novo Jardim",
    "estado_id": 17
  },
  {
    "id": 1715507,
    "nome": "Oliveira de Fátima",
    "estado_id": 17
  },
  {
    "id": 1715705,
    "nome": "Palmeirante",
    "estado_id": 17
  },
  {
    "id": 1715754,
    "nome": "Palmeirópolis",
    "estado_id": 17
  },
  {
    "id": 1716109,
    "nome": "Paraíso do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1716208,
    "nome": "Paranã",
    "estado_id": 17
  },
  {
    "id": 1716307,
    "nome": "Pau D'Arco",
    "estado_id": 17
  },
  {
    "id": 1716505,
    "nome": "Pedro Afonso",
    "estado_id": 17
  },
  {
    "id": 1716604,
    "nome": "Peixe",
    "estado_id": 17
  },
  {
    "id": 1716653,
    "nome": "Pequizeiro",
    "estado_id": 17
  },
  {
    "id": 1716703,
    "nome": "Colméia",
    "estado_id": 17
  },
  {
    "id": 1717008,
    "nome": "Pindorama do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1717206,
    "nome": "Piraquê",
    "estado_id": 17
  },
  {
    "id": 1717503,
    "nome": "Pium",
    "estado_id": 17
  },
  {
    "id": 1717800,
    "nome": "Ponte Alta do Bom Jesus",
    "estado_id": 17
  },
  {
    "id": 1717909,
    "nome": "Ponte Alta do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1718006,
    "nome": "Porto Alegre do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1718204,
    "nome": "Porto Nacional",
    "estado_id": 17
  },
  {
    "id": 1718303,
    "nome": "Praia Norte",
    "estado_id": 17
  },
  {
    "id": 1718402,
    "nome": "Presidente Kennedy",
    "estado_id": 17
  },
  {
    "id": 1718451,
    "nome": "Pugmil",
    "estado_id": 17
  },
  {
    "id": 1718501,
    "nome": "Recursolândia",
    "estado_id": 17
  },
  {
    "id": 1718550,
    "nome": "Riachinho",
    "estado_id": 17
  },
  {
    "id": 1718659,
    "nome": "Rio da Conceição",
    "estado_id": 17
  },
  {
    "id": 1718709,
    "nome": "Rio dos Bois",
    "estado_id": 17
  },
  {
    "id": 1718758,
    "nome": "Rio Sono",
    "estado_id": 17
  },
  {
    "id": 1718808,
    "nome": "Sampaio",
    "estado_id": 17
  },
  {
    "id": 1718840,
    "nome": "Sandolândia",
    "estado_id": 17
  },
  {
    "id": 1718865,
    "nome": "Santa Fé do Araguaia",
    "estado_id": 17
  },
  {
    "id": 1718881,
    "nome": "Santa Maria do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1718899,
    "nome": "Santa Rita do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1718907,
    "nome": "Santa Rosa do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1719004,
    "nome": "Santa Tereza do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1720002,
    "nome": "Santa Terezinha do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1720101,
    "nome": "São Bento do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1720150,
    "nome": "São Félix do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1720200,
    "nome": "São Miguel do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1720259,
    "nome": "São Salvador do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1720309,
    "nome": "São Sebastião do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1720499,
    "nome": "São Valério",
    "estado_id": 17
  },
  {
    "id": 1720655,
    "nome": "Silvanópolis",
    "estado_id": 17
  },
  {
    "id": 1720804,
    "nome": "Sítio Novo do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1720853,
    "nome": "Sucupira",
    "estado_id": 17
  },
  {
    "id": 1720903,
    "nome": "Taguatinga",
    "estado_id": 17
  },
  {
    "id": 1720937,
    "nome": "Taipas do Tocantins",
    "estado_id": 17
  },
  {
    "id": 1720978,
    "nome": "Talismã",
    "estado_id": 17
  },
  {
    "id": 1721000,
    "nome": "Palmas",
    "estado_id": 17
  },
  {
    "id": 1721109,
    "nome": "Tocantínia",
    "estado_id": 17
  },
  {
    "id": 1721208,
    "nome": "Tocantinópolis",
    "estado_id": 17
  },
  {
    "id": 1721257,
    "nome": "Tupirama",
    "estado_id": 17
  },
  {
    "id": 1721307,
    "nome": "Tupiratins",
    "estado_id": 17
  },
  {
    "id": 1722081,
    "nome": "Wanderlândia",
    "estado_id": 17
  },
  {
    "id": 1722107,
    "nome": "Xambioá",
    "estado_id": 17
  },
  {
    "id": 2100055,
    "nome": "Açailândia",
    "estado_id": 21
  },
  {
    "id": 2100105,
    "nome": "Afonso Cunha",
    "estado_id": 21
  },
  {
    "id": 2100154,
    "nome": "Água Doce do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2100204,
    "nome": "Alcântara",
    "estado_id": 21
  },
  {
    "id": 2100303,
    "nome": "Aldeias Altas",
    "estado_id": 21
  },
  {
    "id": 2100402,
    "nome": "Altamira do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2100436,
    "nome": "Alto Alegre do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2100477,
    "nome": "Alto Alegre do Pindaré",
    "estado_id": 21
  },
  {
    "id": 2100501,
    "nome": "Alto Parnaíba",
    "estado_id": 21
  },
  {
    "id": 2100550,
    "nome": "Amapá do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2100600,
    "nome": "Amarante do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2100709,
    "nome": "Anajatuba",
    "estado_id": 21
  },
  {
    "id": 2100808,
    "nome": "Anapurus",
    "estado_id": 21
  },
  {
    "id": 2100832,
    "nome": "Apicum-Açu",
    "estado_id": 21
  },
  {
    "id": 2100873,
    "nome": "Araguanã",
    "estado_id": 21
  },
  {
    "id": 2100907,
    "nome": "Araioses",
    "estado_id": 21
  },
  {
    "id": 2100956,
    "nome": "Arame",
    "estado_id": 21
  },
  {
    "id": 2101004,
    "nome": "Arari",
    "estado_id": 21
  },
  {
    "id": 2101103,
    "nome": "Axixá",
    "estado_id": 21
  },
  {
    "id": 2101202,
    "nome": "Bacabal",
    "estado_id": 21
  },
  {
    "id": 2101251,
    "nome": "Bacabeira",
    "estado_id": 21
  },
  {
    "id": 2101301,
    "nome": "Bacuri",
    "estado_id": 21
  },
  {
    "id": 2101350,
    "nome": "Bacurituba",
    "estado_id": 21
  },
  {
    "id": 2101400,
    "nome": "Balsas",
    "estado_id": 21
  },
  {
    "id": 2101509,
    "nome": "Barão de Grajaú",
    "estado_id": 21
  },
  {
    "id": 2101608,
    "nome": "Barra do Corda",
    "estado_id": 21
  },
  {
    "id": 2101707,
    "nome": "Barreirinhas",
    "estado_id": 21
  },
  {
    "id": 2101731,
    "nome": "Belágua",
    "estado_id": 21
  },
  {
    "id": 2101772,
    "nome": "Bela Vista do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2101806,
    "nome": "Benedito Leite",
    "estado_id": 21
  },
  {
    "id": 2101905,
    "nome": "Bequimão",
    "estado_id": 21
  },
  {
    "id": 2101939,
    "nome": "Bernardo do Mearim",
    "estado_id": 21
  },
  {
    "id": 2101970,
    "nome": "Boa Vista do Gurupi",
    "estado_id": 21
  },
  {
    "id": 2102002,
    "nome": "Bom Jardim",
    "estado_id": 21
  },
  {
    "id": 2102036,
    "nome": "Bom Jesus das Selvas",
    "estado_id": 21
  },
  {
    "id": 2102077,
    "nome": "Bom Lugar",
    "estado_id": 21
  },
  {
    "id": 2102101,
    "nome": "Brejo",
    "estado_id": 21
  },
  {
    "id": 2102150,
    "nome": "Brejo de Areia",
    "estado_id": 21
  },
  {
    "id": 2102200,
    "nome": "Buriti",
    "estado_id": 21
  },
  {
    "id": 2102309,
    "nome": "Buriti Bravo",
    "estado_id": 21
  },
  {
    "id": 2102325,
    "nome": "Buriticupu",
    "estado_id": 21
  },
  {
    "id": 2102358,
    "nome": "Buritirana",
    "estado_id": 21
  },
  {
    "id": 2102374,
    "nome": "Cachoeira Grande",
    "estado_id": 21
  },
  {
    "id": 2102408,
    "nome": "Cajapió",
    "estado_id": 21
  },
  {
    "id": 2102507,
    "nome": "Cajari",
    "estado_id": 21
  },
  {
    "id": 2102556,
    "nome": "Campestre do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2102606,
    "nome": "Cândido Mendes",
    "estado_id": 21
  },
  {
    "id": 2102705,
    "nome": "Cantanhede",
    "estado_id": 21
  },
  {
    "id": 2102754,
    "nome": "Capinzal do Norte",
    "estado_id": 21
  },
  {
    "id": 2102804,
    "nome": "Carolina",
    "estado_id": 21
  },
  {
    "id": 2102903,
    "nome": "Carutapera",
    "estado_id": 21
  },
  {
    "id": 2103000,
    "nome": "Caxias",
    "estado_id": 21
  },
  {
    "id": 2103109,
    "nome": "Cedral",
    "estado_id": 21
  },
  {
    "id": 2103125,
    "nome": "Central do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2103158,
    "nome": "Centro do Guilherme",
    "estado_id": 21
  },
  {
    "id": 2103174,
    "nome": "Centro Novo do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2103208,
    "nome": "Chapadinha",
    "estado_id": 21
  },
  {
    "id": 2103257,
    "nome": "Cidelândia",
    "estado_id": 21
  },
  {
    "id": 2103307,
    "nome": "Codó",
    "estado_id": 21
  },
  {
    "id": 2103406,
    "nome": "Coelho Neto",
    "estado_id": 21
  },
  {
    "id": 2103505,
    "nome": "Colinas",
    "estado_id": 21
  },
  {
    "id": 2103554,
    "nome": "Conceição do Lago-Açu",
    "estado_id": 21
  },
  {
    "id": 2103604,
    "nome": "Coroatá",
    "estado_id": 21
  },
  {
    "id": 2103703,
    "nome": "Cururupu",
    "estado_id": 21
  },
  {
    "id": 2103752,
    "nome": "Davinópolis",
    "estado_id": 21
  },
  {
    "id": 2103802,
    "nome": "Dom Pedro",
    "estado_id": 21
  },
  {
    "id": 2103901,
    "nome": "Duque Bacelar",
    "estado_id": 21
  },
  {
    "id": 2104008,
    "nome": "Esperantinópolis",
    "estado_id": 21
  },
  {
    "id": 2104057,
    "nome": "Estreito",
    "estado_id": 21
  },
  {
    "id": 2104073,
    "nome": "Feira Nova do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2104081,
    "nome": "Fernando Falcão",
    "estado_id": 21
  },
  {
    "id": 2104099,
    "nome": "Formosa da Serra Negra",
    "estado_id": 21
  },
  {
    "id": 2104107,
    "nome": "Fortaleza dos Nogueiras",
    "estado_id": 21
  },
  {
    "id": 2104206,
    "nome": "Fortuna",
    "estado_id": 21
  },
  {
    "id": 2104305,
    "nome": "Godofredo Viana",
    "estado_id": 21
  },
  {
    "id": 2104404,
    "nome": "Gonçalves Dias",
    "estado_id": 21
  },
  {
    "id": 2104503,
    "nome": "Governador Archer",
    "estado_id": 21
  },
  {
    "id": 2104552,
    "nome": "Governador Edison Lobão",
    "estado_id": 21
  },
  {
    "id": 2104602,
    "nome": "Governador Eugênio Barros",
    "estado_id": 21
  },
  {
    "id": 2104628,
    "nome": "Governador Luiz Rocha",
    "estado_id": 21
  },
  {
    "id": 2104651,
    "nome": "Governador Newton Bello",
    "estado_id": 21
  },
  {
    "id": 2104677,
    "nome": "Governador Nunes Freire",
    "estado_id": 21
  },
  {
    "id": 2104701,
    "nome": "Graça Aranha",
    "estado_id": 21
  },
  {
    "id": 2104800,
    "nome": "Grajaú",
    "estado_id": 21
  },
  {
    "id": 2104909,
    "nome": "Guimarães",
    "estado_id": 21
  },
  {
    "id": 2105005,
    "nome": "Humberto de Campos",
    "estado_id": 21
  },
  {
    "id": 2105104,
    "nome": "Icatu",
    "estado_id": 21
  },
  {
    "id": 2105153,
    "nome": "Igarapé do Meio",
    "estado_id": 21
  },
  {
    "id": 2105203,
    "nome": "Igarapé Grande",
    "estado_id": 21
  },
  {
    "id": 2105302,
    "nome": "Imperatriz",
    "estado_id": 21
  },
  {
    "id": 2105351,
    "nome": "Itaipava do Grajaú",
    "estado_id": 21
  },
  {
    "id": 2105401,
    "nome": "Itapecuru Mirim",
    "estado_id": 21
  },
  {
    "id": 2105427,
    "nome": "Itinga do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2105450,
    "nome": "Jatobá",
    "estado_id": 21
  },
  {
    "id": 2105476,
    "nome": "Jenipapo dos Vieiras",
    "estado_id": 21
  },
  {
    "id": 2105500,
    "nome": "João Lisboa",
    "estado_id": 21
  },
  {
    "id": 2105609,
    "nome": "Joselândia",
    "estado_id": 21
  },
  {
    "id": 2105658,
    "nome": "Junco do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2105708,
    "nome": "Lago da Pedra",
    "estado_id": 21
  },
  {
    "id": 2105807,
    "nome": "Lago do Junco",
    "estado_id": 21
  },
  {
    "id": 2105906,
    "nome": "Lago Verde",
    "estado_id": 21
  },
  {
    "id": 2105922,
    "nome": "Lagoa do Mato",
    "estado_id": 21
  },
  {
    "id": 2105948,
    "nome": "Lago dos Rodrigues",
    "estado_id": 21
  },
  {
    "id": 2105963,
    "nome": "Lagoa Grande do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2105989,
    "nome": "Lajeado Novo",
    "estado_id": 21
  },
  {
    "id": 2106003,
    "nome": "Lima Campos",
    "estado_id": 21
  },
  {
    "id": 2106102,
    "nome": "Loreto",
    "estado_id": 21
  },
  {
    "id": 2106201,
    "nome": "Luís Domingues",
    "estado_id": 21
  },
  {
    "id": 2106300,
    "nome": "Magalhães de Almeida",
    "estado_id": 21
  },
  {
    "id": 2106326,
    "nome": "Maracaçumé",
    "estado_id": 21
  },
  {
    "id": 2106359,
    "nome": "Marajá do Sena",
    "estado_id": 21
  },
  {
    "id": 2106375,
    "nome": "Maranhãozinho",
    "estado_id": 21
  },
  {
    "id": 2106409,
    "nome": "Mata Roma",
    "estado_id": 21
  },
  {
    "id": 2106508,
    "nome": "Matinha",
    "estado_id": 21
  },
  {
    "id": 2106607,
    "nome": "Matões",
    "estado_id": 21
  },
  {
    "id": 2106631,
    "nome": "Matões do Norte",
    "estado_id": 21
  },
  {
    "id": 2106672,
    "nome": "Milagres do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2106706,
    "nome": "Mirador",
    "estado_id": 21
  },
  {
    "id": 2106755,
    "nome": "Miranda do Norte",
    "estado_id": 21
  },
  {
    "id": 2106805,
    "nome": "Mirinzal",
    "estado_id": 21
  },
  {
    "id": 2106904,
    "nome": "Monção",
    "estado_id": 21
  },
  {
    "id": 2107001,
    "nome": "Montes Altos",
    "estado_id": 21
  },
  {
    "id": 2107100,
    "nome": "Morros",
    "estado_id": 21
  },
  {
    "id": 2107209,
    "nome": "Nina Rodrigues",
    "estado_id": 21
  },
  {
    "id": 2107258,
    "nome": "Nova Colinas",
    "estado_id": 21
  },
  {
    "id": 2107308,
    "nome": "Nova Iorque",
    "estado_id": 21
  },
  {
    "id": 2107357,
    "nome": "Nova Olinda do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2107407,
    "nome": "Olho d'Água das Cunhãs",
    "estado_id": 21
  },
  {
    "id": 2107456,
    "nome": "Olinda Nova do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2107506,
    "nome": "Paço do Lumiar",
    "estado_id": 21
  },
  {
    "id": 2107605,
    "nome": "Palmeirândia",
    "estado_id": 21
  },
  {
    "id": 2107704,
    "nome": "Paraibano",
    "estado_id": 21
  },
  {
    "id": 2107803,
    "nome": "Parnarama",
    "estado_id": 21
  },
  {
    "id": 2107902,
    "nome": "Passagem Franca",
    "estado_id": 21
  },
  {
    "id": 2108009,
    "nome": "Pastos Bons",
    "estado_id": 21
  },
  {
    "id": 2108058,
    "nome": "Paulino Neves",
    "estado_id": 21
  },
  {
    "id": 2108108,
    "nome": "Paulo Ramos",
    "estado_id": 21
  },
  {
    "id": 2108207,
    "nome": "Pedreiras",
    "estado_id": 21
  },
  {
    "id": 2108256,
    "nome": "Pedro do Rosário",
    "estado_id": 21
  },
  {
    "id": 2108306,
    "nome": "Penalva",
    "estado_id": 21
  },
  {
    "id": 2108405,
    "nome": "Peri Mirim",
    "estado_id": 21
  },
  {
    "id": 2108454,
    "nome": "Peritoró",
    "estado_id": 21
  },
  {
    "id": 2108504,
    "nome": "Pindaré-Mirim",
    "estado_id": 21
  },
  {
    "id": 2108603,
    "nome": "Pinheiro",
    "estado_id": 21
  },
  {
    "id": 2108702,
    "nome": "Pio XII",
    "estado_id": 21
  },
  {
    "id": 2108801,
    "nome": "Pirapemas",
    "estado_id": 21
  },
  {
    "id": 2108900,
    "nome": "Poção de Pedras",
    "estado_id": 21
  },
  {
    "id": 2109007,
    "nome": "Porto Franco",
    "estado_id": 21
  },
  {
    "id": 2109056,
    "nome": "Porto Rico do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2109106,
    "nome": "Presidente Dutra",
    "estado_id": 21
  },
  {
    "id": 2109205,
    "nome": "Presidente Juscelino",
    "estado_id": 21
  },
  {
    "id": 2109239,
    "nome": "Presidente Médici",
    "estado_id": 21
  },
  {
    "id": 2109270,
    "nome": "Presidente Sarney",
    "estado_id": 21
  },
  {
    "id": 2109304,
    "nome": "Presidente Vargas",
    "estado_id": 21
  },
  {
    "id": 2109403,
    "nome": "Primeira Cruz",
    "estado_id": 21
  },
  {
    "id": 2109452,
    "nome": "Raposa",
    "estado_id": 21
  },
  {
    "id": 2109502,
    "nome": "Riachão",
    "estado_id": 21
  },
  {
    "id": 2109551,
    "nome": "Ribamar Fiquene",
    "estado_id": 21
  },
  {
    "id": 2109601,
    "nome": "Rosário",
    "estado_id": 21
  },
  {
    "id": 2109700,
    "nome": "Sambaíba",
    "estado_id": 21
  },
  {
    "id": 2109759,
    "nome": "Santa Filomena do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2109809,
    "nome": "Santa Helena",
    "estado_id": 21
  },
  {
    "id": 2109908,
    "nome": "Santa Inês",
    "estado_id": 21
  },
  {
    "id": 2110005,
    "nome": "Santa Luzia",
    "estado_id": 21
  },
  {
    "id": 2110039,
    "nome": "Santa Luzia do Paruá",
    "estado_id": 21
  },
  {
    "id": 2110104,
    "nome": "Santa Quitéria do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2110203,
    "nome": "Santa Rita",
    "estado_id": 21
  },
  {
    "id": 2110237,
    "nome": "Santana do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2110278,
    "nome": "Santo Amaro do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2110302,
    "nome": "Santo Antônio dos Lopes",
    "estado_id": 21
  },
  {
    "id": 2110401,
    "nome": "São Benedito do Rio Preto",
    "estado_id": 21
  },
  {
    "id": 2110500,
    "nome": "São Bento",
    "estado_id": 21
  },
  {
    "id": 2110609,
    "nome": "São Bernardo",
    "estado_id": 21
  },
  {
    "id": 2110658,
    "nome": "São Domingos do Azeitão",
    "estado_id": 21
  },
  {
    "id": 2110708,
    "nome": "São Domingos do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2110807,
    "nome": "São Félix de Balsas",
    "estado_id": 21
  },
  {
    "id": 2110856,
    "nome": "São Francisco do Brejão",
    "estado_id": 21
  },
  {
    "id": 2110906,
    "nome": "São Francisco do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2111003,
    "nome": "São João Batista",
    "estado_id": 21
  },
  {
    "id": 2111029,
    "nome": "São João do Carú",
    "estado_id": 21
  },
  {
    "id": 2111052,
    "nome": "São João do Paraíso",
    "estado_id": 21
  },
  {
    "id": 2111078,
    "nome": "São João do Soter",
    "estado_id": 21
  },
  {
    "id": 2111102,
    "nome": "São João dos Patos",
    "estado_id": 21
  },
  {
    "id": 2111201,
    "nome": "São José de Ribamar",
    "estado_id": 21
  },
  {
    "id": 2111250,
    "nome": "São José dos Basílios",
    "estado_id": 21
  },
  {
    "id": 2111300,
    "nome": "São Luís",
    "estado_id": 21
  },
  {
    "id": 2111409,
    "nome": "São Luís Gonzaga do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2111508,
    "nome": "São Mateus do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2111532,
    "nome": "São Pedro da Água Branca",
    "estado_id": 21
  },
  {
    "id": 2111573,
    "nome": "São Pedro dos Crentes",
    "estado_id": 21
  },
  {
    "id": 2111607,
    "nome": "São Raimundo das Mangabeiras",
    "estado_id": 21
  },
  {
    "id": 2111631,
    "nome": "São Raimundo do Doca Bezerra",
    "estado_id": 21
  },
  {
    "id": 2111672,
    "nome": "São Roberto",
    "estado_id": 21
  },
  {
    "id": 2111706,
    "nome": "São Vicente Ferrer",
    "estado_id": 21
  },
  {
    "id": 2111722,
    "nome": "Satubinha",
    "estado_id": 21
  },
  {
    "id": 2111748,
    "nome": "Senador Alexandre Costa",
    "estado_id": 21
  },
  {
    "id": 2111763,
    "nome": "Senador La Rocque",
    "estado_id": 21
  },
  {
    "id": 2111789,
    "nome": "Serrano do Maranhão",
    "estado_id": 21
  },
  {
    "id": 2111805,
    "nome": "Sítio Novo",
    "estado_id": 21
  },
  {
    "id": 2111904,
    "nome": "Sucupira do Norte",
    "estado_id": 21
  },
  {
    "id": 2111953,
    "nome": "Sucupira do Riachão",
    "estado_id": 21
  },
  {
    "id": 2112001,
    "nome": "Tasso Fragoso",
    "estado_id": 21
  },
  {
    "id": 2112100,
    "nome": "Timbiras",
    "estado_id": 21
  },
  {
    "id": 2112209,
    "nome": "Timon",
    "estado_id": 21
  },
  {
    "id": 2112233,
    "nome": "Trizidela do Vale",
    "estado_id": 21
  },
  {
    "id": 2112274,
    "nome": "Tufilândia",
    "estado_id": 21
  },
  {
    "id": 2112308,
    "nome": "Tuntum",
    "estado_id": 21
  },
  {
    "id": 2112407,
    "nome": "Turiaçu",
    "estado_id": 21
  },
  {
    "id": 2112456,
    "nome": "Turilândia",
    "estado_id": 21
  },
  {
    "id": 2112506,
    "nome": "Tutóia",
    "estado_id": 21
  },
  {
    "id": 2112605,
    "nome": "Urbano Santos",
    "estado_id": 21
  },
  {
    "id": 2112704,
    "nome": "Vargem Grande",
    "estado_id": 21
  },
  {
    "id": 2112803,
    "nome": "Viana",
    "estado_id": 21
  },
  {
    "id": 2112852,
    "nome": "Vila Nova dos Martírios",
    "estado_id": 21
  },
  {
    "id": 2112902,
    "nome": "Vitória do Mearim",
    "estado_id": 21
  },
  {
    "id": 2113009,
    "nome": "Vitorino Freire",
    "estado_id": 21
  },
  {
    "id": 2114007,
    "nome": "Zé Doca",
    "estado_id": 21
  },
  {
    "id": 2200053,
    "nome": "Acauã",
    "estado_id": 22
  },
  {
    "id": 2200103,
    "nome": "Agricolândia",
    "estado_id": 22
  },
  {
    "id": 2200202,
    "nome": "Água Branca",
    "estado_id": 22
  },
  {
    "id": 2200251,
    "nome": "Alagoinha do Piauí",
    "estado_id": 22
  },
  {
    "id": 2200277,
    "nome": "Alegrete do Piauí",
    "estado_id": 22
  },
  {
    "id": 2200301,
    "nome": "Alto Longá",
    "estado_id": 22
  },
  {
    "id": 2200400,
    "nome": "Altos",
    "estado_id": 22
  },
  {
    "id": 2200459,
    "nome": "Alvorada do Gurguéia",
    "estado_id": 22
  },
  {
    "id": 2200509,
    "nome": "Amarante",
    "estado_id": 22
  },
  {
    "id": 2200608,
    "nome": "Angical do Piauí",
    "estado_id": 22
  },
  {
    "id": 2200707,
    "nome": "Anísio de Abreu",
    "estado_id": 22
  },
  {
    "id": 2200806,
    "nome": "Antônio Almeida",
    "estado_id": 22
  },
  {
    "id": 2200905,
    "nome": "Aroazes",
    "estado_id": 22
  },
  {
    "id": 2200954,
    "nome": "Aroeiras do Itaim",
    "estado_id": 22
  },
  {
    "id": 2201002,
    "nome": "Arraial",
    "estado_id": 22
  },
  {
    "id": 2201051,
    "nome": "Assunção do Piauí",
    "estado_id": 22
  },
  {
    "id": 2201101,
    "nome": "Avelino Lopes",
    "estado_id": 22
  },
  {
    "id": 2201150,
    "nome": "Baixa Grande do Ribeiro",
    "estado_id": 22
  },
  {
    "id": 2201176,
    "nome": "Barra D'Alcântara",
    "estado_id": 22
  },
  {
    "id": 2201200,
    "nome": "Barras",
    "estado_id": 22
  },
  {
    "id": 2201309,
    "nome": "Barreiras do Piauí",
    "estado_id": 22
  },
  {
    "id": 2201408,
    "nome": "Barro Duro",
    "estado_id": 22
  },
  {
    "id": 2201507,
    "nome": "Batalha",
    "estado_id": 22
  },
  {
    "id": 2201556,
    "nome": "Bela Vista do Piauí",
    "estado_id": 22
  },
  {
    "id": 2201572,
    "nome": "Belém do Piauí",
    "estado_id": 22
  },
  {
    "id": 2201606,
    "nome": "Beneditinos",
    "estado_id": 22
  },
  {
    "id": 2201705,
    "nome": "Bertolínia",
    "estado_id": 22
  },
  {
    "id": 2201739,
    "nome": "Betânia do Piauí",
    "estado_id": 22
  },
  {
    "id": 2201770,
    "nome": "Boa Hora",
    "estado_id": 22
  },
  {
    "id": 2201804,
    "nome": "Bocaina",
    "estado_id": 22
  },
  {
    "id": 2201903,
    "nome": "Bom Jesus",
    "estado_id": 22
  },
  {
    "id": 2201919,
    "nome": "Bom Princípio do Piauí",
    "estado_id": 22
  },
  {
    "id": 2201929,
    "nome": "Bonfim do Piauí",
    "estado_id": 22
  },
  {
    "id": 2201945,
    "nome": "Boqueirão do Piauí",
    "estado_id": 22
  },
  {
    "id": 2201960,
    "nome": "Brasileira",
    "estado_id": 22
  },
  {
    "id": 2201988,
    "nome": "Brejo do Piauí",
    "estado_id": 22
  },
  {
    "id": 2202000,
    "nome": "Buriti dos Lopes",
    "estado_id": 22
  },
  {
    "id": 2202026,
    "nome": "Buriti dos Montes",
    "estado_id": 22
  },
  {
    "id": 2202059,
    "nome": "Cabeceiras do Piauí",
    "estado_id": 22
  },
  {
    "id": 2202075,
    "nome": "Cajazeiras do Piauí",
    "estado_id": 22
  },
  {
    "id": 2202083,
    "nome": "Cajueiro da Praia",
    "estado_id": 22
  },
  {
    "id": 2202091,
    "nome": "Caldeirão Grande do Piauí",
    "estado_id": 22
  },
  {
    "id": 2202109,
    "nome": "Campinas do Piauí",
    "estado_id": 22
  },
  {
    "id": 2202117,
    "nome": "Campo Alegre do Fidalgo",
    "estado_id": 22
  },
  {
    "id": 2202133,
    "nome": "Campo Grande do Piauí",
    "estado_id": 22
  },
  {
    "id": 2202174,
    "nome": "Campo Largo do Piauí",
    "estado_id": 22
  },
  {
    "id": 2202208,
    "nome": "Campo Maior",
    "estado_id": 22
  },
  {
    "id": 2202251,
    "nome": "Canavieira",
    "estado_id": 22
  },
  {
    "id": 2202307,
    "nome": "Canto do Buriti",
    "estado_id": 22
  },
  {
    "id": 2202406,
    "nome": "Capitão de Campos",
    "estado_id": 22
  },
  {
    "id": 2202455,
    "nome": "Capitão Gervásio Oliveira",
    "estado_id": 22
  },
  {
    "id": 2202505,
    "nome": "Caracol",
    "estado_id": 22
  },
  {
    "id": 2202539,
    "nome": "Caraúbas do Piauí",
    "estado_id": 22
  },
  {
    "id": 2202554,
    "nome": "Caridade do Piauí",
    "estado_id": 22
  },
  {
    "id": 2202604,
    "nome": "Castelo do Piauí",
    "estado_id": 22
  },
  {
    "id": 2202653,
    "nome": "Caxingó",
    "estado_id": 22
  },
  {
    "id": 2202703,
    "nome": "Cocal",
    "estado_id": 22
  },
  {
    "id": 2202711,
    "nome": "Cocal de Telha",
    "estado_id": 22
  },
  {
    "id": 2202729,
    "nome": "Cocal dos Alves",
    "estado_id": 22
  },
  {
    "id": 2202737,
    "nome": "Coivaras",
    "estado_id": 22
  },
  {
    "id": 2202752,
    "nome": "Colônia do Gurguéia",
    "estado_id": 22
  },
  {
    "id": 2202778,
    "nome": "Colônia do Piauí",
    "estado_id": 22
  },
  {
    "id": 2202802,
    "nome": "Conceição do Canindé",
    "estado_id": 22
  },
  {
    "id": 2202851,
    "nome": "Coronel José Dias",
    "estado_id": 22
  },
  {
    "id": 2202901,
    "nome": "Corrente",
    "estado_id": 22
  },
  {
    "id": 2203008,
    "nome": "Cristalândia do Piauí",
    "estado_id": 22
  },
  {
    "id": 2203107,
    "nome": "Cristino Castro",
    "estado_id": 22
  },
  {
    "id": 2203206,
    "nome": "Curimatá",
    "estado_id": 22
  },
  {
    "id": 2203230,
    "nome": "Currais",
    "estado_id": 22
  },
  {
    "id": 2203255,
    "nome": "Curralinhos",
    "estado_id": 22
  },
  {
    "id": 2203271,
    "nome": "Curral Novo do Piauí",
    "estado_id": 22
  },
  {
    "id": 2203305,
    "nome": "Demerval Lobão",
    "estado_id": 22
  },
  {
    "id": 2203354,
    "nome": "Dirceu Arcoverde",
    "estado_id": 22
  },
  {
    "id": 2203404,
    "nome": "Dom Expedito Lopes",
    "estado_id": 22
  },
  {
    "id": 2203420,
    "nome": "Domingos Mourão",
    "estado_id": 22
  },
  {
    "id": 2203453,
    "nome": "Dom Inocêncio",
    "estado_id": 22
  },
  {
    "id": 2203503,
    "nome": "Elesbão Veloso",
    "estado_id": 22
  },
  {
    "id": 2203602,
    "nome": "Eliseu Martins",
    "estado_id": 22
  },
  {
    "id": 2203701,
    "nome": "Esperantina",
    "estado_id": 22
  },
  {
    "id": 2203750,
    "nome": "Fartura do Piauí",
    "estado_id": 22
  },
  {
    "id": 2203800,
    "nome": "Flores do Piauí",
    "estado_id": 22
  },
  {
    "id": 2203859,
    "nome": "Floresta do Piauí",
    "estado_id": 22
  },
  {
    "id": 2203909,
    "nome": "Floriano",
    "estado_id": 22
  },
  {
    "id": 2204006,
    "nome": "Francinópolis",
    "estado_id": 22
  },
  {
    "id": 2204105,
    "nome": "Francisco Ayres",
    "estado_id": 22
  },
  {
    "id": 2204154,
    "nome": "Francisco Macedo",
    "estado_id": 22
  },
  {
    "id": 2204204,
    "nome": "Francisco Santos",
    "estado_id": 22
  },
  {
    "id": 2204303,
    "nome": "Fronteiras",
    "estado_id": 22
  },
  {
    "id": 2204352,
    "nome": "Geminiano",
    "estado_id": 22
  },
  {
    "id": 2204402,
    "nome": "Gilbués",
    "estado_id": 22
  },
  {
    "id": 2204501,
    "nome": "Guadalupe",
    "estado_id": 22
  },
  {
    "id": 2204550,
    "nome": "Guaribas",
    "estado_id": 22
  },
  {
    "id": 2204600,
    "nome": "Hugo Napoleão",
    "estado_id": 22
  },
  {
    "id": 2204659,
    "nome": "Ilha Grande",
    "estado_id": 22
  },
  {
    "id": 2204709,
    "nome": "Inhuma",
    "estado_id": 22
  },
  {
    "id": 2204808,
    "nome": "Ipiranga do Piauí",
    "estado_id": 22
  },
  {
    "id": 2204907,
    "nome": "Isaías Coelho",
    "estado_id": 22
  },
  {
    "id": 2205003,
    "nome": "Itainópolis",
    "estado_id": 22
  },
  {
    "id": 2205102,
    "nome": "Itaueira",
    "estado_id": 22
  },
  {
    "id": 2205151,
    "nome": "Jacobina do Piauí",
    "estado_id": 22
  },
  {
    "id": 2205201,
    "nome": "Jaicós",
    "estado_id": 22
  },
  {
    "id": 2205250,
    "nome": "Jardim do Mulato",
    "estado_id": 22
  },
  {
    "id": 2205276,
    "nome": "Jatobá do Piauí",
    "estado_id": 22
  },
  {
    "id": 2205300,
    "nome": "Jerumenha",
    "estado_id": 22
  },
  {
    "id": 2205359,
    "nome": "João Costa",
    "estado_id": 22
  },
  {
    "id": 2205409,
    "nome": "Joaquim Pires",
    "estado_id": 22
  },
  {
    "id": 2205458,
    "nome": "Joca Marques",
    "estado_id": 22
  },
  {
    "id": 2205508,
    "nome": "José de Freitas",
    "estado_id": 22
  },
  {
    "id": 2205516,
    "nome": "Juazeiro do Piauí",
    "estado_id": 22
  },
  {
    "id": 2205524,
    "nome": "Júlio Borges",
    "estado_id": 22
  },
  {
    "id": 2205532,
    "nome": "Jurema",
    "estado_id": 22
  },
  {
    "id": 2205540,
    "nome": "Lagoinha do Piauí",
    "estado_id": 22
  },
  {
    "id": 2205557,
    "nome": "Lagoa Alegre",
    "estado_id": 22
  },
  {
    "id": 2205565,
    "nome": "Lagoa do Barro do Piauí",
    "estado_id": 22
  },
  {
    "id": 2205573,
    "nome": "Lagoa de São Francisco",
    "estado_id": 22
  },
  {
    "id": 2205581,
    "nome": "Lagoa do Piauí",
    "estado_id": 22
  },
  {
    "id": 2205599,
    "nome": "Lagoa do Sítio",
    "estado_id": 22
  },
  {
    "id": 2205607,
    "nome": "Landri Sales",
    "estado_id": 22
  },
  {
    "id": 2205706,
    "nome": "Luís Correia",
    "estado_id": 22
  },
  {
    "id": 2205805,
    "nome": "Luzilândia",
    "estado_id": 22
  },
  {
    "id": 2205854,
    "nome": "Madeiro",
    "estado_id": 22
  },
  {
    "id": 2205904,
    "nome": "Manoel Emídio",
    "estado_id": 22
  },
  {
    "id": 2205953,
    "nome": "Marcolândia",
    "estado_id": 22
  },
  {
    "id": 2206001,
    "nome": "Marcos Parente",
    "estado_id": 22
  },
  {
    "id": 2206050,
    "nome": "Massapê do Piauí",
    "estado_id": 22
  },
  {
    "id": 2206100,
    "nome": "Matias Olímpio",
    "estado_id": 22
  },
  {
    "id": 2206209,
    "nome": "Miguel Alves",
    "estado_id": 22
  },
  {
    "id": 2206308,
    "nome": "Miguel Leão",
    "estado_id": 22
  },
  {
    "id": 2206357,
    "nome": "Milton Brandão",
    "estado_id": 22
  },
  {
    "id": 2206407,
    "nome": "Monsenhor Gil",
    "estado_id": 22
  },
  {
    "id": 2206506,
    "nome": "Monsenhor Hipólito",
    "estado_id": 22
  },
  {
    "id": 2206605,
    "nome": "Monte Alegre do Piauí",
    "estado_id": 22
  },
  {
    "id": 2206654,
    "nome": "Morro Cabeça no Tempo",
    "estado_id": 22
  },
  {
    "id": 2206670,
    "nome": "Morro do Chapéu do Piauí",
    "estado_id": 22
  },
  {
    "id": 2206696,
    "nome": "Murici dos Portelas",
    "estado_id": 22
  },
  {
    "id": 2206704,
    "nome": "Nazaré do Piauí",
    "estado_id": 22
  },
  {
    "id": 2206720,
    "nome": "Nazária",
    "estado_id": 22
  },
  {
    "id": 2206753,
    "nome": "Nossa Senhora de Nazaré",
    "estado_id": 22
  },
  {
    "id": 2206803,
    "nome": "Nossa Senhora dos Remédios",
    "estado_id": 22
  },
  {
    "id": 2206902,
    "nome": "Novo Oriente do Piauí",
    "estado_id": 22
  },
  {
    "id": 2206951,
    "nome": "Novo Santo Antônio",
    "estado_id": 22
  },
  {
    "id": 2207009,
    "nome": "Oeiras",
    "estado_id": 22
  },
  {
    "id": 2207108,
    "nome": "Olho D'Água do Piauí",
    "estado_id": 22
  },
  {
    "id": 2207207,
    "nome": "Padre Marcos",
    "estado_id": 22
  },
  {
    "id": 2207306,
    "nome": "Paes Landim",
    "estado_id": 22
  },
  {
    "id": 2207355,
    "nome": "Pajeú do Piauí",
    "estado_id": 22
  },
  {
    "id": 2207405,
    "nome": "Palmeira do Piauí",
    "estado_id": 22
  },
  {
    "id": 2207504,
    "nome": "Palmeirais",
    "estado_id": 22
  },
  {
    "id": 2207553,
    "nome": "Paquetá",
    "estado_id": 22
  },
  {
    "id": 2207603,
    "nome": "Parnaguá",
    "estado_id": 22
  },
  {
    "id": 2207702,
    "nome": "Parnaíba",
    "estado_id": 22
  },
  {
    "id": 2207751,
    "nome": "Passagem Franca do Piauí",
    "estado_id": 22
  },
  {
    "id": 2207777,
    "nome": "Patos do Piauí",
    "estado_id": 22
  },
  {
    "id": 2207793,
    "nome": "Pau D'Arco do Piauí",
    "estado_id": 22
  },
  {
    "id": 2207801,
    "nome": "Paulistana",
    "estado_id": 22
  },
  {
    "id": 2207850,
    "nome": "Pavussu",
    "estado_id": 22
  },
  {
    "id": 2207900,
    "nome": "Pedro II",
    "estado_id": 22
  },
  {
    "id": 2207934,
    "nome": "Pedro Laurentino",
    "estado_id": 22
  },
  {
    "id": 2207959,
    "nome": "Nova Santa Rita",
    "estado_id": 22
  },
  {
    "id": 2208007,
    "nome": "Picos",
    "estado_id": 22
  },
  {
    "id": 2208106,
    "nome": "Pimenteiras",
    "estado_id": 22
  },
  {
    "id": 2208205,
    "nome": "Pio IX",
    "estado_id": 22
  },
  {
    "id": 2208304,
    "nome": "Piracuruca",
    "estado_id": 22
  },
  {
    "id": 2208403,
    "nome": "Piripiri",
    "estado_id": 22
  },
  {
    "id": 2208502,
    "nome": "Porto",
    "estado_id": 22
  },
  {
    "id": 2208551,
    "nome": "Porto Alegre do Piauí",
    "estado_id": 22
  },
  {
    "id": 2208601,
    "nome": "Prata do Piauí",
    "estado_id": 22
  },
  {
    "id": 2208650,
    "nome": "Queimada Nova",
    "estado_id": 22
  },
  {
    "id": 2208700,
    "nome": "Redenção do Gurguéia",
    "estado_id": 22
  },
  {
    "id": 2208809,
    "nome": "Regeneração",
    "estado_id": 22
  },
  {
    "id": 2208858,
    "nome": "Riacho Frio",
    "estado_id": 22
  },
  {
    "id": 2208874,
    "nome": "Ribeira do Piauí",
    "estado_id": 22
  },
  {
    "id": 2208908,
    "nome": "Ribeiro Gonçalves",
    "estado_id": 22
  },
  {
    "id": 2209005,
    "nome": "Rio Grande do Piauí",
    "estado_id": 22
  },
  {
    "id": 2209104,
    "nome": "Santa Cruz do Piauí",
    "estado_id": 22
  },
  {
    "id": 2209153,
    "nome": "Santa Cruz dos Milagres",
    "estado_id": 22
  },
  {
    "id": 2209203,
    "nome": "Santa Filomena",
    "estado_id": 22
  },
  {
    "id": 2209302,
    "nome": "Santa Luz",
    "estado_id": 22
  },
  {
    "id": 2209351,
    "nome": "Santana do Piauí",
    "estado_id": 22
  },
  {
    "id": 2209377,
    "nome": "Santa Rosa do Piauí",
    "estado_id": 22
  },
  {
    "id": 2209401,
    "nome": "Santo Antônio de Lisboa",
    "estado_id": 22
  },
  {
    "id": 2209450,
    "nome": "Santo Antônio dos Milagres",
    "estado_id": 22
  },
  {
    "id": 2209500,
    "nome": "Santo Inácio do Piauí",
    "estado_id": 22
  },
  {
    "id": 2209559,
    "nome": "São Braz do Piauí",
    "estado_id": 22
  },
  {
    "id": 2209609,
    "nome": "São Félix do Piauí",
    "estado_id": 22
  },
  {
    "id": 2209658,
    "nome": "São Francisco de Assis do Piauí",
    "estado_id": 22
  },
  {
    "id": 2209708,
    "nome": "São Francisco do Piauí",
    "estado_id": 22
  },
  {
    "id": 2209757,
    "nome": "São Gonçalo do Gurguéia",
    "estado_id": 22
  },
  {
    "id": 2209807,
    "nome": "São Gonçalo do Piauí",
    "estado_id": 22
  },
  {
    "id": 2209856,
    "nome": "São João da Canabrava",
    "estado_id": 22
  },
  {
    "id": 2209872,
    "nome": "São João da Fronteira",
    "estado_id": 22
  },
  {
    "id": 2209906,
    "nome": "São João da Serra",
    "estado_id": 22
  },
  {
    "id": 2209955,
    "nome": "São João da Varjota",
    "estado_id": 22
  },
  {
    "id": 2209971,
    "nome": "São João do Arraial",
    "estado_id": 22
  },
  {
    "id": 2210003,
    "nome": "São João do Piauí",
    "estado_id": 22
  },
  {
    "id": 2210052,
    "nome": "São José do Divino",
    "estado_id": 22
  },
  {
    "id": 2210102,
    "nome": "São José do Peixe",
    "estado_id": 22
  },
  {
    "id": 2210201,
    "nome": "São José do Piauí",
    "estado_id": 22
  },
  {
    "id": 2210300,
    "nome": "São Julião",
    "estado_id": 22
  },
  {
    "id": 2210359,
    "nome": "São Lourenço do Piauí",
    "estado_id": 22
  },
  {
    "id": 2210375,
    "nome": "São Luis do Piauí",
    "estado_id": 22
  },
  {
    "id": 2210383,
    "nome": "São Miguel da Baixa Grande",
    "estado_id": 22
  },
  {
    "id": 2210391,
    "nome": "São Miguel do Fidalgo",
    "estado_id": 22
  },
  {
    "id": 2210409,
    "nome": "São Miguel do Tapuio",
    "estado_id": 22
  },
  {
    "id": 2210508,
    "nome": "São Pedro do Piauí",
    "estado_id": 22
  },
  {
    "id": 2210607,
    "nome": "São Raimundo Nonato",
    "estado_id": 22
  },
  {
    "id": 2210623,
    "nome": "Sebastião Barros",
    "estado_id": 22
  },
  {
    "id": 2210631,
    "nome": "Sebastião Leal",
    "estado_id": 22
  },
  {
    "id": 2210656,
    "nome": "Sigefredo Pacheco",
    "estado_id": 22
  },
  {
    "id": 2210706,
    "nome": "Simões",
    "estado_id": 22
  },
  {
    "id": 2210805,
    "nome": "Simplício Mendes",
    "estado_id": 22
  },
  {
    "id": 2210904,
    "nome": "Socorro do Piauí",
    "estado_id": 22
  },
  {
    "id": 2210938,
    "nome": "Sussuapara",
    "estado_id": 22
  },
  {
    "id": 2210953,
    "nome": "Tamboril do Piauí",
    "estado_id": 22
  },
  {
    "id": 2210979,
    "nome": "Tanque do Piauí",
    "estado_id": 22
  },
  {
    "id": 2211001,
    "nome": "Teresina",
    "estado_id": 22
  },
  {
    "id": 2211100,
    "nome": "União",
    "estado_id": 22
  },
  {
    "id": 2211209,
    "nome": "Uruçuí",
    "estado_id": 22
  },
  {
    "id": 2211308,
    "nome": "Valença do Piauí",
    "estado_id": 22
  },
  {
    "id": 2211357,
    "nome": "Várzea Branca",
    "estado_id": 22
  },
  {
    "id": 2211407,
    "nome": "Várzea Grande",
    "estado_id": 22
  },
  {
    "id": 2211506,
    "nome": "Vera Mendes",
    "estado_id": 22
  },
  {
    "id": 2211605,
    "nome": "Vila Nova do Piauí",
    "estado_id": 22
  },
  {
    "id": 2211704,
    "nome": "Wall Ferraz",
    "estado_id": 22
  },
  {
    "id": 2300101,
    "nome": "Abaiara",
    "estado_id": 23
  },
  {
    "id": 2300150,
    "nome": "Acarape",
    "estado_id": 23
  },
  {
    "id": 2300200,
    "nome": "Acaraú",
    "estado_id": 23
  },
  {
    "id": 2300309,
    "nome": "Acopiara",
    "estado_id": 23
  },
  {
    "id": 2300408,
    "nome": "Aiuaba",
    "estado_id": 23
  },
  {
    "id": 2300507,
    "nome": "Alcântaras",
    "estado_id": 23
  },
  {
    "id": 2300606,
    "nome": "Altaneira",
    "estado_id": 23
  },
  {
    "id": 2300705,
    "nome": "Alto Santo",
    "estado_id": 23
  },
  {
    "id": 2300754,
    "nome": "Amontada",
    "estado_id": 23
  },
  {
    "id": 2300804,
    "nome": "Antonina do Norte",
    "estado_id": 23
  },
  {
    "id": 2300903,
    "nome": "Apuiarés",
    "estado_id": 23
  },
  {
    "id": 2301000,
    "nome": "Aquiraz",
    "estado_id": 23
  },
  {
    "id": 2301109,
    "nome": "Aracati",
    "estado_id": 23
  },
  {
    "id": 2301208,
    "nome": "Aracoiaba",
    "estado_id": 23
  },
  {
    "id": 2301257,
    "nome": "Ararendá",
    "estado_id": 23
  },
  {
    "id": 2301307,
    "nome": "Araripe",
    "estado_id": 23
  },
  {
    "id": 2301406,
    "nome": "Aratuba",
    "estado_id": 23
  },
  {
    "id": 2301505,
    "nome": "Arneiroz",
    "estado_id": 23
  },
  {
    "id": 2301604,
    "nome": "Assaré",
    "estado_id": 23
  },
  {
    "id": 2301703,
    "nome": "Aurora",
    "estado_id": 23
  },
  {
    "id": 2301802,
    "nome": "Baixio",
    "estado_id": 23
  },
  {
    "id": 2301851,
    "nome": "Banabuiú",
    "estado_id": 23
  },
  {
    "id": 2301901,
    "nome": "Barbalha",
    "estado_id": 23
  },
  {
    "id": 2301950,
    "nome": "Barreira",
    "estado_id": 23
  },
  {
    "id": 2302008,
    "nome": "Barro",
    "estado_id": 23
  },
  {
    "id": 2302057,
    "nome": "Barroquinha",
    "estado_id": 23
  },
  {
    "id": 2302107,
    "nome": "Baturité",
    "estado_id": 23
  },
  {
    "id": 2302206,
    "nome": "Beberibe",
    "estado_id": 23
  },
  {
    "id": 2302305,
    "nome": "Bela Cruz",
    "estado_id": 23
  },
  {
    "id": 2302404,
    "nome": "Boa Viagem",
    "estado_id": 23
  },
  {
    "id": 2302503,
    "nome": "Brejo Santo",
    "estado_id": 23
  },
  {
    "id": 2302602,
    "nome": "Camocim",
    "estado_id": 23
  },
  {
    "id": 2302701,
    "nome": "Campos Sales",
    "estado_id": 23
  },
  {
    "id": 2302800,
    "nome": "Canindé",
    "estado_id": 23
  },
  {
    "id": 2302909,
    "nome": "Capistrano",
    "estado_id": 23
  },
  {
    "id": 2303006,
    "nome": "Caridade",
    "estado_id": 23
  },
  {
    "id": 2303105,
    "nome": "Cariré",
    "estado_id": 23
  },
  {
    "id": 2303204,
    "nome": "Caririaçu",
    "estado_id": 23
  },
  {
    "id": 2303303,
    "nome": "Cariús",
    "estado_id": 23
  },
  {
    "id": 2303402,
    "nome": "Carnaubal",
    "estado_id": 23
  },
  {
    "id": 2303501,
    "nome": "Cascavel",
    "estado_id": 23
  },
  {
    "id": 2303600,
    "nome": "Catarina",
    "estado_id": 23
  },
  {
    "id": 2303659,
    "nome": "Catunda",
    "estado_id": 23
  },
  {
    "id": 2303709,
    "nome": "Caucaia",
    "estado_id": 23
  },
  {
    "id": 2303808,
    "nome": "Cedro",
    "estado_id": 23
  },
  {
    "id": 2303907,
    "nome": "Chaval",
    "estado_id": 23
  },
  {
    "id": 2303931,
    "nome": "Choró",
    "estado_id": 23
  },
  {
    "id": 2303956,
    "nome": "Chorozinho",
    "estado_id": 23
  },
  {
    "id": 2304004,
    "nome": "Coreaú",
    "estado_id": 23
  },
  {
    "id": 2304103,
    "nome": "Crateús",
    "estado_id": 23
  },
  {
    "id": 2304202,
    "nome": "Crato",
    "estado_id": 23
  },
  {
    "id": 2304236,
    "nome": "Croatá",
    "estado_id": 23
  },
  {
    "id": 2304251,
    "nome": "Cruz",
    "estado_id": 23
  },
  {
    "id": 2304269,
    "nome": "Deputado Irapuan Pinheiro",
    "estado_id": 23
  },
  {
    "id": 2304277,
    "nome": "Ereré",
    "estado_id": 23
  },
  {
    "id": 2304285,
    "nome": "Eusébio",
    "estado_id": 23
  },
  {
    "id": 2304301,
    "nome": "Farias Brito",
    "estado_id": 23
  },
  {
    "id": 2304350,
    "nome": "Forquilha",
    "estado_id": 23
  },
  {
    "id": 2304400,
    "nome": "Fortaleza",
    "estado_id": 23
  },
  {
    "id": 2304459,
    "nome": "Fortim",
    "estado_id": 23
  },
  {
    "id": 2304509,
    "nome": "Frecheirinha",
    "estado_id": 23
  },
  {
    "id": 2304608,
    "nome": "General Sampaio",
    "estado_id": 23
  },
  {
    "id": 2304657,
    "nome": "Graça",
    "estado_id": 23
  },
  {
    "id": 2304707,
    "nome": "Granja",
    "estado_id": 23
  },
  {
    "id": 2304806,
    "nome": "Granjeiro",
    "estado_id": 23
  },
  {
    "id": 2304905,
    "nome": "Groaíras",
    "estado_id": 23
  },
  {
    "id": 2304954,
    "nome": "Guaiúba",
    "estado_id": 23
  },
  {
    "id": 2305001,
    "nome": "Guaraciaba do Norte",
    "estado_id": 23
  },
  {
    "id": 2305100,
    "nome": "Guaramiranga",
    "estado_id": 23
  },
  {
    "id": 2305209,
    "nome": "Hidrolândia",
    "estado_id": 23
  },
  {
    "id": 2305233,
    "nome": "Horizonte",
    "estado_id": 23
  },
  {
    "id": 2305266,
    "nome": "Ibaretama",
    "estado_id": 23
  },
  {
    "id": 2305308,
    "nome": "Ibiapina",
    "estado_id": 23
  },
  {
    "id": 2305332,
    "nome": "Ibicuitinga",
    "estado_id": 23
  },
  {
    "id": 2305357,
    "nome": "Icapuí",
    "estado_id": 23
  },
  {
    "id": 2305407,
    "nome": "Icó",
    "estado_id": 23
  },
  {
    "id": 2305506,
    "nome": "Iguatu",
    "estado_id": 23
  },
  {
    "id": 2305605,
    "nome": "Independência",
    "estado_id": 23
  },
  {
    "id": 2305654,
    "nome": "Ipaporanga",
    "estado_id": 23
  },
  {
    "id": 2305704,
    "nome": "Ipaumirim",
    "estado_id": 23
  },
  {
    "id": 2305803,
    "nome": "Ipu",
    "estado_id": 23
  },
  {
    "id": 2305902,
    "nome": "Ipueiras",
    "estado_id": 23
  },
  {
    "id": 2306009,
    "nome": "Iracema",
    "estado_id": 23
  },
  {
    "id": 2306108,
    "nome": "Irauçuba",
    "estado_id": 23
  },
  {
    "id": 2306207,
    "nome": "Itaiçaba",
    "estado_id": 23
  },
  {
    "id": 2306256,
    "nome": "Itaitinga",
    "estado_id": 23
  },
  {
    "id": 2306306,
    "nome": "Itapajé",
    "estado_id": 23
  },
  {
    "id": 2306405,
    "nome": "Itapipoca",
    "estado_id": 23
  },
  {
    "id": 2306504,
    "nome": "Itapiúna",
    "estado_id": 23
  },
  {
    "id": 2306553,
    "nome": "Itarema",
    "estado_id": 23
  },
  {
    "id": 2306603,
    "nome": "Itatira",
    "estado_id": 23
  },
  {
    "id": 2306702,
    "nome": "Jaguaretama",
    "estado_id": 23
  },
  {
    "id": 2306801,
    "nome": "Jaguaribara",
    "estado_id": 23
  },
  {
    "id": 2306900,
    "nome": "Jaguaribe",
    "estado_id": 23
  },
  {
    "id": 2307007,
    "nome": "Jaguaruana",
    "estado_id": 23
  },
  {
    "id": 2307106,
    "nome": "Jardim",
    "estado_id": 23
  },
  {
    "id": 2307205,
    "nome": "Jati",
    "estado_id": 23
  },
  {
    "id": 2307254,
    "nome": "Jijoca de Jericoacoara",
    "estado_id": 23
  },
  {
    "id": 2307304,
    "nome": "Juazeiro do Norte",
    "estado_id": 23
  },
  {
    "id": 2307403,
    "nome": "Jucás",
    "estado_id": 23
  },
  {
    "id": 2307502,
    "nome": "Lavras da Mangabeira",
    "estado_id": 23
  },
  {
    "id": 2307601,
    "nome": "Limoeiro do Norte",
    "estado_id": 23
  },
  {
    "id": 2307635,
    "nome": "Madalena",
    "estado_id": 23
  },
  {
    "id": 2307650,
    "nome": "Maracanaú",
    "estado_id": 23
  },
  {
    "id": 2307700,
    "nome": "Maranguape",
    "estado_id": 23
  },
  {
    "id": 2307809,
    "nome": "Marco",
    "estado_id": 23
  },
  {
    "id": 2307908,
    "nome": "Martinópole",
    "estado_id": 23
  },
  {
    "id": 2308005,
    "nome": "Massapê",
    "estado_id": 23
  },
  {
    "id": 2308104,
    "nome": "Mauriti",
    "estado_id": 23
  },
  {
    "id": 2308203,
    "nome": "Meruoca",
    "estado_id": 23
  },
  {
    "id": 2308302,
    "nome": "Milagres",
    "estado_id": 23
  },
  {
    "id": 2308351,
    "nome": "Milhã",
    "estado_id": 23
  },
  {
    "id": 2308377,
    "nome": "Miraíma",
    "estado_id": 23
  },
  {
    "id": 2308401,
    "nome": "Missão Velha",
    "estado_id": 23
  },
  {
    "id": 2308500,
    "nome": "Mombaça",
    "estado_id": 23
  },
  {
    "id": 2308609,
    "nome": "Monsenhor Tabosa",
    "estado_id": 23
  },
  {
    "id": 2308708,
    "nome": "Morada Nova",
    "estado_id": 23
  },
  {
    "id": 2308807,
    "nome": "Moraújo",
    "estado_id": 23
  },
  {
    "id": 2308906,
    "nome": "Morrinhos",
    "estado_id": 23
  },
  {
    "id": 2309003,
    "nome": "Mucambo",
    "estado_id": 23
  },
  {
    "id": 2309102,
    "nome": "Mulungu",
    "estado_id": 23
  },
  {
    "id": 2309201,
    "nome": "Nova Olinda",
    "estado_id": 23
  },
  {
    "id": 2309300,
    "nome": "Nova Russas",
    "estado_id": 23
  },
  {
    "id": 2309409,
    "nome": "Novo Oriente",
    "estado_id": 23
  },
  {
    "id": 2309458,
    "nome": "Ocara",
    "estado_id": 23
  },
  {
    "id": 2309508,
    "nome": "Orós",
    "estado_id": 23
  },
  {
    "id": 2309607,
    "nome": "Pacajus",
    "estado_id": 23
  },
  {
    "id": 2309706,
    "nome": "Pacatuba",
    "estado_id": 23
  },
  {
    "id": 2309805,
    "nome": "Pacoti",
    "estado_id": 23
  },
  {
    "id": 2309904,
    "nome": "Pacujá",
    "estado_id": 23
  },
  {
    "id": 2310001,
    "nome": "Palhano",
    "estado_id": 23
  },
  {
    "id": 2310100,
    "nome": "Palmácia",
    "estado_id": 23
  },
  {
    "id": 2310209,
    "nome": "Paracuru",
    "estado_id": 23
  },
  {
    "id": 2310258,
    "nome": "Paraipaba",
    "estado_id": 23
  },
  {
    "id": 2310308,
    "nome": "Parambu",
    "estado_id": 23
  },
  {
    "id": 2310407,
    "nome": "Paramoti",
    "estado_id": 23
  },
  {
    "id": 2310506,
    "nome": "Pedra Branca",
    "estado_id": 23
  },
  {
    "id": 2310605,
    "nome": "Penaforte",
    "estado_id": 23
  },
  {
    "id": 2310704,
    "nome": "Pentecoste",
    "estado_id": 23
  },
  {
    "id": 2310803,
    "nome": "Pereiro",
    "estado_id": 23
  },
  {
    "id": 2310852,
    "nome": "Pindoretama",
    "estado_id": 23
  },
  {
    "id": 2310902,
    "nome": "Piquet Carneiro",
    "estado_id": 23
  },
  {
    "id": 2310951,
    "nome": "Pires Ferreira",
    "estado_id": 23
  },
  {
    "id": 2311009,
    "nome": "Poranga",
    "estado_id": 23
  },
  {
    "id": 2311108,
    "nome": "Porteiras",
    "estado_id": 23
  },
  {
    "id": 2311207,
    "nome": "Potengi",
    "estado_id": 23
  },
  {
    "id": 2311231,
    "nome": "Potiretama",
    "estado_id": 23
  },
  {
    "id": 2311264,
    "nome": "Quiterianópolis",
    "estado_id": 23
  },
  {
    "id": 2311306,
    "nome": "Quixadá",
    "estado_id": 23
  },
  {
    "id": 2311355,
    "nome": "Quixelô",
    "estado_id": 23
  },
  {
    "id": 2311405,
    "nome": "Quixeramobim",
    "estado_id": 23
  },
  {
    "id": 2311504,
    "nome": "Quixeré",
    "estado_id": 23
  },
  {
    "id": 2311603,
    "nome": "Redenção",
    "estado_id": 23
  },
  {
    "id": 2311702,
    "nome": "Reriutaba",
    "estado_id": 23
  },
  {
    "id": 2311801,
    "nome": "Russas",
    "estado_id": 23
  },
  {
    "id": 2311900,
    "nome": "Saboeiro",
    "estado_id": 23
  },
  {
    "id": 2311959,
    "nome": "Salitre",
    "estado_id": 23
  },
  {
    "id": 2312007,
    "nome": "Santana do Acaraú",
    "estado_id": 23
  },
  {
    "id": 2312106,
    "nome": "Santana do Cariri",
    "estado_id": 23
  },
  {
    "id": 2312205,
    "nome": "Santa Quitéria",
    "estado_id": 23
  },
  {
    "id": 2312304,
    "nome": "São Benedito",
    "estado_id": 23
  },
  {
    "id": 2312403,
    "nome": "São Gonçalo do Amarante",
    "estado_id": 23
  },
  {
    "id": 2312502,
    "nome": "São João do Jaguaribe",
    "estado_id": 23
  },
  {
    "id": 2312601,
    "nome": "São Luís do Curu",
    "estado_id": 23
  },
  {
    "id": 2312700,
    "nome": "Senador Pompeu",
    "estado_id": 23
  },
  {
    "id": 2312809,
    "nome": "Senador Sá",
    "estado_id": 23
  },
  {
    "id": 2312908,
    "nome": "Sobral",
    "estado_id": 23
  },
  {
    "id": 2313005,
    "nome": "Solonópole",
    "estado_id": 23
  },
  {
    "id": 2313104,
    "nome": "Tabuleiro do Norte",
    "estado_id": 23
  },
  {
    "id": 2313203,
    "nome": "Tamboril",
    "estado_id": 23
  },
  {
    "id": 2313252,
    "nome": "Tarrafas",
    "estado_id": 23
  },
  {
    "id": 2313302,
    "nome": "Tauá",
    "estado_id": 23
  },
  {
    "id": 2313351,
    "nome": "Tejuçuoca",
    "estado_id": 23
  },
  {
    "id": 2313401,
    "nome": "Tianguá",
    "estado_id": 23
  },
  {
    "id": 2313500,
    "nome": "Trairi",
    "estado_id": 23
  },
  {
    "id": 2313559,
    "nome": "Tururu",
    "estado_id": 23
  },
  {
    "id": 2313609,
    "nome": "Ubajara",
    "estado_id": 23
  },
  {
    "id": 2313708,
    "nome": "Umari",
    "estado_id": 23
  },
  {
    "id": 2313757,
    "nome": "Umirim",
    "estado_id": 23
  },
  {
    "id": 2313807,
    "nome": "Uruburetama",
    "estado_id": 23
  },
  {
    "id": 2313906,
    "nome": "Uruoca",
    "estado_id": 23
  },
  {
    "id": 2313955,
    "nome": "Varjota",
    "estado_id": 23
  },
  {
    "id": 2314003,
    "nome": "Várzea Alegre",
    "estado_id": 23
  },
  {
    "id": 2314102,
    "nome": "Viçosa do Ceará",
    "estado_id": 23
  },
  {
    "id": 2400109,
    "nome": "Acari",
    "estado_id": 24
  },
  {
    "id": 2400208,
    "nome": "Açu",
    "estado_id": 24
  },
  {
    "id": 2400307,
    "nome": "Afonso Bezerra",
    "estado_id": 24
  },
  {
    "id": 2400406,
    "nome": "Água Nova",
    "estado_id": 24
  },
  {
    "id": 2400505,
    "nome": "Alexandria",
    "estado_id": 24
  },
  {
    "id": 2400604,
    "nome": "Almino Afonso",
    "estado_id": 24
  },
  {
    "id": 2400703,
    "nome": "Alto do Rodrigues",
    "estado_id": 24
  },
  {
    "id": 2400802,
    "nome": "Angicos",
    "estado_id": 24
  },
  {
    "id": 2400901,
    "nome": "Antônio Martins",
    "estado_id": 24
  },
  {
    "id": 2401008,
    "nome": "Apodi",
    "estado_id": 24
  },
  {
    "id": 2401107,
    "nome": "Areia Branca",
    "estado_id": 24
  },
  {
    "id": 2401206,
    "nome": "Arês",
    "estado_id": 24
  },
  {
    "id": 2401305,
    "nome": "Campo Grande",
    "estado_id": 24
  },
  {
    "id": 2401404,
    "nome": "Baía Formosa",
    "estado_id": 24
  },
  {
    "id": 2401453,
    "nome": "Baraúna",
    "estado_id": 24
  },
  {
    "id": 2401503,
    "nome": "Barcelona",
    "estado_id": 24
  },
  {
    "id": 2401602,
    "nome": "Bento Fernandes",
    "estado_id": 24
  },
  {
    "id": 2401651,
    "nome": "Bodó",
    "estado_id": 24
  },
  {
    "id": 2401701,
    "nome": "Bom Jesus",
    "estado_id": 24
  },
  {
    "id": 2401800,
    "nome": "Brejinho",
    "estado_id": 24
  },
  {
    "id": 2401859,
    "nome": "Caiçara do Norte",
    "estado_id": 24
  },
  {
    "id": 2401909,
    "nome": "Caiçara do Rio do Vento",
    "estado_id": 24
  },
  {
    "id": 2402006,
    "nome": "Caicó",
    "estado_id": 24
  },
  {
    "id": 2402105,
    "nome": "Campo Redondo",
    "estado_id": 24
  },
  {
    "id": 2402204,
    "nome": "Canguaretama",
    "estado_id": 24
  },
  {
    "id": 2402303,
    "nome": "Caraúbas",
    "estado_id": 24
  },
  {
    "id": 2402402,
    "nome": "Carnaúba dos Dantas",
    "estado_id": 24
  },
  {
    "id": 2402501,
    "nome": "Carnaubais",
    "estado_id": 24
  },
  {
    "id": 2402600,
    "nome": "Ceará-Mirim",
    "estado_id": 24
  },
  {
    "id": 2402709,
    "nome": "Cerro Corá",
    "estado_id": 24
  },
  {
    "id": 2402808,
    "nome": "Coronel Ezequiel",
    "estado_id": 24
  },
  {
    "id": 2402907,
    "nome": "Coronel João Pessoa",
    "estado_id": 24
  },
  {
    "id": 2403004,
    "nome": "Cruzeta",
    "estado_id": 24
  },
  {
    "id": 2403103,
    "nome": "Currais Novos",
    "estado_id": 24
  },
  {
    "id": 2403202,
    "nome": "Doutor Severiano",
    "estado_id": 24
  },
  {
    "id": 2403251,
    "nome": "Parnamirim",
    "estado_id": 24
  },
  {
    "id": 2403301,
    "nome": "Encanto",
    "estado_id": 24
  },
  {
    "id": 2403400,
    "nome": "Equador",
    "estado_id": 24
  },
  {
    "id": 2403509,
    "nome": "Espírito Santo",
    "estado_id": 24
  },
  {
    "id": 2403608,
    "nome": "Extremoz",
    "estado_id": 24
  },
  {
    "id": 2403707,
    "nome": "Felipe Guerra",
    "estado_id": 24
  },
  {
    "id": 2403756,
    "nome": "Fernando Pedroza",
    "estado_id": 24
  },
  {
    "id": 2403806,
    "nome": "Florânia",
    "estado_id": 24
  },
  {
    "id": 2403905,
    "nome": "Francisco Dantas",
    "estado_id": 24
  },
  {
    "id": 2404002,
    "nome": "Frutuoso Gomes",
    "estado_id": 24
  },
  {
    "id": 2404101,
    "nome": "Galinhos",
    "estado_id": 24
  },
  {
    "id": 2404200,
    "nome": "Goianinha",
    "estado_id": 24
  },
  {
    "id": 2404309,
    "nome": "Governador Dix-Sept Rosado",
    "estado_id": 24
  },
  {
    "id": 2404408,
    "nome": "Grossos",
    "estado_id": 24
  },
  {
    "id": 2404507,
    "nome": "Guamaré",
    "estado_id": 24
  },
  {
    "id": 2404606,
    "nome": "Ielmo Marinho",
    "estado_id": 24
  },
  {
    "id": 2404705,
    "nome": "Ipanguaçu",
    "estado_id": 24
  },
  {
    "id": 2404804,
    "nome": "Ipueira",
    "estado_id": 24
  },
  {
    "id": 2404853,
    "nome": "Itajá",
    "estado_id": 24
  },
  {
    "id": 2404903,
    "nome": "Itaú",
    "estado_id": 24
  },
  {
    "id": 2405009,
    "nome": "Jaçanã",
    "estado_id": 24
  },
  {
    "id": 2405108,
    "nome": "Jandaíra",
    "estado_id": 24
  },
  {
    "id": 2405207,
    "nome": "Janduís",
    "estado_id": 24
  },
  {
    "id": 2405306,
    "nome": "Januário Cicco",
    "estado_id": 24
  },
  {
    "id": 2405405,
    "nome": "Japi",
    "estado_id": 24
  },
  {
    "id": 2405504,
    "nome": "Jardim de Angicos",
    "estado_id": 24
  },
  {
    "id": 2405603,
    "nome": "Jardim de Piranhas",
    "estado_id": 24
  },
  {
    "id": 2405702,
    "nome": "Jardim do Seridó",
    "estado_id": 24
  },
  {
    "id": 2405801,
    "nome": "João Câmara",
    "estado_id": 24
  },
  {
    "id": 2405900,
    "nome": "João Dias",
    "estado_id": 24
  },
  {
    "id": 2406007,
    "nome": "José da Penha",
    "estado_id": 24
  },
  {
    "id": 2406106,
    "nome": "Jucurutu",
    "estado_id": 24
  },
  {
    "id": 2406155,
    "nome": "Jundiá",
    "estado_id": 24
  },
  {
    "id": 2406205,
    "nome": "Lagoa d'Anta",
    "estado_id": 24
  },
  {
    "id": 2406304,
    "nome": "Lagoa de Pedras",
    "estado_id": 24
  },
  {
    "id": 2406403,
    "nome": "Lagoa de Velhos",
    "estado_id": 24
  },
  {
    "id": 2406502,
    "nome": "Lagoa Nova",
    "estado_id": 24
  },
  {
    "id": 2406601,
    "nome": "Lagoa Salgada",
    "estado_id": 24
  },
  {
    "id": 2406700,
    "nome": "Lajes",
    "estado_id": 24
  },
  {
    "id": 2406809,
    "nome": "Lajes Pintadas",
    "estado_id": 24
  },
  {
    "id": 2406908,
    "nome": "Lucrécia",
    "estado_id": 24
  },
  {
    "id": 2407005,
    "nome": "Luís Gomes",
    "estado_id": 24
  },
  {
    "id": 2407104,
    "nome": "Macaíba",
    "estado_id": 24
  },
  {
    "id": 2407203,
    "nome": "Macau",
    "estado_id": 24
  },
  {
    "id": 2407252,
    "nome": "Major Sales",
    "estado_id": 24
  },
  {
    "id": 2407302,
    "nome": "Marcelino Vieira",
    "estado_id": 24
  },
  {
    "id": 2407401,
    "nome": "Martins",
    "estado_id": 24
  },
  {
    "id": 2407500,
    "nome": "Maxaranguape",
    "estado_id": 24
  },
  {
    "id": 2407609,
    "nome": "Messias Targino",
    "estado_id": 24
  },
  {
    "id": 2407708,
    "nome": "Montanhas",
    "estado_id": 24
  },
  {
    "id": 2407807,
    "nome": "Monte Alegre",
    "estado_id": 24
  },
  {
    "id": 2407906,
    "nome": "Monte das Gameleiras",
    "estado_id": 24
  },
  {
    "id": 2408003,
    "nome": "Mossoró",
    "estado_id": 24
  },
  {
    "id": 2408102,
    "nome": "Natal",
    "estado_id": 24
  },
  {
    "id": 2408201,
    "nome": "Nísia Floresta",
    "estado_id": 24
  },
  {
    "id": 2408300,
    "nome": "Nova Cruz",
    "estado_id": 24
  },
  {
    "id": 2408409,
    "nome": "Olho d'Água do Borges",
    "estado_id": 24
  },
  {
    "id": 2408508,
    "nome": "Ouro Branco",
    "estado_id": 24
  },
  {
    "id": 2408607,
    "nome": "Paraná",
    "estado_id": 24
  },
  {
    "id": 2408706,
    "nome": "Paraú",
    "estado_id": 24
  },
  {
    "id": 2408805,
    "nome": "Parazinho",
    "estado_id": 24
  },
  {
    "id": 2408904,
    "nome": "Parelhas",
    "estado_id": 24
  },
  {
    "id": 2408953,
    "nome": "Rio do Fogo",
    "estado_id": 24
  },
  {
    "id": 2409100,
    "nome": "Passa e Fica",
    "estado_id": 24
  },
  {
    "id": 2409209,
    "nome": "Passagem",
    "estado_id": 24
  },
  {
    "id": 2409308,
    "nome": "Patu",
    "estado_id": 24
  },
  {
    "id": 2409332,
    "nome": "Santa Maria",
    "estado_id": 24
  },
  {
    "id": 2409407,
    "nome": "Pau dos Ferros",
    "estado_id": 24
  },
  {
    "id": 2409506,
    "nome": "Pedra Grande",
    "estado_id": 24
  },
  {
    "id": 2409605,
    "nome": "Pedra Preta",
    "estado_id": 24
  },
  {
    "id": 2409704,
    "nome": "Pedro Avelino",
    "estado_id": 24
  },
  {
    "id": 2409803,
    "nome": "Pedro Velho",
    "estado_id": 24
  },
  {
    "id": 2409902,
    "nome": "Pendências",
    "estado_id": 24
  },
  {
    "id": 2410009,
    "nome": "Pilões",
    "estado_id": 24
  },
  {
    "id": 2410108,
    "nome": "Poço Branco",
    "estado_id": 24
  },
  {
    "id": 2410207,
    "nome": "Portalegre",
    "estado_id": 24
  },
  {
    "id": 2410256,
    "nome": "Porto do Mangue",
    "estado_id": 24
  },
  {
    "id": 2410306,
    "nome": "Serra Caiada",
    "estado_id": 24
  },
  {
    "id": 2410405,
    "nome": "Pureza",
    "estado_id": 24
  },
  {
    "id": 2410504,
    "nome": "Rafael Fernandes",
    "estado_id": 24
  },
  {
    "id": 2410603,
    "nome": "Rafael Godeiro",
    "estado_id": 24
  },
  {
    "id": 2410702,
    "nome": "Riacho da Cruz",
    "estado_id": 24
  },
  {
    "id": 2410801,
    "nome": "Riacho de Santana",
    "estado_id": 24
  },
  {
    "id": 2410900,
    "nome": "Riachuelo",
    "estado_id": 24
  },
  {
    "id": 2411007,
    "nome": "Rodolfo Fernandes",
    "estado_id": 24
  },
  {
    "id": 2411056,
    "nome": "Tibau",
    "estado_id": 24
  },
  {
    "id": 2411106,
    "nome": "Ruy Barbosa",
    "estado_id": 24
  },
  {
    "id": 2411205,
    "nome": "Santa Cruz",
    "estado_id": 24
  },
  {
    "id": 2411403,
    "nome": "Santana do Matos",
    "estado_id": 24
  },
  {
    "id": 2411429,
    "nome": "Santana do Seridó",
    "estado_id": 24
  },
  {
    "id": 2411502,
    "nome": "Santo Antônio",
    "estado_id": 24
  },
  {
    "id": 2411601,
    "nome": "São Bento do Norte",
    "estado_id": 24
  },
  {
    "id": 2411700,
    "nome": "São Bento do Trairí",
    "estado_id": 24
  },
  {
    "id": 2411809,
    "nome": "São Fernando",
    "estado_id": 24
  },
  {
    "id": 2411908,
    "nome": "São Francisco do Oeste",
    "estado_id": 24
  },
  {
    "id": 2412005,
    "nome": "São Gonçalo do Amarante",
    "estado_id": 24
  },
  {
    "id": 2412104,
    "nome": "São João do Sabugi",
    "estado_id": 24
  },
  {
    "id": 2412203,
    "nome": "São José de Mipibu",
    "estado_id": 24
  },
  {
    "id": 2412302,
    "nome": "São José do Campestre",
    "estado_id": 24
  },
  {
    "id": 2412401,
    "nome": "São José do Seridó",
    "estado_id": 24
  },
  {
    "id": 2412500,
    "nome": "São Miguel",
    "estado_id": 24
  },
  {
    "id": 2412559,
    "nome": "São Miguel do Gostoso",
    "estado_id": 24
  },
  {
    "id": 2412609,
    "nome": "São Paulo do Potengi",
    "estado_id": 24
  },
  {
    "id": 2412708,
    "nome": "São Pedro",
    "estado_id": 24
  },
  {
    "id": 2412807,
    "nome": "São Rafael",
    "estado_id": 24
  },
  {
    "id": 2412906,
    "nome": "São Tomé",
    "estado_id": 24
  },
  {
    "id": 2413003,
    "nome": "São Vicente",
    "estado_id": 24
  },
  {
    "id": 2413102,
    "nome": "Senador Elói de Souza",
    "estado_id": 24
  },
  {
    "id": 2413201,
    "nome": "Senador Georgino Avelino",
    "estado_id": 24
  },
  {
    "id": 2413300,
    "nome": "Serra de São Bento",
    "estado_id": 24
  },
  {
    "id": 2413359,
    "nome": "Serra do Mel",
    "estado_id": 24
  },
  {
    "id": 2413409,
    "nome": "Serra Negra do Norte",
    "estado_id": 24
  },
  {
    "id": 2413508,
    "nome": "Serrinha",
    "estado_id": 24
  },
  {
    "id": 2413557,
    "nome": "Serrinha dos Pintos",
    "estado_id": 24
  },
  {
    "id": 2413607,
    "nome": "Severiano Melo",
    "estado_id": 24
  },
  {
    "id": 2413706,
    "nome": "Sítio Novo",
    "estado_id": 24
  },
  {
    "id": 2413805,
    "nome": "Taboleiro Grande",
    "estado_id": 24
  },
  {
    "id": 2413904,
    "nome": "Taipu",
    "estado_id": 24
  },
  {
    "id": 2414001,
    "nome": "Tangará",
    "estado_id": 24
  },
  {
    "id": 2414100,
    "nome": "Tenente Ananias",
    "estado_id": 24
  },
  {
    "id": 2414159,
    "nome": "Tenente Laurentino Cruz",
    "estado_id": 24
  },
  {
    "id": 2414209,
    "nome": "Tibau do Sul",
    "estado_id": 24
  },
  {
    "id": 2414308,
    "nome": "Timbaúba dos Batistas",
    "estado_id": 24
  },
  {
    "id": 2414407,
    "nome": "Touros",
    "estado_id": 24
  },
  {
    "id": 2414456,
    "nome": "Triunfo Potiguar",
    "estado_id": 24
  },
  {
    "id": 2414506,
    "nome": "Umarizal",
    "estado_id": 24
  },
  {
    "id": 2414605,
    "nome": "Upanema",
    "estado_id": 24
  },
  {
    "id": 2414704,
    "nome": "Várzea",
    "estado_id": 24
  },
  {
    "id": 2414753,
    "nome": "Venha-Ver",
    "estado_id": 24
  },
  {
    "id": 2414803,
    "nome": "Vera Cruz",
    "estado_id": 24
  },
  {
    "id": 2414902,
    "nome": "Viçosa",
    "estado_id": 24
  },
  {
    "id": 2415008,
    "nome": "Vila Flor",
    "estado_id": 24
  },
  {
    "id": 2500106,
    "nome": "Água Branca",
    "estado_id": 25
  },
  {
    "id": 2500205,
    "nome": "Aguiar",
    "estado_id": 25
  },
  {
    "id": 2500304,
    "nome": "Alagoa Grande",
    "estado_id": 25
  },
  {
    "id": 2500403,
    "nome": "Alagoa Nova",
    "estado_id": 25
  },
  {
    "id": 2500502,
    "nome": "Alagoinha",
    "estado_id": 25
  },
  {
    "id": 2500536,
    "nome": "Alcantil",
    "estado_id": 25
  },
  {
    "id": 2500577,
    "nome": "Algodão de Jandaíra",
    "estado_id": 25
  },
  {
    "id": 2500601,
    "nome": "Alhandra",
    "estado_id": 25
  },
  {
    "id": 2500700,
    "nome": "São João do Rio do Peixe",
    "estado_id": 25
  },
  {
    "id": 2500734,
    "nome": "Amparo",
    "estado_id": 25
  },
  {
    "id": 2500775,
    "nome": "Aparecida",
    "estado_id": 25
  },
  {
    "id": 2500809,
    "nome": "Araçagi",
    "estado_id": 25
  },
  {
    "id": 2500908,
    "nome": "Arara",
    "estado_id": 25
  },
  {
    "id": 2501005,
    "nome": "Araruna",
    "estado_id": 25
  },
  {
    "id": 2501104,
    "nome": "Areia",
    "estado_id": 25
  },
  {
    "id": 2501153,
    "nome": "Areia de Baraúnas",
    "estado_id": 25
  },
  {
    "id": 2501203,
    "nome": "Areial",
    "estado_id": 25
  },
  {
    "id": 2501302,
    "nome": "Aroeiras",
    "estado_id": 25
  },
  {
    "id": 2501351,
    "nome": "Assunção",
    "estado_id": 25
  },
  {
    "id": 2501401,
    "nome": "Baía da Traição",
    "estado_id": 25
  },
  {
    "id": 2501500,
    "nome": "Bananeiras",
    "estado_id": 25
  },
  {
    "id": 2501534,
    "nome": "Baraúna",
    "estado_id": 25
  },
  {
    "id": 2501575,
    "nome": "Barra de Santana",
    "estado_id": 25
  },
  {
    "id": 2501609,
    "nome": "Barra de Santa Rosa",
    "estado_id": 25
  },
  {
    "id": 2501708,
    "nome": "Barra de São Miguel",
    "estado_id": 25
  },
  {
    "id": 2501807,
    "nome": "Bayeux",
    "estado_id": 25
  },
  {
    "id": 2501906,
    "nome": "Belém",
    "estado_id": 25
  },
  {
    "id": 2502003,
    "nome": "Belém do Brejo do Cruz",
    "estado_id": 25
  },
  {
    "id": 2502052,
    "nome": "Bernardino Batista",
    "estado_id": 25
  },
  {
    "id": 2502102,
    "nome": "Boa Ventura",
    "estado_id": 25
  },
  {
    "id": 2502151,
    "nome": "Boa Vista",
    "estado_id": 25
  },
  {
    "id": 2502201,
    "nome": "Bom Jesus",
    "estado_id": 25
  },
  {
    "id": 2502300,
    "nome": "Bom Sucesso",
    "estado_id": 25
  },
  {
    "id": 2502409,
    "nome": "Bonito de Santa Fé",
    "estado_id": 25
  },
  {
    "id": 2502508,
    "nome": "Boqueirão",
    "estado_id": 25
  },
  {
    "id": 2502607,
    "nome": "Igaracy",
    "estado_id": 25
  },
  {
    "id": 2502706,
    "nome": "Borborema",
    "estado_id": 25
  },
  {
    "id": 2502805,
    "nome": "Brejo do Cruz",
    "estado_id": 25
  },
  {
    "id": 2502904,
    "nome": "Brejo dos Santos",
    "estado_id": 25
  },
  {
    "id": 2503001,
    "nome": "Caaporã",
    "estado_id": 25
  },
  {
    "id": 2503100,
    "nome": "Cabaceiras",
    "estado_id": 25
  },
  {
    "id": 2503209,
    "nome": "Cabedelo",
    "estado_id": 25
  },
  {
    "id": 2503308,
    "nome": "Cachoeira dos Índios",
    "estado_id": 25
  },
  {
    "id": 2503407,
    "nome": "Cacimba de Areia",
    "estado_id": 25
  },
  {
    "id": 2503506,
    "nome": "Cacimba de Dentro",
    "estado_id": 25
  },
  {
    "id": 2503555,
    "nome": "Cacimbas",
    "estado_id": 25
  },
  {
    "id": 2503605,
    "nome": "Caiçara",
    "estado_id": 25
  },
  {
    "id": 2503704,
    "nome": "Cajazeiras",
    "estado_id": 25
  },
  {
    "id": 2503753,
    "nome": "Cajazeirinhas",
    "estado_id": 25
  },
  {
    "id": 2503803,
    "nome": "Caldas Brandão",
    "estado_id": 25
  },
  {
    "id": 2503902,
    "nome": "Camalaú",
    "estado_id": 25
  },
  {
    "id": 2504009,
    "nome": "Campina Grande",
    "estado_id": 25
  },
  {
    "id": 2504033,
    "nome": "Capim",
    "estado_id": 25
  },
  {
    "id": 2504074,
    "nome": "Caraúbas",
    "estado_id": 25
  },
  {
    "id": 2504108,
    "nome": "Carrapateira",
    "estado_id": 25
  },
  {
    "id": 2504157,
    "nome": "Casserengue",
    "estado_id": 25
  },
  {
    "id": 2504207,
    "nome": "Catingueira",
    "estado_id": 25
  },
  {
    "id": 2504306,
    "nome": "Catolé do Rocha",
    "estado_id": 25
  },
  {
    "id": 2504355,
    "nome": "Caturité",
    "estado_id": 25
  },
  {
    "id": 2504405,
    "nome": "Conceição",
    "estado_id": 25
  },
  {
    "id": 2504504,
    "nome": "Condado",
    "estado_id": 25
  },
  {
    "id": 2504603,
    "nome": "Conde",
    "estado_id": 25
  },
  {
    "id": 2504702,
    "nome": "Congo",
    "estado_id": 25
  },
  {
    "id": 2504801,
    "nome": "Coremas",
    "estado_id": 25
  },
  {
    "id": 2504850,
    "nome": "Coxixola",
    "estado_id": 25
  },
  {
    "id": 2504900,
    "nome": "Cruz do Espírito Santo",
    "estado_id": 25
  },
  {
    "id": 2505006,
    "nome": "Cubati",
    "estado_id": 25
  },
  {
    "id": 2505105,
    "nome": "Cuité",
    "estado_id": 25
  },
  {
    "id": 2505204,
    "nome": "Cuitegi",
    "estado_id": 25
  },
  {
    "id": 2505238,
    "nome": "Cuité de Mamanguape",
    "estado_id": 25
  },
  {
    "id": 2505279,
    "nome": "Curral de Cima",
    "estado_id": 25
  },
  {
    "id": 2505303,
    "nome": "Curral Velho",
    "estado_id": 25
  },
  {
    "id": 2505352,
    "nome": "Damião",
    "estado_id": 25
  },
  {
    "id": 2505402,
    "nome": "Desterro",
    "estado_id": 25
  },
  {
    "id": 2505501,
    "nome": "Vista Serrana",
    "estado_id": 25
  },
  {
    "id": 2505600,
    "nome": "Diamante",
    "estado_id": 25
  },
  {
    "id": 2505709,
    "nome": "Dona Inês",
    "estado_id": 25
  },
  {
    "id": 2505808,
    "nome": "Duas Estradas",
    "estado_id": 25
  },
  {
    "id": 2505907,
    "nome": "Emas",
    "estado_id": 25
  },
  {
    "id": 2506004,
    "nome": "Esperança",
    "estado_id": 25
  },
  {
    "id": 2506103,
    "nome": "Fagundes",
    "estado_id": 25
  },
  {
    "id": 2506202,
    "nome": "Frei Martinho",
    "estado_id": 25
  },
  {
    "id": 2506251,
    "nome": "Gado Bravo",
    "estado_id": 25
  },
  {
    "id": 2506301,
    "nome": "Guarabira",
    "estado_id": 25
  },
  {
    "id": 2506400,
    "nome": "Gurinhém",
    "estado_id": 25
  },
  {
    "id": 2506509,
    "nome": "Gurjão",
    "estado_id": 25
  },
  {
    "id": 2506608,
    "nome": "Ibiara",
    "estado_id": 25
  },
  {
    "id": 2506707,
    "nome": "Imaculada",
    "estado_id": 25
  },
  {
    "id": 2506806,
    "nome": "Ingá",
    "estado_id": 25
  },
  {
    "id": 2506905,
    "nome": "Itabaiana",
    "estado_id": 25
  },
  {
    "id": 2507002,
    "nome": "Itaporanga",
    "estado_id": 25
  },
  {
    "id": 2507101,
    "nome": "Itapororoca",
    "estado_id": 25
  },
  {
    "id": 2507200,
    "nome": "Itatuba",
    "estado_id": 25
  },
  {
    "id": 2507309,
    "nome": "Jacaraú",
    "estado_id": 25
  },
  {
    "id": 2507408,
    "nome": "Jericó",
    "estado_id": 25
  },
  {
    "id": 2507507,
    "nome": "João Pessoa",
    "estado_id": 25
  },
  {
    "id": 2507606,
    "nome": "Juarez Távora",
    "estado_id": 25
  },
  {
    "id": 2507705,
    "nome": "Juazeirinho",
    "estado_id": 25
  },
  {
    "id": 2507804,
    "nome": "Junco do Seridó",
    "estado_id": 25
  },
  {
    "id": 2507903,
    "nome": "Juripiranga",
    "estado_id": 25
  },
  {
    "id": 2508000,
    "nome": "Juru",
    "estado_id": 25
  },
  {
    "id": 2508109,
    "nome": "Lagoa",
    "estado_id": 25
  },
  {
    "id": 2508208,
    "nome": "Lagoa de Dentro",
    "estado_id": 25
  },
  {
    "id": 2508307,
    "nome": "Lagoa Seca",
    "estado_id": 25
  },
  {
    "id": 2508406,
    "nome": "Lastro",
    "estado_id": 25
  },
  {
    "id": 2508505,
    "nome": "Livramento",
    "estado_id": 25
  },
  {
    "id": 2508554,
    "nome": "Logradouro",
    "estado_id": 25
  },
  {
    "id": 2508604,
    "nome": "Lucena",
    "estado_id": 25
  },
  {
    "id": 2508703,
    "nome": "Mãe d'Água",
    "estado_id": 25
  },
  {
    "id": 2508802,
    "nome": "Malta",
    "estado_id": 25
  },
  {
    "id": 2508901,
    "nome": "Mamanguape",
    "estado_id": 25
  },
  {
    "id": 2509008,
    "nome": "Manaíra",
    "estado_id": 25
  },
  {
    "id": 2509057,
    "nome": "Marcação",
    "estado_id": 25
  },
  {
    "id": 2509107,
    "nome": "Mari",
    "estado_id": 25
  },
  {
    "id": 2509156,
    "nome": "Marizópolis",
    "estado_id": 25
  },
  {
    "id": 2509206,
    "nome": "Massaranduba",
    "estado_id": 25
  },
  {
    "id": 2509305,
    "nome": "Mataraca",
    "estado_id": 25
  },
  {
    "id": 2509339,
    "nome": "Matinhas",
    "estado_id": 25
  },
  {
    "id": 2509370,
    "nome": "Mato Grosso",
    "estado_id": 25
  },
  {
    "id": 2509396,
    "nome": "Maturéia",
    "estado_id": 25
  },
  {
    "id": 2509404,
    "nome": "Mogeiro",
    "estado_id": 25
  },
  {
    "id": 2509503,
    "nome": "Montadas",
    "estado_id": 25
  },
  {
    "id": 2509602,
    "nome": "Monte Horebe",
    "estado_id": 25
  },
  {
    "id": 2509701,
    "nome": "Monteiro",
    "estado_id": 25
  },
  {
    "id": 2509800,
    "nome": "Mulungu",
    "estado_id": 25
  },
  {
    "id": 2509909,
    "nome": "Natuba",
    "estado_id": 25
  },
  {
    "id": 2510006,
    "nome": "Nazarezinho",
    "estado_id": 25
  },
  {
    "id": 2510105,
    "nome": "Nova Floresta",
    "estado_id": 25
  },
  {
    "id": 2510204,
    "nome": "Nova Olinda",
    "estado_id": 25
  },
  {
    "id": 2510303,
    "nome": "Nova Palmeira",
    "estado_id": 25
  },
  {
    "id": 2510402,
    "nome": "Olho d'Água",
    "estado_id": 25
  },
  {
    "id": 2510501,
    "nome": "Olivedos",
    "estado_id": 25
  },
  {
    "id": 2510600,
    "nome": "Ouro Velho",
    "estado_id": 25
  },
  {
    "id": 2510659,
    "nome": "Parari",
    "estado_id": 25
  },
  {
    "id": 2510709,
    "nome": "Passagem",
    "estado_id": 25
  },
  {
    "id": 2510808,
    "nome": "Patos",
    "estado_id": 25
  },
  {
    "id": 2510907,
    "nome": "Paulista",
    "estado_id": 25
  },
  {
    "id": 2511004,
    "nome": "Pedra Branca",
    "estado_id": 25
  },
  {
    "id": 2511103,
    "nome": "Pedra Lavrada",
    "estado_id": 25
  },
  {
    "id": 2511202,
    "nome": "Pedras de Fogo",
    "estado_id": 25
  },
  {
    "id": 2511301,
    "nome": "Piancó",
    "estado_id": 25
  },
  {
    "id": 2511400,
    "nome": "Picuí",
    "estado_id": 25
  },
  {
    "id": 2511509,
    "nome": "Pilar",
    "estado_id": 25
  },
  {
    "id": 2511608,
    "nome": "Pilões",
    "estado_id": 25
  },
  {
    "id": 2511707,
    "nome": "Pilõezinhos",
    "estado_id": 25
  },
  {
    "id": 2511806,
    "nome": "Pirpirituba",
    "estado_id": 25
  },
  {
    "id": 2511905,
    "nome": "Pitimbu",
    "estado_id": 25
  },
  {
    "id": 2512002,
    "nome": "Pocinhos",
    "estado_id": 25
  },
  {
    "id": 2512036,
    "nome": "Poço Dantas",
    "estado_id": 25
  },
  {
    "id": 2512077,
    "nome": "Poço de José de Moura",
    "estado_id": 25
  },
  {
    "id": 2512101,
    "nome": "Pombal",
    "estado_id": 25
  },
  {
    "id": 2512200,
    "nome": "Prata",
    "estado_id": 25
  },
  {
    "id": 2512309,
    "nome": "Princesa Isabel",
    "estado_id": 25
  },
  {
    "id": 2512408,
    "nome": "Puxinanã",
    "estado_id": 25
  },
  {
    "id": 2512507,
    "nome": "Queimadas",
    "estado_id": 25
  },
  {
    "id": 2512606,
    "nome": "Quixaba",
    "estado_id": 25
  },
  {
    "id": 2512705,
    "nome": "Remígio",
    "estado_id": 25
  },
  {
    "id": 2512721,
    "nome": "Pedro Régis",
    "estado_id": 25
  },
  {
    "id": 2512747,
    "nome": "Riachão",
    "estado_id": 25
  },
  {
    "id": 2512754,
    "nome": "Riachão do Bacamarte",
    "estado_id": 25
  },
  {
    "id": 2512762,
    "nome": "Riachão do Poço",
    "estado_id": 25
  },
  {
    "id": 2512788,
    "nome": "Riacho de Santo Antônio",
    "estado_id": 25
  },
  {
    "id": 2512804,
    "nome": "Riacho dos Cavalos",
    "estado_id": 25
  },
  {
    "id": 2512903,
    "nome": "Rio Tinto",
    "estado_id": 25
  },
  {
    "id": 2513000,
    "nome": "Salgadinho",
    "estado_id": 25
  },
  {
    "id": 2513109,
    "nome": "Salgado de São Félix",
    "estado_id": 25
  },
  {
    "id": 2513158,
    "nome": "Santa Cecília",
    "estado_id": 25
  },
  {
    "id": 2513208,
    "nome": "Santa Cruz",
    "estado_id": 25
  },
  {
    "id": 2513307,
    "nome": "Santa Helena",
    "estado_id": 25
  },
  {
    "id": 2513356,
    "nome": "Santa Inês",
    "estado_id": 25
  },
  {
    "id": 2513406,
    "nome": "Santa Luzia",
    "estado_id": 25
  },
  {
    "id": 2513505,
    "nome": "Santana de Mangueira",
    "estado_id": 25
  },
  {
    "id": 2513604,
    "nome": "Santana dos Garrotes",
    "estado_id": 25
  },
  {
    "id": 2513653,
    "nome": "Joca Claudino",
    "estado_id": 25
  },
  {
    "id": 2513703,
    "nome": "Santa Rita",
    "estado_id": 25
  },
  {
    "id": 2513802,
    "nome": "Santa Teresinha",
    "estado_id": 25
  },
  {
    "id": 2513851,
    "nome": "Santo André",
    "estado_id": 25
  },
  {
    "id": 2513901,
    "nome": "São Bento",
    "estado_id": 25
  },
  {
    "id": 2513927,
    "nome": "São Bentinho",
    "estado_id": 25
  },
  {
    "id": 2513943,
    "nome": "São Domingos do Cariri",
    "estado_id": 25
  },
  {
    "id": 2513968,
    "nome": "São Domingos",
    "estado_id": 25
  },
  {
    "id": 2513984,
    "nome": "São Francisco",
    "estado_id": 25
  },
  {
    "id": 2514008,
    "nome": "São João do Cariri",
    "estado_id": 25
  },
  {
    "id": 2514107,
    "nome": "São João do Tigre",
    "estado_id": 25
  },
  {
    "id": 2514206,
    "nome": "São José da Lagoa Tapada",
    "estado_id": 25
  },
  {
    "id": 2514305,
    "nome": "São José de Caiana",
    "estado_id": 25
  },
  {
    "id": 2514404,
    "nome": "São José de Espinharas",
    "estado_id": 25
  },
  {
    "id": 2514453,
    "nome": "São José dos Ramos",
    "estado_id": 25
  },
  {
    "id": 2514503,
    "nome": "São José de Piranhas",
    "estado_id": 25
  },
  {
    "id": 2514552,
    "nome": "São José de Princesa",
    "estado_id": 25
  },
  {
    "id": 2514602,
    "nome": "São José do Bonfim",
    "estado_id": 25
  },
  {
    "id": 2514651,
    "nome": "São José do Brejo do Cruz",
    "estado_id": 25
  },
  {
    "id": 2514701,
    "nome": "São José do Sabugi",
    "estado_id": 25
  },
  {
    "id": 2514800,
    "nome": "São José dos Cordeiros",
    "estado_id": 25
  },
  {
    "id": 2514909,
    "nome": "São Mamede",
    "estado_id": 25
  },
  {
    "id": 2515005,
    "nome": "São Miguel de Taipu",
    "estado_id": 25
  },
  {
    "id": 2515104,
    "nome": "São Sebastião de Lagoa de Roça",
    "estado_id": 25
  },
  {
    "id": 2515203,
    "nome": "São Sebastião do Umbuzeiro",
    "estado_id": 25
  },
  {
    "id": 2515302,
    "nome": "Sapé",
    "estado_id": 25
  },
  {
    "id": 2515401,
    "nome": "São Vicente do Seridó",
    "estado_id": 25
  },
  {
    "id": 2515500,
    "nome": "Serra Branca",
    "estado_id": 25
  },
  {
    "id": 2515609,
    "nome": "Serra da Raiz",
    "estado_id": 25
  },
  {
    "id": 2515708,
    "nome": "Serra Grande",
    "estado_id": 25
  },
  {
    "id": 2515807,
    "nome": "Serra Redonda",
    "estado_id": 25
  },
  {
    "id": 2515906,
    "nome": "Serraria",
    "estado_id": 25
  },
  {
    "id": 2515930,
    "nome": "Sertãozinho",
    "estado_id": 25
  },
  {
    "id": 2515971,
    "nome": "Sobrado",
    "estado_id": 25
  },
  {
    "id": 2516003,
    "nome": "Solânea",
    "estado_id": 25
  },
  {
    "id": 2516102,
    "nome": "Soledade",
    "estado_id": 25
  },
  {
    "id": 2516151,
    "nome": "Sossêgo",
    "estado_id": 25
  },
  {
    "id": 2516201,
    "nome": "Sousa",
    "estado_id": 25
  },
  {
    "id": 2516300,
    "nome": "Sumé",
    "estado_id": 25
  },
  {
    "id": 2516409,
    "nome": "Tacima",
    "estado_id": 25
  },
  {
    "id": 2516508,
    "nome": "Taperoá",
    "estado_id": 25
  },
  {
    "id": 2516607,
    "nome": "Tavares",
    "estado_id": 25
  },
  {
    "id": 2516706,
    "nome": "Teixeira",
    "estado_id": 25
  },
  {
    "id": 2516755,
    "nome": "Tenório",
    "estado_id": 25
  },
  {
    "id": 2516805,
    "nome": "Triunfo",
    "estado_id": 25
  },
  {
    "id": 2516904,
    "nome": "Uiraúna",
    "estado_id": 25
  },
  {
    "id": 2517001,
    "nome": "Umbuzeiro",
    "estado_id": 25
  },
  {
    "id": 2517100,
    "nome": "Várzea",
    "estado_id": 25
  },
  {
    "id": 2517209,
    "nome": "Vieirópolis",
    "estado_id": 25
  },
  {
    "id": 2517407,
    "nome": "Zabelê",
    "estado_id": 25
  },
  {
    "id": 2600054,
    "nome": "Abreu e Lima",
    "estado_id": 26
  },
  {
    "id": 2600104,
    "nome": "Afogados da Ingazeira",
    "estado_id": 26
  },
  {
    "id": 2600203,
    "nome": "Afrânio",
    "estado_id": 26
  },
  {
    "id": 2600302,
    "nome": "Agrestina",
    "estado_id": 26
  },
  {
    "id": 2600401,
    "nome": "Água Preta",
    "estado_id": 26
  },
  {
    "id": 2600500,
    "nome": "Águas Belas",
    "estado_id": 26
  },
  {
    "id": 2600609,
    "nome": "Alagoinha",
    "estado_id": 26
  },
  {
    "id": 2600708,
    "nome": "Aliança",
    "estado_id": 26
  },
  {
    "id": 2600807,
    "nome": "Altinho",
    "estado_id": 26
  },
  {
    "id": 2600906,
    "nome": "Amaraji",
    "estado_id": 26
  },
  {
    "id": 2601003,
    "nome": "Angelim",
    "estado_id": 26
  },
  {
    "id": 2601052,
    "nome": "Araçoiaba",
    "estado_id": 26
  },
  {
    "id": 2601102,
    "nome": "Araripina",
    "estado_id": 26
  },
  {
    "id": 2601201,
    "nome": "Arcoverde",
    "estado_id": 26
  },
  {
    "id": 2601300,
    "nome": "Barra de Guabiraba",
    "estado_id": 26
  },
  {
    "id": 2601409,
    "nome": "Barreiros",
    "estado_id": 26
  },
  {
    "id": 2601508,
    "nome": "Belém de Maria",
    "estado_id": 26
  },
  {
    "id": 2601607,
    "nome": "Belém do São Francisco",
    "estado_id": 26
  },
  {
    "id": 2601706,
    "nome": "Belo Jardim",
    "estado_id": 26
  },
  {
    "id": 2601805,
    "nome": "Betânia",
    "estado_id": 26
  },
  {
    "id": 2601904,
    "nome": "Bezerros",
    "estado_id": 26
  },
  {
    "id": 2602001,
    "nome": "Bodocó",
    "estado_id": 26
  },
  {
    "id": 2602100,
    "nome": "Bom Conselho",
    "estado_id": 26
  },
  {
    "id": 2602209,
    "nome": "Bom Jardim",
    "estado_id": 26
  },
  {
    "id": 2602308,
    "nome": "Bonito",
    "estado_id": 26
  },
  {
    "id": 2602407,
    "nome": "Brejão",
    "estado_id": 26
  },
  {
    "id": 2602506,
    "nome": "Brejinho",
    "estado_id": 26
  },
  {
    "id": 2602605,
    "nome": "Brejo da Madre de Deus",
    "estado_id": 26
  },
  {
    "id": 2602704,
    "nome": "Buenos Aires",
    "estado_id": 26
  },
  {
    "id": 2602803,
    "nome": "Buíque",
    "estado_id": 26
  },
  {
    "id": 2602902,
    "nome": "Cabo de Santo Agostinho",
    "estado_id": 26
  },
  {
    "id": 2603009,
    "nome": "Cabrobó",
    "estado_id": 26
  },
  {
    "id": 2603108,
    "nome": "Cachoeirinha",
    "estado_id": 26
  },
  {
    "id": 2603207,
    "nome": "Caetés",
    "estado_id": 26
  },
  {
    "id": 2603306,
    "nome": "Calçado",
    "estado_id": 26
  },
  {
    "id": 2603405,
    "nome": "Calumbi",
    "estado_id": 26
  },
  {
    "id": 2603454,
    "nome": "Camaragibe",
    "estado_id": 26
  },
  {
    "id": 2603504,
    "nome": "Camocim de São Félix",
    "estado_id": 26
  },
  {
    "id": 2603603,
    "nome": "Camutanga",
    "estado_id": 26
  },
  {
    "id": 2603702,
    "nome": "Canhotinho",
    "estado_id": 26
  },
  {
    "id": 2603801,
    "nome": "Capoeiras",
    "estado_id": 26
  },
  {
    "id": 2603900,
    "nome": "Carnaíba",
    "estado_id": 26
  },
  {
    "id": 2603926,
    "nome": "Carnaubeira da Penha",
    "estado_id": 26
  },
  {
    "id": 2604007,
    "nome": "Carpina",
    "estado_id": 26
  },
  {
    "id": 2604106,
    "nome": "Caruaru",
    "estado_id": 26
  },
  {
    "id": 2604155,
    "nome": "Casinhas",
    "estado_id": 26
  },
  {
    "id": 2604205,
    "nome": "Catende",
    "estado_id": 26
  },
  {
    "id": 2604304,
    "nome": "Cedro",
    "estado_id": 26
  },
  {
    "id": 2604403,
    "nome": "Chã de Alegria",
    "estado_id": 26
  },
  {
    "id": 2604502,
    "nome": "Chã Grande",
    "estado_id": 26
  },
  {
    "id": 2604601,
    "nome": "Condado",
    "estado_id": 26
  },
  {
    "id": 2604700,
    "nome": "Correntes",
    "estado_id": 26
  },
  {
    "id": 2604809,
    "nome": "Cortês",
    "estado_id": 26
  },
  {
    "id": 2604908,
    "nome": "Cumaru",
    "estado_id": 26
  },
  {
    "id": 2605004,
    "nome": "Cupira",
    "estado_id": 26
  },
  {
    "id": 2605103,
    "nome": "Custódia",
    "estado_id": 26
  },
  {
    "id": 2605152,
    "nome": "Dormentes",
    "estado_id": 26
  },
  {
    "id": 2605202,
    "nome": "Escada",
    "estado_id": 26
  },
  {
    "id": 2605301,
    "nome": "Exu",
    "estado_id": 26
  },
  {
    "id": 2605400,
    "nome": "Feira Nova",
    "estado_id": 26
  },
  {
    "id": 2605459,
    "nome": "Fernando de Noronha",
    "estado_id": 26
  },
  {
    "id": 2605509,
    "nome": "Ferreiros",
    "estado_id": 26
  },
  {
    "id": 2605608,
    "nome": "Flores",
    "estado_id": 26
  },
  {
    "id": 2605707,
    "nome": "Floresta",
    "estado_id": 26
  },
  {
    "id": 2605806,
    "nome": "Frei Miguelinho",
    "estado_id": 26
  },
  {
    "id": 2605905,
    "nome": "Gameleira",
    "estado_id": 26
  },
  {
    "id": 2606002,
    "nome": "Garanhuns",
    "estado_id": 26
  },
  {
    "id": 2606101,
    "nome": "Glória do Goitá",
    "estado_id": 26
  },
  {
    "id": 2606200,
    "nome": "Goiana",
    "estado_id": 26
  },
  {
    "id": 2606309,
    "nome": "Granito",
    "estado_id": 26
  },
  {
    "id": 2606408,
    "nome": "Gravatá",
    "estado_id": 26
  },
  {
    "id": 2606507,
    "nome": "Iati",
    "estado_id": 26
  },
  {
    "id": 2606606,
    "nome": "Ibimirim",
    "estado_id": 26
  },
  {
    "id": 2606705,
    "nome": "Ibirajuba",
    "estado_id": 26
  },
  {
    "id": 2606804,
    "nome": "Igarassu",
    "estado_id": 26
  },
  {
    "id": 2606903,
    "nome": "Iguaracy",
    "estado_id": 26
  },
  {
    "id": 2607000,
    "nome": "Inajá",
    "estado_id": 26
  },
  {
    "id": 2607109,
    "nome": "Ingazeira",
    "estado_id": 26
  },
  {
    "id": 2607208,
    "nome": "Ipojuca",
    "estado_id": 26
  },
  {
    "id": 2607307,
    "nome": "Ipubi",
    "estado_id": 26
  },
  {
    "id": 2607406,
    "nome": "Itacuruba",
    "estado_id": 26
  },
  {
    "id": 2607505,
    "nome": "Itaíba",
    "estado_id": 26
  },
  {
    "id": 2607604,
    "nome": "Ilha de Itamaracá",
    "estado_id": 26
  },
  {
    "id": 2607653,
    "nome": "Itambé",
    "estado_id": 26
  },
  {
    "id": 2607703,
    "nome": "Itapetim",
    "estado_id": 26
  },
  {
    "id": 2607752,
    "nome": "Itapissuma",
    "estado_id": 26
  },
  {
    "id": 2607802,
    "nome": "Itaquitinga",
    "estado_id": 26
  },
  {
    "id": 2607901,
    "nome": "Jaboatão dos Guararapes",
    "estado_id": 26
  },
  {
    "id": 2607950,
    "nome": "Jaqueira",
    "estado_id": 26
  },
  {
    "id": 2608008,
    "nome": "Jataúba",
    "estado_id": 26
  },
  {
    "id": 2608057,
    "nome": "Jatobá",
    "estado_id": 26
  },
  {
    "id": 2608107,
    "nome": "João Alfredo",
    "estado_id": 26
  },
  {
    "id": 2608206,
    "nome": "Joaquim Nabuco",
    "estado_id": 26
  },
  {
    "id": 2608255,
    "nome": "Jucati",
    "estado_id": 26
  },
  {
    "id": 2608305,
    "nome": "Jupi",
    "estado_id": 26
  },
  {
    "id": 2608404,
    "nome": "Jurema",
    "estado_id": 26
  },
  {
    "id": 2608453,
    "nome": "Lagoa do Carro",
    "estado_id": 26
  },
  {
    "id": 2608503,
    "nome": "Lagoa de Itaenga",
    "estado_id": 26
  },
  {
    "id": 2608602,
    "nome": "Lagoa do Ouro",
    "estado_id": 26
  },
  {
    "id": 2608701,
    "nome": "Lagoa dos Gatos",
    "estado_id": 26
  },
  {
    "id": 2608750,
    "nome": "Lagoa Grande",
    "estado_id": 26
  },
  {
    "id": 2608800,
    "nome": "Lajedo",
    "estado_id": 26
  },
  {
    "id": 2608909,
    "nome": "Limoeiro",
    "estado_id": 26
  },
  {
    "id": 2609006,
    "nome": "Macaparana",
    "estado_id": 26
  },
  {
    "id": 2609105,
    "nome": "Machados",
    "estado_id": 26
  },
  {
    "id": 2609154,
    "nome": "Manari",
    "estado_id": 26
  },
  {
    "id": 2609204,
    "nome": "Maraial",
    "estado_id": 26
  },
  {
    "id": 2609303,
    "nome": "Mirandiba",
    "estado_id": 26
  },
  {
    "id": 2609402,
    "nome": "Moreno",
    "estado_id": 26
  },
  {
    "id": 2609501,
    "nome": "Nazaré da Mata",
    "estado_id": 26
  },
  {
    "id": 2609600,
    "nome": "Olinda",
    "estado_id": 26
  },
  {
    "id": 2609709,
    "nome": "Orobó",
    "estado_id": 26
  },
  {
    "id": 2609808,
    "nome": "Orocó",
    "estado_id": 26
  },
  {
    "id": 2609907,
    "nome": "Ouricuri",
    "estado_id": 26
  },
  {
    "id": 2610004,
    "nome": "Palmares",
    "estado_id": 26
  },
  {
    "id": 2610103,
    "nome": "Palmeirina",
    "estado_id": 26
  },
  {
    "id": 2610202,
    "nome": "Panelas",
    "estado_id": 26
  },
  {
    "id": 2610301,
    "nome": "Paranatama",
    "estado_id": 26
  },
  {
    "id": 2610400,
    "nome": "Parnamirim",
    "estado_id": 26
  },
  {
    "id": 2610509,
    "nome": "Passira",
    "estado_id": 26
  },
  {
    "id": 2610608,
    "nome": "Paudalho",
    "estado_id": 26
  },
  {
    "id": 2610707,
    "nome": "Paulista",
    "estado_id": 26
  },
  {
    "id": 2610806,
    "nome": "Pedra",
    "estado_id": 26
  },
  {
    "id": 2610905,
    "nome": "Pesqueira",
    "estado_id": 26
  },
  {
    "id": 2611002,
    "nome": "Petrolândia",
    "estado_id": 26
  },
  {
    "id": 2611101,
    "nome": "Petrolina",
    "estado_id": 26
  },
  {
    "id": 2611200,
    "nome": "Poção",
    "estado_id": 26
  },
  {
    "id": 2611309,
    "nome": "Pombos",
    "estado_id": 26
  },
  {
    "id": 2611408,
    "nome": "Primavera",
    "estado_id": 26
  },
  {
    "id": 2611507,
    "nome": "Quipapá",
    "estado_id": 26
  },
  {
    "id": 2611533,
    "nome": "Quixaba",
    "estado_id": 26
  },
  {
    "id": 2611606,
    "nome": "Recife",
    "estado_id": 26
  },
  {
    "id": 2611705,
    "nome": "Riacho das Almas",
    "estado_id": 26
  },
  {
    "id": 2611804,
    "nome": "Ribeirão",
    "estado_id": 26
  },
  {
    "id": 2611903,
    "nome": "Rio Formoso",
    "estado_id": 26
  },
  {
    "id": 2612000,
    "nome": "Sairé",
    "estado_id": 26
  },
  {
    "id": 2612109,
    "nome": "Salgadinho",
    "estado_id": 26
  },
  {
    "id": 2612208,
    "nome": "Salgueiro",
    "estado_id": 26
  },
  {
    "id": 2612307,
    "nome": "Saloá",
    "estado_id": 26
  },
  {
    "id": 2612406,
    "nome": "Sanharó",
    "estado_id": 26
  },
  {
    "id": 2612455,
    "nome": "Santa Cruz",
    "estado_id": 26
  },
  {
    "id": 2612471,
    "nome": "Santa Cruz da Baixa Verde",
    "estado_id": 26
  },
  {
    "id": 2612505,
    "nome": "Santa Cruz do Capibaribe",
    "estado_id": 26
  },
  {
    "id": 2612554,
    "nome": "Santa Filomena",
    "estado_id": 26
  },
  {
    "id": 2612604,
    "nome": "Santa Maria da Boa Vista",
    "estado_id": 26
  },
  {
    "id": 2612703,
    "nome": "Santa Maria do Cambucá",
    "estado_id": 26
  },
  {
    "id": 2612802,
    "nome": "Santa Terezinha",
    "estado_id": 26
  },
  {
    "id": 2612901,
    "nome": "São Benedito do Sul",
    "estado_id": 26
  },
  {
    "id": 2613008,
    "nome": "São Bento do Una",
    "estado_id": 26
  },
  {
    "id": 2613107,
    "nome": "São Caitano",
    "estado_id": 26
  },
  {
    "id": 2613206,
    "nome": "São João",
    "estado_id": 26
  },
  {
    "id": 2613305,
    "nome": "São Joaquim do Monte",
    "estado_id": 26
  },
  {
    "id": 2613404,
    "nome": "São José da Coroa Grande",
    "estado_id": 26
  },
  {
    "id": 2613503,
    "nome": "São José do Belmonte",
    "estado_id": 26
  },
  {
    "id": 2613602,
    "nome": "São José do Egito",
    "estado_id": 26
  },
  {
    "id": 2613701,
    "nome": "São Lourenço da Mata",
    "estado_id": 26
  },
  {
    "id": 2613800,
    "nome": "São Vicente Férrer",
    "estado_id": 26
  },
  {
    "id": 2613909,
    "nome": "Serra Talhada",
    "estado_id": 26
  },
  {
    "id": 2614006,
    "nome": "Serrita",
    "estado_id": 26
  },
  {
    "id": 2614105,
    "nome": "Sertânia",
    "estado_id": 26
  },
  {
    "id": 2614204,
    "nome": "Sirinhaém",
    "estado_id": 26
  },
  {
    "id": 2614303,
    "nome": "Moreilândia",
    "estado_id": 26
  },
  {
    "id": 2614402,
    "nome": "Solidão",
    "estado_id": 26
  },
  {
    "id": 2614501,
    "nome": "Surubim",
    "estado_id": 26
  },
  {
    "id": 2614600,
    "nome": "Tabira",
    "estado_id": 26
  },
  {
    "id": 2614709,
    "nome": "Tacaimbó",
    "estado_id": 26
  },
  {
    "id": 2614808,
    "nome": "Tacaratu",
    "estado_id": 26
  },
  {
    "id": 2614857,
    "nome": "Tamandaré",
    "estado_id": 26
  },
  {
    "id": 2615003,
    "nome": "Taquaritinga do Norte",
    "estado_id": 26
  },
  {
    "id": 2615102,
    "nome": "Terezinha",
    "estado_id": 26
  },
  {
    "id": 2615201,
    "nome": "Terra Nova",
    "estado_id": 26
  },
  {
    "id": 2615300,
    "nome": "Timbaúba",
    "estado_id": 26
  },
  {
    "id": 2615409,
    "nome": "Toritama",
    "estado_id": 26
  },
  {
    "id": 2615508,
    "nome": "Tracunhaém",
    "estado_id": 26
  },
  {
    "id": 2615607,
    "nome": "Trindade",
    "estado_id": 26
  },
  {
    "id": 2615706,
    "nome": "Triunfo",
    "estado_id": 26
  },
  {
    "id": 2615805,
    "nome": "Tupanatinga",
    "estado_id": 26
  },
  {
    "id": 2615904,
    "nome": "Tuparetama",
    "estado_id": 26
  },
  {
    "id": 2616001,
    "nome": "Venturosa",
    "estado_id": 26
  },
  {
    "id": 2616100,
    "nome": "Verdejante",
    "estado_id": 26
  },
  {
    "id": 2616183,
    "nome": "Vertente do Lério",
    "estado_id": 26
  },
  {
    "id": 2616209,
    "nome": "Vertentes",
    "estado_id": 26
  },
  {
    "id": 2616308,
    "nome": "Vicência",
    "estado_id": 26
  },
  {
    "id": 2616407,
    "nome": "Vitória de Santo Antão",
    "estado_id": 26
  },
  {
    "id": 2616506,
    "nome": "Xexéu",
    "estado_id": 26
  },
  {
    "id": 2700102,
    "nome": "Água Branca",
    "estado_id": 27
  },
  {
    "id": 2700201,
    "nome": "Anadia",
    "estado_id": 27
  },
  {
    "id": 2700300,
    "nome": "Arapiraca",
    "estado_id": 27
  },
  {
    "id": 2700409,
    "nome": "Atalaia",
    "estado_id": 27
  },
  {
    "id": 2700508,
    "nome": "Barra de Santo Antônio",
    "estado_id": 27
  },
  {
    "id": 2700607,
    "nome": "Barra de São Miguel",
    "estado_id": 27
  },
  {
    "id": 2700706,
    "nome": "Batalha",
    "estado_id": 27
  },
  {
    "id": 2700805,
    "nome": "Belém",
    "estado_id": 27
  },
  {
    "id": 2700904,
    "nome": "Belo Monte",
    "estado_id": 27
  },
  {
    "id": 2701001,
    "nome": "Boca da Mata",
    "estado_id": 27
  },
  {
    "id": 2701100,
    "nome": "Branquinha",
    "estado_id": 27
  },
  {
    "id": 2701209,
    "nome": "Cacimbinhas",
    "estado_id": 27
  },
  {
    "id": 2701308,
    "nome": "Cajueiro",
    "estado_id": 27
  },
  {
    "id": 2701357,
    "nome": "Campestre",
    "estado_id": 27
  },
  {
    "id": 2701407,
    "nome": "Campo Alegre",
    "estado_id": 27
  },
  {
    "id": 2701506,
    "nome": "Campo Grande",
    "estado_id": 27
  },
  {
    "id": 2701605,
    "nome": "Canapi",
    "estado_id": 27
  },
  {
    "id": 2701704,
    "nome": "Capela",
    "estado_id": 27
  },
  {
    "id": 2701803,
    "nome": "Carneiros",
    "estado_id": 27
  },
  {
    "id": 2701902,
    "nome": "Chã Preta",
    "estado_id": 27
  },
  {
    "id": 2702009,
    "nome": "Coité do Nóia",
    "estado_id": 27
  },
  {
    "id": 2702108,
    "nome": "Colônia Leopoldina",
    "estado_id": 27
  },
  {
    "id": 2702207,
    "nome": "Coqueiro Seco",
    "estado_id": 27
  },
  {
    "id": 2702306,
    "nome": "Coruripe",
    "estado_id": 27
  },
  {
    "id": 2702355,
    "nome": "Craíbas",
    "estado_id": 27
  },
  {
    "id": 2702405,
    "nome": "Delmiro Gouveia",
    "estado_id": 27
  },
  {
    "id": 2702504,
    "nome": "Dois Riachos",
    "estado_id": 27
  },
  {
    "id": 2702553,
    "nome": "Estrela de Alagoas",
    "estado_id": 27
  },
  {
    "id": 2702603,
    "nome": "Feira Grande",
    "estado_id": 27
  },
  {
    "id": 2702702,
    "nome": "Feliz Deserto",
    "estado_id": 27
  },
  {
    "id": 2702801,
    "nome": "Flexeiras",
    "estado_id": 27
  },
  {
    "id": 2702900,
    "nome": "Girau do Ponciano",
    "estado_id": 27
  },
  {
    "id": 2703007,
    "nome": "Ibateguara",
    "estado_id": 27
  },
  {
    "id": 2703106,
    "nome": "Igaci",
    "estado_id": 27
  },
  {
    "id": 2703205,
    "nome": "Igreja Nova",
    "estado_id": 27
  },
  {
    "id": 2703304,
    "nome": "Inhapi",
    "estado_id": 27
  },
  {
    "id": 2703403,
    "nome": "Jacaré dos Homens",
    "estado_id": 27
  },
  {
    "id": 2703502,
    "nome": "Jacuípe",
    "estado_id": 27
  },
  {
    "id": 2703601,
    "nome": "Japaratinga",
    "estado_id": 27
  },
  {
    "id": 2703700,
    "nome": "Jaramataia",
    "estado_id": 27
  },
  {
    "id": 2703759,
    "nome": "Jequiá da Praia",
    "estado_id": 27
  },
  {
    "id": 2703809,
    "nome": "Joaquim Gomes",
    "estado_id": 27
  },
  {
    "id": 2703908,
    "nome": "Jundiá",
    "estado_id": 27
  },
  {
    "id": 2704005,
    "nome": "Junqueiro",
    "estado_id": 27
  },
  {
    "id": 2704104,
    "nome": "Lagoa da Canoa",
    "estado_id": 27
  },
  {
    "id": 2704203,
    "nome": "Limoeiro de Anadia",
    "estado_id": 27
  },
  {
    "id": 2704302,
    "nome": "Maceió",
    "estado_id": 27
  },
  {
    "id": 2704401,
    "nome": "Major Isidoro",
    "estado_id": 27
  },
  {
    "id": 2704500,
    "nome": "Maragogi",
    "estado_id": 27
  },
  {
    "id": 2704609,
    "nome": "Maravilha",
    "estado_id": 27
  },
  {
    "id": 2704708,
    "nome": "Marechal Deodoro",
    "estado_id": 27
  },
  {
    "id": 2704807,
    "nome": "Maribondo",
    "estado_id": 27
  },
  {
    "id": 2704906,
    "nome": "Mar Vermelho",
    "estado_id": 27
  },
  {
    "id": 2705002,
    "nome": "Mata Grande",
    "estado_id": 27
  },
  {
    "id": 2705101,
    "nome": "Matriz de Camaragibe",
    "estado_id": 27
  },
  {
    "id": 2705200,
    "nome": "Messias",
    "estado_id": 27
  },
  {
    "id": 2705309,
    "nome": "Minador do Negrão",
    "estado_id": 27
  },
  {
    "id": 2705408,
    "nome": "Monteirópolis",
    "estado_id": 27
  },
  {
    "id": 2705507,
    "nome": "Murici",
    "estado_id": 27
  },
  {
    "id": 2705606,
    "nome": "Novo Lino",
    "estado_id": 27
  },
  {
    "id": 2705705,
    "nome": "Olho d'Água das Flores",
    "estado_id": 27
  },
  {
    "id": 2705804,
    "nome": "Olho d'Água do Casado",
    "estado_id": 27
  },
  {
    "id": 2705903,
    "nome": "Olho d'Água Grande",
    "estado_id": 27
  },
  {
    "id": 2706000,
    "nome": "Olivença",
    "estado_id": 27
  },
  {
    "id": 2706109,
    "nome": "Ouro Branco",
    "estado_id": 27
  },
  {
    "id": 2706208,
    "nome": "Palestina",
    "estado_id": 27
  },
  {
    "id": 2706307,
    "nome": "Palmeira dos Índios",
    "estado_id": 27
  },
  {
    "id": 2706406,
    "nome": "Pão de Açúcar",
    "estado_id": 27
  },
  {
    "id": 2706422,
    "nome": "Pariconha",
    "estado_id": 27
  },
  {
    "id": 2706448,
    "nome": "Paripueira",
    "estado_id": 27
  },
  {
    "id": 2706505,
    "nome": "Passo de Camaragibe",
    "estado_id": 27
  },
  {
    "id": 2706604,
    "nome": "Paulo Jacinto",
    "estado_id": 27
  },
  {
    "id": 2706703,
    "nome": "Penedo",
    "estado_id": 27
  },
  {
    "id": 2706802,
    "nome": "Piaçabuçu",
    "estado_id": 27
  },
  {
    "id": 2706901,
    "nome": "Pilar",
    "estado_id": 27
  },
  {
    "id": 2707008,
    "nome": "Pindoba",
    "estado_id": 27
  },
  {
    "id": 2707107,
    "nome": "Piranhas",
    "estado_id": 27
  },
  {
    "id": 2707206,
    "nome": "Poço das Trincheiras",
    "estado_id": 27
  },
  {
    "id": 2707305,
    "nome": "Porto Calvo",
    "estado_id": 27
  },
  {
    "id": 2707404,
    "nome": "Porto de Pedras",
    "estado_id": 27
  },
  {
    "id": 2707503,
    "nome": "Porto Real do Colégio",
    "estado_id": 27
  },
  {
    "id": 2707602,
    "nome": "Quebrangulo",
    "estado_id": 27
  },
  {
    "id": 2707701,
    "nome": "Rio Largo",
    "estado_id": 27
  },
  {
    "id": 2707800,
    "nome": "Roteiro",
    "estado_id": 27
  },
  {
    "id": 2707909,
    "nome": "Santa Luzia do Norte",
    "estado_id": 27
  },
  {
    "id": 2708006,
    "nome": "Santana do Ipanema",
    "estado_id": 27
  },
  {
    "id": 2708105,
    "nome": "Santana do Mundaú",
    "estado_id": 27
  },
  {
    "id": 2708204,
    "nome": "São Brás",
    "estado_id": 27
  },
  {
    "id": 2708303,
    "nome": "São José da Laje",
    "estado_id": 27
  },
  {
    "id": 2708402,
    "nome": "São José da Tapera",
    "estado_id": 27
  },
  {
    "id": 2708501,
    "nome": "São Luís do Quitunde",
    "estado_id": 27
  },
  {
    "id": 2708600,
    "nome": "São Miguel dos Campos",
    "estado_id": 27
  },
  {
    "id": 2708709,
    "nome": "São Miguel dos Milagres",
    "estado_id": 27
  },
  {
    "id": 2708808,
    "nome": "São Sebastião",
    "estado_id": 27
  },
  {
    "id": 2708907,
    "nome": "Satuba",
    "estado_id": 27
  },
  {
    "id": 2708956,
    "nome": "Senador Rui Palmeira",
    "estado_id": 27
  },
  {
    "id": 2709004,
    "nome": "Tanque d'Arca",
    "estado_id": 27
  },
  {
    "id": 2709103,
    "nome": "Taquarana",
    "estado_id": 27
  },
  {
    "id": 2709152,
    "nome": "Teotônio Vilela",
    "estado_id": 27
  },
  {
    "id": 2709202,
    "nome": "Traipu",
    "estado_id": 27
  },
  {
    "id": 2709301,
    "nome": "União dos Palmares",
    "estado_id": 27
  },
  {
    "id": 2709400,
    "nome": "Viçosa",
    "estado_id": 27
  },
  {
    "id": 2800100,
    "nome": "Amparo do São Francisco",
    "estado_id": 28
  },
  {
    "id": 2800209,
    "nome": "Aquidabã",
    "estado_id": 28
  },
  {
    "id": 2800308,
    "nome": "Aracaju",
    "estado_id": 28
  },
  {
    "id": 2800407,
    "nome": "Arauá",
    "estado_id": 28
  },
  {
    "id": 2800506,
    "nome": "Areia Branca",
    "estado_id": 28
  },
  {
    "id": 2800605,
    "nome": "Barra dos Coqueiros",
    "estado_id": 28
  },
  {
    "id": 2800670,
    "nome": "Boquim",
    "estado_id": 28
  },
  {
    "id": 2800704,
    "nome": "Brejo Grande",
    "estado_id": 28
  },
  {
    "id": 2801009,
    "nome": "Campo do Brito",
    "estado_id": 28
  },
  {
    "id": 2801108,
    "nome": "Canhoba",
    "estado_id": 28
  },
  {
    "id": 2801207,
    "nome": "Canindé de São Francisco",
    "estado_id": 28
  },
  {
    "id": 2801306,
    "nome": "Capela",
    "estado_id": 28
  },
  {
    "id": 2801405,
    "nome": "Carira",
    "estado_id": 28
  },
  {
    "id": 2801504,
    "nome": "Carmópolis",
    "estado_id": 28
  },
  {
    "id": 2801603,
    "nome": "Cedro de São João",
    "estado_id": 28
  },
  {
    "id": 2801702,
    "nome": "Cristinápolis",
    "estado_id": 28
  },
  {
    "id": 2801900,
    "nome": "Cumbe",
    "estado_id": 28
  },
  {
    "id": 2802007,
    "nome": "Divina Pastora",
    "estado_id": 28
  },
  {
    "id": 2802106,
    "nome": "Estância",
    "estado_id": 28
  },
  {
    "id": 2802205,
    "nome": "Feira Nova",
    "estado_id": 28
  },
  {
    "id": 2802304,
    "nome": "Frei Paulo",
    "estado_id": 28
  },
  {
    "id": 2802403,
    "nome": "Gararu",
    "estado_id": 28
  },
  {
    "id": 2802502,
    "nome": "General Maynard",
    "estado_id": 28
  },
  {
    "id": 2802601,
    "nome": "Gracho Cardoso",
    "estado_id": 28
  },
  {
    "id": 2802700,
    "nome": "Ilha das Flores",
    "estado_id": 28
  },
  {
    "id": 2802809,
    "nome": "Indiaroba",
    "estado_id": 28
  },
  {
    "id": 2802908,
    "nome": "Itabaiana",
    "estado_id": 28
  },
  {
    "id": 2803005,
    "nome": "Itabaianinha",
    "estado_id": 28
  },
  {
    "id": 2803104,
    "nome": "Itabi",
    "estado_id": 28
  },
  {
    "id": 2803203,
    "nome": "Itaporanga d'Ajuda",
    "estado_id": 28
  },
  {
    "id": 2803302,
    "nome": "Japaratuba",
    "estado_id": 28
  },
  {
    "id": 2803401,
    "nome": "Japoatã",
    "estado_id": 28
  },
  {
    "id": 2803500,
    "nome": "Lagarto",
    "estado_id": 28
  },
  {
    "id": 2803609,
    "nome": "Laranjeiras",
    "estado_id": 28
  },
  {
    "id": 2803708,
    "nome": "Macambira",
    "estado_id": 28
  },
  {
    "id": 2803807,
    "nome": "Malhada dos Bois",
    "estado_id": 28
  },
  {
    "id": 2803906,
    "nome": "Malhador",
    "estado_id": 28
  },
  {
    "id": 2804003,
    "nome": "Maruim",
    "estado_id": 28
  },
  {
    "id": 2804102,
    "nome": "Moita Bonita",
    "estado_id": 28
  },
  {
    "id": 2804201,
    "nome": "Monte Alegre de Sergipe",
    "estado_id": 28
  },
  {
    "id": 2804300,
    "nome": "Muribeca",
    "estado_id": 28
  },
  {
    "id": 2804409,
    "nome": "Neópolis",
    "estado_id": 28
  },
  {
    "id": 2804458,
    "nome": "Nossa Senhora Aparecida",
    "estado_id": 28
  },
  {
    "id": 2804508,
    "nome": "Nossa Senhora da Glória",
    "estado_id": 28
  },
  {
    "id": 2804607,
    "nome": "Nossa Senhora das Dores",
    "estado_id": 28
  },
  {
    "id": 2804706,
    "nome": "Nossa Senhora de Lourdes",
    "estado_id": 28
  },
  {
    "id": 2804805,
    "nome": "Nossa Senhora do Socorro",
    "estado_id": 28
  },
  {
    "id": 2804904,
    "nome": "Pacatuba",
    "estado_id": 28
  },
  {
    "id": 2805000,
    "nome": "Pedra Mole",
    "estado_id": 28
  },
  {
    "id": 2805109,
    "nome": "Pedrinhas",
    "estado_id": 28
  },
  {
    "id": 2805208,
    "nome": "Pinhão",
    "estado_id": 28
  },
  {
    "id": 2805307,
    "nome": "Pirambu",
    "estado_id": 28
  },
  {
    "id": 2805406,
    "nome": "Poço Redondo",
    "estado_id": 28
  },
  {
    "id": 2805505,
    "nome": "Poço Verde",
    "estado_id": 28
  },
  {
    "id": 2805604,
    "nome": "Porto da Folha",
    "estado_id": 28
  },
  {
    "id": 2805703,
    "nome": "Propriá",
    "estado_id": 28
  },
  {
    "id": 2805802,
    "nome": "Riachão do Dantas",
    "estado_id": 28
  },
  {
    "id": 2805901,
    "nome": "Riachuelo",
    "estado_id": 28
  },
  {
    "id": 2806008,
    "nome": "Ribeirópolis",
    "estado_id": 28
  },
  {
    "id": 2806107,
    "nome": "Rosário do Catete",
    "estado_id": 28
  },
  {
    "id": 2806206,
    "nome": "Salgado",
    "estado_id": 28
  },
  {
    "id": 2806305,
    "nome": "Santa Luzia do Itanhy",
    "estado_id": 28
  },
  {
    "id": 2806404,
    "nome": "Santana do São Francisco",
    "estado_id": 28
  },
  {
    "id": 2806503,
    "nome": "Santa Rosa de Lima",
    "estado_id": 28
  },
  {
    "id": 2806602,
    "nome": "Santo Amaro das Brotas",
    "estado_id": 28
  },
  {
    "id": 2806701,
    "nome": "São Cristóvão",
    "estado_id": 28
  },
  {
    "id": 2806800,
    "nome": "São Domingos",
    "estado_id": 28
  },
  {
    "id": 2806909,
    "nome": "São Francisco",
    "estado_id": 28
  },
  {
    "id": 2807006,
    "nome": "São Miguel do Aleixo",
    "estado_id": 28
  },
  {
    "id": 2807105,
    "nome": "Simão Dias",
    "estado_id": 28
  },
  {
    "id": 2807204,
    "nome": "Siriri",
    "estado_id": 28
  },
  {
    "id": 2807303,
    "nome": "Telha",
    "estado_id": 28
  },
  {
    "id": 2807402,
    "nome": "Tobias Barreto",
    "estado_id": 28
  },
  {
    "id": 2807501,
    "nome": "Tomar do Geru",
    "estado_id": 28
  },
  {
    "id": 2807600,
    "nome": "Umbaúba",
    "estado_id": 28
  },
  {
    "id": 2900108,
    "nome": "Abaíra",
    "estado_id": 29
  },
  {
    "id": 2900207,
    "nome": "Abaré",
    "estado_id": 29
  },
  {
    "id": 2900306,
    "nome": "Acajutiba",
    "estado_id": 29
  },
  {
    "id": 2900355,
    "nome": "Adustina",
    "estado_id": 29
  },
  {
    "id": 2900405,
    "nome": "Água Fria",
    "estado_id": 29
  },
  {
    "id": 2900504,
    "nome": "Érico Cardoso",
    "estado_id": 29
  },
  {
    "id": 2900603,
    "nome": "Aiquara",
    "estado_id": 29
  },
  {
    "id": 2900702,
    "nome": "Alagoinhas",
    "estado_id": 29
  },
  {
    "id": 2900801,
    "nome": "Alcobaça",
    "estado_id": 29
  },
  {
    "id": 2900900,
    "nome": "Almadina",
    "estado_id": 29
  },
  {
    "id": 2901007,
    "nome": "Amargosa",
    "estado_id": 29
  },
  {
    "id": 2901106,
    "nome": "Amélia Rodrigues",
    "estado_id": 29
  },
  {
    "id": 2901155,
    "nome": "América Dourada",
    "estado_id": 29
  },
  {
    "id": 2901205,
    "nome": "Anagé",
    "estado_id": 29
  },
  {
    "id": 2901304,
    "nome": "Andaraí",
    "estado_id": 29
  },
  {
    "id": 2901353,
    "nome": "Andorinha",
    "estado_id": 29
  },
  {
    "id": 2901403,
    "nome": "Angical",
    "estado_id": 29
  },
  {
    "id": 2901502,
    "nome": "Anguera",
    "estado_id": 29
  },
  {
    "id": 2901601,
    "nome": "Antas",
    "estado_id": 29
  },
  {
    "id": 2901700,
    "nome": "Antônio Cardoso",
    "estado_id": 29
  },
  {
    "id": 2901809,
    "nome": "Antônio Gonçalves",
    "estado_id": 29
  },
  {
    "id": 2901908,
    "nome": "Aporá",
    "estado_id": 29
  },
  {
    "id": 2901957,
    "nome": "Apuarema",
    "estado_id": 29
  },
  {
    "id": 2902005,
    "nome": "Aracatu",
    "estado_id": 29
  },
  {
    "id": 2902054,
    "nome": "Araçás",
    "estado_id": 29
  },
  {
    "id": 2902104,
    "nome": "Araci",
    "estado_id": 29
  },
  {
    "id": 2902203,
    "nome": "Aramari",
    "estado_id": 29
  },
  {
    "id": 2902252,
    "nome": "Arataca",
    "estado_id": 29
  },
  {
    "id": 2902302,
    "nome": "Aratuípe",
    "estado_id": 29
  },
  {
    "id": 2902401,
    "nome": "Aurelino Leal",
    "estado_id": 29
  },
  {
    "id": 2902500,
    "nome": "Baianópolis",
    "estado_id": 29
  },
  {
    "id": 2902609,
    "nome": "Baixa Grande",
    "estado_id": 29
  },
  {
    "id": 2902658,
    "nome": "Banzaê",
    "estado_id": 29
  },
  {
    "id": 2902708,
    "nome": "Barra",
    "estado_id": 29
  },
  {
    "id": 2902807,
    "nome": "Barra da Estiva",
    "estado_id": 29
  },
  {
    "id": 2902906,
    "nome": "Barra do Choça",
    "estado_id": 29
  },
  {
    "id": 2903003,
    "nome": "Barra do Mendes",
    "estado_id": 29
  },
  {
    "id": 2903102,
    "nome": "Barra do Rocha",
    "estado_id": 29
  },
  {
    "id": 2903201,
    "nome": "Barreiras",
    "estado_id": 29
  },
  {
    "id": 2903235,
    "nome": "Barro Alto",
    "estado_id": 29
  },
  {
    "id": 2903276,
    "nome": "Barrocas",
    "estado_id": 29
  },
  {
    "id": 2903300,
    "nome": "Barro Preto",
    "estado_id": 29
  },
  {
    "id": 2903409,
    "nome": "Belmonte",
    "estado_id": 29
  },
  {
    "id": 2903508,
    "nome": "Belo Campo",
    "estado_id": 29
  },
  {
    "id": 2903607,
    "nome": "Biritinga",
    "estado_id": 29
  },
  {
    "id": 2903706,
    "nome": "Boa Nova",
    "estado_id": 29
  },
  {
    "id": 2903805,
    "nome": "Boa Vista do Tupim",
    "estado_id": 29
  },
  {
    "id": 2903904,
    "nome": "Bom Jesus da Lapa",
    "estado_id": 29
  },
  {
    "id": 2903953,
    "nome": "Bom Jesus da Serra",
    "estado_id": 29
  },
  {
    "id": 2904001,
    "nome": "Boninal",
    "estado_id": 29
  },
  {
    "id": 2904050,
    "nome": "Bonito",
    "estado_id": 29
  },
  {
    "id": 2904100,
    "nome": "Boquira",
    "estado_id": 29
  },
  {
    "id": 2904209,
    "nome": "Botuporã",
    "estado_id": 29
  },
  {
    "id": 2904308,
    "nome": "Brejões",
    "estado_id": 29
  },
  {
    "id": 2904407,
    "nome": "Brejolândia",
    "estado_id": 29
  },
  {
    "id": 2904506,
    "nome": "Brotas de Macaúbas",
    "estado_id": 29
  },
  {
    "id": 2904605,
    "nome": "Brumado",
    "estado_id": 29
  },
  {
    "id": 2904704,
    "nome": "Buerarema",
    "estado_id": 29
  },
  {
    "id": 2904753,
    "nome": "Buritirama",
    "estado_id": 29
  },
  {
    "id": 2904803,
    "nome": "Caatiba",
    "estado_id": 29
  },
  {
    "id": 2904852,
    "nome": "Cabaceiras do Paraguaçu",
    "estado_id": 29
  },
  {
    "id": 2904902,
    "nome": "Cachoeira",
    "estado_id": 29
  },
  {
    "id": 2905008,
    "nome": "Caculé",
    "estado_id": 29
  },
  {
    "id": 2905107,
    "nome": "Caém",
    "estado_id": 29
  },
  {
    "id": 2905156,
    "nome": "Caetanos",
    "estado_id": 29
  },
  {
    "id": 2905206,
    "nome": "Caetité",
    "estado_id": 29
  },
  {
    "id": 2905305,
    "nome": "Cafarnaum",
    "estado_id": 29
  },
  {
    "id": 2905404,
    "nome": "Cairu",
    "estado_id": 29
  },
  {
    "id": 2905503,
    "nome": "Caldeirão Grande",
    "estado_id": 29
  },
  {
    "id": 2905602,
    "nome": "Camacan",
    "estado_id": 29
  },
  {
    "id": 2905701,
    "nome": "Camaçari",
    "estado_id": 29
  },
  {
    "id": 2905800,
    "nome": "Camamu",
    "estado_id": 29
  },
  {
    "id": 2905909,
    "nome": "Campo Alegre de Lourdes",
    "estado_id": 29
  },
  {
    "id": 2906006,
    "nome": "Campo Formoso",
    "estado_id": 29
  },
  {
    "id": 2906105,
    "nome": "Canápolis",
    "estado_id": 29
  },
  {
    "id": 2906204,
    "nome": "Canarana",
    "estado_id": 29
  },
  {
    "id": 2906303,
    "nome": "Canavieiras",
    "estado_id": 29
  },
  {
    "id": 2906402,
    "nome": "Candeal",
    "estado_id": 29
  },
  {
    "id": 2906501,
    "nome": "Candeias",
    "estado_id": 29
  },
  {
    "id": 2906600,
    "nome": "Candiba",
    "estado_id": 29
  },
  {
    "id": 2906709,
    "nome": "Cândido Sales",
    "estado_id": 29
  },
  {
    "id": 2906808,
    "nome": "Cansanção",
    "estado_id": 29
  },
  {
    "id": 2906824,
    "nome": "Canudos",
    "estado_id": 29
  },
  {
    "id": 2906857,
    "nome": "Capela do Alto Alegre",
    "estado_id": 29
  },
  {
    "id": 2906873,
    "nome": "Capim Grosso",
    "estado_id": 29
  },
  {
    "id": 2906899,
    "nome": "Caraíbas",
    "estado_id": 29
  },
  {
    "id": 2906907,
    "nome": "Caravelas",
    "estado_id": 29
  },
  {
    "id": 2907004,
    "nome": "Cardeal da Silva",
    "estado_id": 29
  },
  {
    "id": 2907103,
    "nome": "Carinhanha",
    "estado_id": 29
  },
  {
    "id": 2907202,
    "nome": "Casa Nova",
    "estado_id": 29
  },
  {
    "id": 2907301,
    "nome": "Castro Alves",
    "estado_id": 29
  },
  {
    "id": 2907400,
    "nome": "Catolândia",
    "estado_id": 29
  },
  {
    "id": 2907509,
    "nome": "Catu",
    "estado_id": 29
  },
  {
    "id": 2907558,
    "nome": "Caturama",
    "estado_id": 29
  },
  {
    "id": 2907608,
    "nome": "Central",
    "estado_id": 29
  },
  {
    "id": 2907707,
    "nome": "Chorrochó",
    "estado_id": 29
  },
  {
    "id": 2907806,
    "nome": "Cícero Dantas",
    "estado_id": 29
  },
  {
    "id": 2907905,
    "nome": "Cipó",
    "estado_id": 29
  },
  {
    "id": 2908002,
    "nome": "Coaraci",
    "estado_id": 29
  },
  {
    "id": 2908101,
    "nome": "Cocos",
    "estado_id": 29
  },
  {
    "id": 2908200,
    "nome": "Conceição da Feira",
    "estado_id": 29
  },
  {
    "id": 2908309,
    "nome": "Conceição do Almeida",
    "estado_id": 29
  },
  {
    "id": 2908408,
    "nome": "Conceição do Coité",
    "estado_id": 29
  },
  {
    "id": 2908507,
    "nome": "Conceição do Jacuípe",
    "estado_id": 29
  },
  {
    "id": 2908606,
    "nome": "Conde",
    "estado_id": 29
  },
  {
    "id": 2908705,
    "nome": "Condeúba",
    "estado_id": 29
  },
  {
    "id": 2908804,
    "nome": "Contendas do Sincorá",
    "estado_id": 29
  },
  {
    "id": 2908903,
    "nome": "Coração de Maria",
    "estado_id": 29
  },
  {
    "id": 2909000,
    "nome": "Cordeiros",
    "estado_id": 29
  },
  {
    "id": 2909109,
    "nome": "Coribe",
    "estado_id": 29
  },
  {
    "id": 2909208,
    "nome": "Coronel João Sá",
    "estado_id": 29
  },
  {
    "id": 2909307,
    "nome": "Correntina",
    "estado_id": 29
  },
  {
    "id": 2909406,
    "nome": "Cotegipe",
    "estado_id": 29
  },
  {
    "id": 2909505,
    "nome": "Cravolândia",
    "estado_id": 29
  },
  {
    "id": 2909604,
    "nome": "Crisópolis",
    "estado_id": 29
  },
  {
    "id": 2909703,
    "nome": "Cristópolis",
    "estado_id": 29
  },
  {
    "id": 2909802,
    "nome": "Cruz das Almas",
    "estado_id": 29
  },
  {
    "id": 2909901,
    "nome": "Curaçá",
    "estado_id": 29
  },
  {
    "id": 2910008,
    "nome": "Dário Meira",
    "estado_id": 29
  },
  {
    "id": 2910057,
    "nome": "Dias d'Ávila",
    "estado_id": 29
  },
  {
    "id": 2910107,
    "nome": "Dom Basílio",
    "estado_id": 29
  },
  {
    "id": 2910206,
    "nome": "Dom Macedo Costa",
    "estado_id": 29
  },
  {
    "id": 2910305,
    "nome": "Elísio Medrado",
    "estado_id": 29
  },
  {
    "id": 2910404,
    "nome": "Encruzilhada",
    "estado_id": 29
  },
  {
    "id": 2910503,
    "nome": "Entre Rios",
    "estado_id": 29
  },
  {
    "id": 2910602,
    "nome": "Esplanada",
    "estado_id": 29
  },
  {
    "id": 2910701,
    "nome": "Euclides da Cunha",
    "estado_id": 29
  },
  {
    "id": 2910727,
    "nome": "Eunápolis",
    "estado_id": 29
  },
  {
    "id": 2910750,
    "nome": "Fátima",
    "estado_id": 29
  },
  {
    "id": 2910776,
    "nome": "Feira da Mata",
    "estado_id": 29
  },
  {
    "id": 2910800,
    "nome": "Feira de Santana",
    "estado_id": 29
  },
  {
    "id": 2910859,
    "nome": "Filadélfia",
    "estado_id": 29
  },
  {
    "id": 2910909,
    "nome": "Firmino Alves",
    "estado_id": 29
  },
  {
    "id": 2911006,
    "nome": "Floresta Azul",
    "estado_id": 29
  },
  {
    "id": 2911105,
    "nome": "Formosa do Rio Preto",
    "estado_id": 29
  },
  {
    "id": 2911204,
    "nome": "Gandu",
    "estado_id": 29
  },
  {
    "id": 2911253,
    "nome": "Gavião",
    "estado_id": 29
  },
  {
    "id": 2911303,
    "nome": "Gentio do Ouro",
    "estado_id": 29
  },
  {
    "id": 2911402,
    "nome": "Glória",
    "estado_id": 29
  },
  {
    "id": 2911501,
    "nome": "Gongogi",
    "estado_id": 29
  },
  {
    "id": 2911600,
    "nome": "Governador Mangabeira",
    "estado_id": 29
  },
  {
    "id": 2911659,
    "nome": "Guajeru",
    "estado_id": 29
  },
  {
    "id": 2911709,
    "nome": "Guanambi",
    "estado_id": 29
  },
  {
    "id": 2911808,
    "nome": "Guaratinga",
    "estado_id": 29
  },
  {
    "id": 2911857,
    "nome": "Heliópolis",
    "estado_id": 29
  },
  {
    "id": 2911907,
    "nome": "Iaçu",
    "estado_id": 29
  },
  {
    "id": 2912004,
    "nome": "Ibiassucê",
    "estado_id": 29
  },
  {
    "id": 2912103,
    "nome": "Ibicaraí",
    "estado_id": 29
  },
  {
    "id": 2912202,
    "nome": "Ibicoara",
    "estado_id": 29
  },
  {
    "id": 2912301,
    "nome": "Ibicuí",
    "estado_id": 29
  },
  {
    "id": 2912400,
    "nome": "Ibipeba",
    "estado_id": 29
  },
  {
    "id": 2912509,
    "nome": "Ibipitanga",
    "estado_id": 29
  },
  {
    "id": 2912608,
    "nome": "Ibiquera",
    "estado_id": 29
  },
  {
    "id": 2912707,
    "nome": "Ibirapitanga",
    "estado_id": 29
  },
  {
    "id": 2912806,
    "nome": "Ibirapuã",
    "estado_id": 29
  },
  {
    "id": 2912905,
    "nome": "Ibirataia",
    "estado_id": 29
  },
  {
    "id": 2913002,
    "nome": "Ibitiara",
    "estado_id": 29
  },
  {
    "id": 2913101,
    "nome": "Ibititá",
    "estado_id": 29
  },
  {
    "id": 2913200,
    "nome": "Ibotirama",
    "estado_id": 29
  },
  {
    "id": 2913309,
    "nome": "Ichu",
    "estado_id": 29
  },
  {
    "id": 2913408,
    "nome": "Igaporã",
    "estado_id": 29
  },
  {
    "id": 2913457,
    "nome": "Igrapiúna",
    "estado_id": 29
  },
  {
    "id": 2913507,
    "nome": "Iguaí",
    "estado_id": 29
  },
  {
    "id": 2913606,
    "nome": "Ilhéus",
    "estado_id": 29
  },
  {
    "id": 2913705,
    "nome": "Inhambupe",
    "estado_id": 29
  },
  {
    "id": 2913804,
    "nome": "Ipecaetá",
    "estado_id": 29
  },
  {
    "id": 2913903,
    "nome": "Ipiaú",
    "estado_id": 29
  },
  {
    "id": 2914000,
    "nome": "Ipirá",
    "estado_id": 29
  },
  {
    "id": 2914109,
    "nome": "Ipupiara",
    "estado_id": 29
  },
  {
    "id": 2914208,
    "nome": "Irajuba",
    "estado_id": 29
  },
  {
    "id": 2914307,
    "nome": "Iramaia",
    "estado_id": 29
  },
  {
    "id": 2914406,
    "nome": "Iraquara",
    "estado_id": 29
  },
  {
    "id": 2914505,
    "nome": "Irará",
    "estado_id": 29
  },
  {
    "id": 2914604,
    "nome": "Irecê",
    "estado_id": 29
  },
  {
    "id": 2914653,
    "nome": "Itabela",
    "estado_id": 29
  },
  {
    "id": 2914703,
    "nome": "Itaberaba",
    "estado_id": 29
  },
  {
    "id": 2914802,
    "nome": "Itabuna",
    "estado_id": 29
  },
  {
    "id": 2914901,
    "nome": "Itacaré",
    "estado_id": 29
  },
  {
    "id": 2915007,
    "nome": "Itaeté",
    "estado_id": 29
  },
  {
    "id": 2915106,
    "nome": "Itagi",
    "estado_id": 29
  },
  {
    "id": 2915205,
    "nome": "Itagibá",
    "estado_id": 29
  },
  {
    "id": 2915304,
    "nome": "Itagimirim",
    "estado_id": 29
  },
  {
    "id": 2915353,
    "nome": "Itaguaçu da Bahia",
    "estado_id": 29
  },
  {
    "id": 2915403,
    "nome": "Itaju do Colônia",
    "estado_id": 29
  },
  {
    "id": 2915502,
    "nome": "Itajuípe",
    "estado_id": 29
  },
  {
    "id": 2915601,
    "nome": "Itamaraju",
    "estado_id": 29
  },
  {
    "id": 2915700,
    "nome": "Itamari",
    "estado_id": 29
  },
  {
    "id": 2915809,
    "nome": "Itambé",
    "estado_id": 29
  },
  {
    "id": 2915908,
    "nome": "Itanagra",
    "estado_id": 29
  },
  {
    "id": 2916005,
    "nome": "Itanhém",
    "estado_id": 29
  },
  {
    "id": 2916104,
    "nome": "Itaparica",
    "estado_id": 29
  },
  {
    "id": 2916203,
    "nome": "Itapé",
    "estado_id": 29
  },
  {
    "id": 2916302,
    "nome": "Itapebi",
    "estado_id": 29
  },
  {
    "id": 2916401,
    "nome": "Itapetinga",
    "estado_id": 29
  },
  {
    "id": 2916500,
    "nome": "Itapicuru",
    "estado_id": 29
  },
  {
    "id": 2916609,
    "nome": "Itapitanga",
    "estado_id": 29
  },
  {
    "id": 2916708,
    "nome": "Itaquara",
    "estado_id": 29
  },
  {
    "id": 2916807,
    "nome": "Itarantim",
    "estado_id": 29
  },
  {
    "id": 2916856,
    "nome": "Itatim",
    "estado_id": 29
  },
  {
    "id": 2916906,
    "nome": "Itiruçu",
    "estado_id": 29
  },
  {
    "id": 2917003,
    "nome": "Itiúba",
    "estado_id": 29
  },
  {
    "id": 2917102,
    "nome": "Itororó",
    "estado_id": 29
  },
  {
    "id": 2917201,
    "nome": "Ituaçu",
    "estado_id": 29
  },
  {
    "id": 2917300,
    "nome": "Ituberá",
    "estado_id": 29
  },
  {
    "id": 2917334,
    "nome": "Iuiu",
    "estado_id": 29
  },
  {
    "id": 2917359,
    "nome": "Jaborandi",
    "estado_id": 29
  },
  {
    "id": 2917409,
    "nome": "Jacaraci",
    "estado_id": 29
  },
  {
    "id": 2917508,
    "nome": "Jacobina",
    "estado_id": 29
  },
  {
    "id": 2917607,
    "nome": "Jaguaquara",
    "estado_id": 29
  },
  {
    "id": 2917706,
    "nome": "Jaguarari",
    "estado_id": 29
  },
  {
    "id": 2917805,
    "nome": "Jaguaripe",
    "estado_id": 29
  },
  {
    "id": 2917904,
    "nome": "Jandaíra",
    "estado_id": 29
  },
  {
    "id": 2918001,
    "nome": "Jequié",
    "estado_id": 29
  },
  {
    "id": 2918100,
    "nome": "Jeremoabo",
    "estado_id": 29
  },
  {
    "id": 2918209,
    "nome": "Jiquiriçá",
    "estado_id": 29
  },
  {
    "id": 2918308,
    "nome": "Jitaúna",
    "estado_id": 29
  },
  {
    "id": 2918357,
    "nome": "João Dourado",
    "estado_id": 29
  },
  {
    "id": 2918407,
    "nome": "Juazeiro",
    "estado_id": 29
  },
  {
    "id": 2918456,
    "nome": "Jucuruçu",
    "estado_id": 29
  },
  {
    "id": 2918506,
    "nome": "Jussara",
    "estado_id": 29
  },
  {
    "id": 2918555,
    "nome": "Jussari",
    "estado_id": 29
  },
  {
    "id": 2918605,
    "nome": "Jussiape",
    "estado_id": 29
  },
  {
    "id": 2918704,
    "nome": "Lafaiete Coutinho",
    "estado_id": 29
  },
  {
    "id": 2918753,
    "nome": "Lagoa Real",
    "estado_id": 29
  },
  {
    "id": 2918803,
    "nome": "Laje",
    "estado_id": 29
  },
  {
    "id": 2918902,
    "nome": "Lajedão",
    "estado_id": 29
  },
  {
    "id": 2919009,
    "nome": "Lajedinho",
    "estado_id": 29
  },
  {
    "id": 2919058,
    "nome": "Lajedo do Tabocal",
    "estado_id": 29
  },
  {
    "id": 2919108,
    "nome": "Lamarão",
    "estado_id": 29
  },
  {
    "id": 2919157,
    "nome": "Lapão",
    "estado_id": 29
  },
  {
    "id": 2919207,
    "nome": "Lauro de Freitas",
    "estado_id": 29
  },
  {
    "id": 2919306,
    "nome": "Lençóis",
    "estado_id": 29
  },
  {
    "id": 2919405,
    "nome": "Licínio de Almeida",
    "estado_id": 29
  },
  {
    "id": 2919504,
    "nome": "Livramento de Nossa Senhora",
    "estado_id": 29
  },
  {
    "id": 2919553,
    "nome": "Luís Eduardo Magalhães",
    "estado_id": 29
  },
  {
    "id": 2919603,
    "nome": "Macajuba",
    "estado_id": 29
  },
  {
    "id": 2919702,
    "nome": "Macarani",
    "estado_id": 29
  },
  {
    "id": 2919801,
    "nome": "Macaúbas",
    "estado_id": 29
  },
  {
    "id": 2919900,
    "nome": "Macururé",
    "estado_id": 29
  },
  {
    "id": 2919926,
    "nome": "Madre de Deus",
    "estado_id": 29
  },
  {
    "id": 2919959,
    "nome": "Maetinga",
    "estado_id": 29
  },
  {
    "id": 2920007,
    "nome": "Maiquinique",
    "estado_id": 29
  },
  {
    "id": 2920106,
    "nome": "Mairi",
    "estado_id": 29
  },
  {
    "id": 2920205,
    "nome": "Malhada",
    "estado_id": 29
  },
  {
    "id": 2920304,
    "nome": "Malhada de Pedras",
    "estado_id": 29
  },
  {
    "id": 2920403,
    "nome": "Manoel Vitorino",
    "estado_id": 29
  },
  {
    "id": 2920452,
    "nome": "Mansidão",
    "estado_id": 29
  },
  {
    "id": 2920502,
    "nome": "Maracás",
    "estado_id": 29
  },
  {
    "id": 2920601,
    "nome": "Maragogipe",
    "estado_id": 29
  },
  {
    "id": 2920700,
    "nome": "Maraú",
    "estado_id": 29
  },
  {
    "id": 2920809,
    "nome": "Marcionílio Souza",
    "estado_id": 29
  },
  {
    "id": 2920908,
    "nome": "Mascote",
    "estado_id": 29
  },
  {
    "id": 2921005,
    "nome": "Mata de São João",
    "estado_id": 29
  },
  {
    "id": 2921054,
    "nome": "Matina",
    "estado_id": 29
  },
  {
    "id": 2921104,
    "nome": "Medeiros Neto",
    "estado_id": 29
  },
  {
    "id": 2921203,
    "nome": "Miguel Calmon",
    "estado_id": 29
  },
  {
    "id": 2921302,
    "nome": "Milagres",
    "estado_id": 29
  },
  {
    "id": 2921401,
    "nome": "Mirangaba",
    "estado_id": 29
  },
  {
    "id": 2921450,
    "nome": "Mirante",
    "estado_id": 29
  },
  {
    "id": 2921500,
    "nome": "Monte Santo",
    "estado_id": 29
  },
  {
    "id": 2921609,
    "nome": "Morpará",
    "estado_id": 29
  },
  {
    "id": 2921708,
    "nome": "Morro do Chapéu",
    "estado_id": 29
  },
  {
    "id": 2921807,
    "nome": "Mortugaba",
    "estado_id": 29
  },
  {
    "id": 2921906,
    "nome": "Mucugê",
    "estado_id": 29
  },
  {
    "id": 2922003,
    "nome": "Mucuri",
    "estado_id": 29
  },
  {
    "id": 2922052,
    "nome": "Mulungu do Morro",
    "estado_id": 29
  },
  {
    "id": 2922102,
    "nome": "Mundo Novo",
    "estado_id": 29
  },
  {
    "id": 2922201,
    "nome": "Muniz Ferreira",
    "estado_id": 29
  },
  {
    "id": 2922250,
    "nome": "Muquém do São Francisco",
    "estado_id": 29
  },
  {
    "id": 2922300,
    "nome": "Muritiba",
    "estado_id": 29
  },
  {
    "id": 2922409,
    "nome": "Mutuípe",
    "estado_id": 29
  },
  {
    "id": 2922508,
    "nome": "Nazaré",
    "estado_id": 29
  },
  {
    "id": 2922607,
    "nome": "Nilo Peçanha",
    "estado_id": 29
  },
  {
    "id": 2922656,
    "nome": "Nordestina",
    "estado_id": 29
  },
  {
    "id": 2922706,
    "nome": "Nova Canaã",
    "estado_id": 29
  },
  {
    "id": 2922730,
    "nome": "Nova Fátima",
    "estado_id": 29
  },
  {
    "id": 2922755,
    "nome": "Nova Ibiá",
    "estado_id": 29
  },
  {
    "id": 2922805,
    "nome": "Nova Itarana",
    "estado_id": 29
  },
  {
    "id": 2922854,
    "nome": "Nova Redenção",
    "estado_id": 29
  },
  {
    "id": 2922904,
    "nome": "Nova Soure",
    "estado_id": 29
  },
  {
    "id": 2923001,
    "nome": "Nova Viçosa",
    "estado_id": 29
  },
  {
    "id": 2923035,
    "nome": "Novo Horizonte",
    "estado_id": 29
  },
  {
    "id": 2923050,
    "nome": "Novo Triunfo",
    "estado_id": 29
  },
  {
    "id": 2923100,
    "nome": "Olindina",
    "estado_id": 29
  },
  {
    "id": 2923209,
    "nome": "Oliveira dos Brejinhos",
    "estado_id": 29
  },
  {
    "id": 2923308,
    "nome": "Ouriçangas",
    "estado_id": 29
  },
  {
    "id": 2923357,
    "nome": "Ourolândia",
    "estado_id": 29
  },
  {
    "id": 2923407,
    "nome": "Palmas de Monte Alto",
    "estado_id": 29
  },
  {
    "id": 2923506,
    "nome": "Palmeiras",
    "estado_id": 29
  },
  {
    "id": 2923605,
    "nome": "Paramirim",
    "estado_id": 29
  },
  {
    "id": 2923704,
    "nome": "Paratinga",
    "estado_id": 29
  },
  {
    "id": 2923803,
    "nome": "Paripiranga",
    "estado_id": 29
  },
  {
    "id": 2923902,
    "nome": "Pau Brasil",
    "estado_id": 29
  },
  {
    "id": 2924009,
    "nome": "Paulo Afonso",
    "estado_id": 29
  },
  {
    "id": 2924058,
    "nome": "Pé de Serra",
    "estado_id": 29
  },
  {
    "id": 2924108,
    "nome": "Pedrão",
    "estado_id": 29
  },
  {
    "id": 2924207,
    "nome": "Pedro Alexandre",
    "estado_id": 29
  },
  {
    "id": 2924306,
    "nome": "Piatã",
    "estado_id": 29
  },
  {
    "id": 2924405,
    "nome": "Pilão Arcado",
    "estado_id": 29
  },
  {
    "id": 2924504,
    "nome": "Pindaí",
    "estado_id": 29
  },
  {
    "id": 2924603,
    "nome": "Pindobaçu",
    "estado_id": 29
  },
  {
    "id": 2924652,
    "nome": "Pintadas",
    "estado_id": 29
  },
  {
    "id": 2924678,
    "nome": "Piraí do Norte",
    "estado_id": 29
  },
  {
    "id": 2924702,
    "nome": "Piripá",
    "estado_id": 29
  },
  {
    "id": 2924801,
    "nome": "Piritiba",
    "estado_id": 29
  },
  {
    "id": 2924900,
    "nome": "Planaltino",
    "estado_id": 29
  },
  {
    "id": 2925006,
    "nome": "Planalto",
    "estado_id": 29
  },
  {
    "id": 2925105,
    "nome": "Poções",
    "estado_id": 29
  },
  {
    "id": 2925204,
    "nome": "Pojuca",
    "estado_id": 29
  },
  {
    "id": 2925253,
    "nome": "Ponto Novo",
    "estado_id": 29
  },
  {
    "id": 2925303,
    "nome": "Porto Seguro",
    "estado_id": 29
  },
  {
    "id": 2925402,
    "nome": "Potiraguá",
    "estado_id": 29
  },
  {
    "id": 2925501,
    "nome": "Prado",
    "estado_id": 29
  },
  {
    "id": 2925600,
    "nome": "Presidente Dutra",
    "estado_id": 29
  },
  {
    "id": 2925709,
    "nome": "Presidente Jânio Quadros",
    "estado_id": 29
  },
  {
    "id": 2925758,
    "nome": "Presidente Tancredo Neves",
    "estado_id": 29
  },
  {
    "id": 2925808,
    "nome": "Queimadas",
    "estado_id": 29
  },
  {
    "id": 2925907,
    "nome": "Quijingue",
    "estado_id": 29
  },
  {
    "id": 2925931,
    "nome": "Quixabeira",
    "estado_id": 29
  },
  {
    "id": 2925956,
    "nome": "Rafael Jambeiro",
    "estado_id": 29
  },
  {
    "id": 2926004,
    "nome": "Remanso",
    "estado_id": 29
  },
  {
    "id": 2926103,
    "nome": "Retirolândia",
    "estado_id": 29
  },
  {
    "id": 2926202,
    "nome": "Riachão das Neves",
    "estado_id": 29
  },
  {
    "id": 2926301,
    "nome": "Riachão do Jacuípe",
    "estado_id": 29
  },
  {
    "id": 2926400,
    "nome": "Riacho de Santana",
    "estado_id": 29
  },
  {
    "id": 2926509,
    "nome": "Ribeira do Amparo",
    "estado_id": 29
  },
  {
    "id": 2926608,
    "nome": "Ribeira do Pombal",
    "estado_id": 29
  },
  {
    "id": 2926657,
    "nome": "Ribeirão do Largo",
    "estado_id": 29
  },
  {
    "id": 2926707,
    "nome": "Rio de Contas",
    "estado_id": 29
  },
  {
    "id": 2926806,
    "nome": "Rio do Antônio",
    "estado_id": 29
  },
  {
    "id": 2926905,
    "nome": "Rio do Pires",
    "estado_id": 29
  },
  {
    "id": 2927002,
    "nome": "Rio Real",
    "estado_id": 29
  },
  {
    "id": 2927101,
    "nome": "Rodelas",
    "estado_id": 29
  },
  {
    "id": 2927200,
    "nome": "Ruy Barbosa",
    "estado_id": 29
  },
  {
    "id": 2927309,
    "nome": "Salinas da Margarida",
    "estado_id": 29
  },
  {
    "id": 2927408,
    "nome": "Salvador",
    "estado_id": 29
  },
  {
    "id": 2927507,
    "nome": "Santa Bárbara",
    "estado_id": 29
  },
  {
    "id": 2927606,
    "nome": "Santa Brígida",
    "estado_id": 29
  },
  {
    "id": 2927705,
    "nome": "Santa Cruz Cabrália",
    "estado_id": 29
  },
  {
    "id": 2927804,
    "nome": "Santa Cruz da Vitória",
    "estado_id": 29
  },
  {
    "id": 2927903,
    "nome": "Santa Inês",
    "estado_id": 29
  },
  {
    "id": 2928000,
    "nome": "Santaluz",
    "estado_id": 29
  },
  {
    "id": 2928059,
    "nome": "Santa Luzia",
    "estado_id": 29
  },
  {
    "id": 2928109,
    "nome": "Santa Maria da Vitória",
    "estado_id": 29
  },
  {
    "id": 2928208,
    "nome": "Santana",
    "estado_id": 29
  },
  {
    "id": 2928307,
    "nome": "Santanópolis",
    "estado_id": 29
  },
  {
    "id": 2928406,
    "nome": "Santa Rita de Cássia",
    "estado_id": 29
  },
  {
    "id": 2928505,
    "nome": "Santa Terezinha",
    "estado_id": 29
  },
  {
    "id": 2928604,
    "nome": "Santo Amaro",
    "estado_id": 29
  },
  {
    "id": 2928703,
    "nome": "Santo Antônio de Jesus",
    "estado_id": 29
  },
  {
    "id": 2928802,
    "nome": "Santo Estêvão",
    "estado_id": 29
  },
  {
    "id": 2928901,
    "nome": "São Desidério",
    "estado_id": 29
  },
  {
    "id": 2928950,
    "nome": "São Domingos",
    "estado_id": 29
  },
  {
    "id": 2929008,
    "nome": "São Félix",
    "estado_id": 29
  },
  {
    "id": 2929057,
    "nome": "São Félix do Coribe",
    "estado_id": 29
  },
  {
    "id": 2929107,
    "nome": "São Felipe",
    "estado_id": 29
  },
  {
    "id": 2929206,
    "nome": "São Francisco do Conde",
    "estado_id": 29
  },
  {
    "id": 2929255,
    "nome": "São Gabriel",
    "estado_id": 29
  },
  {
    "id": 2929305,
    "nome": "São Gonçalo dos Campos",
    "estado_id": 29
  },
  {
    "id": 2929354,
    "nome": "São José da Vitória",
    "estado_id": 29
  },
  {
    "id": 2929370,
    "nome": "São José do Jacuípe",
    "estado_id": 29
  },
  {
    "id": 2929404,
    "nome": "São Miguel das Matas",
    "estado_id": 29
  },
  {
    "id": 2929503,
    "nome": "São Sebastião do Passé",
    "estado_id": 29
  },
  {
    "id": 2929602,
    "nome": "Sapeaçu",
    "estado_id": 29
  },
  {
    "id": 2929701,
    "nome": "Sátiro Dias",
    "estado_id": 29
  },
  {
    "id": 2929750,
    "nome": "Saubara",
    "estado_id": 29
  },
  {
    "id": 2929800,
    "nome": "Saúde",
    "estado_id": 29
  },
  {
    "id": 2929909,
    "nome": "Seabra",
    "estado_id": 29
  },
  {
    "id": 2930006,
    "nome": "Sebastião Laranjeiras",
    "estado_id": 29
  },
  {
    "id": 2930105,
    "nome": "Senhor do Bonfim",
    "estado_id": 29
  },
  {
    "id": 2930154,
    "nome": "Serra do Ramalho",
    "estado_id": 29
  },
  {
    "id": 2930204,
    "nome": "Sento Sé",
    "estado_id": 29
  },
  {
    "id": 2930303,
    "nome": "Serra Dourada",
    "estado_id": 29
  },
  {
    "id": 2930402,
    "nome": "Serra Preta",
    "estado_id": 29
  },
  {
    "id": 2930501,
    "nome": "Serrinha",
    "estado_id": 29
  },
  {
    "id": 2930600,
    "nome": "Serrolândia",
    "estado_id": 29
  },
  {
    "id": 2930709,
    "nome": "Simões Filho",
    "estado_id": 29
  },
  {
    "id": 2930758,
    "nome": "Sítio do Mato",
    "estado_id": 29
  },
  {
    "id": 2930766,
    "nome": "Sítio do Quinto",
    "estado_id": 29
  },
  {
    "id": 2930774,
    "nome": "Sobradinho",
    "estado_id": 29
  },
  {
    "id": 2930808,
    "nome": "Souto Soares",
    "estado_id": 29
  },
  {
    "id": 2930907,
    "nome": "Tabocas do Brejo Velho",
    "estado_id": 29
  },
  {
    "id": 2931004,
    "nome": "Tanhaçu",
    "estado_id": 29
  },
  {
    "id": 2931053,
    "nome": "Tanque Novo",
    "estado_id": 29
  },
  {
    "id": 2931103,
    "nome": "Tanquinho",
    "estado_id": 29
  },
  {
    "id": 2931202,
    "nome": "Taperoá",
    "estado_id": 29
  },
  {
    "id": 2931301,
    "nome": "Tapiramutá",
    "estado_id": 29
  },
  {
    "id": 2931350,
    "nome": "Teixeira de Freitas",
    "estado_id": 29
  },
  {
    "id": 2931400,
    "nome": "Teodoro Sampaio",
    "estado_id": 29
  },
  {
    "id": 2931509,
    "nome": "Teofilândia",
    "estado_id": 29
  },
  {
    "id": 2931608,
    "nome": "Teolândia",
    "estado_id": 29
  },
  {
    "id": 2931707,
    "nome": "Terra Nova",
    "estado_id": 29
  },
  {
    "id": 2931806,
    "nome": "Tremedal",
    "estado_id": 29
  },
  {
    "id": 2931905,
    "nome": "Tucano",
    "estado_id": 29
  },
  {
    "id": 2932002,
    "nome": "Uauá",
    "estado_id": 29
  },
  {
    "id": 2932101,
    "nome": "Ubaíra",
    "estado_id": 29
  },
  {
    "id": 2932200,
    "nome": "Ubaitaba",
    "estado_id": 29
  },
  {
    "id": 2932309,
    "nome": "Ubatã",
    "estado_id": 29
  },
  {
    "id": 2932408,
    "nome": "Uibaí",
    "estado_id": 29
  },
  {
    "id": 2932457,
    "nome": "Umburanas",
    "estado_id": 29
  },
  {
    "id": 2932507,
    "nome": "Una",
    "estado_id": 29
  },
  {
    "id": 2932606,
    "nome": "Urandi",
    "estado_id": 29
  },
  {
    "id": 2932705,
    "nome": "Uruçuca",
    "estado_id": 29
  },
  {
    "id": 2932804,
    "nome": "Utinga",
    "estado_id": 29
  },
  {
    "id": 2932903,
    "nome": "Valença",
    "estado_id": 29
  },
  {
    "id": 2933000,
    "nome": "Valente",
    "estado_id": 29
  },
  {
    "id": 2933059,
    "nome": "Várzea da Roça",
    "estado_id": 29
  },
  {
    "id": 2933109,
    "nome": "Várzea do Poço",
    "estado_id": 29
  },
  {
    "id": 2933158,
    "nome": "Várzea Nova",
    "estado_id": 29
  },
  {
    "id": 2933174,
    "nome": "Varzedo",
    "estado_id": 29
  },
  {
    "id": 2933208,
    "nome": "Vera Cruz",
    "estado_id": 29
  },
  {
    "id": 2933257,
    "nome": "Vereda",
    "estado_id": 29
  },
  {
    "id": 2933307,
    "nome": "Vitória da Conquista",
    "estado_id": 29
  },
  {
    "id": 2933406,
    "nome": "Wagner",
    "estado_id": 29
  },
  {
    "id": 2933455,
    "nome": "Wanderley",
    "estado_id": 29
  },
  {
    "id": 2933505,
    "nome": "Wenceslau Guimarães",
    "estado_id": 29
  },
  {
    "id": 2933604,
    "nome": "Xique-Xique",
    "estado_id": 29
  },
  {
    "id": 3100104,
    "nome": "Abadia dos Dourados",
    "estado_id": 31
  },
  {
    "id": 3100203,
    "nome": "Abaeté",
    "estado_id": 31
  },
  {
    "id": 3100302,
    "nome": "Abre Campo",
    "estado_id": 31
  },
  {
    "id": 3100401,
    "nome": "Acaiaca",
    "estado_id": 31
  },
  {
    "id": 3100500,
    "nome": "Açucena",
    "estado_id": 31
  },
  {
    "id": 3100609,
    "nome": "Água Boa",
    "estado_id": 31
  },
  {
    "id": 3100708,
    "nome": "Água Comprida",
    "estado_id": 31
  },
  {
    "id": 3100807,
    "nome": "Aguanil",
    "estado_id": 31
  },
  {
    "id": 3100906,
    "nome": "Águas Formosas",
    "estado_id": 31
  },
  {
    "id": 3101003,
    "nome": "Águas Vermelhas",
    "estado_id": 31
  },
  {
    "id": 3101102,
    "nome": "Aimorés",
    "estado_id": 31
  },
  {
    "id": 3101201,
    "nome": "Aiuruoca",
    "estado_id": 31
  },
  {
    "id": 3101300,
    "nome": "Alagoa",
    "estado_id": 31
  },
  {
    "id": 3101409,
    "nome": "Albertina",
    "estado_id": 31
  },
  {
    "id": 3101508,
    "nome": "Além Paraíba",
    "estado_id": 31
  },
  {
    "id": 3101607,
    "nome": "Alfenas",
    "estado_id": 31
  },
  {
    "id": 3101631,
    "nome": "Alfredo Vasconcelos",
    "estado_id": 31
  },
  {
    "id": 3101706,
    "nome": "Almenara",
    "estado_id": 31
  },
  {
    "id": 3101805,
    "nome": "Alpercata",
    "estado_id": 31
  },
  {
    "id": 3101904,
    "nome": "Alpinópolis",
    "estado_id": 31
  },
  {
    "id": 3102001,
    "nome": "Alterosa",
    "estado_id": 31
  },
  {
    "id": 3102050,
    "nome": "Alto Caparaó",
    "estado_id": 31
  },
  {
    "id": 3102100,
    "nome": "Alto Rio Doce",
    "estado_id": 31
  },
  {
    "id": 3102209,
    "nome": "Alvarenga",
    "estado_id": 31
  },
  {
    "id": 3102308,
    "nome": "Alvinópolis",
    "estado_id": 31
  },
  {
    "id": 3102407,
    "nome": "Alvorada de Minas",
    "estado_id": 31
  },
  {
    "id": 3102506,
    "nome": "Amparo do Serra",
    "estado_id": 31
  },
  {
    "id": 3102605,
    "nome": "Andradas",
    "estado_id": 31
  },
  {
    "id": 3102704,
    "nome": "Cachoeira de Pajeú",
    "estado_id": 31
  },
  {
    "id": 3102803,
    "nome": "Andrelândia",
    "estado_id": 31
  },
  {
    "id": 3102852,
    "nome": "Angelândia",
    "estado_id": 31
  },
  {
    "id": 3102902,
    "nome": "Antônio Carlos",
    "estado_id": 31
  },
  {
    "id": 3103009,
    "nome": "Antônio Dias",
    "estado_id": 31
  },
  {
    "id": 3103108,
    "nome": "Antônio Prado de Minas",
    "estado_id": 31
  },
  {
    "id": 3103207,
    "nome": "Araçaí",
    "estado_id": 31
  },
  {
    "id": 3103306,
    "nome": "Aracitaba",
    "estado_id": 31
  },
  {
    "id": 3103405,
    "nome": "Araçuaí",
    "estado_id": 31
  },
  {
    "id": 3103504,
    "nome": "Araguari",
    "estado_id": 31
  },
  {
    "id": 3103603,
    "nome": "Arantina",
    "estado_id": 31
  },
  {
    "id": 3103702,
    "nome": "Araponga",
    "estado_id": 31
  },
  {
    "id": 3103751,
    "nome": "Araporã",
    "estado_id": 31
  },
  {
    "id": 3103801,
    "nome": "Arapuá",
    "estado_id": 31
  },
  {
    "id": 3103900,
    "nome": "Araújos",
    "estado_id": 31
  },
  {
    "id": 3104007,
    "nome": "Araxá",
    "estado_id": 31
  },
  {
    "id": 3104106,
    "nome": "Arceburgo",
    "estado_id": 31
  },
  {
    "id": 3104205,
    "nome": "Arcos",
    "estado_id": 31
  },
  {
    "id": 3104304,
    "nome": "Areado",
    "estado_id": 31
  },
  {
    "id": 3104403,
    "nome": "Argirita",
    "estado_id": 31
  },
  {
    "id": 3104452,
    "nome": "Aricanduva",
    "estado_id": 31
  },
  {
    "id": 3104502,
    "nome": "Arinos",
    "estado_id": 31
  },
  {
    "id": 3104601,
    "nome": "Astolfo Dutra",
    "estado_id": 31
  },
  {
    "id": 3104700,
    "nome": "Ataléia",
    "estado_id": 31
  },
  {
    "id": 3104809,
    "nome": "Augusto de Lima",
    "estado_id": 31
  },
  {
    "id": 3104908,
    "nome": "Baependi",
    "estado_id": 31
  },
  {
    "id": 3105004,
    "nome": "Baldim",
    "estado_id": 31
  },
  {
    "id": 3105103,
    "nome": "Bambuí",
    "estado_id": 31
  },
  {
    "id": 3105202,
    "nome": "Bandeira",
    "estado_id": 31
  },
  {
    "id": 3105301,
    "nome": "Bandeira do Sul",
    "estado_id": 31
  },
  {
    "id": 3105400,
    "nome": "Barão de Cocais",
    "estado_id": 31
  },
  {
    "id": 3105509,
    "nome": "Barão de Monte Alto",
    "estado_id": 31
  },
  {
    "id": 3105608,
    "nome": "Barbacena",
    "estado_id": 31
  },
  {
    "id": 3105707,
    "nome": "Barra Longa",
    "estado_id": 31
  },
  {
    "id": 3105905,
    "nome": "Barroso",
    "estado_id": 31
  },
  {
    "id": 3106002,
    "nome": "Bela Vista de Minas",
    "estado_id": 31
  },
  {
    "id": 3106101,
    "nome": "Belmiro Braga",
    "estado_id": 31
  },
  {
    "id": 3106200,
    "nome": "Belo Horizonte",
    "estado_id": 31
  },
  {
    "id": 3106309,
    "nome": "Belo Oriente",
    "estado_id": 31
  },
  {
    "id": 3106408,
    "nome": "Belo Vale",
    "estado_id": 31
  },
  {
    "id": 3106507,
    "nome": "Berilo",
    "estado_id": 31
  },
  {
    "id": 3106606,
    "nome": "Bertópolis",
    "estado_id": 31
  },
  {
    "id": 3106655,
    "nome": "Berizal",
    "estado_id": 31
  },
  {
    "id": 3106705,
    "nome": "Betim",
    "estado_id": 31
  },
  {
    "id": 3106804,
    "nome": "Bias Fortes",
    "estado_id": 31
  },
  {
    "id": 3106903,
    "nome": "Bicas",
    "estado_id": 31
  },
  {
    "id": 3107000,
    "nome": "Biquinhas",
    "estado_id": 31
  },
  {
    "id": 3107109,
    "nome": "Boa Esperança",
    "estado_id": 31
  },
  {
    "id": 3107208,
    "nome": "Bocaina de Minas",
    "estado_id": 31
  },
  {
    "id": 3107307,
    "nome": "Bocaiúva",
    "estado_id": 31
  },
  {
    "id": 3107406,
    "nome": "Bom Despacho",
    "estado_id": 31
  },
  {
    "id": 3107505,
    "nome": "Bom Jardim de Minas",
    "estado_id": 31
  },
  {
    "id": 3107604,
    "nome": "Bom Jesus da Penha",
    "estado_id": 31
  },
  {
    "id": 3107703,
    "nome": "Bom Jesus do Amparo",
    "estado_id": 31
  },
  {
    "id": 3107802,
    "nome": "Bom Jesus do Galho",
    "estado_id": 31
  },
  {
    "id": 3107901,
    "nome": "Bom Repouso",
    "estado_id": 31
  },
  {
    "id": 3108008,
    "nome": "Bom Sucesso",
    "estado_id": 31
  },
  {
    "id": 3108107,
    "nome": "Bonfim",
    "estado_id": 31
  },
  {
    "id": 3108206,
    "nome": "Bonfinópolis de Minas",
    "estado_id": 31
  },
  {
    "id": 3108255,
    "nome": "Bonito de Minas",
    "estado_id": 31
  },
  {
    "id": 3108305,
    "nome": "Borda da Mata",
    "estado_id": 31
  },
  {
    "id": 3108404,
    "nome": "Botelhos",
    "estado_id": 31
  },
  {
    "id": 3108503,
    "nome": "Botumirim",
    "estado_id": 31
  },
  {
    "id": 3108552,
    "nome": "Brasilândia de Minas",
    "estado_id": 31
  },
  {
    "id": 3108602,
    "nome": "Brasília de Minas",
    "estado_id": 31
  },
  {
    "id": 3108701,
    "nome": "Brás Pires",
    "estado_id": 31
  },
  {
    "id": 3108800,
    "nome": "Braúnas",
    "estado_id": 31
  },
  {
    "id": 3108909,
    "nome": "Brazópolis",
    "estado_id": 31
  },
  {
    "id": 3109006,
    "nome": "Brumadinho",
    "estado_id": 31
  },
  {
    "id": 3109105,
    "nome": "Bueno Brandão",
    "estado_id": 31
  },
  {
    "id": 3109204,
    "nome": "Buenópolis",
    "estado_id": 31
  },
  {
    "id": 3109253,
    "nome": "Bugre",
    "estado_id": 31
  },
  {
    "id": 3109303,
    "nome": "Buritis",
    "estado_id": 31
  },
  {
    "id": 3109402,
    "nome": "Buritizeiro",
    "estado_id": 31
  },
  {
    "id": 3109451,
    "nome": "Cabeceira Grande",
    "estado_id": 31
  },
  {
    "id": 3109501,
    "nome": "Cabo Verde",
    "estado_id": 31
  },
  {
    "id": 3109600,
    "nome": "Cachoeira da Prata",
    "estado_id": 31
  },
  {
    "id": 3109709,
    "nome": "Cachoeira de Minas",
    "estado_id": 31
  },
  {
    "id": 3109808,
    "nome": "Cachoeira Dourada",
    "estado_id": 31
  },
  {
    "id": 3109907,
    "nome": "Caetanópolis",
    "estado_id": 31
  },
  {
    "id": 3110004,
    "nome": "Caeté",
    "estado_id": 31
  },
  {
    "id": 3110103,
    "nome": "Caiana",
    "estado_id": 31
  },
  {
    "id": 3110202,
    "nome": "Cajuri",
    "estado_id": 31
  },
  {
    "id": 3110301,
    "nome": "Caldas",
    "estado_id": 31
  },
  {
    "id": 3110400,
    "nome": "Camacho",
    "estado_id": 31
  },
  {
    "id": 3110509,
    "nome": "Camanducaia",
    "estado_id": 31
  },
  {
    "id": 3110608,
    "nome": "Cambuí",
    "estado_id": 31
  },
  {
    "id": 3110707,
    "nome": "Cambuquira",
    "estado_id": 31
  },
  {
    "id": 3110806,
    "nome": "Campanário",
    "estado_id": 31
  },
  {
    "id": 3110905,
    "nome": "Campanha",
    "estado_id": 31
  },
  {
    "id": 3111002,
    "nome": "Campestre",
    "estado_id": 31
  },
  {
    "id": 3111101,
    "nome": "Campina Verde",
    "estado_id": 31
  },
  {
    "id": 3111150,
    "nome": "Campo Azul",
    "estado_id": 31
  },
  {
    "id": 3111200,
    "nome": "Campo Belo",
    "estado_id": 31
  },
  {
    "id": 3111309,
    "nome": "Campo do Meio",
    "estado_id": 31
  },
  {
    "id": 3111408,
    "nome": "Campo Florido",
    "estado_id": 31
  },
  {
    "id": 3111507,
    "nome": "Campos Altos",
    "estado_id": 31
  },
  {
    "id": 3111606,
    "nome": "Campos Gerais",
    "estado_id": 31
  },
  {
    "id": 3111705,
    "nome": "Canaã",
    "estado_id": 31
  },
  {
    "id": 3111804,
    "nome": "Canápolis",
    "estado_id": 31
  },
  {
    "id": 3111903,
    "nome": "Cana Verde",
    "estado_id": 31
  },
  {
    "id": 3112000,
    "nome": "Candeias",
    "estado_id": 31
  },
  {
    "id": 3112059,
    "nome": "Cantagalo",
    "estado_id": 31
  },
  {
    "id": 3112109,
    "nome": "Caparaó",
    "estado_id": 31
  },
  {
    "id": 3112208,
    "nome": "Capela Nova",
    "estado_id": 31
  },
  {
    "id": 3112307,
    "nome": "Capelinha",
    "estado_id": 31
  },
  {
    "id": 3112406,
    "nome": "Capetinga",
    "estado_id": 31
  },
  {
    "id": 3112505,
    "nome": "Capim Branco",
    "estado_id": 31
  },
  {
    "id": 3112604,
    "nome": "Capinópolis",
    "estado_id": 31
  },
  {
    "id": 3112653,
    "nome": "Capitão Andrade",
    "estado_id": 31
  },
  {
    "id": 3112703,
    "nome": "Capitão Enéas",
    "estado_id": 31
  },
  {
    "id": 3112802,
    "nome": "Capitólio",
    "estado_id": 31
  },
  {
    "id": 3112901,
    "nome": "Caputira",
    "estado_id": 31
  },
  {
    "id": 3113008,
    "nome": "Caraí",
    "estado_id": 31
  },
  {
    "id": 3113107,
    "nome": "Caranaíba",
    "estado_id": 31
  },
  {
    "id": 3113206,
    "nome": "Carandaí",
    "estado_id": 31
  },
  {
    "id": 3113305,
    "nome": "Carangola",
    "estado_id": 31
  },
  {
    "id": 3113404,
    "nome": "Caratinga",
    "estado_id": 31
  },
  {
    "id": 3113503,
    "nome": "Carbonita",
    "estado_id": 31
  },
  {
    "id": 3113602,
    "nome": "Careaçu",
    "estado_id": 31
  },
  {
    "id": 3113701,
    "nome": "Carlos Chagas",
    "estado_id": 31
  },
  {
    "id": 3113800,
    "nome": "Carmésia",
    "estado_id": 31
  },
  {
    "id": 3113909,
    "nome": "Carmo da Cachoeira",
    "estado_id": 31
  },
  {
    "id": 3114006,
    "nome": "Carmo da Mata",
    "estado_id": 31
  },
  {
    "id": 3114105,
    "nome": "Carmo de Minas",
    "estado_id": 31
  },
  {
    "id": 3114204,
    "nome": "Carmo do Cajuru",
    "estado_id": 31
  },
  {
    "id": 3114303,
    "nome": "Carmo do Paranaíba",
    "estado_id": 31
  },
  {
    "id": 3114402,
    "nome": "Carmo do Rio Claro",
    "estado_id": 31
  },
  {
    "id": 3114501,
    "nome": "Carmópolis de Minas",
    "estado_id": 31
  },
  {
    "id": 3114550,
    "nome": "Carneirinho",
    "estado_id": 31
  },
  {
    "id": 3114600,
    "nome": "Carrancas",
    "estado_id": 31
  },
  {
    "id": 3114709,
    "nome": "Carvalhópolis",
    "estado_id": 31
  },
  {
    "id": 3114808,
    "nome": "Carvalhos",
    "estado_id": 31
  },
  {
    "id": 3114907,
    "nome": "Casa Grande",
    "estado_id": 31
  },
  {
    "id": 3115003,
    "nome": "Cascalho Rico",
    "estado_id": 31
  },
  {
    "id": 3115102,
    "nome": "Cássia",
    "estado_id": 31
  },
  {
    "id": 3115201,
    "nome": "Conceição da Barra de Minas",
    "estado_id": 31
  },
  {
    "id": 3115300,
    "nome": "Cataguases",
    "estado_id": 31
  },
  {
    "id": 3115359,
    "nome": "Catas Altas",
    "estado_id": 31
  },
  {
    "id": 3115409,
    "nome": "Catas Altas da Noruega",
    "estado_id": 31
  },
  {
    "id": 3115458,
    "nome": "Catuji",
    "estado_id": 31
  },
  {
    "id": 3115474,
    "nome": "Catuti",
    "estado_id": 31
  },
  {
    "id": 3115508,
    "nome": "Caxambu",
    "estado_id": 31
  },
  {
    "id": 3115607,
    "nome": "Cedro do Abaeté",
    "estado_id": 31
  },
  {
    "id": 3115706,
    "nome": "Central de Minas",
    "estado_id": 31
  },
  {
    "id": 3115805,
    "nome": "Centralina",
    "estado_id": 31
  },
  {
    "id": 3115904,
    "nome": "Chácara",
    "estado_id": 31
  },
  {
    "id": 3116001,
    "nome": "Chalé",
    "estado_id": 31
  },
  {
    "id": 3116100,
    "nome": "Chapada do Norte",
    "estado_id": 31
  },
  {
    "id": 3116159,
    "nome": "Chapada Gaúcha",
    "estado_id": 31
  },
  {
    "id": 3116209,
    "nome": "Chiador",
    "estado_id": 31
  },
  {
    "id": 3116308,
    "nome": "Cipotânea",
    "estado_id": 31
  },
  {
    "id": 3116407,
    "nome": "Claraval",
    "estado_id": 31
  },
  {
    "id": 3116506,
    "nome": "Claro dos Poções",
    "estado_id": 31
  },
  {
    "id": 3116605,
    "nome": "Cláudio",
    "estado_id": 31
  },
  {
    "id": 3116704,
    "nome": "Coimbra",
    "estado_id": 31
  },
  {
    "id": 3116803,
    "nome": "Coluna",
    "estado_id": 31
  },
  {
    "id": 3116902,
    "nome": "Comendador Gomes",
    "estado_id": 31
  },
  {
    "id": 3117009,
    "nome": "Comercinho",
    "estado_id": 31
  },
  {
    "id": 3117108,
    "nome": "Conceição da Aparecida",
    "estado_id": 31
  },
  {
    "id": 3117207,
    "nome": "Conceição das Pedras",
    "estado_id": 31
  },
  {
    "id": 3117306,
    "nome": "Conceição das Alagoas",
    "estado_id": 31
  },
  {
    "id": 3117405,
    "nome": "Conceição de Ipanema",
    "estado_id": 31
  },
  {
    "id": 3117504,
    "nome": "Conceição do Mato Dentro",
    "estado_id": 31
  },
  {
    "id": 3117603,
    "nome": "Conceição do Pará",
    "estado_id": 31
  },
  {
    "id": 3117702,
    "nome": "Conceição do Rio Verde",
    "estado_id": 31
  },
  {
    "id": 3117801,
    "nome": "Conceição dos Ouros",
    "estado_id": 31
  },
  {
    "id": 3117836,
    "nome": "Cônego Marinho",
    "estado_id": 31
  },
  {
    "id": 3117876,
    "nome": "Confins",
    "estado_id": 31
  },
  {
    "id": 3117900,
    "nome": "Congonhal",
    "estado_id": 31
  },
  {
    "id": 3118007,
    "nome": "Congonhas",
    "estado_id": 31
  },
  {
    "id": 3118106,
    "nome": "Congonhas do Norte",
    "estado_id": 31
  },
  {
    "id": 3118205,
    "nome": "Conquista",
    "estado_id": 31
  },
  {
    "id": 3118304,
    "nome": "Conselheiro Lafaiete",
    "estado_id": 31
  },
  {
    "id": 3118403,
    "nome": "Conselheiro Pena",
    "estado_id": 31
  },
  {
    "id": 3118502,
    "nome": "Consolação",
    "estado_id": 31
  },
  {
    "id": 3118601,
    "nome": "Contagem",
    "estado_id": 31
  },
  {
    "id": 3118700,
    "nome": "Coqueiral",
    "estado_id": 31
  },
  {
    "id": 3118809,
    "nome": "Coração de Jesus",
    "estado_id": 31
  },
  {
    "id": 3118908,
    "nome": "Cordisburgo",
    "estado_id": 31
  },
  {
    "id": 3119005,
    "nome": "Cordislândia",
    "estado_id": 31
  },
  {
    "id": 3119104,
    "nome": "Corinto",
    "estado_id": 31
  },
  {
    "id": 3119203,
    "nome": "Coroaci",
    "estado_id": 31
  },
  {
    "id": 3119302,
    "nome": "Coromandel",
    "estado_id": 31
  },
  {
    "id": 3119401,
    "nome": "Coronel Fabriciano",
    "estado_id": 31
  },
  {
    "id": 3119500,
    "nome": "Coronel Murta",
    "estado_id": 31
  },
  {
    "id": 3119609,
    "nome": "Coronel Pacheco",
    "estado_id": 31
  },
  {
    "id": 3119708,
    "nome": "Coronel Xavier Chaves",
    "estado_id": 31
  },
  {
    "id": 3119807,
    "nome": "Córrego Danta",
    "estado_id": 31
  },
  {
    "id": 3119906,
    "nome": "Córrego do Bom Jesus",
    "estado_id": 31
  },
  {
    "id": 3119955,
    "nome": "Córrego Fundo",
    "estado_id": 31
  },
  {
    "id": 3120003,
    "nome": "Córrego Novo",
    "estado_id": 31
  },
  {
    "id": 3120102,
    "nome": "Couto de Magalhães de Minas",
    "estado_id": 31
  },
  {
    "id": 3120151,
    "nome": "Crisólita",
    "estado_id": 31
  },
  {
    "id": 3120201,
    "nome": "Cristais",
    "estado_id": 31
  },
  {
    "id": 3120300,
    "nome": "Cristália",
    "estado_id": 31
  },
  {
    "id": 3120409,
    "nome": "Cristiano Otoni",
    "estado_id": 31
  },
  {
    "id": 3120508,
    "nome": "Cristina",
    "estado_id": 31
  },
  {
    "id": 3120607,
    "nome": "Crucilândia",
    "estado_id": 31
  },
  {
    "id": 3120706,
    "nome": "Cruzeiro da Fortaleza",
    "estado_id": 31
  },
  {
    "id": 3120805,
    "nome": "Cruzília",
    "estado_id": 31
  },
  {
    "id": 3120839,
    "nome": "Cuparaque",
    "estado_id": 31
  },
  {
    "id": 3120870,
    "nome": "Curral de Dentro",
    "estado_id": 31
  },
  {
    "id": 3120904,
    "nome": "Curvelo",
    "estado_id": 31
  },
  {
    "id": 3121001,
    "nome": "Datas",
    "estado_id": 31
  },
  {
    "id": 3121100,
    "nome": "Delfim Moreira",
    "estado_id": 31
  },
  {
    "id": 3121209,
    "nome": "Delfinópolis",
    "estado_id": 31
  },
  {
    "id": 3121258,
    "nome": "Delta",
    "estado_id": 31
  },
  {
    "id": 3121308,
    "nome": "Descoberto",
    "estado_id": 31
  },
  {
    "id": 3121407,
    "nome": "Desterro de Entre Rios",
    "estado_id": 31
  },
  {
    "id": 3121506,
    "nome": "Desterro do Melo",
    "estado_id": 31
  },
  {
    "id": 3121605,
    "nome": "Diamantina",
    "estado_id": 31
  },
  {
    "id": 3121704,
    "nome": "Diogo de Vasconcelos",
    "estado_id": 31
  },
  {
    "id": 3121803,
    "nome": "Dionísio",
    "estado_id": 31
  },
  {
    "id": 3121902,
    "nome": "Divinésia",
    "estado_id": 31
  },
  {
    "id": 3122009,
    "nome": "Divino",
    "estado_id": 31
  },
  {
    "id": 3122108,
    "nome": "Divino das Laranjeiras",
    "estado_id": 31
  },
  {
    "id": 3122207,
    "nome": "Divinolândia de Minas",
    "estado_id": 31
  },
  {
    "id": 3122306,
    "nome": "Divinópolis",
    "estado_id": 31
  },
  {
    "id": 3122355,
    "nome": "Divisa Alegre",
    "estado_id": 31
  },
  {
    "id": 3122405,
    "nome": "Divisa Nova",
    "estado_id": 31
  },
  {
    "id": 3122454,
    "nome": "Divisópolis",
    "estado_id": 31
  },
  {
    "id": 3122470,
    "nome": "Dom Bosco",
    "estado_id": 31
  },
  {
    "id": 3122504,
    "nome": "Dom Cavati",
    "estado_id": 31
  },
  {
    "id": 3122603,
    "nome": "Dom Joaquim",
    "estado_id": 31
  },
  {
    "id": 3122702,
    "nome": "Dom Silvério",
    "estado_id": 31
  },
  {
    "id": 3122801,
    "nome": "Dom Viçoso",
    "estado_id": 31
  },
  {
    "id": 3122900,
    "nome": "Dona Euzébia",
    "estado_id": 31
  },
  {
    "id": 3123007,
    "nome": "Dores de Campos",
    "estado_id": 31
  },
  {
    "id": 3123106,
    "nome": "Dores de Guanhães",
    "estado_id": 31
  },
  {
    "id": 3123205,
    "nome": "Dores do Indaiá",
    "estado_id": 31
  },
  {
    "id": 3123304,
    "nome": "Dores do Turvo",
    "estado_id": 31
  },
  {
    "id": 3123403,
    "nome": "Doresópolis",
    "estado_id": 31
  },
  {
    "id": 3123502,
    "nome": "Douradoquara",
    "estado_id": 31
  },
  {
    "id": 3123528,
    "nome": "Durandé",
    "estado_id": 31
  },
  {
    "id": 3123601,
    "nome": "Elói Mendes",
    "estado_id": 31
  },
  {
    "id": 3123700,
    "nome": "Engenheiro Caldas",
    "estado_id": 31
  },
  {
    "id": 3123809,
    "nome": "Engenheiro Navarro",
    "estado_id": 31
  },
  {
    "id": 3123858,
    "nome": "Entre Folhas",
    "estado_id": 31
  },
  {
    "id": 3123908,
    "nome": "Entre Rios de Minas",
    "estado_id": 31
  },
  {
    "id": 3124005,
    "nome": "Ervália",
    "estado_id": 31
  },
  {
    "id": 3124104,
    "nome": "Esmeraldas",
    "estado_id": 31
  },
  {
    "id": 3124203,
    "nome": "Espera Feliz",
    "estado_id": 31
  },
  {
    "id": 3124302,
    "nome": "Espinosa",
    "estado_id": 31
  },
  {
    "id": 3124401,
    "nome": "Espírito Santo do Dourado",
    "estado_id": 31
  },
  {
    "id": 3124500,
    "nome": "Estiva",
    "estado_id": 31
  },
  {
    "id": 3124609,
    "nome": "Estrela Dalva",
    "estado_id": 31
  },
  {
    "id": 3124708,
    "nome": "Estrela do Indaiá",
    "estado_id": 31
  },
  {
    "id": 3124807,
    "nome": "Estrela do Sul",
    "estado_id": 31
  },
  {
    "id": 3124906,
    "nome": "Eugenópolis",
    "estado_id": 31
  },
  {
    "id": 3125002,
    "nome": "Ewbank da Câmara",
    "estado_id": 31
  },
  {
    "id": 3125101,
    "nome": "Extrema",
    "estado_id": 31
  },
  {
    "id": 3125200,
    "nome": "Fama",
    "estado_id": 31
  },
  {
    "id": 3125309,
    "nome": "Faria Lemos",
    "estado_id": 31
  },
  {
    "id": 3125408,
    "nome": "Felício dos Santos",
    "estado_id": 31
  },
  {
    "id": 3125507,
    "nome": "São Gonçalo do Rio Preto",
    "estado_id": 31
  },
  {
    "id": 3125606,
    "nome": "Felisburgo",
    "estado_id": 31
  },
  {
    "id": 3125705,
    "nome": "Felixlândia",
    "estado_id": 31
  },
  {
    "id": 3125804,
    "nome": "Fernandes Tourinho",
    "estado_id": 31
  },
  {
    "id": 3125903,
    "nome": "Ferros",
    "estado_id": 31
  },
  {
    "id": 3125952,
    "nome": "Fervedouro",
    "estado_id": 31
  },
  {
    "id": 3126000,
    "nome": "Florestal",
    "estado_id": 31
  },
  {
    "id": 3126109,
    "nome": "Formiga",
    "estado_id": 31
  },
  {
    "id": 3126208,
    "nome": "Formoso",
    "estado_id": 31
  },
  {
    "id": 3126307,
    "nome": "Fortaleza de Minas",
    "estado_id": 31
  },
  {
    "id": 3126406,
    "nome": "Fortuna de Minas",
    "estado_id": 31
  },
  {
    "id": 3126505,
    "nome": "Francisco Badaró",
    "estado_id": 31
  },
  {
    "id": 3126604,
    "nome": "Francisco Dumont",
    "estado_id": 31
  },
  {
    "id": 3126703,
    "nome": "Francisco Sá",
    "estado_id": 31
  },
  {
    "id": 3126752,
    "nome": "Franciscópolis",
    "estado_id": 31
  },
  {
    "id": 3126802,
    "nome": "Frei Gaspar",
    "estado_id": 31
  },
  {
    "id": 3126901,
    "nome": "Frei Inocêncio",
    "estado_id": 31
  },
  {
    "id": 3126950,
    "nome": "Frei Lagonegro",
    "estado_id": 31
  },
  {
    "id": 3127008,
    "nome": "Fronteira",
    "estado_id": 31
  },
  {
    "id": 3127057,
    "nome": "Fronteira dos Vales",
    "estado_id": 31
  },
  {
    "id": 3127073,
    "nome": "Fruta de Leite",
    "estado_id": 31
  },
  {
    "id": 3127107,
    "nome": "Frutal",
    "estado_id": 31
  },
  {
    "id": 3127206,
    "nome": "Funilândia",
    "estado_id": 31
  },
  {
    "id": 3127305,
    "nome": "Galiléia",
    "estado_id": 31
  },
  {
    "id": 3127339,
    "nome": "Gameleiras",
    "estado_id": 31
  },
  {
    "id": 3127354,
    "nome": "Glaucilândia",
    "estado_id": 31
  },
  {
    "id": 3127370,
    "nome": "Goiabeira",
    "estado_id": 31
  },
  {
    "id": 3127388,
    "nome": "Goianá",
    "estado_id": 31
  },
  {
    "id": 3127404,
    "nome": "Gonçalves",
    "estado_id": 31
  },
  {
    "id": 3127503,
    "nome": "Gonzaga",
    "estado_id": 31
  },
  {
    "id": 3127602,
    "nome": "Gouveia",
    "estado_id": 31
  },
  {
    "id": 3127701,
    "nome": "Governador Valadares",
    "estado_id": 31
  },
  {
    "id": 3127800,
    "nome": "Grão Mogol",
    "estado_id": 31
  },
  {
    "id": 3127909,
    "nome": "Grupiara",
    "estado_id": 31
  },
  {
    "id": 3128006,
    "nome": "Guanhães",
    "estado_id": 31
  },
  {
    "id": 3128105,
    "nome": "Guapé",
    "estado_id": 31
  },
  {
    "id": 3128204,
    "nome": "Guaraciaba",
    "estado_id": 31
  },
  {
    "id": 3128253,
    "nome": "Guaraciama",
    "estado_id": 31
  },
  {
    "id": 3128303,
    "nome": "Guaranésia",
    "estado_id": 31
  },
  {
    "id": 3128402,
    "nome": "Guarani",
    "estado_id": 31
  },
  {
    "id": 3128501,
    "nome": "Guarará",
    "estado_id": 31
  },
  {
    "id": 3128600,
    "nome": "Guarda-Mor",
    "estado_id": 31
  },
  {
    "id": 3128709,
    "nome": "Guaxupé",
    "estado_id": 31
  },
  {
    "id": 3128808,
    "nome": "Guidoval",
    "estado_id": 31
  },
  {
    "id": 3128907,
    "nome": "Guimarânia",
    "estado_id": 31
  },
  {
    "id": 3129004,
    "nome": "Guiricema",
    "estado_id": 31
  },
  {
    "id": 3129103,
    "nome": "Gurinhatã",
    "estado_id": 31
  },
  {
    "id": 3129202,
    "nome": "Heliodora",
    "estado_id": 31
  },
  {
    "id": 3129301,
    "nome": "Iapu",
    "estado_id": 31
  },
  {
    "id": 3129400,
    "nome": "Ibertioga",
    "estado_id": 31
  },
  {
    "id": 3129509,
    "nome": "Ibiá",
    "estado_id": 31
  },
  {
    "id": 3129608,
    "nome": "Ibiaí",
    "estado_id": 31
  },
  {
    "id": 3129657,
    "nome": "Ibiracatu",
    "estado_id": 31
  },
  {
    "id": 3129707,
    "nome": "Ibiraci",
    "estado_id": 31
  },
  {
    "id": 3129806,
    "nome": "Ibirité",
    "estado_id": 31
  },
  {
    "id": 3129905,
    "nome": "Ibitiúra de Minas",
    "estado_id": 31
  },
  {
    "id": 3130002,
    "nome": "Ibituruna",
    "estado_id": 31
  },
  {
    "id": 3130051,
    "nome": "Icaraí de Minas",
    "estado_id": 31
  },
  {
    "id": 3130101,
    "nome": "Igarapé",
    "estado_id": 31
  },
  {
    "id": 3130200,
    "nome": "Igaratinga",
    "estado_id": 31
  },
  {
    "id": 3130309,
    "nome": "Iguatama",
    "estado_id": 31
  },
  {
    "id": 3130408,
    "nome": "Ijaci",
    "estado_id": 31
  },
  {
    "id": 3130507,
    "nome": "Ilicínea",
    "estado_id": 31
  },
  {
    "id": 3130556,
    "nome": "Imbé de Minas",
    "estado_id": 31
  },
  {
    "id": 3130606,
    "nome": "Inconfidentes",
    "estado_id": 31
  },
  {
    "id": 3130655,
    "nome": "Indaiabira",
    "estado_id": 31
  },
  {
    "id": 3130705,
    "nome": "Indianópolis",
    "estado_id": 31
  },
  {
    "id": 3130804,
    "nome": "Ingaí",
    "estado_id": 31
  },
  {
    "id": 3130903,
    "nome": "Inhapim",
    "estado_id": 31
  },
  {
    "id": 3131000,
    "nome": "Inhaúma",
    "estado_id": 31
  },
  {
    "id": 3131109,
    "nome": "Inimutaba",
    "estado_id": 31
  },
  {
    "id": 3131158,
    "nome": "Ipaba",
    "estado_id": 31
  },
  {
    "id": 3131208,
    "nome": "Ipanema",
    "estado_id": 31
  },
  {
    "id": 3131307,
    "nome": "Ipatinga",
    "estado_id": 31
  },
  {
    "id": 3131406,
    "nome": "Ipiaçu",
    "estado_id": 31
  },
  {
    "id": 3131505,
    "nome": "Ipuiúna",
    "estado_id": 31
  },
  {
    "id": 3131604,
    "nome": "Iraí de Minas",
    "estado_id": 31
  },
  {
    "id": 3131703,
    "nome": "Itabira",
    "estado_id": 31
  },
  {
    "id": 3131802,
    "nome": "Itabirinha",
    "estado_id": 31
  },
  {
    "id": 3131901,
    "nome": "Itabirito",
    "estado_id": 31
  },
  {
    "id": 3132008,
    "nome": "Itacambira",
    "estado_id": 31
  },
  {
    "id": 3132107,
    "nome": "Itacarambi",
    "estado_id": 31
  },
  {
    "id": 3132206,
    "nome": "Itaguara",
    "estado_id": 31
  },
  {
    "id": 3132305,
    "nome": "Itaipé",
    "estado_id": 31
  },
  {
    "id": 3132404,
    "nome": "Itajubá",
    "estado_id": 31
  },
  {
    "id": 3132503,
    "nome": "Itamarandiba",
    "estado_id": 31
  },
  {
    "id": 3132602,
    "nome": "Itamarati de Minas",
    "estado_id": 31
  },
  {
    "id": 3132701,
    "nome": "Itambacuri",
    "estado_id": 31
  },
  {
    "id": 3132800,
    "nome": "Itambé do Mato Dentro",
    "estado_id": 31
  },
  {
    "id": 3132909,
    "nome": "Itamogi",
    "estado_id": 31
  },
  {
    "id": 3133006,
    "nome": "Itamonte",
    "estado_id": 31
  },
  {
    "id": 3133105,
    "nome": "Itanhandu",
    "estado_id": 31
  },
  {
    "id": 3133204,
    "nome": "Itanhomi",
    "estado_id": 31
  },
  {
    "id": 3133303,
    "nome": "Itaobim",
    "estado_id": 31
  },
  {
    "id": 3133402,
    "nome": "Itapagipe",
    "estado_id": 31
  },
  {
    "id": 3133501,
    "nome": "Itapecerica",
    "estado_id": 31
  },
  {
    "id": 3133600,
    "nome": "Itapeva",
    "estado_id": 31
  },
  {
    "id": 3133709,
    "nome": "Itatiaiuçu",
    "estado_id": 31
  },
  {
    "id": 3133758,
    "nome": "Itaú de Minas",
    "estado_id": 31
  },
  {
    "id": 3133808,
    "nome": "Itaúna",
    "estado_id": 31
  },
  {
    "id": 3133907,
    "nome": "Itaverava",
    "estado_id": 31
  },
  {
    "id": 3134004,
    "nome": "Itinga",
    "estado_id": 31
  },
  {
    "id": 3134103,
    "nome": "Itueta",
    "estado_id": 31
  },
  {
    "id": 3134202,
    "nome": "Ituiutaba",
    "estado_id": 31
  },
  {
    "id": 3134301,
    "nome": "Itumirim",
    "estado_id": 31
  },
  {
    "id": 3134400,
    "nome": "Iturama",
    "estado_id": 31
  },
  {
    "id": 3134509,
    "nome": "Itutinga",
    "estado_id": 31
  },
  {
    "id": 3134608,
    "nome": "Jaboticatubas",
    "estado_id": 31
  },
  {
    "id": 3134707,
    "nome": "Jacinto",
    "estado_id": 31
  },
  {
    "id": 3134806,
    "nome": "Jacuí",
    "estado_id": 31
  },
  {
    "id": 3134905,
    "nome": "Jacutinga",
    "estado_id": 31
  },
  {
    "id": 3135001,
    "nome": "Jaguaraçu",
    "estado_id": 31
  },
  {
    "id": 3135050,
    "nome": "Jaíba",
    "estado_id": 31
  },
  {
    "id": 3135076,
    "nome": "Jampruca",
    "estado_id": 31
  },
  {
    "id": 3135100,
    "nome": "Janaúba",
    "estado_id": 31
  },
  {
    "id": 3135209,
    "nome": "Januária",
    "estado_id": 31
  },
  {
    "id": 3135308,
    "nome": "Japaraíba",
    "estado_id": 31
  },
  {
    "id": 3135357,
    "nome": "Japonvar",
    "estado_id": 31
  },
  {
    "id": 3135407,
    "nome": "Jeceaba",
    "estado_id": 31
  },
  {
    "id": 3135456,
    "nome": "Jenipapo de Minas",
    "estado_id": 31
  },
  {
    "id": 3135506,
    "nome": "Jequeri",
    "estado_id": 31
  },
  {
    "id": 3135605,
    "nome": "Jequitaí",
    "estado_id": 31
  },
  {
    "id": 3135704,
    "nome": "Jequitibá",
    "estado_id": 31
  },
  {
    "id": 3135803,
    "nome": "Jequitinhonha",
    "estado_id": 31
  },
  {
    "id": 3135902,
    "nome": "Jesuânia",
    "estado_id": 31
  },
  {
    "id": 3136009,
    "nome": "Joaíma",
    "estado_id": 31
  },
  {
    "id": 3136108,
    "nome": "Joanésia",
    "estado_id": 31
  },
  {
    "id": 3136207,
    "nome": "João Monlevade",
    "estado_id": 31
  },
  {
    "id": 3136306,
    "nome": "João Pinheiro",
    "estado_id": 31
  },
  {
    "id": 3136405,
    "nome": "Joaquim Felício",
    "estado_id": 31
  },
  {
    "id": 3136504,
    "nome": "Jordânia",
    "estado_id": 31
  },
  {
    "id": 3136520,
    "nome": "José Gonçalves de Minas",
    "estado_id": 31
  },
  {
    "id": 3136553,
    "nome": "José Raydan",
    "estado_id": 31
  },
  {
    "id": 3136579,
    "nome": "Josenópolis",
    "estado_id": 31
  },
  {
    "id": 3136603,
    "nome": "Nova União",
    "estado_id": 31
  },
  {
    "id": 3136652,
    "nome": "Juatuba",
    "estado_id": 31
  },
  {
    "id": 3136702,
    "nome": "Juiz de Fora",
    "estado_id": 31
  },
  {
    "id": 3136801,
    "nome": "Juramento",
    "estado_id": 31
  },
  {
    "id": 3136900,
    "nome": "Juruaia",
    "estado_id": 31
  },
  {
    "id": 3136959,
    "nome": "Juvenília",
    "estado_id": 31
  },
  {
    "id": 3137007,
    "nome": "Ladainha",
    "estado_id": 31
  },
  {
    "id": 3137106,
    "nome": "Lagamar",
    "estado_id": 31
  },
  {
    "id": 3137205,
    "nome": "Lagoa da Prata",
    "estado_id": 31
  },
  {
    "id": 3137304,
    "nome": "Lagoa dos Patos",
    "estado_id": 31
  },
  {
    "id": 3137403,
    "nome": "Lagoa Dourada",
    "estado_id": 31
  },
  {
    "id": 3137502,
    "nome": "Lagoa Formosa",
    "estado_id": 31
  },
  {
    "id": 3137536,
    "nome": "Lagoa Grande",
    "estado_id": 31
  },
  {
    "id": 3137601,
    "nome": "Lagoa Santa",
    "estado_id": 31
  },
  {
    "id": 3137700,
    "nome": "Lajinha",
    "estado_id": 31
  },
  {
    "id": 3137809,
    "nome": "Lambari",
    "estado_id": 31
  },
  {
    "id": 3137908,
    "nome": "Lamim",
    "estado_id": 31
  },
  {
    "id": 3138005,
    "nome": "Laranjal",
    "estado_id": 31
  },
  {
    "id": 3138104,
    "nome": "Lassance",
    "estado_id": 31
  },
  {
    "id": 3138203,
    "nome": "Lavras",
    "estado_id": 31
  },
  {
    "id": 3138302,
    "nome": "Leandro Ferreira",
    "estado_id": 31
  },
  {
    "id": 3138351,
    "nome": "Leme do Prado",
    "estado_id": 31
  },
  {
    "id": 3138401,
    "nome": "Leopoldina",
    "estado_id": 31
  },
  {
    "id": 3138500,
    "nome": "Liberdade",
    "estado_id": 31
  },
  {
    "id": 3138609,
    "nome": "Lima Duarte",
    "estado_id": 31
  },
  {
    "id": 3138625,
    "nome": "Limeira do Oeste",
    "estado_id": 31
  },
  {
    "id": 3138658,
    "nome": "Lontra",
    "estado_id": 31
  },
  {
    "id": 3138674,
    "nome": "Luisburgo",
    "estado_id": 31
  },
  {
    "id": 3138682,
    "nome": "Luislândia",
    "estado_id": 31
  },
  {
    "id": 3138708,
    "nome": "Luminárias",
    "estado_id": 31
  },
  {
    "id": 3138807,
    "nome": "Luz",
    "estado_id": 31
  },
  {
    "id": 3138906,
    "nome": "Machacalis",
    "estado_id": 31
  },
  {
    "id": 3139003,
    "nome": "Machado",
    "estado_id": 31
  },
  {
    "id": 3139102,
    "nome": "Madre de Deus de Minas",
    "estado_id": 31
  },
  {
    "id": 3139201,
    "nome": "Malacacheta",
    "estado_id": 31
  },
  {
    "id": 3139250,
    "nome": "Mamonas",
    "estado_id": 31
  },
  {
    "id": 3139300,
    "nome": "Manga",
    "estado_id": 31
  },
  {
    "id": 3139409,
    "nome": "Manhuaçu",
    "estado_id": 31
  },
  {
    "id": 3139508,
    "nome": "Manhumirim",
    "estado_id": 31
  },
  {
    "id": 3139607,
    "nome": "Mantena",
    "estado_id": 31
  },
  {
    "id": 3139706,
    "nome": "Maravilhas",
    "estado_id": 31
  },
  {
    "id": 3139805,
    "nome": "Mar de Espanha",
    "estado_id": 31
  },
  {
    "id": 3139904,
    "nome": "Maria da Fé",
    "estado_id": 31
  },
  {
    "id": 3140001,
    "nome": "Mariana",
    "estado_id": 31
  },
  {
    "id": 3140100,
    "nome": "Marilac",
    "estado_id": 31
  },
  {
    "id": 3140159,
    "nome": "Mário Campos",
    "estado_id": 31
  },
  {
    "id": 3140209,
    "nome": "Maripá de Minas",
    "estado_id": 31
  },
  {
    "id": 3140308,
    "nome": "Marliéria",
    "estado_id": 31
  },
  {
    "id": 3140407,
    "nome": "Marmelópolis",
    "estado_id": 31
  },
  {
    "id": 3140506,
    "nome": "Martinho Campos",
    "estado_id": 31
  },
  {
    "id": 3140530,
    "nome": "Martins Soares",
    "estado_id": 31
  },
  {
    "id": 3140555,
    "nome": "Mata Verde",
    "estado_id": 31
  },
  {
    "id": 3140605,
    "nome": "Materlândia",
    "estado_id": 31
  },
  {
    "id": 3140704,
    "nome": "Mateus Leme",
    "estado_id": 31
  },
  {
    "id": 3140803,
    "nome": "Matias Barbosa",
    "estado_id": 31
  },
  {
    "id": 3140852,
    "nome": "Matias Cardoso",
    "estado_id": 31
  },
  {
    "id": 3140902,
    "nome": "Matipó",
    "estado_id": 31
  },
  {
    "id": 3141009,
    "nome": "Mato Verde",
    "estado_id": 31
  },
  {
    "id": 3141108,
    "nome": "Matozinhos",
    "estado_id": 31
  },
  {
    "id": 3141207,
    "nome": "Matutina",
    "estado_id": 31
  },
  {
    "id": 3141306,
    "nome": "Medeiros",
    "estado_id": 31
  },
  {
    "id": 3141405,
    "nome": "Medina",
    "estado_id": 31
  },
  {
    "id": 3141504,
    "nome": "Mendes Pimentel",
    "estado_id": 31
  },
  {
    "id": 3141603,
    "nome": "Mercês",
    "estado_id": 31
  },
  {
    "id": 3141702,
    "nome": "Mesquita",
    "estado_id": 31
  },
  {
    "id": 3141801,
    "nome": "Minas Novas",
    "estado_id": 31
  },
  {
    "id": 3141900,
    "nome": "Minduri",
    "estado_id": 31
  },
  {
    "id": 3142007,
    "nome": "Mirabela",
    "estado_id": 31
  },
  {
    "id": 3142106,
    "nome": "Miradouro",
    "estado_id": 31
  },
  {
    "id": 3142205,
    "nome": "Miraí",
    "estado_id": 31
  },
  {
    "id": 3142254,
    "nome": "Miravânia",
    "estado_id": 31
  },
  {
    "id": 3142304,
    "nome": "Moeda",
    "estado_id": 31
  },
  {
    "id": 3142403,
    "nome": "Moema",
    "estado_id": 31
  },
  {
    "id": 3142502,
    "nome": "Monjolos",
    "estado_id": 31
  },
  {
    "id": 3142601,
    "nome": "Monsenhor Paulo",
    "estado_id": 31
  },
  {
    "id": 3142700,
    "nome": "Montalvânia",
    "estado_id": 31
  },
  {
    "id": 3142809,
    "nome": "Monte Alegre de Minas",
    "estado_id": 31
  },
  {
    "id": 3142908,
    "nome": "Monte Azul",
    "estado_id": 31
  },
  {
    "id": 3143005,
    "nome": "Monte Belo",
    "estado_id": 31
  },
  {
    "id": 3143104,
    "nome": "Monte Carmelo",
    "estado_id": 31
  },
  {
    "id": 3143153,
    "nome": "Monte Formoso",
    "estado_id": 31
  },
  {
    "id": 3143203,
    "nome": "Monte Santo de Minas",
    "estado_id": 31
  },
  {
    "id": 3143302,
    "nome": "Montes Claros",
    "estado_id": 31
  },
  {
    "id": 3143401,
    "nome": "Monte Sião",
    "estado_id": 31
  },
  {
    "id": 3143450,
    "nome": "Montezuma",
    "estado_id": 31
  },
  {
    "id": 3143500,
    "nome": "Morada Nova de Minas",
    "estado_id": 31
  },
  {
    "id": 3143609,
    "nome": "Morro da Garça",
    "estado_id": 31
  },
  {
    "id": 3143708,
    "nome": "Morro do Pilar",
    "estado_id": 31
  },
  {
    "id": 3143807,
    "nome": "Munhoz",
    "estado_id": 31
  },
  {
    "id": 3143906,
    "nome": "Muriaé",
    "estado_id": 31
  },
  {
    "id": 3144003,
    "nome": "Mutum",
    "estado_id": 31
  },
  {
    "id": 3144102,
    "nome": "Muzambinho",
    "estado_id": 31
  },
  {
    "id": 3144201,
    "nome": "Nacip Raydan",
    "estado_id": 31
  },
  {
    "id": 3144300,
    "nome": "Nanuque",
    "estado_id": 31
  },
  {
    "id": 3144359,
    "nome": "Naque",
    "estado_id": 31
  },
  {
    "id": 3144375,
    "nome": "Natalândia",
    "estado_id": 31
  },
  {
    "id": 3144409,
    "nome": "Natércia",
    "estado_id": 31
  },
  {
    "id": 3144508,
    "nome": "Nazareno",
    "estado_id": 31
  },
  {
    "id": 3144607,
    "nome": "Nepomuceno",
    "estado_id": 31
  },
  {
    "id": 3144656,
    "nome": "Ninheira",
    "estado_id": 31
  },
  {
    "id": 3144672,
    "nome": "Nova Belém",
    "estado_id": 31
  },
  {
    "id": 3144706,
    "nome": "Nova Era",
    "estado_id": 31
  },
  {
    "id": 3144805,
    "nome": "Nova Lima",
    "estado_id": 31
  },
  {
    "id": 3144904,
    "nome": "Nova Módica",
    "estado_id": 31
  },
  {
    "id": 3145000,
    "nome": "Nova Ponte",
    "estado_id": 31
  },
  {
    "id": 3145059,
    "nome": "Nova Porteirinha",
    "estado_id": 31
  },
  {
    "id": 3145109,
    "nome": "Nova Resende",
    "estado_id": 31
  },
  {
    "id": 3145208,
    "nome": "Nova Serrana",
    "estado_id": 31
  },
  {
    "id": 3145307,
    "nome": "Novo Cruzeiro",
    "estado_id": 31
  },
  {
    "id": 3145356,
    "nome": "Novo Oriente de Minas",
    "estado_id": 31
  },
  {
    "id": 3145372,
    "nome": "Novorizonte",
    "estado_id": 31
  },
  {
    "id": 3145406,
    "nome": "Olaria",
    "estado_id": 31
  },
  {
    "id": 3145455,
    "nome": "Olhos-d'Água",
    "estado_id": 31
  },
  {
    "id": 3145505,
    "nome": "Olímpio Noronha",
    "estado_id": 31
  },
  {
    "id": 3145604,
    "nome": "Oliveira",
    "estado_id": 31
  },
  {
    "id": 3145703,
    "nome": "Oliveira Fortes",
    "estado_id": 31
  },
  {
    "id": 3145802,
    "nome": "Onça de Pitangui",
    "estado_id": 31
  },
  {
    "id": 3145851,
    "nome": "Oratórios",
    "estado_id": 31
  },
  {
    "id": 3145877,
    "nome": "Orizânia",
    "estado_id": 31
  },
  {
    "id": 3145901,
    "nome": "Ouro Branco",
    "estado_id": 31
  },
  {
    "id": 3146008,
    "nome": "Ouro Fino",
    "estado_id": 31
  },
  {
    "id": 3146107,
    "nome": "Ouro Preto",
    "estado_id": 31
  },
  {
    "id": 3146206,
    "nome": "Ouro Verde de Minas",
    "estado_id": 31
  },
  {
    "id": 3146255,
    "nome": "Padre Carvalho",
    "estado_id": 31
  },
  {
    "id": 3146305,
    "nome": "Padre Paraíso",
    "estado_id": 31
  },
  {
    "id": 3146404,
    "nome": "Paineiras",
    "estado_id": 31
  },
  {
    "id": 3146503,
    "nome": "Pains",
    "estado_id": 31
  },
  {
    "id": 3146552,
    "nome": "Pai Pedro",
    "estado_id": 31
  },
  {
    "id": 3146602,
    "nome": "Paiva",
    "estado_id": 31
  },
  {
    "id": 3146701,
    "nome": "Palma",
    "estado_id": 31
  },
  {
    "id": 3146750,
    "nome": "Palmópolis",
    "estado_id": 31
  },
  {
    "id": 3146909,
    "nome": "Papagaios",
    "estado_id": 31
  },
  {
    "id": 3147006,
    "nome": "Paracatu",
    "estado_id": 31
  },
  {
    "id": 3147105,
    "nome": "Pará de Minas",
    "estado_id": 31
  },
  {
    "id": 3147204,
    "nome": "Paraguaçu",
    "estado_id": 31
  },
  {
    "id": 3147303,
    "nome": "Paraisópolis",
    "estado_id": 31
  },
  {
    "id": 3147402,
    "nome": "Paraopeba",
    "estado_id": 31
  },
  {
    "id": 3147501,
    "nome": "Passabém",
    "estado_id": 31
  },
  {
    "id": 3147600,
    "nome": "Passa Quatro",
    "estado_id": 31
  },
  {
    "id": 3147709,
    "nome": "Passa Tempo",
    "estado_id": 31
  },
  {
    "id": 3147808,
    "nome": "Passa Vinte",
    "estado_id": 31
  },
  {
    "id": 3147907,
    "nome": "Passos",
    "estado_id": 31
  },
  {
    "id": 3147956,
    "nome": "Patis",
    "estado_id": 31
  },
  {
    "id": 3148004,
    "nome": "Patos de Minas",
    "estado_id": 31
  },
  {
    "id": 3148103,
    "nome": "Patrocínio",
    "estado_id": 31
  },
  {
    "id": 3148202,
    "nome": "Patrocínio do Muriaé",
    "estado_id": 31
  },
  {
    "id": 3148301,
    "nome": "Paula Cândido",
    "estado_id": 31
  },
  {
    "id": 3148400,
    "nome": "Paulistas",
    "estado_id": 31
  },
  {
    "id": 3148509,
    "nome": "Pavão",
    "estado_id": 31
  },
  {
    "id": 3148608,
    "nome": "Peçanha",
    "estado_id": 31
  },
  {
    "id": 3148707,
    "nome": "Pedra Azul",
    "estado_id": 31
  },
  {
    "id": 3148756,
    "nome": "Pedra Bonita",
    "estado_id": 31
  },
  {
    "id": 3148806,
    "nome": "Pedra do Anta",
    "estado_id": 31
  },
  {
    "id": 3148905,
    "nome": "Pedra do Indaiá",
    "estado_id": 31
  },
  {
    "id": 3149002,
    "nome": "Pedra Dourada",
    "estado_id": 31
  },
  {
    "id": 3149101,
    "nome": "Pedralva",
    "estado_id": 31
  },
  {
    "id": 3149150,
    "nome": "Pedras de Maria da Cruz",
    "estado_id": 31
  },
  {
    "id": 3149200,
    "nome": "Pedrinópolis",
    "estado_id": 31
  },
  {
    "id": 3149309,
    "nome": "Pedro Leopoldo",
    "estado_id": 31
  },
  {
    "id": 3149408,
    "nome": "Pedro Teixeira",
    "estado_id": 31
  },
  {
    "id": 3149507,
    "nome": "Pequeri",
    "estado_id": 31
  },
  {
    "id": 3149606,
    "nome": "Pequi",
    "estado_id": 31
  },
  {
    "id": 3149705,
    "nome": "Perdigão",
    "estado_id": 31
  },
  {
    "id": 3149804,
    "nome": "Perdizes",
    "estado_id": 31
  },
  {
    "id": 3149903,
    "nome": "Perdões",
    "estado_id": 31
  },
  {
    "id": 3149952,
    "nome": "Periquito",
    "estado_id": 31
  },
  {
    "id": 3150000,
    "nome": "Pescador",
    "estado_id": 31
  },
  {
    "id": 3150109,
    "nome": "Piau",
    "estado_id": 31
  },
  {
    "id": 3150158,
    "nome": "Piedade de Caratinga",
    "estado_id": 31
  },
  {
    "id": 3150208,
    "nome": "Piedade de Ponte Nova",
    "estado_id": 31
  },
  {
    "id": 3150307,
    "nome": "Piedade do Rio Grande",
    "estado_id": 31
  },
  {
    "id": 3150406,
    "nome": "Piedade dos Gerais",
    "estado_id": 31
  },
  {
    "id": 3150505,
    "nome": "Pimenta",
    "estado_id": 31
  },
  {
    "id": 3150539,
    "nome": "Pingo-d'Água",
    "estado_id": 31
  },
  {
    "id": 3150570,
    "nome": "Pintópolis",
    "estado_id": 31
  },
  {
    "id": 3150604,
    "nome": "Piracema",
    "estado_id": 31
  },
  {
    "id": 3150703,
    "nome": "Pirajuba",
    "estado_id": 31
  },
  {
    "id": 3150802,
    "nome": "Piranga",
    "estado_id": 31
  },
  {
    "id": 3150901,
    "nome": "Piranguçu",
    "estado_id": 31
  },
  {
    "id": 3151008,
    "nome": "Piranguinho",
    "estado_id": 31
  },
  {
    "id": 3151107,
    "nome": "Pirapetinga",
    "estado_id": 31
  },
  {
    "id": 3151206,
    "nome": "Pirapora",
    "estado_id": 31
  },
  {
    "id": 3151305,
    "nome": "Piraúba",
    "estado_id": 31
  },
  {
    "id": 3151404,
    "nome": "Pitangui",
    "estado_id": 31
  },
  {
    "id": 3151503,
    "nome": "Piumhi",
    "estado_id": 31
  },
  {
    "id": 3151602,
    "nome": "Planura",
    "estado_id": 31
  },
  {
    "id": 3151701,
    "nome": "Poço Fundo",
    "estado_id": 31
  },
  {
    "id": 3151800,
    "nome": "Poços de Caldas",
    "estado_id": 31
  },
  {
    "id": 3151909,
    "nome": "Pocrane",
    "estado_id": 31
  },
  {
    "id": 3152006,
    "nome": "Pompéu",
    "estado_id": 31
  },
  {
    "id": 3152105,
    "nome": "Ponte Nova",
    "estado_id": 31
  },
  {
    "id": 3152131,
    "nome": "Ponto Chique",
    "estado_id": 31
  },
  {
    "id": 3152170,
    "nome": "Ponto dos Volantes",
    "estado_id": 31
  },
  {
    "id": 3152204,
    "nome": "Porteirinha",
    "estado_id": 31
  },
  {
    "id": 3152303,
    "nome": "Porto Firme",
    "estado_id": 31
  },
  {
    "id": 3152402,
    "nome": "Poté",
    "estado_id": 31
  },
  {
    "id": 3152501,
    "nome": "Pouso Alegre",
    "estado_id": 31
  },
  {
    "id": 3152600,
    "nome": "Pouso Alto",
    "estado_id": 31
  },
  {
    "id": 3152709,
    "nome": "Prados",
    "estado_id": 31
  },
  {
    "id": 3152808,
    "nome": "Prata",
    "estado_id": 31
  },
  {
    "id": 3152907,
    "nome": "Pratápolis",
    "estado_id": 31
  },
  {
    "id": 3153004,
    "nome": "Pratinha",
    "estado_id": 31
  },
  {
    "id": 3153103,
    "nome": "Presidente Bernardes",
    "estado_id": 31
  },
  {
    "id": 3153202,
    "nome": "Presidente Juscelino",
    "estado_id": 31
  },
  {
    "id": 3153301,
    "nome": "Presidente Kubitschek",
    "estado_id": 31
  },
  {
    "id": 3153400,
    "nome": "Presidente Olegário",
    "estado_id": 31
  },
  {
    "id": 3153509,
    "nome": "Alto Jequitibá",
    "estado_id": 31
  },
  {
    "id": 3153608,
    "nome": "Prudente de Morais",
    "estado_id": 31
  },
  {
    "id": 3153707,
    "nome": "Quartel Geral",
    "estado_id": 31
  },
  {
    "id": 3153806,
    "nome": "Queluzito",
    "estado_id": 31
  },
  {
    "id": 3153905,
    "nome": "Raposos",
    "estado_id": 31
  },
  {
    "id": 3154002,
    "nome": "Raul Soares",
    "estado_id": 31
  },
  {
    "id": 3154101,
    "nome": "Recreio",
    "estado_id": 31
  },
  {
    "id": 3154150,
    "nome": "Reduto",
    "estado_id": 31
  },
  {
    "id": 3154200,
    "nome": "Resende Costa",
    "estado_id": 31
  },
  {
    "id": 3154309,
    "nome": "Resplendor",
    "estado_id": 31
  },
  {
    "id": 3154408,
    "nome": "Ressaquinha",
    "estado_id": 31
  },
  {
    "id": 3154457,
    "nome": "Riachinho",
    "estado_id": 31
  },
  {
    "id": 3154507,
    "nome": "Riacho dos Machados",
    "estado_id": 31
  },
  {
    "id": 3154606,
    "nome": "Ribeirão das Neves",
    "estado_id": 31
  },
  {
    "id": 3154705,
    "nome": "Ribeirão Vermelho",
    "estado_id": 31
  },
  {
    "id": 3154804,
    "nome": "Rio Acima",
    "estado_id": 31
  },
  {
    "id": 3154903,
    "nome": "Rio Casca",
    "estado_id": 31
  },
  {
    "id": 3155009,
    "nome": "Rio Doce",
    "estado_id": 31
  },
  {
    "id": 3155108,
    "nome": "Rio do Prado",
    "estado_id": 31
  },
  {
    "id": 3155207,
    "nome": "Rio Espera",
    "estado_id": 31
  },
  {
    "id": 3155306,
    "nome": "Rio Manso",
    "estado_id": 31
  },
  {
    "id": 3155405,
    "nome": "Rio Novo",
    "estado_id": 31
  },
  {
    "id": 3155504,
    "nome": "Rio Paranaíba",
    "estado_id": 31
  },
  {
    "id": 3155603,
    "nome": "Rio Pardo de Minas",
    "estado_id": 31
  },
  {
    "id": 3155702,
    "nome": "Rio Piracicaba",
    "estado_id": 31
  },
  {
    "id": 3155801,
    "nome": "Rio Pomba",
    "estado_id": 31
  },
  {
    "id": 3155900,
    "nome": "Rio Preto",
    "estado_id": 31
  },
  {
    "id": 3156007,
    "nome": "Rio Vermelho",
    "estado_id": 31
  },
  {
    "id": 3156106,
    "nome": "Ritápolis",
    "estado_id": 31
  },
  {
    "id": 3156205,
    "nome": "Rochedo de Minas",
    "estado_id": 31
  },
  {
    "id": 3156304,
    "nome": "Rodeiro",
    "estado_id": 31
  },
  {
    "id": 3156403,
    "nome": "Romaria",
    "estado_id": 31
  },
  {
    "id": 3156452,
    "nome": "Rosário da Limeira",
    "estado_id": 31
  },
  {
    "id": 3156502,
    "nome": "Rubelita",
    "estado_id": 31
  },
  {
    "id": 3156601,
    "nome": "Rubim",
    "estado_id": 31
  },
  {
    "id": 3156700,
    "nome": "Sabará",
    "estado_id": 31
  },
  {
    "id": 3156809,
    "nome": "Sabinópolis",
    "estado_id": 31
  },
  {
    "id": 3156908,
    "nome": "Sacramento",
    "estado_id": 31
  },
  {
    "id": 3157005,
    "nome": "Salinas",
    "estado_id": 31
  },
  {
    "id": 3157104,
    "nome": "Salto da Divisa",
    "estado_id": 31
  },
  {
    "id": 3157203,
    "nome": "Santa Bárbara",
    "estado_id": 31
  },
  {
    "id": 3157252,
    "nome": "Santa Bárbara do Leste",
    "estado_id": 31
  },
  {
    "id": 3157278,
    "nome": "Santa Bárbara do Monte Verde",
    "estado_id": 31
  },
  {
    "id": 3157302,
    "nome": "Santa Bárbara do Tugúrio",
    "estado_id": 31
  },
  {
    "id": 3157336,
    "nome": "Santa Cruz de Minas",
    "estado_id": 31
  },
  {
    "id": 3157377,
    "nome": "Santa Cruz de Salinas",
    "estado_id": 31
  },
  {
    "id": 3157401,
    "nome": "Santa Cruz do Escalvado",
    "estado_id": 31
  },
  {
    "id": 3157500,
    "nome": "Santa Efigênia de Minas",
    "estado_id": 31
  },
  {
    "id": 3157609,
    "nome": "Santa Fé de Minas",
    "estado_id": 31
  },
  {
    "id": 3157658,
    "nome": "Santa Helena de Minas",
    "estado_id": 31
  },
  {
    "id": 3157708,
    "nome": "Santa Juliana",
    "estado_id": 31
  },
  {
    "id": 3157807,
    "nome": "Santa Luzia",
    "estado_id": 31
  },
  {
    "id": 3157906,
    "nome": "Santa Margarida",
    "estado_id": 31
  },
  {
    "id": 3158003,
    "nome": "Santa Maria de Itabira",
    "estado_id": 31
  },
  {
    "id": 3158102,
    "nome": "Santa Maria do Salto",
    "estado_id": 31
  },
  {
    "id": 3158201,
    "nome": "Santa Maria do Suaçuí",
    "estado_id": 31
  },
  {
    "id": 3158300,
    "nome": "Santana da Vargem",
    "estado_id": 31
  },
  {
    "id": 3158409,
    "nome": "Santana de Cataguases",
    "estado_id": 31
  },
  {
    "id": 3158508,
    "nome": "Santana de Pirapama",
    "estado_id": 31
  },
  {
    "id": 3158607,
    "nome": "Santana do Deserto",
    "estado_id": 31
  },
  {
    "id": 3158706,
    "nome": "Santana do Garambéu",
    "estado_id": 31
  },
  {
    "id": 3158805,
    "nome": "Santana do Jacaré",
    "estado_id": 31
  },
  {
    "id": 3158904,
    "nome": "Santana do Manhuaçu",
    "estado_id": 31
  },
  {
    "id": 3158953,
    "nome": "Santana do Paraíso",
    "estado_id": 31
  },
  {
    "id": 3159001,
    "nome": "Santana do Riacho",
    "estado_id": 31
  },
  {
    "id": 3159100,
    "nome": "Santana dos Montes",
    "estado_id": 31
  },
  {
    "id": 3159209,
    "nome": "Santa Rita de Caldas",
    "estado_id": 31
  },
  {
    "id": 3159308,
    "nome": "Santa Rita de Jacutinga",
    "estado_id": 31
  },
  {
    "id": 3159357,
    "nome": "Santa Rita de Minas",
    "estado_id": 31
  },
  {
    "id": 3159407,
    "nome": "Santa Rita de Ibitipoca",
    "estado_id": 31
  },
  {
    "id": 3159506,
    "nome": "Santa Rita do Itueto",
    "estado_id": 31
  },
  {
    "id": 3159605,
    "nome": "Santa Rita do Sapucaí",
    "estado_id": 31
  },
  {
    "id": 3159704,
    "nome": "Santa Rosa da Serra",
    "estado_id": 31
  },
  {
    "id": 3159803,
    "nome": "Santa Vitória",
    "estado_id": 31
  },
  {
    "id": 3159902,
    "nome": "Santo Antônio do Amparo",
    "estado_id": 31
  },
  {
    "id": 3160009,
    "nome": "Santo Antônio do Aventureiro",
    "estado_id": 31
  },
  {
    "id": 3160108,
    "nome": "Santo Antônio do Grama",
    "estado_id": 31
  },
  {
    "id": 3160207,
    "nome": "Santo Antônio do Itambé",
    "estado_id": 31
  },
  {
    "id": 3160306,
    "nome": "Santo Antônio do Jacinto",
    "estado_id": 31
  },
  {
    "id": 3160405,
    "nome": "Santo Antônio do Monte",
    "estado_id": 31
  },
  {
    "id": 3160454,
    "nome": "Santo Antônio do Retiro",
    "estado_id": 31
  },
  {
    "id": 3160504,
    "nome": "Santo Antônio do Rio Abaixo",
    "estado_id": 31
  },
  {
    "id": 3160603,
    "nome": "Santo Hipólito",
    "estado_id": 31
  },
  {
    "id": 3160702,
    "nome": "Santos Dumont",
    "estado_id": 31
  },
  {
    "id": 3160801,
    "nome": "São Bento Abade",
    "estado_id": 31
  },
  {
    "id": 3160900,
    "nome": "São Brás do Suaçuí",
    "estado_id": 31
  },
  {
    "id": 3160959,
    "nome": "São Domingos das Dores",
    "estado_id": 31
  },
  {
    "id": 3161007,
    "nome": "São Domingos do Prata",
    "estado_id": 31
  },
  {
    "id": 3161056,
    "nome": "São Félix de Minas",
    "estado_id": 31
  },
  {
    "id": 3161106,
    "nome": "São Francisco",
    "estado_id": 31
  },
  {
    "id": 3161205,
    "nome": "São Francisco de Paula",
    "estado_id": 31
  },
  {
    "id": 3161304,
    "nome": "São Francisco de Sales",
    "estado_id": 31
  },
  {
    "id": 3161403,
    "nome": "São Francisco do Glória",
    "estado_id": 31
  },
  {
    "id": 3161502,
    "nome": "São Geraldo",
    "estado_id": 31
  },
  {
    "id": 3161601,
    "nome": "São Geraldo da Piedade",
    "estado_id": 31
  },
  {
    "id": 3161650,
    "nome": "São Geraldo do Baixio",
    "estado_id": 31
  },
  {
    "id": 3161700,
    "nome": "São Gonçalo do Abaeté",
    "estado_id": 31
  },
  {
    "id": 3161809,
    "nome": "São Gonçalo do Pará",
    "estado_id": 31
  },
  {
    "id": 3161908,
    "nome": "São Gonçalo do Rio Abaixo",
    "estado_id": 31
  },
  {
    "id": 3162005,
    "nome": "São Gonçalo do Sapucaí",
    "estado_id": 31
  },
  {
    "id": 3162104,
    "nome": "São Gotardo",
    "estado_id": 31
  },
  {
    "id": 3162203,
    "nome": "São João Batista do Glória",
    "estado_id": 31
  },
  {
    "id": 3162252,
    "nome": "São João da Lagoa",
    "estado_id": 31
  },
  {
    "id": 3162302,
    "nome": "São João da Mata",
    "estado_id": 31
  },
  {
    "id": 3162401,
    "nome": "São João da Ponte",
    "estado_id": 31
  },
  {
    "id": 3162450,
    "nome": "São João das Missões",
    "estado_id": 31
  },
  {
    "id": 3162500,
    "nome": "São João del Rei",
    "estado_id": 31
  },
  {
    "id": 3162559,
    "nome": "São João do Manhuaçu",
    "estado_id": 31
  },
  {
    "id": 3162575,
    "nome": "São João do Manteninha",
    "estado_id": 31
  },
  {
    "id": 3162609,
    "nome": "São João do Oriente",
    "estado_id": 31
  },
  {
    "id": 3162658,
    "nome": "São João do Pacuí",
    "estado_id": 31
  },
  {
    "id": 3162708,
    "nome": "São João do Paraíso",
    "estado_id": 31
  },
  {
    "id": 3162807,
    "nome": "São João Evangelista",
    "estado_id": 31
  },
  {
    "id": 3162906,
    "nome": "São João Nepomuceno",
    "estado_id": 31
  },
  {
    "id": 3162922,
    "nome": "São Joaquim de Bicas",
    "estado_id": 31
  },
  {
    "id": 3162948,
    "nome": "São José da Barra",
    "estado_id": 31
  },
  {
    "id": 3162955,
    "nome": "São José da Lapa",
    "estado_id": 31
  },
  {
    "id": 3163003,
    "nome": "São José da Safira",
    "estado_id": 31
  },
  {
    "id": 3163102,
    "nome": "São José da Varginha",
    "estado_id": 31
  },
  {
    "id": 3163201,
    "nome": "São José do Alegre",
    "estado_id": 31
  },
  {
    "id": 3163300,
    "nome": "São José do Divino",
    "estado_id": 31
  },
  {
    "id": 3163409,
    "nome": "São José do Goiabal",
    "estado_id": 31
  },
  {
    "id": 3163508,
    "nome": "São José do Jacuri",
    "estado_id": 31
  },
  {
    "id": 3163607,
    "nome": "São José do Mantimento",
    "estado_id": 31
  },
  {
    "id": 3163706,
    "nome": "São Lourenço",
    "estado_id": 31
  },
  {
    "id": 3163805,
    "nome": "São Miguel do Anta",
    "estado_id": 31
  },
  {
    "id": 3163904,
    "nome": "São Pedro da União",
    "estado_id": 31
  },
  {
    "id": 3164001,
    "nome": "São Pedro dos Ferros",
    "estado_id": 31
  },
  {
    "id": 3164100,
    "nome": "São Pedro do Suaçuí",
    "estado_id": 31
  },
  {
    "id": 3164209,
    "nome": "São Romão",
    "estado_id": 31
  },
  {
    "id": 3164308,
    "nome": "São Roque de Minas",
    "estado_id": 31
  },
  {
    "id": 3164407,
    "nome": "São Sebastião da Bela Vista",
    "estado_id": 31
  },
  {
    "id": 3164431,
    "nome": "São Sebastião da Vargem Alegre",
    "estado_id": 31
  },
  {
    "id": 3164472,
    "nome": "São Sebastião do Anta",
    "estado_id": 31
  },
  {
    "id": 3164506,
    "nome": "São Sebastião do Maranhão",
    "estado_id": 31
  },
  {
    "id": 3164605,
    "nome": "São Sebastião do Oeste",
    "estado_id": 31
  },
  {
    "id": 3164704,
    "nome": "São Sebastião do Paraíso",
    "estado_id": 31
  },
  {
    "id": 3164803,
    "nome": "São Sebastião do Rio Preto",
    "estado_id": 31
  },
  {
    "id": 3164902,
    "nome": "São Sebastião do Rio Verde",
    "estado_id": 31
  },
  {
    "id": 3165008,
    "nome": "São Tiago",
    "estado_id": 31
  },
  {
    "id": 3165107,
    "nome": "São Tomás de Aquino",
    "estado_id": 31
  },
  {
    "id": 3165206,
    "nome": "São Tomé das Letras",
    "estado_id": 31
  },
  {
    "id": 3165305,
    "nome": "São Vicente de Minas",
    "estado_id": 31
  },
  {
    "id": 3165404,
    "nome": "Sapucaí-Mirim",
    "estado_id": 31
  },
  {
    "id": 3165503,
    "nome": "Sardoá",
    "estado_id": 31
  },
  {
    "id": 3165537,
    "nome": "Sarzedo",
    "estado_id": 31
  },
  {
    "id": 3165552,
    "nome": "Setubinha",
    "estado_id": 31
  },
  {
    "id": 3165560,
    "nome": "Sem-Peixe",
    "estado_id": 31
  },
  {
    "id": 3165578,
    "nome": "Senador Amaral",
    "estado_id": 31
  },
  {
    "id": 3165602,
    "nome": "Senador Cortes",
    "estado_id": 31
  },
  {
    "id": 3165701,
    "nome": "Senador Firmino",
    "estado_id": 31
  },
  {
    "id": 3165800,
    "nome": "Senador José Bento",
    "estado_id": 31
  },
  {
    "id": 3165909,
    "nome": "Senador Modestino Gonçalves",
    "estado_id": 31
  },
  {
    "id": 3166006,
    "nome": "Senhora de Oliveira",
    "estado_id": 31
  },
  {
    "id": 3166105,
    "nome": "Senhora do Porto",
    "estado_id": 31
  },
  {
    "id": 3166204,
    "nome": "Senhora dos Remédios",
    "estado_id": 31
  },
  {
    "id": 3166303,
    "nome": "Sericita",
    "estado_id": 31
  },
  {
    "id": 3166402,
    "nome": "Seritinga",
    "estado_id": 31
  },
  {
    "id": 3166501,
    "nome": "Serra Azul de Minas",
    "estado_id": 31
  },
  {
    "id": 3166600,
    "nome": "Serra da Saudade",
    "estado_id": 31
  },
  {
    "id": 3166709,
    "nome": "Serra dos Aimorés",
    "estado_id": 31
  },
  {
    "id": 3166808,
    "nome": "Serra do Salitre",
    "estado_id": 31
  },
  {
    "id": 3166907,
    "nome": "Serrania",
    "estado_id": 31
  },
  {
    "id": 3166956,
    "nome": "Serranópolis de Minas",
    "estado_id": 31
  },
  {
    "id": 3167004,
    "nome": "Serranos",
    "estado_id": 31
  },
  {
    "id": 3167103,
    "nome": "Serro",
    "estado_id": 31
  },
  {
    "id": 3167202,
    "nome": "Sete Lagoas",
    "estado_id": 31
  },
  {
    "id": 3167301,
    "nome": "Silveirânia",
    "estado_id": 31
  },
  {
    "id": 3167400,
    "nome": "Silvianópolis",
    "estado_id": 31
  },
  {
    "id": 3167509,
    "nome": "Simão Pereira",
    "estado_id": 31
  },
  {
    "id": 3167608,
    "nome": "Simonésia",
    "estado_id": 31
  },
  {
    "id": 3167707,
    "nome": "Sobrália",
    "estado_id": 31
  },
  {
    "id": 3167806,
    "nome": "Soledade de Minas",
    "estado_id": 31
  },
  {
    "id": 3167905,
    "nome": "Tabuleiro",
    "estado_id": 31
  },
  {
    "id": 3168002,
    "nome": "Taiobeiras",
    "estado_id": 31
  },
  {
    "id": 3168051,
    "nome": "Taparuba",
    "estado_id": 31
  },
  {
    "id": 3168101,
    "nome": "Tapira",
    "estado_id": 31
  },
  {
    "id": 3168200,
    "nome": "Tapiraí",
    "estado_id": 31
  },
  {
    "id": 3168309,
    "nome": "Taquaraçu de Minas",
    "estado_id": 31
  },
  {
    "id": 3168408,
    "nome": "Tarumirim",
    "estado_id": 31
  },
  {
    "id": 3168507,
    "nome": "Teixeiras",
    "estado_id": 31
  },
  {
    "id": 3168606,
    "nome": "Teófilo Otoni",
    "estado_id": 31
  },
  {
    "id": 3168705,
    "nome": "Timóteo",
    "estado_id": 31
  },
  {
    "id": 3168804,
    "nome": "Tiradentes",
    "estado_id": 31
  },
  {
    "id": 3168903,
    "nome": "Tiros",
    "estado_id": 31
  },
  {
    "id": 3169000,
    "nome": "Tocantins",
    "estado_id": 31
  },
  {
    "id": 3169059,
    "nome": "Tocos do Moji",
    "estado_id": 31
  },
  {
    "id": 3169109,
    "nome": "Toledo",
    "estado_id": 31
  },
  {
    "id": 3169208,
    "nome": "Tombos",
    "estado_id": 31
  },
  {
    "id": 3169307,
    "nome": "Três Corações",
    "estado_id": 31
  },
  {
    "id": 3169356,
    "nome": "Três Marias",
    "estado_id": 31
  },
  {
    "id": 3169406,
    "nome": "Três Pontas",
    "estado_id": 31
  },
  {
    "id": 3169505,
    "nome": "Tumiritinga",
    "estado_id": 31
  },
  {
    "id": 3169604,
    "nome": "Tupaciguara",
    "estado_id": 31
  },
  {
    "id": 3169703,
    "nome": "Turmalina",
    "estado_id": 31
  },
  {
    "id": 3169802,
    "nome": "Turvolândia",
    "estado_id": 31
  },
  {
    "id": 3169901,
    "nome": "Ubá",
    "estado_id": 31
  },
  {
    "id": 3170008,
    "nome": "Ubaí",
    "estado_id": 31
  },
  {
    "id": 3170057,
    "nome": "Ubaporanga",
    "estado_id": 31
  },
  {
    "id": 3170107,
    "nome": "Uberaba",
    "estado_id": 31
  },
  {
    "id": 3170206,
    "nome": "Uberlândia",
    "estado_id": 31
  },
  {
    "id": 3170305,
    "nome": "Umburatiba",
    "estado_id": 31
  },
  {
    "id": 3170404,
    "nome": "Unaí",
    "estado_id": 31
  },
  {
    "id": 3170438,
    "nome": "União de Minas",
    "estado_id": 31
  },
  {
    "id": 3170479,
    "nome": "Uruana de Minas",
    "estado_id": 31
  },
  {
    "id": 3170503,
    "nome": "Urucânia",
    "estado_id": 31
  },
  {
    "id": 3170529,
    "nome": "Urucuia",
    "estado_id": 31
  },
  {
    "id": 3170578,
    "nome": "Vargem Alegre",
    "estado_id": 31
  },
  {
    "id": 3170602,
    "nome": "Vargem Bonita",
    "estado_id": 31
  },
  {
    "id": 3170651,
    "nome": "Vargem Grande do Rio Pardo",
    "estado_id": 31
  },
  {
    "id": 3170701,
    "nome": "Varginha",
    "estado_id": 31
  },
  {
    "id": 3170750,
    "nome": "Varjão de Minas",
    "estado_id": 31
  },
  {
    "id": 3170800,
    "nome": "Várzea da Palma",
    "estado_id": 31
  },
  {
    "id": 3170909,
    "nome": "Varzelândia",
    "estado_id": 31
  },
  {
    "id": 3171006,
    "nome": "Vazante",
    "estado_id": 31
  },
  {
    "id": 3171030,
    "nome": "Verdelândia",
    "estado_id": 31
  },
  {
    "id": 3171071,
    "nome": "Veredinha",
    "estado_id": 31
  },
  {
    "id": 3171105,
    "nome": "Veríssimo",
    "estado_id": 31
  },
  {
    "id": 3171154,
    "nome": "Vermelho Novo",
    "estado_id": 31
  },
  {
    "id": 3171204,
    "nome": "Vespasiano",
    "estado_id": 31
  },
  {
    "id": 3171303,
    "nome": "Viçosa",
    "estado_id": 31
  },
  {
    "id": 3171402,
    "nome": "Vieiras",
    "estado_id": 31
  },
  {
    "id": 3171501,
    "nome": "Mathias Lobato",
    "estado_id": 31
  },
  {
    "id": 3171600,
    "nome": "Virgem da Lapa",
    "estado_id": 31
  },
  {
    "id": 3171709,
    "nome": "Virgínia",
    "estado_id": 31
  },
  {
    "id": 3171808,
    "nome": "Virginópolis",
    "estado_id": 31
  },
  {
    "id": 3171907,
    "nome": "Virgolândia",
    "estado_id": 31
  },
  {
    "id": 3172004,
    "nome": "Visconde do Rio Branco",
    "estado_id": 31
  },
  {
    "id": 3172103,
    "nome": "Volta Grande",
    "estado_id": 31
  },
  {
    "id": 3172202,
    "nome": "Wenceslau Braz",
    "estado_id": 31
  },
  {
    "id": 3200102,
    "nome": "Afonso Cláudio",
    "estado_id": 32
  },
  {
    "id": 3200136,
    "nome": "Águia Branca",
    "estado_id": 32
  },
  {
    "id": 3200169,
    "nome": "Água Doce do Norte",
    "estado_id": 32
  },
  {
    "id": 3200201,
    "nome": "Alegre",
    "estado_id": 32
  },
  {
    "id": 3200300,
    "nome": "Alfredo Chaves",
    "estado_id": 32
  },
  {
    "id": 3200359,
    "nome": "Alto Rio Novo",
    "estado_id": 32
  },
  {
    "id": 3200409,
    "nome": "Anchieta",
    "estado_id": 32
  },
  {
    "id": 3200508,
    "nome": "Apiacá",
    "estado_id": 32
  },
  {
    "id": 3200607,
    "nome": "Aracruz",
    "estado_id": 32
  },
  {
    "id": 3200706,
    "nome": "Atílio Vivácqua",
    "estado_id": 32
  },
  {
    "id": 3200805,
    "nome": "Baixo Guandu",
    "estado_id": 32
  },
  {
    "id": 3200904,
    "nome": "Barra de São Francisco",
    "estado_id": 32
  },
  {
    "id": 3201001,
    "nome": "Boa Esperança",
    "estado_id": 32
  },
  {
    "id": 3201100,
    "nome": "Bom Jesus do Norte",
    "estado_id": 32
  },
  {
    "id": 3201159,
    "nome": "Brejetuba",
    "estado_id": 32
  },
  {
    "id": 3201209,
    "nome": "Cachoeiro de Itapemirim",
    "estado_id": 32
  },
  {
    "id": 3201308,
    "nome": "Cariacica",
    "estado_id": 32
  },
  {
    "id": 3201407,
    "nome": "Castelo",
    "estado_id": 32
  },
  {
    "id": 3201506,
    "nome": "Colatina",
    "estado_id": 32
  },
  {
    "id": 3201605,
    "nome": "Conceição da Barra",
    "estado_id": 32
  },
  {
    "id": 3201704,
    "nome": "Conceição do Castelo",
    "estado_id": 32
  },
  {
    "id": 3201803,
    "nome": "Divino de São Lourenço",
    "estado_id": 32
  },
  {
    "id": 3201902,
    "nome": "Domingos Martins",
    "estado_id": 32
  },
  {
    "id": 3202009,
    "nome": "Dores do Rio Preto",
    "estado_id": 32
  },
  {
    "id": 3202108,
    "nome": "Ecoporanga",
    "estado_id": 32
  },
  {
    "id": 3202207,
    "nome": "Fundão",
    "estado_id": 32
  },
  {
    "id": 3202256,
    "nome": "Governador Lindenberg",
    "estado_id": 32
  },
  {
    "id": 3202306,
    "nome": "Guaçuí",
    "estado_id": 32
  },
  {
    "id": 3202405,
    "nome": "Guarapari",
    "estado_id": 32
  },
  {
    "id": 3202454,
    "nome": "Ibatiba",
    "estado_id": 32
  },
  {
    "id": 3202504,
    "nome": "Ibiraçu",
    "estado_id": 32
  },
  {
    "id": 3202553,
    "nome": "Ibitirama",
    "estado_id": 32
  },
  {
    "id": 3202603,
    "nome": "Iconha",
    "estado_id": 32
  },
  {
    "id": 3202652,
    "nome": "Irupi",
    "estado_id": 32
  },
  {
    "id": 3202702,
    "nome": "Itaguaçu",
    "estado_id": 32
  },
  {
    "id": 3202801,
    "nome": "Itapemirim",
    "estado_id": 32
  },
  {
    "id": 3202900,
    "nome": "Itarana",
    "estado_id": 32
  },
  {
    "id": 3203007,
    "nome": "Iúna",
    "estado_id": 32
  },
  {
    "id": 3203056,
    "nome": "Jaguaré",
    "estado_id": 32
  },
  {
    "id": 3203106,
    "nome": "Jerônimo Monteiro",
    "estado_id": 32
  },
  {
    "id": 3203130,
    "nome": "João Neiva",
    "estado_id": 32
  },
  {
    "id": 3203163,
    "nome": "Laranja da Terra",
    "estado_id": 32
  },
  {
    "id": 3203205,
    "nome": "Linhares",
    "estado_id": 32
  },
  {
    "id": 3203304,
    "nome": "Mantenópolis",
    "estado_id": 32
  },
  {
    "id": 3203320,
    "nome": "Marataízes",
    "estado_id": 32
  },
  {
    "id": 3203346,
    "nome": "Marechal Floriano",
    "estado_id": 32
  },
  {
    "id": 3203353,
    "nome": "Marilândia",
    "estado_id": 32
  },
  {
    "id": 3203403,
    "nome": "Mimoso do Sul",
    "estado_id": 32
  },
  {
    "id": 3203502,
    "nome": "Montanha",
    "estado_id": 32
  },
  {
    "id": 3203601,
    "nome": "Mucurici",
    "estado_id": 32
  },
  {
    "id": 3203700,
    "nome": "Muniz Freire",
    "estado_id": 32
  },
  {
    "id": 3203809,
    "nome": "Muqui",
    "estado_id": 32
  },
  {
    "id": 3203908,
    "nome": "Nova Venécia",
    "estado_id": 32
  },
  {
    "id": 3204005,
    "nome": "Pancas",
    "estado_id": 32
  },
  {
    "id": 3204054,
    "nome": "Pedro Canário",
    "estado_id": 32
  },
  {
    "id": 3204104,
    "nome": "Pinheiros",
    "estado_id": 32
  },
  {
    "id": 3204203,
    "nome": "Piúma",
    "estado_id": 32
  },
  {
    "id": 3204252,
    "nome": "Ponto Belo",
    "estado_id": 32
  },
  {
    "id": 3204302,
    "nome": "Presidente Kennedy",
    "estado_id": 32
  },
  {
    "id": 3204351,
    "nome": "Rio Bananal",
    "estado_id": 32
  },
  {
    "id": 3204401,
    "nome": "Rio Novo do Sul",
    "estado_id": 32
  },
  {
    "id": 3204500,
    "nome": "Santa Leopoldina",
    "estado_id": 32
  },
  {
    "id": 3204559,
    "nome": "Santa Maria de Jetibá",
    "estado_id": 32
  },
  {
    "id": 3204609,
    "nome": "Santa Teresa",
    "estado_id": 32
  },
  {
    "id": 3204658,
    "nome": "São Domingos do Norte",
    "estado_id": 32
  },
  {
    "id": 3204708,
    "nome": "São Gabriel da Palha",
    "estado_id": 32
  },
  {
    "id": 3204807,
    "nome": "São José do Calçado",
    "estado_id": 32
  },
  {
    "id": 3204906,
    "nome": "São Mateus",
    "estado_id": 32
  },
  {
    "id": 3204955,
    "nome": "São Roque do Canaã",
    "estado_id": 32
  },
  {
    "id": 3205002,
    "nome": "Serra",
    "estado_id": 32
  },
  {
    "id": 3205010,
    "nome": "Sooretama",
    "estado_id": 32
  },
  {
    "id": 3205036,
    "nome": "Vargem Alta",
    "estado_id": 32
  },
  {
    "id": 3205069,
    "nome": "Venda Nova do Imigrante",
    "estado_id": 32
  },
  {
    "id": 3205101,
    "nome": "Viana",
    "estado_id": 32
  },
  {
    "id": 3205150,
    "nome": "Vila Pavão",
    "estado_id": 32
  },
  {
    "id": 3205176,
    "nome": "Vila Valério",
    "estado_id": 32
  },
  {
    "id": 3205200,
    "nome": "Vila Velha",
    "estado_id": 32
  },
  {
    "id": 3205309,
    "nome": "Vitória",
    "estado_id": 32
  },
  {
    "id": 3300100,
    "nome": "Angra dos Reis",
    "estado_id": 33
  },
  {
    "id": 3300159,
    "nome": "Aperibé",
    "estado_id": 33
  },
  {
    "id": 3300209,
    "nome": "Araruama",
    "estado_id": 33
  },
  {
    "id": 3300225,
    "nome": "Areal",
    "estado_id": 33
  },
  {
    "id": 3300233,
    "nome": "Armação dos Búzios",
    "estado_id": 33
  },
  {
    "id": 3300258,
    "nome": "Arraial do Cabo",
    "estado_id": 33
  },
  {
    "id": 3300308,
    "nome": "Barra do Piraí",
    "estado_id": 33
  },
  {
    "id": 3300407,
    "nome": "Barra Mansa",
    "estado_id": 33
  },
  {
    "id": 3300456,
    "nome": "Belford Roxo",
    "estado_id": 33
  },
  {
    "id": 3300506,
    "nome": "Bom Jardim",
    "estado_id": 33
  },
  {
    "id": 3300605,
    "nome": "Bom Jesus do Itabapoana",
    "estado_id": 33
  },
  {
    "id": 3300704,
    "nome": "Cabo Frio",
    "estado_id": 33
  },
  {
    "id": 3300803,
    "nome": "Cachoeiras de Macacu",
    "estado_id": 33
  },
  {
    "id": 3300902,
    "nome": "Cambuci",
    "estado_id": 33
  },
  {
    "id": 3300936,
    "nome": "Carapebus",
    "estado_id": 33
  },
  {
    "id": 3300951,
    "nome": "Comendador Levy Gasparian",
    "estado_id": 33
  },
  {
    "id": 3301009,
    "nome": "Campos dos Goytacazes",
    "estado_id": 33
  },
  {
    "id": 3301108,
    "nome": "Cantagalo",
    "estado_id": 33
  },
  {
    "id": 3301157,
    "nome": "Cardoso Moreira",
    "estado_id": 33
  },
  {
    "id": 3301207,
    "nome": "Carmo",
    "estado_id": 33
  },
  {
    "id": 3301306,
    "nome": "Casimiro de Abreu",
    "estado_id": 33
  },
  {
    "id": 3301405,
    "nome": "Conceição de Macabu",
    "estado_id": 33
  },
  {
    "id": 3301504,
    "nome": "Cordeiro",
    "estado_id": 33
  },
  {
    "id": 3301603,
    "nome": "Duas Barras",
    "estado_id": 33
  },
  {
    "id": 3301702,
    "nome": "Duque de Caxias",
    "estado_id": 33
  },
  {
    "id": 3301801,
    "nome": "Engenheiro Paulo de Frontin",
    "estado_id": 33
  },
  {
    "id": 3301850,
    "nome": "Guapimirim",
    "estado_id": 33
  },
  {
    "id": 3301876,
    "nome": "Iguaba Grande",
    "estado_id": 33
  },
  {
    "id": 3301900,
    "nome": "Itaboraí",
    "estado_id": 33
  },
  {
    "id": 3302007,
    "nome": "Itaguaí",
    "estado_id": 33
  },
  {
    "id": 3302056,
    "nome": "Italva",
    "estado_id": 33
  },
  {
    "id": 3302106,
    "nome": "Itaocara",
    "estado_id": 33
  },
  {
    "id": 3302205,
    "nome": "Itaperuna",
    "estado_id": 33
  },
  {
    "id": 3302254,
    "nome": "Itatiaia",
    "estado_id": 33
  },
  {
    "id": 3302270,
    "nome": "Japeri",
    "estado_id": 33
  },
  {
    "id": 3302304,
    "nome": "Laje do Muriaé",
    "estado_id": 33
  },
  {
    "id": 3302403,
    "nome": "Macaé",
    "estado_id": 33
  },
  {
    "id": 3302452,
    "nome": "Macuco",
    "estado_id": 33
  },
  {
    "id": 3302502,
    "nome": "Magé",
    "estado_id": 33
  },
  {
    "id": 3302601,
    "nome": "Mangaratiba",
    "estado_id": 33
  },
  {
    "id": 3302700,
    "nome": "Maricá",
    "estado_id": 33
  },
  {
    "id": 3302809,
    "nome": "Mendes",
    "estado_id": 33
  },
  {
    "id": 3302858,
    "nome": "Mesquita",
    "estado_id": 33
  },
  {
    "id": 3302908,
    "nome": "Miguel Pereira",
    "estado_id": 33
  },
  {
    "id": 3303005,
    "nome": "Miracema",
    "estado_id": 33
  },
  {
    "id": 3303104,
    "nome": "Natividade",
    "estado_id": 33
  },
  {
    "id": 3303203,
    "nome": "Nilópolis",
    "estado_id": 33
  },
  {
    "id": 3303302,
    "nome": "Niterói",
    "estado_id": 33
  },
  {
    "id": 3303401,
    "nome": "Nova Friburgo",
    "estado_id": 33
  },
  {
    "id": 3303500,
    "nome": "Nova Iguaçu",
    "estado_id": 33
  },
  {
    "id": 3303609,
    "nome": "Paracambi",
    "estado_id": 33
  },
  {
    "id": 3303708,
    "nome": "Paraíba do Sul",
    "estado_id": 33
  },
  {
    "id": 3303807,
    "nome": "Paraty",
    "estado_id": 33
  },
  {
    "id": 3303856,
    "nome": "Paty do Alferes",
    "estado_id": 33
  },
  {
    "id": 3303906,
    "nome": "Petrópolis",
    "estado_id": 33
  },
  {
    "id": 3303955,
    "nome": "Pinheiral",
    "estado_id": 33
  },
  {
    "id": 3304003,
    "nome": "Piraí",
    "estado_id": 33
  },
  {
    "id": 3304102,
    "nome": "Porciúncula",
    "estado_id": 33
  },
  {
    "id": 3304110,
    "nome": "Porto Real",
    "estado_id": 33
  },
  {
    "id": 3304128,
    "nome": "Quatis",
    "estado_id": 33
  },
  {
    "id": 3304144,
    "nome": "Queimados",
    "estado_id": 33
  },
  {
    "id": 3304151,
    "nome": "Quissamã",
    "estado_id": 33
  },
  {
    "id": 3304201,
    "nome": "Resende",
    "estado_id": 33
  },
  {
    "id": 3304300,
    "nome": "Rio Bonito",
    "estado_id": 33
  },
  {
    "id": 3304409,
    "nome": "Rio Claro",
    "estado_id": 33
  },
  {
    "id": 3304508,
    "nome": "Rio das Flores",
    "estado_id": 33
  },
  {
    "id": 3304524,
    "nome": "Rio das Ostras",
    "estado_id": 33
  },
  {
    "id": 3304557,
    "nome": "Rio de Janeiro",
    "estado_id": 33
  },
  {
    "id": 3304607,
    "nome": "Santa Maria Madalena",
    "estado_id": 33
  },
  {
    "id": 3304706,
    "nome": "Santo Antônio de Pádua",
    "estado_id": 33
  },
  {
    "id": 3304755,
    "nome": "São Francisco de Itabapoana",
    "estado_id": 33
  },
  {
    "id": 3304805,
    "nome": "São Fidélis",
    "estado_id": 33
  },
  {
    "id": 3304904,
    "nome": "São Gonçalo",
    "estado_id": 33
  },
  {
    "id": 3305000,
    "nome": "São João da Barra",
    "estado_id": 33
  },
  {
    "id": 3305109,
    "nome": "São João de Meriti",
    "estado_id": 33
  },
  {
    "id": 3305133,
    "nome": "São José de Ubá",
    "estado_id": 33
  },
  {
    "id": 3305158,
    "nome": "São José do Vale do Rio Preto",
    "estado_id": 33
  },
  {
    "id": 3305208,
    "nome": "São Pedro da Aldeia",
    "estado_id": 33
  },
  {
    "id": 3305307,
    "nome": "São Sebastião do Alto",
    "estado_id": 33
  },
  {
    "id": 3305406,
    "nome": "Sapucaia",
    "estado_id": 33
  },
  {
    "id": 3305505,
    "nome": "Saquarema",
    "estado_id": 33
  },
  {
    "id": 3305554,
    "nome": "Seropédica",
    "estado_id": 33
  },
  {
    "id": 3305604,
    "nome": "Silva Jardim",
    "estado_id": 33
  },
  {
    "id": 3305703,
    "nome": "Sumidouro",
    "estado_id": 33
  },
  {
    "id": 3305752,
    "nome": "Tanguá",
    "estado_id": 33
  },
  {
    "id": 3305802,
    "nome": "Teresópolis",
    "estado_id": 33
  },
  {
    "id": 3305901,
    "nome": "Trajano de Moraes",
    "estado_id": 33
  },
  {
    "id": 3306008,
    "nome": "Três Rios",
    "estado_id": 33
  },
  {
    "id": 3306107,
    "nome": "Valença",
    "estado_id": 33
  },
  {
    "id": 3306156,
    "nome": "Varre-Sai",
    "estado_id": 33
  },
  {
    "id": 3306206,
    "nome": "Vassouras",
    "estado_id": 33
  },
  {
    "id": 3306305,
    "nome": "Volta Redonda",
    "estado_id": 33
  },
  {
    "id": 3500105,
    "nome": "Adamantina",
    "estado_id": 35
  },
  {
    "id": 3500204,
    "nome": "Adolfo",
    "estado_id": 35
  },
  {
    "id": 3500303,
    "nome": "Aguaí",
    "estado_id": 35
  },
  {
    "id": 3500402,
    "nome": "Águas da Prata",
    "estado_id": 35
  },
  {
    "id": 3500501,
    "nome": "Águas de Lindóia",
    "estado_id": 35
  },
  {
    "id": 3500550,
    "nome": "Águas de Santa Bárbara",
    "estado_id": 35
  },
  {
    "id": 3500600,
    "nome": "Águas de São Pedro",
    "estado_id": 35
  },
  {
    "id": 3500709,
    "nome": "Agudos",
    "estado_id": 35
  },
  {
    "id": 3500758,
    "nome": "Alambari",
    "estado_id": 35
  },
  {
    "id": 3500808,
    "nome": "Alfredo Marcondes",
    "estado_id": 35
  },
  {
    "id": 3500907,
    "nome": "Altair",
    "estado_id": 35
  },
  {
    "id": 3501004,
    "nome": "Altinópolis",
    "estado_id": 35
  },
  {
    "id": 3501103,
    "nome": "Alto Alegre",
    "estado_id": 35
  },
  {
    "id": 3501152,
    "nome": "Alumínio",
    "estado_id": 35
  },
  {
    "id": 3501202,
    "nome": "Álvares Florence",
    "estado_id": 35
  },
  {
    "id": 3501301,
    "nome": "Álvares Machado",
    "estado_id": 35
  },
  {
    "id": 3501400,
    "nome": "Álvaro de Carvalho",
    "estado_id": 35
  },
  {
    "id": 3501509,
    "nome": "Alvinlândia",
    "estado_id": 35
  },
  {
    "id": 3501608,
    "nome": "Americana",
    "estado_id": 35
  },
  {
    "id": 3501707,
    "nome": "Américo Brasiliense",
    "estado_id": 35
  },
  {
    "id": 3501806,
    "nome": "Américo de Campos",
    "estado_id": 35
  },
  {
    "id": 3501905,
    "nome": "Amparo",
    "estado_id": 35
  },
  {
    "id": 3502002,
    "nome": "Analândia",
    "estado_id": 35
  },
  {
    "id": 3502101,
    "nome": "Andradina",
    "estado_id": 35
  },
  {
    "id": 3502200,
    "nome": "Angatuba",
    "estado_id": 35
  },
  {
    "id": 3502309,
    "nome": "Anhembi",
    "estado_id": 35
  },
  {
    "id": 3502408,
    "nome": "Anhumas",
    "estado_id": 35
  },
  {
    "id": 3502507,
    "nome": "Aparecida",
    "estado_id": 35
  },
  {
    "id": 3502606,
    "nome": "Aparecida d'Oeste",
    "estado_id": 35
  },
  {
    "id": 3502705,
    "nome": "Apiaí",
    "estado_id": 35
  },
  {
    "id": 3502754,
    "nome": "Araçariguama",
    "estado_id": 35
  },
  {
    "id": 3502804,
    "nome": "Araçatuba",
    "estado_id": 35
  },
  {
    "id": 3502903,
    "nome": "Araçoiaba da Serra",
    "estado_id": 35
  },
  {
    "id": 3503000,
    "nome": "Aramina",
    "estado_id": 35
  },
  {
    "id": 3503109,
    "nome": "Arandu",
    "estado_id": 35
  },
  {
    "id": 3503158,
    "nome": "Arapeí",
    "estado_id": 35
  },
  {
    "id": 3503208,
    "nome": "Araraquara",
    "estado_id": 35
  },
  {
    "id": 3503307,
    "nome": "Araras",
    "estado_id": 35
  },
  {
    "id": 3503356,
    "nome": "Arco-Íris",
    "estado_id": 35
  },
  {
    "id": 3503406,
    "nome": "Arealva",
    "estado_id": 35
  },
  {
    "id": 3503505,
    "nome": "Areias",
    "estado_id": 35
  },
  {
    "id": 3503604,
    "nome": "Areiópolis",
    "estado_id": 35
  },
  {
    "id": 3503703,
    "nome": "Ariranha",
    "estado_id": 35
  },
  {
    "id": 3503802,
    "nome": "Artur Nogueira",
    "estado_id": 35
  },
  {
    "id": 3503901,
    "nome": "Arujá",
    "estado_id": 35
  },
  {
    "id": 3503950,
    "nome": "Aspásia",
    "estado_id": 35
  },
  {
    "id": 3504008,
    "nome": "Assis",
    "estado_id": 35
  },
  {
    "id": 3504107,
    "nome": "Atibaia",
    "estado_id": 35
  },
  {
    "id": 3504206,
    "nome": "Auriflama",
    "estado_id": 35
  },
  {
    "id": 3504305,
    "nome": "Avaí",
    "estado_id": 35
  },
  {
    "id": 3504404,
    "nome": "Avanhandava",
    "estado_id": 35
  },
  {
    "id": 3504503,
    "nome": "Avaré",
    "estado_id": 35
  },
  {
    "id": 3504602,
    "nome": "Bady Bassitt",
    "estado_id": 35
  },
  {
    "id": 3504701,
    "nome": "Balbinos",
    "estado_id": 35
  },
  {
    "id": 3504800,
    "nome": "Bálsamo",
    "estado_id": 35
  },
  {
    "id": 3504909,
    "nome": "Bananal",
    "estado_id": 35
  },
  {
    "id": 3505005,
    "nome": "Barão de Antonina",
    "estado_id": 35
  },
  {
    "id": 3505104,
    "nome": "Barbosa",
    "estado_id": 35
  },
  {
    "id": 3505203,
    "nome": "Bariri",
    "estado_id": 35
  },
  {
    "id": 3505302,
    "nome": "Barra Bonita",
    "estado_id": 35
  },
  {
    "id": 3505351,
    "nome": "Barra do Chapéu",
    "estado_id": 35
  },
  {
    "id": 3505401,
    "nome": "Barra do Turvo",
    "estado_id": 35
  },
  {
    "id": 3505500,
    "nome": "Barretos",
    "estado_id": 35
  },
  {
    "id": 3505609,
    "nome": "Barrinha",
    "estado_id": 35
  },
  {
    "id": 3505708,
    "nome": "Barueri",
    "estado_id": 35
  },
  {
    "id": 3505807,
    "nome": "Bastos",
    "estado_id": 35
  },
  {
    "id": 3505906,
    "nome": "Batatais",
    "estado_id": 35
  },
  {
    "id": 3506003,
    "nome": "Bauru",
    "estado_id": 35
  },
  {
    "id": 3506102,
    "nome": "Bebedouro",
    "estado_id": 35
  },
  {
    "id": 3506201,
    "nome": "Bento de Abreu",
    "estado_id": 35
  },
  {
    "id": 3506300,
    "nome": "Bernardino de Campos",
    "estado_id": 35
  },
  {
    "id": 3506359,
    "nome": "Bertioga",
    "estado_id": 35
  },
  {
    "id": 3506409,
    "nome": "Bilac",
    "estado_id": 35
  },
  {
    "id": 3506508,
    "nome": "Birigui",
    "estado_id": 35
  },
  {
    "id": 3506607,
    "nome": "Biritiba Mirim",
    "estado_id": 35
  },
  {
    "id": 3506706,
    "nome": "Boa Esperança do Sul",
    "estado_id": 35
  },
  {
    "id": 3506805,
    "nome": "Bocaina",
    "estado_id": 35
  },
  {
    "id": 3506904,
    "nome": "Bofete",
    "estado_id": 35
  },
  {
    "id": 3507001,
    "nome": "Boituva",
    "estado_id": 35
  },
  {
    "id": 3507100,
    "nome": "Bom Jesus dos Perdões",
    "estado_id": 35
  },
  {
    "id": 3507159,
    "nome": "Bom Sucesso de Itararé",
    "estado_id": 35
  },
  {
    "id": 3507209,
    "nome": "Borá",
    "estado_id": 35
  },
  {
    "id": 3507308,
    "nome": "Boracéia",
    "estado_id": 35
  },
  {
    "id": 3507407,
    "nome": "Borborema",
    "estado_id": 35
  },
  {
    "id": 3507456,
    "nome": "Borebi",
    "estado_id": 35
  },
  {
    "id": 3507506,
    "nome": "Botucatu",
    "estado_id": 35
  },
  {
    "id": 3507605,
    "nome": "Bragança Paulista",
    "estado_id": 35
  },
  {
    "id": 3507704,
    "nome": "Braúna",
    "estado_id": 35
  },
  {
    "id": 3507753,
    "nome": "Brejo Alegre",
    "estado_id": 35
  },
  {
    "id": 3507803,
    "nome": "Brodowski",
    "estado_id": 35
  },
  {
    "id": 3507902,
    "nome": "Brotas",
    "estado_id": 35
  },
  {
    "id": 3508009,
    "nome": "Buri",
    "estado_id": 35
  },
  {
    "id": 3508108,
    "nome": "Buritama",
    "estado_id": 35
  },
  {
    "id": 3508207,
    "nome": "Buritizal",
    "estado_id": 35
  },
  {
    "id": 3508306,
    "nome": "Cabrália Paulista",
    "estado_id": 35
  },
  {
    "id": 3508405,
    "nome": "Cabreúva",
    "estado_id": 35
  },
  {
    "id": 3508504,
    "nome": "Caçapava",
    "estado_id": 35
  },
  {
    "id": 3508603,
    "nome": "Cachoeira Paulista",
    "estado_id": 35
  },
  {
    "id": 3508702,
    "nome": "Caconde",
    "estado_id": 35
  },
  {
    "id": 3508801,
    "nome": "Cafelândia",
    "estado_id": 35
  },
  {
    "id": 3508900,
    "nome": "Caiabu",
    "estado_id": 35
  },
  {
    "id": 3509007,
    "nome": "Caieiras",
    "estado_id": 35
  },
  {
    "id": 3509106,
    "nome": "Caiuá",
    "estado_id": 35
  },
  {
    "id": 3509205,
    "nome": "Cajamar",
    "estado_id": 35
  },
  {
    "id": 3509254,
    "nome": "Cajati",
    "estado_id": 35
  },
  {
    "id": 3509304,
    "nome": "Cajobi",
    "estado_id": 35
  },
  {
    "id": 3509403,
    "nome": "Cajuru",
    "estado_id": 35
  },
  {
    "id": 3509452,
    "nome": "Campina do Monte Alegre",
    "estado_id": 35
  },
  {
    "id": 3509502,
    "nome": "Campinas",
    "estado_id": 35
  },
  {
    "id": 3509601,
    "nome": "Campo Limpo Paulista",
    "estado_id": 35
  },
  {
    "id": 3509700,
    "nome": "Campos do Jordão",
    "estado_id": 35
  },
  {
    "id": 3509809,
    "nome": "Campos Novos Paulista",
    "estado_id": 35
  },
  {
    "id": 3509908,
    "nome": "Cananéia",
    "estado_id": 35
  },
  {
    "id": 3509957,
    "nome": "Canas",
    "estado_id": 35
  },
  {
    "id": 3510005,
    "nome": "Cândido Mota",
    "estado_id": 35
  },
  {
    "id": 3510104,
    "nome": "Cândido Rodrigues",
    "estado_id": 35
  },
  {
    "id": 3510153,
    "nome": "Canitar",
    "estado_id": 35
  },
  {
    "id": 3510203,
    "nome": "Capão Bonito",
    "estado_id": 35
  },
  {
    "id": 3510302,
    "nome": "Capela do Alto",
    "estado_id": 35
  },
  {
    "id": 3510401,
    "nome": "Capivari",
    "estado_id": 35
  },
  {
    "id": 3510500,
    "nome": "Caraguatatuba",
    "estado_id": 35
  },
  {
    "id": 3510609,
    "nome": "Carapicuíba",
    "estado_id": 35
  },
  {
    "id": 3510708,
    "nome": "Cardoso",
    "estado_id": 35
  },
  {
    "id": 3510807,
    "nome": "Casa Branca",
    "estado_id": 35
  },
  {
    "id": 3510906,
    "nome": "Cássia dos Coqueiros",
    "estado_id": 35
  },
  {
    "id": 3511003,
    "nome": "Castilho",
    "estado_id": 35
  },
  {
    "id": 3511102,
    "nome": "Catanduva",
    "estado_id": 35
  },
  {
    "id": 3511201,
    "nome": "Catiguá",
    "estado_id": 35
  },
  {
    "id": 3511300,
    "nome": "Cedral",
    "estado_id": 35
  },
  {
    "id": 3511409,
    "nome": "Cerqueira César",
    "estado_id": 35
  },
  {
    "id": 3511508,
    "nome": "Cerquilho",
    "estado_id": 35
  },
  {
    "id": 3511607,
    "nome": "Cesário Lange",
    "estado_id": 35
  },
  {
    "id": 3511706,
    "nome": "Charqueada",
    "estado_id": 35
  },
  {
    "id": 3511904,
    "nome": "Clementina",
    "estado_id": 35
  },
  {
    "id": 3512001,
    "nome": "Colina",
    "estado_id": 35
  },
  {
    "id": 3512100,
    "nome": "Colômbia",
    "estado_id": 35
  },
  {
    "id": 3512209,
    "nome": "Conchal",
    "estado_id": 35
  },
  {
    "id": 3512308,
    "nome": "Conchas",
    "estado_id": 35
  },
  {
    "id": 3512407,
    "nome": "Cordeirópolis",
    "estado_id": 35
  },
  {
    "id": 3512506,
    "nome": "Coroados",
    "estado_id": 35
  },
  {
    "id": 3512605,
    "nome": "Coronel Macedo",
    "estado_id": 35
  },
  {
    "id": 3512704,
    "nome": "Corumbataí",
    "estado_id": 35
  },
  {
    "id": 3512803,
    "nome": "Cosmópolis",
    "estado_id": 35
  },
  {
    "id": 3512902,
    "nome": "Cosmorama",
    "estado_id": 35
  },
  {
    "id": 3513009,
    "nome": "Cotia",
    "estado_id": 35
  },
  {
    "id": 3513108,
    "nome": "Cravinhos",
    "estado_id": 35
  },
  {
    "id": 3513207,
    "nome": "Cristais Paulista",
    "estado_id": 35
  },
  {
    "id": 3513306,
    "nome": "Cruzália",
    "estado_id": 35
  },
  {
    "id": 3513405,
    "nome": "Cruzeiro",
    "estado_id": 35
  },
  {
    "id": 3513504,
    "nome": "Cubatão",
    "estado_id": 35
  },
  {
    "id": 3513603,
    "nome": "Cunha",
    "estado_id": 35
  },
  {
    "id": 3513702,
    "nome": "Descalvado",
    "estado_id": 35
  },
  {
    "id": 3513801,
    "nome": "Diadema",
    "estado_id": 35
  },
  {
    "id": 3513850,
    "nome": "Dirce Reis",
    "estado_id": 35
  },
  {
    "id": 3513900,
    "nome": "Divinolândia",
    "estado_id": 35
  },
  {
    "id": 3514007,
    "nome": "Dobrada",
    "estado_id": 35
  },
  {
    "id": 3514106,
    "nome": "Dois Córregos",
    "estado_id": 35
  },
  {
    "id": 3514205,
    "nome": "Dolcinópolis",
    "estado_id": 35
  },
  {
    "id": 3514304,
    "nome": "Dourado",
    "estado_id": 35
  },
  {
    "id": 3514403,
    "nome": "Dracena",
    "estado_id": 35
  },
  {
    "id": 3514502,
    "nome": "Duartina",
    "estado_id": 35
  },
  {
    "id": 3514601,
    "nome": "Dumont",
    "estado_id": 35
  },
  {
    "id": 3514700,
    "nome": "Echaporã",
    "estado_id": 35
  },
  {
    "id": 3514809,
    "nome": "Eldorado",
    "estado_id": 35
  },
  {
    "id": 3514908,
    "nome": "Elias Fausto",
    "estado_id": 35
  },
  {
    "id": 3514924,
    "nome": "Elisiário",
    "estado_id": 35
  },
  {
    "id": 3514957,
    "nome": "Embaúba",
    "estado_id": 35
  },
  {
    "id": 3515004,
    "nome": "Embu das Artes",
    "estado_id": 35
  },
  {
    "id": 3515103,
    "nome": "Embu-Guaçu",
    "estado_id": 35
  },
  {
    "id": 3515129,
    "nome": "Emilianópolis",
    "estado_id": 35
  },
  {
    "id": 3515152,
    "nome": "Engenheiro Coelho",
    "estado_id": 35
  },
  {
    "id": 3515186,
    "nome": "Espírito Santo do Pinhal",
    "estado_id": 35
  },
  {
    "id": 3515194,
    "nome": "Espírito Santo do Turvo",
    "estado_id": 35
  },
  {
    "id": 3515202,
    "nome": "Estrela d'Oeste",
    "estado_id": 35
  },
  {
    "id": 3515301,
    "nome": "Estrela do Norte",
    "estado_id": 35
  },
  {
    "id": 3515350,
    "nome": "Euclides da Cunha Paulista",
    "estado_id": 35
  },
  {
    "id": 3515400,
    "nome": "Fartura",
    "estado_id": 35
  },
  {
    "id": 3515509,
    "nome": "Fernandópolis",
    "estado_id": 35
  },
  {
    "id": 3515608,
    "nome": "Fernando Prestes",
    "estado_id": 35
  },
  {
    "id": 3515657,
    "nome": "Fernão",
    "estado_id": 35
  },
  {
    "id": 3515707,
    "nome": "Ferraz de Vasconcelos",
    "estado_id": 35
  },
  {
    "id": 3515806,
    "nome": "Flora Rica",
    "estado_id": 35
  },
  {
    "id": 3515905,
    "nome": "Floreal",
    "estado_id": 35
  },
  {
    "id": 3516002,
    "nome": "Flórida Paulista",
    "estado_id": 35
  },
  {
    "id": 3516101,
    "nome": "Florínea",
    "estado_id": 35
  },
  {
    "id": 3516200,
    "nome": "Franca",
    "estado_id": 35
  },
  {
    "id": 3516309,
    "nome": "Francisco Morato",
    "estado_id": 35
  },
  {
    "id": 3516408,
    "nome": "Franco da Rocha",
    "estado_id": 35
  },
  {
    "id": 3516507,
    "nome": "Gabriel Monteiro",
    "estado_id": 35
  },
  {
    "id": 3516606,
    "nome": "Gália",
    "estado_id": 35
  },
  {
    "id": 3516705,
    "nome": "Garça",
    "estado_id": 35
  },
  {
    "id": 3516804,
    "nome": "Gastão Vidigal",
    "estado_id": 35
  },
  {
    "id": 3516853,
    "nome": "Gavião Peixoto",
    "estado_id": 35
  },
  {
    "id": 3516903,
    "nome": "General Salgado",
    "estado_id": 35
  },
  {
    "id": 3517000,
    "nome": "Getulina",
    "estado_id": 35
  },
  {
    "id": 3517109,
    "nome": "Glicério",
    "estado_id": 35
  },
  {
    "id": 3517208,
    "nome": "Guaiçara",
    "estado_id": 35
  },
  {
    "id": 3517307,
    "nome": "Guaimbê",
    "estado_id": 35
  },
  {
    "id": 3517406,
    "nome": "Guaíra",
    "estado_id": 35
  },
  {
    "id": 3517505,
    "nome": "Guapiaçu",
    "estado_id": 35
  },
  {
    "id": 3517604,
    "nome": "Guapiara",
    "estado_id": 35
  },
  {
    "id": 3517703,
    "nome": "Guará",
    "estado_id": 35
  },
  {
    "id": 3517802,
    "nome": "Guaraçaí",
    "estado_id": 35
  },
  {
    "id": 3517901,
    "nome": "Guaraci",
    "estado_id": 35
  },
  {
    "id": 3518008,
    "nome": "Guarani d'Oeste",
    "estado_id": 35
  },
  {
    "id": 3518107,
    "nome": "Guarantã",
    "estado_id": 35
  },
  {
    "id": 3518206,
    "nome": "Guararapes",
    "estado_id": 35
  },
  {
    "id": 3518305,
    "nome": "Guararema",
    "estado_id": 35
  },
  {
    "id": 3518404,
    "nome": "Guaratinguetá",
    "estado_id": 35
  },
  {
    "id": 3518503,
    "nome": "Guareí",
    "estado_id": 35
  },
  {
    "id": 3518602,
    "nome": "Guariba",
    "estado_id": 35
  },
  {
    "id": 3518701,
    "nome": "Guarujá",
    "estado_id": 35
  },
  {
    "id": 3518800,
    "nome": "Guarulhos",
    "estado_id": 35
  },
  {
    "id": 3518859,
    "nome": "Guatapará",
    "estado_id": 35
  },
  {
    "id": 3518909,
    "nome": "Guzolândia",
    "estado_id": 35
  },
  {
    "id": 3519006,
    "nome": "Herculândia",
    "estado_id": 35
  },
  {
    "id": 3519055,
    "nome": "Holambra",
    "estado_id": 35
  },
  {
    "id": 3519071,
    "nome": "Hortolândia",
    "estado_id": 35
  },
  {
    "id": 3519105,
    "nome": "Iacanga",
    "estado_id": 35
  },
  {
    "id": 3519204,
    "nome": "Iacri",
    "estado_id": 35
  },
  {
    "id": 3519253,
    "nome": "Iaras",
    "estado_id": 35
  },
  {
    "id": 3519303,
    "nome": "Ibaté",
    "estado_id": 35
  },
  {
    "id": 3519402,
    "nome": "Ibirá",
    "estado_id": 35
  },
  {
    "id": 3519501,
    "nome": "Ibirarema",
    "estado_id": 35
  },
  {
    "id": 3519600,
    "nome": "Ibitinga",
    "estado_id": 35
  },
  {
    "id": 3519709,
    "nome": "Ibiúna",
    "estado_id": 35
  },
  {
    "id": 3519808,
    "nome": "Icém",
    "estado_id": 35
  },
  {
    "id": 3519907,
    "nome": "Iepê",
    "estado_id": 35
  },
  {
    "id": 3520004,
    "nome": "Igaraçu do Tietê",
    "estado_id": 35
  },
  {
    "id": 3520103,
    "nome": "Igarapava",
    "estado_id": 35
  },
  {
    "id": 3520202,
    "nome": "Igaratá",
    "estado_id": 35
  },
  {
    "id": 3520301,
    "nome": "Iguape",
    "estado_id": 35
  },
  {
    "id": 3520400,
    "nome": "Ilhabela",
    "estado_id": 35
  },
  {
    "id": 3520426,
    "nome": "Ilha Comprida",
    "estado_id": 35
  },
  {
    "id": 3520442,
    "nome": "Ilha Solteira",
    "estado_id": 35
  },
  {
    "id": 3520509,
    "nome": "Indaiatuba",
    "estado_id": 35
  },
  {
    "id": 3520608,
    "nome": "Indiana",
    "estado_id": 35
  },
  {
    "id": 3520707,
    "nome": "Indiaporã",
    "estado_id": 35
  },
  {
    "id": 3520806,
    "nome": "Inúbia Paulista",
    "estado_id": 35
  },
  {
    "id": 3520905,
    "nome": "Ipaussu",
    "estado_id": 35
  },
  {
    "id": 3521002,
    "nome": "Iperó",
    "estado_id": 35
  },
  {
    "id": 3521101,
    "nome": "Ipeúna",
    "estado_id": 35
  },
  {
    "id": 3521150,
    "nome": "Ipiguá",
    "estado_id": 35
  },
  {
    "id": 3521200,
    "nome": "Iporanga",
    "estado_id": 35
  },
  {
    "id": 3521309,
    "nome": "Ipuã",
    "estado_id": 35
  },
  {
    "id": 3521408,
    "nome": "Iracemápolis",
    "estado_id": 35
  },
  {
    "id": 3521507,
    "nome": "Irapuã",
    "estado_id": 35
  },
  {
    "id": 3521606,
    "nome": "Irapuru",
    "estado_id": 35
  },
  {
    "id": 3521705,
    "nome": "Itaberá",
    "estado_id": 35
  },
  {
    "id": 3521804,
    "nome": "Itaí",
    "estado_id": 35
  },
  {
    "id": 3521903,
    "nome": "Itajobi",
    "estado_id": 35
  },
  {
    "id": 3522000,
    "nome": "Itaju",
    "estado_id": 35
  },
  {
    "id": 3522109,
    "nome": "Itanhaém",
    "estado_id": 35
  },
  {
    "id": 3522158,
    "nome": "Itaoca",
    "estado_id": 35
  },
  {
    "id": 3522208,
    "nome": "Itapecerica da Serra",
    "estado_id": 35
  },
  {
    "id": 3522307,
    "nome": "Itapetininga",
    "estado_id": 35
  },
  {
    "id": 3522406,
    "nome": "Itapeva",
    "estado_id": 35
  },
  {
    "id": 3522505,
    "nome": "Itapevi",
    "estado_id": 35
  },
  {
    "id": 3522604,
    "nome": "Itapira",
    "estado_id": 35
  },
  {
    "id": 3522653,
    "nome": "Itapirapuã Paulista",
    "estado_id": 35
  },
  {
    "id": 3522703,
    "nome": "Itápolis",
    "estado_id": 35
  },
  {
    "id": 3522802,
    "nome": "Itaporanga",
    "estado_id": 35
  },
  {
    "id": 3522901,
    "nome": "Itapuí",
    "estado_id": 35
  },
  {
    "id": 3523008,
    "nome": "Itapura",
    "estado_id": 35
  },
  {
    "id": 3523107,
    "nome": "Itaquaquecetuba",
    "estado_id": 35
  },
  {
    "id": 3523206,
    "nome": "Itararé",
    "estado_id": 35
  },
  {
    "id": 3523305,
    "nome": "Itariri",
    "estado_id": 35
  },
  {
    "id": 3523404,
    "nome": "Itatiba",
    "estado_id": 35
  },
  {
    "id": 3523503,
    "nome": "Itatinga",
    "estado_id": 35
  },
  {
    "id": 3523602,
    "nome": "Itirapina",
    "estado_id": 35
  },
  {
    "id": 3523701,
    "nome": "Itirapuã",
    "estado_id": 35
  },
  {
    "id": 3523800,
    "nome": "Itobi",
    "estado_id": 35
  },
  {
    "id": 3523909,
    "nome": "Itu",
    "estado_id": 35
  },
  {
    "id": 3524006,
    "nome": "Itupeva",
    "estado_id": 35
  },
  {
    "id": 3524105,
    "nome": "Ituverava",
    "estado_id": 35
  },
  {
    "id": 3524204,
    "nome": "Jaborandi",
    "estado_id": 35
  },
  {
    "id": 3524303,
    "nome": "Jaboticabal",
    "estado_id": 35
  },
  {
    "id": 3524402,
    "nome": "Jacareí",
    "estado_id": 35
  },
  {
    "id": 3524501,
    "nome": "Jaci",
    "estado_id": 35
  },
  {
    "id": 3524600,
    "nome": "Jacupiranga",
    "estado_id": 35
  },
  {
    "id": 3524709,
    "nome": "Jaguariúna",
    "estado_id": 35
  },
  {
    "id": 3524808,
    "nome": "Jales",
    "estado_id": 35
  },
  {
    "id": 3524907,
    "nome": "Jambeiro",
    "estado_id": 35
  },
  {
    "id": 3525003,
    "nome": "Jandira",
    "estado_id": 35
  },
  {
    "id": 3525102,
    "nome": "Jardinópolis",
    "estado_id": 35
  },
  {
    "id": 3525201,
    "nome": "Jarinu",
    "estado_id": 35
  },
  {
    "id": 3525300,
    "nome": "Jaú",
    "estado_id": 35
  },
  {
    "id": 3525409,
    "nome": "Jeriquara",
    "estado_id": 35
  },
  {
    "id": 3525508,
    "nome": "Joanópolis",
    "estado_id": 35
  },
  {
    "id": 3525607,
    "nome": "João Ramalho",
    "estado_id": 35
  },
  {
    "id": 3525706,
    "nome": "José Bonifácio",
    "estado_id": 35
  },
  {
    "id": 3525805,
    "nome": "Júlio Mesquita",
    "estado_id": 35
  },
  {
    "id": 3525854,
    "nome": "Jumirim",
    "estado_id": 35
  },
  {
    "id": 3525904,
    "nome": "Jundiaí",
    "estado_id": 35
  },
  {
    "id": 3526001,
    "nome": "Junqueirópolis",
    "estado_id": 35
  },
  {
    "id": 3526100,
    "nome": "Juquiá",
    "estado_id": 35
  },
  {
    "id": 3526209,
    "nome": "Juquitiba",
    "estado_id": 35
  },
  {
    "id": 3526308,
    "nome": "Lagoinha",
    "estado_id": 35
  },
  {
    "id": 3526407,
    "nome": "Laranjal Paulista",
    "estado_id": 35
  },
  {
    "id": 3526506,
    "nome": "Lavínia",
    "estado_id": 35
  },
  {
    "id": 3526605,
    "nome": "Lavrinhas",
    "estado_id": 35
  },
  {
    "id": 3526704,
    "nome": "Leme",
    "estado_id": 35
  },
  {
    "id": 3526803,
    "nome": "Lençóis Paulista",
    "estado_id": 35
  },
  {
    "id": 3526902,
    "nome": "Limeira",
    "estado_id": 35
  },
  {
    "id": 3527009,
    "nome": "Lindóia",
    "estado_id": 35
  },
  {
    "id": 3527108,
    "nome": "Lins",
    "estado_id": 35
  },
  {
    "id": 3527207,
    "nome": "Lorena",
    "estado_id": 35
  },
  {
    "id": 3527256,
    "nome": "Lourdes",
    "estado_id": 35
  },
  {
    "id": 3527306,
    "nome": "Louveira",
    "estado_id": 35
  },
  {
    "id": 3527405,
    "nome": "Lucélia",
    "estado_id": 35
  },
  {
    "id": 3527504,
    "nome": "Lucianópolis",
    "estado_id": 35
  },
  {
    "id": 3527603,
    "nome": "Luís Antônio",
    "estado_id": 35
  },
  {
    "id": 3527702,
    "nome": "Luiziânia",
    "estado_id": 35
  },
  {
    "id": 3527801,
    "nome": "Lupércio",
    "estado_id": 35
  },
  {
    "id": 3527900,
    "nome": "Lutécia",
    "estado_id": 35
  },
  {
    "id": 3528007,
    "nome": "Macatuba",
    "estado_id": 35
  },
  {
    "id": 3528106,
    "nome": "Macaubal",
    "estado_id": 35
  },
  {
    "id": 3528205,
    "nome": "Macedônia",
    "estado_id": 35
  },
  {
    "id": 3528304,
    "nome": "Magda",
    "estado_id": 35
  },
  {
    "id": 3528403,
    "nome": "Mairinque",
    "estado_id": 35
  },
  {
    "id": 3528502,
    "nome": "Mairiporã",
    "estado_id": 35
  },
  {
    "id": 3528601,
    "nome": "Manduri",
    "estado_id": 35
  },
  {
    "id": 3528700,
    "nome": "Marabá Paulista",
    "estado_id": 35
  },
  {
    "id": 3528809,
    "nome": "Maracaí",
    "estado_id": 35
  },
  {
    "id": 3528858,
    "nome": "Marapoama",
    "estado_id": 35
  },
  {
    "id": 3528908,
    "nome": "Mariápolis",
    "estado_id": 35
  },
  {
    "id": 3529005,
    "nome": "Marília",
    "estado_id": 35
  },
  {
    "id": 3529104,
    "nome": "Marinópolis",
    "estado_id": 35
  },
  {
    "id": 3529203,
    "nome": "Martinópolis",
    "estado_id": 35
  },
  {
    "id": 3529302,
    "nome": "Matão",
    "estado_id": 35
  },
  {
    "id": 3529401,
    "nome": "Mauá",
    "estado_id": 35
  },
  {
    "id": 3529500,
    "nome": "Mendonça",
    "estado_id": 35
  },
  {
    "id": 3529609,
    "nome": "Meridiano",
    "estado_id": 35
  },
  {
    "id": 3529658,
    "nome": "Mesópolis",
    "estado_id": 35
  },
  {
    "id": 3529708,
    "nome": "Miguelópolis",
    "estado_id": 35
  },
  {
    "id": 3529807,
    "nome": "Mineiros do Tietê",
    "estado_id": 35
  },
  {
    "id": 3529906,
    "nome": "Miracatu",
    "estado_id": 35
  },
  {
    "id": 3530003,
    "nome": "Mira Estrela",
    "estado_id": 35
  },
  {
    "id": 3530102,
    "nome": "Mirandópolis",
    "estado_id": 35
  },
  {
    "id": 3530201,
    "nome": "Mirante do Paranapanema",
    "estado_id": 35
  },
  {
    "id": 3530300,
    "nome": "Mirassol",
    "estado_id": 35
  },
  {
    "id": 3530409,
    "nome": "Mirassolândia",
    "estado_id": 35
  },
  {
    "id": 3530508,
    "nome": "Mococa",
    "estado_id": 35
  },
  {
    "id": 3530607,
    "nome": "Mogi das Cruzes",
    "estado_id": 35
  },
  {
    "id": 3530706,
    "nome": "Mogi Guaçu",
    "estado_id": 35
  },
  {
    "id": 3530805,
    "nome": "Mogi Mirim",
    "estado_id": 35
  },
  {
    "id": 3530904,
    "nome": "Mombuca",
    "estado_id": 35
  },
  {
    "id": 3531001,
    "nome": "Monções",
    "estado_id": 35
  },
  {
    "id": 3531100,
    "nome": "Mongaguá",
    "estado_id": 35
  },
  {
    "id": 3531209,
    "nome": "Monte Alegre do Sul",
    "estado_id": 35
  },
  {
    "id": 3531308,
    "nome": "Monte Alto",
    "estado_id": 35
  },
  {
    "id": 3531407,
    "nome": "Monte Aprazível",
    "estado_id": 35
  },
  {
    "id": 3531506,
    "nome": "Monte Azul Paulista",
    "estado_id": 35
  },
  {
    "id": 3531605,
    "nome": "Monte Castelo",
    "estado_id": 35
  },
  {
    "id": 3531704,
    "nome": "Monteiro Lobato",
    "estado_id": 35
  },
  {
    "id": 3531803,
    "nome": "Monte Mor",
    "estado_id": 35
  },
  {
    "id": 3531902,
    "nome": "Morro Agudo",
    "estado_id": 35
  },
  {
    "id": 3532009,
    "nome": "Morungaba",
    "estado_id": 35
  },
  {
    "id": 3532058,
    "nome": "Motuca",
    "estado_id": 35
  },
  {
    "id": 3532108,
    "nome": "Murutinga do Sul",
    "estado_id": 35
  },
  {
    "id": 3532157,
    "nome": "Nantes",
    "estado_id": 35
  },
  {
    "id": 3532207,
    "nome": "Narandiba",
    "estado_id": 35
  },
  {
    "id": 3532306,
    "nome": "Natividade da Serra",
    "estado_id": 35
  },
  {
    "id": 3532405,
    "nome": "Nazaré Paulista",
    "estado_id": 35
  },
  {
    "id": 3532504,
    "nome": "Neves Paulista",
    "estado_id": 35
  },
  {
    "id": 3532603,
    "nome": "Nhandeara",
    "estado_id": 35
  },
  {
    "id": 3532702,
    "nome": "Nipoã",
    "estado_id": 35
  },
  {
    "id": 3532801,
    "nome": "Nova Aliança",
    "estado_id": 35
  },
  {
    "id": 3532827,
    "nome": "Nova Campina",
    "estado_id": 35
  },
  {
    "id": 3532843,
    "nome": "Nova Canaã Paulista",
    "estado_id": 35
  },
  {
    "id": 3532868,
    "nome": "Nova Castilho",
    "estado_id": 35
  },
  {
    "id": 3532900,
    "nome": "Nova Europa",
    "estado_id": 35
  },
  {
    "id": 3533007,
    "nome": "Nova Granada",
    "estado_id": 35
  },
  {
    "id": 3533106,
    "nome": "Nova Guataporanga",
    "estado_id": 35
  },
  {
    "id": 3533205,
    "nome": "Nova Independência",
    "estado_id": 35
  },
  {
    "id": 3533254,
    "nome": "Novais",
    "estado_id": 35
  },
  {
    "id": 3533304,
    "nome": "Nova Luzitânia",
    "estado_id": 35
  },
  {
    "id": 3533403,
    "nome": "Nova Odessa",
    "estado_id": 35
  },
  {
    "id": 3533502,
    "nome": "Novo Horizonte",
    "estado_id": 35
  },
  {
    "id": 3533601,
    "nome": "Nuporanga",
    "estado_id": 35
  },
  {
    "id": 3533700,
    "nome": "Ocauçu",
    "estado_id": 35
  },
  {
    "id": 3533809,
    "nome": "Óleo",
    "estado_id": 35
  },
  {
    "id": 3533908,
    "nome": "Olímpia",
    "estado_id": 35
  },
  {
    "id": 3534005,
    "nome": "Onda Verde",
    "estado_id": 35
  },
  {
    "id": 3534104,
    "nome": "Oriente",
    "estado_id": 35
  },
  {
    "id": 3534203,
    "nome": "Orindiúva",
    "estado_id": 35
  },
  {
    "id": 3534302,
    "nome": "Orlândia",
    "estado_id": 35
  },
  {
    "id": 3534401,
    "nome": "Osasco",
    "estado_id": 35
  },
  {
    "id": 3534500,
    "nome": "Oscar Bressane",
    "estado_id": 35
  },
  {
    "id": 3534609,
    "nome": "Osvaldo Cruz",
    "estado_id": 35
  },
  {
    "id": 3534708,
    "nome": "Ourinhos",
    "estado_id": 35
  },
  {
    "id": 3534757,
    "nome": "Ouroeste",
    "estado_id": 35
  },
  {
    "id": 3534807,
    "nome": "Ouro Verde",
    "estado_id": 35
  },
  {
    "id": 3534906,
    "nome": "Pacaembu",
    "estado_id": 35
  },
  {
    "id": 3535002,
    "nome": "Palestina",
    "estado_id": 35
  },
  {
    "id": 3535101,
    "nome": "Palmares Paulista",
    "estado_id": 35
  },
  {
    "id": 3535200,
    "nome": "Palmeira d'Oeste",
    "estado_id": 35
  },
  {
    "id": 3535309,
    "nome": "Palmital",
    "estado_id": 35
  },
  {
    "id": 3535408,
    "nome": "Panorama",
    "estado_id": 35
  },
  {
    "id": 3535507,
    "nome": "Paraguaçu Paulista",
    "estado_id": 35
  },
  {
    "id": 3535606,
    "nome": "Paraibuna",
    "estado_id": 35
  },
  {
    "id": 3535705,
    "nome": "Paraíso",
    "estado_id": 35
  },
  {
    "id": 3535804,
    "nome": "Paranapanema",
    "estado_id": 35
  },
  {
    "id": 3535903,
    "nome": "Paranapuã",
    "estado_id": 35
  },
  {
    "id": 3536000,
    "nome": "Parapuã",
    "estado_id": 35
  },
  {
    "id": 3536109,
    "nome": "Pardinho",
    "estado_id": 35
  },
  {
    "id": 3536208,
    "nome": "Pariquera-Açu",
    "estado_id": 35
  },
  {
    "id": 3536257,
    "nome": "Parisi",
    "estado_id": 35
  },
  {
    "id": 3536307,
    "nome": "Patrocínio Paulista",
    "estado_id": 35
  },
  {
    "id": 3536406,
    "nome": "Paulicéia",
    "estado_id": 35
  },
  {
    "id": 3536505,
    "nome": "Paulínia",
    "estado_id": 35
  },
  {
    "id": 3536570,
    "nome": "Paulistânia",
    "estado_id": 35
  },
  {
    "id": 3536604,
    "nome": "Paulo de Faria",
    "estado_id": 35
  },
  {
    "id": 3536703,
    "nome": "Pederneiras",
    "estado_id": 35
  },
  {
    "id": 3536802,
    "nome": "Pedra Bela",
    "estado_id": 35
  },
  {
    "id": 3536901,
    "nome": "Pedranópolis",
    "estado_id": 35
  },
  {
    "id": 3537008,
    "nome": "Pedregulho",
    "estado_id": 35
  },
  {
    "id": 3537107,
    "nome": "Pedreira",
    "estado_id": 35
  },
  {
    "id": 3537156,
    "nome": "Pedrinhas Paulista",
    "estado_id": 35
  },
  {
    "id": 3537206,
    "nome": "Pedro de Toledo",
    "estado_id": 35
  },
  {
    "id": 3537305,
    "nome": "Penápolis",
    "estado_id": 35
  },
  {
    "id": 3537404,
    "nome": "Pereira Barreto",
    "estado_id": 35
  },
  {
    "id": 3537503,
    "nome": "Pereiras",
    "estado_id": 35
  },
  {
    "id": 3537602,
    "nome": "Peruíbe",
    "estado_id": 35
  },
  {
    "id": 3537701,
    "nome": "Piacatu",
    "estado_id": 35
  },
  {
    "id": 3537800,
    "nome": "Piedade",
    "estado_id": 35
  },
  {
    "id": 3537909,
    "nome": "Pilar do Sul",
    "estado_id": 35
  },
  {
    "id": 3538006,
    "nome": "Pindamonhangaba",
    "estado_id": 35
  },
  {
    "id": 3538105,
    "nome": "Pindorama",
    "estado_id": 35
  },
  {
    "id": 3538204,
    "nome": "Pinhalzinho",
    "estado_id": 35
  },
  {
    "id": 3538303,
    "nome": "Piquerobi",
    "estado_id": 35
  },
  {
    "id": 3538501,
    "nome": "Piquete",
    "estado_id": 35
  },
  {
    "id": 3538600,
    "nome": "Piracaia",
    "estado_id": 35
  },
  {
    "id": 3538709,
    "nome": "Piracicaba",
    "estado_id": 35
  },
  {
    "id": 3538808,
    "nome": "Piraju",
    "estado_id": 35
  },
  {
    "id": 3538907,
    "nome": "Pirajuí",
    "estado_id": 35
  },
  {
    "id": 3539004,
    "nome": "Pirangi",
    "estado_id": 35
  },
  {
    "id": 3539103,
    "nome": "Pirapora do Bom Jesus",
    "estado_id": 35
  },
  {
    "id": 3539202,
    "nome": "Pirapozinho",
    "estado_id": 35
  },
  {
    "id": 3539301,
    "nome": "Pirassununga",
    "estado_id": 35
  },
  {
    "id": 3539400,
    "nome": "Piratininga",
    "estado_id": 35
  },
  {
    "id": 3539509,
    "nome": "Pitangueiras",
    "estado_id": 35
  },
  {
    "id": 3539608,
    "nome": "Planalto",
    "estado_id": 35
  },
  {
    "id": 3539707,
    "nome": "Platina",
    "estado_id": 35
  },
  {
    "id": 3539806,
    "nome": "Poá",
    "estado_id": 35
  },
  {
    "id": 3539905,
    "nome": "Poloni",
    "estado_id": 35
  },
  {
    "id": 3540002,
    "nome": "Pompéia",
    "estado_id": 35
  },
  {
    "id": 3540101,
    "nome": "Pongaí",
    "estado_id": 35
  },
  {
    "id": 3540200,
    "nome": "Pontal",
    "estado_id": 35
  },
  {
    "id": 3540259,
    "nome": "Pontalinda",
    "estado_id": 35
  },
  {
    "id": 3540309,
    "nome": "Pontes Gestal",
    "estado_id": 35
  },
  {
    "id": 3540408,
    "nome": "Populina",
    "estado_id": 35
  },
  {
    "id": 3540507,
    "nome": "Porangaba",
    "estado_id": 35
  },
  {
    "id": 3540606,
    "nome": "Porto Feliz",
    "estado_id": 35
  },
  {
    "id": 3540705,
    "nome": "Porto Ferreira",
    "estado_id": 35
  },
  {
    "id": 3540754,
    "nome": "Potim",
    "estado_id": 35
  },
  {
    "id": 3540804,
    "nome": "Potirendaba",
    "estado_id": 35
  },
  {
    "id": 3540853,
    "nome": "Pracinha",
    "estado_id": 35
  },
  {
    "id": 3540903,
    "nome": "Pradópolis",
    "estado_id": 35
  },
  {
    "id": 3541000,
    "nome": "Praia Grande",
    "estado_id": 35
  },
  {
    "id": 3541059,
    "nome": "Pratânia",
    "estado_id": 35
  },
  {
    "id": 3541109,
    "nome": "Presidente Alves",
    "estado_id": 35
  },
  {
    "id": 3541208,
    "nome": "Presidente Bernardes",
    "estado_id": 35
  },
  {
    "id": 3541307,
    "nome": "Presidente Epitácio",
    "estado_id": 35
  },
  {
    "id": 3541406,
    "nome": "Presidente Prudente",
    "estado_id": 35
  },
  {
    "id": 3541505,
    "nome": "Presidente Venceslau",
    "estado_id": 35
  },
  {
    "id": 3541604,
    "nome": "Promissão",
    "estado_id": 35
  },
  {
    "id": 3541653,
    "nome": "Quadra",
    "estado_id": 35
  },
  {
    "id": 3541703,
    "nome": "Quatá",
    "estado_id": 35
  },
  {
    "id": 3541802,
    "nome": "Queiroz",
    "estado_id": 35
  },
  {
    "id": 3541901,
    "nome": "Queluz",
    "estado_id": 35
  },
  {
    "id": 3542008,
    "nome": "Quintana",
    "estado_id": 35
  },
  {
    "id": 3542107,
    "nome": "Rafard",
    "estado_id": 35
  },
  {
    "id": 3542206,
    "nome": "Rancharia",
    "estado_id": 35
  },
  {
    "id": 3542305,
    "nome": "Redenção da Serra",
    "estado_id": 35
  },
  {
    "id": 3542404,
    "nome": "Regente Feijó",
    "estado_id": 35
  },
  {
    "id": 3542503,
    "nome": "Reginópolis",
    "estado_id": 35
  },
  {
    "id": 3542602,
    "nome": "Registro",
    "estado_id": 35
  },
  {
    "id": 3542701,
    "nome": "Restinga",
    "estado_id": 35
  },
  {
    "id": 3542800,
    "nome": "Ribeira",
    "estado_id": 35
  },
  {
    "id": 3542909,
    "nome": "Ribeirão Bonito",
    "estado_id": 35
  },
  {
    "id": 3543006,
    "nome": "Ribeirão Branco",
    "estado_id": 35
  },
  {
    "id": 3543105,
    "nome": "Ribeirão Corrente",
    "estado_id": 35
  },
  {
    "id": 3543204,
    "nome": "Ribeirão do Sul",
    "estado_id": 35
  },
  {
    "id": 3543238,
    "nome": "Ribeirão dos Índios",
    "estado_id": 35
  },
  {
    "id": 3543253,
    "nome": "Ribeirão Grande",
    "estado_id": 35
  },
  {
    "id": 3543303,
    "nome": "Ribeirão Pires",
    "estado_id": 35
  },
  {
    "id": 3543402,
    "nome": "Ribeirão Preto",
    "estado_id": 35
  },
  {
    "id": 3543501,
    "nome": "Riversul",
    "estado_id": 35
  },
  {
    "id": 3543600,
    "nome": "Rifaina",
    "estado_id": 35
  },
  {
    "id": 3543709,
    "nome": "Rincão",
    "estado_id": 35
  },
  {
    "id": 3543808,
    "nome": "Rinópolis",
    "estado_id": 35
  },
  {
    "id": 3543907,
    "nome": "Rio Claro",
    "estado_id": 35
  },
  {
    "id": 3544004,
    "nome": "Rio das Pedras",
    "estado_id": 35
  },
  {
    "id": 3544103,
    "nome": "Rio Grande da Serra",
    "estado_id": 35
  },
  {
    "id": 3544202,
    "nome": "Riolândia",
    "estado_id": 35
  },
  {
    "id": 3544251,
    "nome": "Rosana",
    "estado_id": 35
  },
  {
    "id": 3544301,
    "nome": "Roseira",
    "estado_id": 35
  },
  {
    "id": 3544400,
    "nome": "Rubiácea",
    "estado_id": 35
  },
  {
    "id": 3544509,
    "nome": "Rubinéia",
    "estado_id": 35
  },
  {
    "id": 3544608,
    "nome": "Sabino",
    "estado_id": 35
  },
  {
    "id": 3544707,
    "nome": "Sagres",
    "estado_id": 35
  },
  {
    "id": 3544806,
    "nome": "Sales",
    "estado_id": 35
  },
  {
    "id": 3544905,
    "nome": "Sales Oliveira",
    "estado_id": 35
  },
  {
    "id": 3545001,
    "nome": "Salesópolis",
    "estado_id": 35
  },
  {
    "id": 3545100,
    "nome": "Salmourão",
    "estado_id": 35
  },
  {
    "id": 3545159,
    "nome": "Saltinho",
    "estado_id": 35
  },
  {
    "id": 3545209,
    "nome": "Salto",
    "estado_id": 35
  },
  {
    "id": 3545308,
    "nome": "Salto de Pirapora",
    "estado_id": 35
  },
  {
    "id": 3545407,
    "nome": "Salto Grande",
    "estado_id": 35
  },
  {
    "id": 3545506,
    "nome": "Sandovalina",
    "estado_id": 35
  },
  {
    "id": 3545605,
    "nome": "Santa Adélia",
    "estado_id": 35
  },
  {
    "id": 3545704,
    "nome": "Santa Albertina",
    "estado_id": 35
  },
  {
    "id": 3545803,
    "nome": "Santa Bárbara d'Oeste",
    "estado_id": 35
  },
  {
    "id": 3546009,
    "nome": "Santa Branca",
    "estado_id": 35
  },
  {
    "id": 3546108,
    "nome": "Santa Clara d'Oeste",
    "estado_id": 35
  },
  {
    "id": 3546207,
    "nome": "Santa Cruz da Conceição",
    "estado_id": 35
  },
  {
    "id": 3546256,
    "nome": "Santa Cruz da Esperança",
    "estado_id": 35
  },
  {
    "id": 3546306,
    "nome": "Santa Cruz das Palmeiras",
    "estado_id": 35
  },
  {
    "id": 3546405,
    "nome": "Santa Cruz do Rio Pardo",
    "estado_id": 35
  },
  {
    "id": 3546504,
    "nome": "Santa Ernestina",
    "estado_id": 35
  },
  {
    "id": 3546603,
    "nome": "Santa Fé do Sul",
    "estado_id": 35
  },
  {
    "id": 3546702,
    "nome": "Santa Gertrudes",
    "estado_id": 35
  },
  {
    "id": 3546801,
    "nome": "Santa Isabel",
    "estado_id": 35
  },
  {
    "id": 3546900,
    "nome": "Santa Lúcia",
    "estado_id": 35
  },
  {
    "id": 3547007,
    "nome": "Santa Maria da Serra",
    "estado_id": 35
  },
  {
    "id": 3547106,
    "nome": "Santa Mercedes",
    "estado_id": 35
  },
  {
    "id": 3547205,
    "nome": "Santana da Ponte Pensa",
    "estado_id": 35
  },
  {
    "id": 3547304,
    "nome": "Santana de Parnaíba",
    "estado_id": 35
  },
  {
    "id": 3547403,
    "nome": "Santa Rita d'Oeste",
    "estado_id": 35
  },
  {
    "id": 3547502,
    "nome": "Santa Rita do Passa Quatro",
    "estado_id": 35
  },
  {
    "id": 3547601,
    "nome": "Santa Rosa de Viterbo",
    "estado_id": 35
  },
  {
    "id": 3547650,
    "nome": "Santa Salete",
    "estado_id": 35
  },
  {
    "id": 3547700,
    "nome": "Santo Anastácio",
    "estado_id": 35
  },
  {
    "id": 3547809,
    "nome": "Santo André",
    "estado_id": 35
  },
  {
    "id": 3547908,
    "nome": "Santo Antônio da Alegria",
    "estado_id": 35
  },
  {
    "id": 3548005,
    "nome": "Santo Antônio de Posse",
    "estado_id": 35
  },
  {
    "id": 3548054,
    "nome": "Santo Antônio do Aracanguá",
    "estado_id": 35
  },
  {
    "id": 3548104,
    "nome": "Santo Antônio do Jardim",
    "estado_id": 35
  },
  {
    "id": 3548203,
    "nome": "Santo Antônio do Pinhal",
    "estado_id": 35
  },
  {
    "id": 3548302,
    "nome": "Santo Expedito",
    "estado_id": 35
  },
  {
    "id": 3548401,
    "nome": "Santópolis do Aguapeí",
    "estado_id": 35
  },
  {
    "id": 3548500,
    "nome": "Santos",
    "estado_id": 35
  },
  {
    "id": 3548609,
    "nome": "São Bento do Sapucaí",
    "estado_id": 35
  },
  {
    "id": 3548708,
    "nome": "São Bernardo do Campo",
    "estado_id": 35
  },
  {
    "id": 3548807,
    "nome": "São Caetano do Sul",
    "estado_id": 35
  },
  {
    "id": 3548906,
    "nome": "São Carlos",
    "estado_id": 35
  },
  {
    "id": 3549003,
    "nome": "São Francisco",
    "estado_id": 35
  },
  {
    "id": 3549102,
    "nome": "São João da Boa Vista",
    "estado_id": 35
  },
  {
    "id": 3549201,
    "nome": "São João das Duas Pontes",
    "estado_id": 35
  },
  {
    "id": 3549250,
    "nome": "São João de Iracema",
    "estado_id": 35
  },
  {
    "id": 3549300,
    "nome": "São João do Pau d'Alho",
    "estado_id": 35
  },
  {
    "id": 3549409,
    "nome": "São Joaquim da Barra",
    "estado_id": 35
  },
  {
    "id": 3549508,
    "nome": "São José da Bela Vista",
    "estado_id": 35
  },
  {
    "id": 3549607,
    "nome": "São José do Barreiro",
    "estado_id": 35
  },
  {
    "id": 3549706,
    "nome": "São José do Rio Pardo",
    "estado_id": 35
  },
  {
    "id": 3549805,
    "nome": "São José do Rio Preto",
    "estado_id": 35
  },
  {
    "id": 3549904,
    "nome": "São José dos Campos",
    "estado_id": 35
  },
  {
    "id": 3549953,
    "nome": "São Lourenço da Serra",
    "estado_id": 35
  },
  {
    "id": 3550001,
    "nome": "São Luiz do Paraitinga",
    "estado_id": 35
  },
  {
    "id": 3550100,
    "nome": "São Manuel",
    "estado_id": 35
  },
  {
    "id": 3550209,
    "nome": "São Miguel Arcanjo",
    "estado_id": 35
  },
  {
    "id": 3550308,
    "nome": "São Paulo",
    "estado_id": 35
  },
  {
    "id": 3550407,
    "nome": "São Pedro",
    "estado_id": 35
  },
  {
    "id": 3550506,
    "nome": "São Pedro do Turvo",
    "estado_id": 35
  },
  {
    "id": 3550605,
    "nome": "São Roque",
    "estado_id": 35
  },
  {
    "id": 3550704,
    "nome": "São Sebastião",
    "estado_id": 35
  },
  {
    "id": 3550803,
    "nome": "São Sebastião da Grama",
    "estado_id": 35
  },
  {
    "id": 3550902,
    "nome": "São Simão",
    "estado_id": 35
  },
  {
    "id": 3551009,
    "nome": "São Vicente",
    "estado_id": 35
  },
  {
    "id": 3551108,
    "nome": "Sarapuí",
    "estado_id": 35
  },
  {
    "id": 3551207,
    "nome": "Sarutaiá",
    "estado_id": 35
  },
  {
    "id": 3551306,
    "nome": "Sebastianópolis do Sul",
    "estado_id": 35
  },
  {
    "id": 3551405,
    "nome": "Serra Azul",
    "estado_id": 35
  },
  {
    "id": 3551504,
    "nome": "Serrana",
    "estado_id": 35
  },
  {
    "id": 3551603,
    "nome": "Serra Negra",
    "estado_id": 35
  },
  {
    "id": 3551702,
    "nome": "Sertãozinho",
    "estado_id": 35
  },
  {
    "id": 3551801,
    "nome": "Sete Barras",
    "estado_id": 35
  },
  {
    "id": 3551900,
    "nome": "Severínia",
    "estado_id": 35
  },
  {
    "id": 3552007,
    "nome": "Silveiras",
    "estado_id": 35
  },
  {
    "id": 3552106,
    "nome": "Socorro",
    "estado_id": 35
  },
  {
    "id": 3552205,
    "nome": "Sorocaba",
    "estado_id": 35
  },
  {
    "id": 3552304,
    "nome": "Sud Mennucci",
    "estado_id": 35
  },
  {
    "id": 3552403,
    "nome": "Sumaré",
    "estado_id": 35
  },
  {
    "id": 3552502,
    "nome": "Suzano",
    "estado_id": 35
  },
  {
    "id": 3552551,
    "nome": "Suzanápolis",
    "estado_id": 35
  },
  {
    "id": 3552601,
    "nome": "Tabapuã",
    "estado_id": 35
  },
  {
    "id": 3552700,
    "nome": "Tabatinga",
    "estado_id": 35
  },
  {
    "id": 3552809,
    "nome": "Taboão da Serra",
    "estado_id": 35
  },
  {
    "id": 3552908,
    "nome": "Taciba",
    "estado_id": 35
  },
  {
    "id": 3553005,
    "nome": "Taguaí",
    "estado_id": 35
  },
  {
    "id": 3553104,
    "nome": "Taiaçu",
    "estado_id": 35
  },
  {
    "id": 3553203,
    "nome": "Taiúva",
    "estado_id": 35
  },
  {
    "id": 3553302,
    "nome": "Tambaú",
    "estado_id": 35
  },
  {
    "id": 3553401,
    "nome": "Tanabi",
    "estado_id": 35
  },
  {
    "id": 3553500,
    "nome": "Tapiraí",
    "estado_id": 35
  },
  {
    "id": 3553609,
    "nome": "Tapiratiba",
    "estado_id": 35
  },
  {
    "id": 3553658,
    "nome": "Taquaral",
    "estado_id": 35
  },
  {
    "id": 3553708,
    "nome": "Taquaritinga",
    "estado_id": 35
  },
  {
    "id": 3553807,
    "nome": "Taquarituba",
    "estado_id": 35
  },
  {
    "id": 3553856,
    "nome": "Taquarivaí",
    "estado_id": 35
  },
  {
    "id": 3553906,
    "nome": "Tarabai",
    "estado_id": 35
  },
  {
    "id": 3553955,
    "nome": "Tarumã",
    "estado_id": 35
  },
  {
    "id": 3554003,
    "nome": "Tatuí",
    "estado_id": 35
  },
  {
    "id": 3554102,
    "nome": "Taubaté",
    "estado_id": 35
  },
  {
    "id": 3554201,
    "nome": "Tejupá",
    "estado_id": 35
  },
  {
    "id": 3554300,
    "nome": "Teodoro Sampaio",
    "estado_id": 35
  },
  {
    "id": 3554409,
    "nome": "Terra Roxa",
    "estado_id": 35
  },
  {
    "id": 3554508,
    "nome": "Tietê",
    "estado_id": 35
  },
  {
    "id": 3554607,
    "nome": "Timburi",
    "estado_id": 35
  },
  {
    "id": 3554656,
    "nome": "Torre de Pedra",
    "estado_id": 35
  },
  {
    "id": 3554706,
    "nome": "Torrinha",
    "estado_id": 35
  },
  {
    "id": 3554755,
    "nome": "Trabiju",
    "estado_id": 35
  },
  {
    "id": 3554805,
    "nome": "Tremembé",
    "estado_id": 35
  },
  {
    "id": 3554904,
    "nome": "Três Fronteiras",
    "estado_id": 35
  },
  {
    "id": 3554953,
    "nome": "Tuiuti",
    "estado_id": 35
  },
  {
    "id": 3555000,
    "nome": "Tupã",
    "estado_id": 35
  },
  {
    "id": 3555109,
    "nome": "Tupi Paulista",
    "estado_id": 35
  },
  {
    "id": 3555208,
    "nome": "Turiúba",
    "estado_id": 35
  },
  {
    "id": 3555307,
    "nome": "Turmalina",
    "estado_id": 35
  },
  {
    "id": 3555356,
    "nome": "Ubarana",
    "estado_id": 35
  },
  {
    "id": 3555406,
    "nome": "Ubatuba",
    "estado_id": 35
  },
  {
    "id": 3555505,
    "nome": "Ubirajara",
    "estado_id": 35
  },
  {
    "id": 3555604,
    "nome": "Uchoa",
    "estado_id": 35
  },
  {
    "id": 3555703,
    "nome": "União Paulista",
    "estado_id": 35
  },
  {
    "id": 3555802,
    "nome": "Urânia",
    "estado_id": 35
  },
  {
    "id": 3555901,
    "nome": "Uru",
    "estado_id": 35
  },
  {
    "id": 3556008,
    "nome": "Urupês",
    "estado_id": 35
  },
  {
    "id": 3556107,
    "nome": "Valentim Gentil",
    "estado_id": 35
  },
  {
    "id": 3556206,
    "nome": "Valinhos",
    "estado_id": 35
  },
  {
    "id": 3556305,
    "nome": "Valparaíso",
    "estado_id": 35
  },
  {
    "id": 3556354,
    "nome": "Vargem",
    "estado_id": 35
  },
  {
    "id": 3556404,
    "nome": "Vargem Grande do Sul",
    "estado_id": 35
  },
  {
    "id": 3556453,
    "nome": "Vargem Grande Paulista",
    "estado_id": 35
  },
  {
    "id": 3556503,
    "nome": "Várzea Paulista",
    "estado_id": 35
  },
  {
    "id": 3556602,
    "nome": "Vera Cruz",
    "estado_id": 35
  },
  {
    "id": 3556701,
    "nome": "Vinhedo",
    "estado_id": 35
  },
  {
    "id": 3556800,
    "nome": "Viradouro",
    "estado_id": 35
  },
  {
    "id": 3556909,
    "nome": "Vista Alegre do Alto",
    "estado_id": 35
  },
  {
    "id": 3556958,
    "nome": "Vitória Brasil",
    "estado_id": 35
  },
  {
    "id": 3557006,
    "nome": "Votorantim",
    "estado_id": 35
  },
  {
    "id": 3557105,
    "nome": "Votuporanga",
    "estado_id": 35
  },
  {
    "id": 3557154,
    "nome": "Zacarias",
    "estado_id": 35
  },
  {
    "id": 3557204,
    "nome": "Chavantes",
    "estado_id": 35
  },
  {
    "id": 3557303,
    "nome": "Estiva Gerbi",
    "estado_id": 35
  },
  {
    "id": 4100103,
    "nome": "Abatiá",
    "estado_id": 41
  },
  {
    "id": 4100202,
    "nome": "Adrianópolis",
    "estado_id": 41
  },
  {
    "id": 4100301,
    "nome": "Agudos do Sul",
    "estado_id": 41
  },
  {
    "id": 4100400,
    "nome": "Almirante Tamandaré",
    "estado_id": 41
  },
  {
    "id": 4100459,
    "nome": "Altamira do Paraná",
    "estado_id": 41
  },
  {
    "id": 4100509,
    "nome": "Altônia",
    "estado_id": 41
  },
  {
    "id": 4100608,
    "nome": "Alto Paraná",
    "estado_id": 41
  },
  {
    "id": 4100707,
    "nome": "Alto Piquiri",
    "estado_id": 41
  },
  {
    "id": 4100806,
    "nome": "Alvorada do Sul",
    "estado_id": 41
  },
  {
    "id": 4100905,
    "nome": "Amaporã",
    "estado_id": 41
  },
  {
    "id": 4101002,
    "nome": "Ampére",
    "estado_id": 41
  },
  {
    "id": 4101051,
    "nome": "Anahy",
    "estado_id": 41
  },
  {
    "id": 4101101,
    "nome": "Andirá",
    "estado_id": 41
  },
  {
    "id": 4101150,
    "nome": "Ângulo",
    "estado_id": 41
  },
  {
    "id": 4101200,
    "nome": "Antonina",
    "estado_id": 41
  },
  {
    "id": 4101309,
    "nome": "Antônio Olinto",
    "estado_id": 41
  },
  {
    "id": 4101408,
    "nome": "Apucarana",
    "estado_id": 41
  },
  {
    "id": 4101507,
    "nome": "Arapongas",
    "estado_id": 41
  },
  {
    "id": 4101606,
    "nome": "Arapoti",
    "estado_id": 41
  },
  {
    "id": 4101655,
    "nome": "Arapuã",
    "estado_id": 41
  },
  {
    "id": 4101705,
    "nome": "Araruna",
    "estado_id": 41
  },
  {
    "id": 4101804,
    "nome": "Araucária",
    "estado_id": 41
  },
  {
    "id": 4101853,
    "nome": "Ariranha do Ivaí",
    "estado_id": 41
  },
  {
    "id": 4101903,
    "nome": "Assaí",
    "estado_id": 41
  },
  {
    "id": 4102000,
    "nome": "Assis Chateaubriand",
    "estado_id": 41
  },
  {
    "id": 4102109,
    "nome": "Astorga",
    "estado_id": 41
  },
  {
    "id": 4102208,
    "nome": "Atalaia",
    "estado_id": 41
  },
  {
    "id": 4102307,
    "nome": "Balsa Nova",
    "estado_id": 41
  },
  {
    "id": 4102406,
    "nome": "Bandeirantes",
    "estado_id": 41
  },
  {
    "id": 4102505,
    "nome": "Barbosa Ferraz",
    "estado_id": 41
  },
  {
    "id": 4102604,
    "nome": "Barracão",
    "estado_id": 41
  },
  {
    "id": 4102703,
    "nome": "Barra do Jacaré",
    "estado_id": 41
  },
  {
    "id": 4102752,
    "nome": "Bela Vista da Caroba",
    "estado_id": 41
  },
  {
    "id": 4102802,
    "nome": "Bela Vista do Paraíso",
    "estado_id": 41
  },
  {
    "id": 4102901,
    "nome": "Bituruna",
    "estado_id": 41
  },
  {
    "id": 4103008,
    "nome": "Boa Esperança",
    "estado_id": 41
  },
  {
    "id": 4103024,
    "nome": "Boa Esperança do Iguaçu",
    "estado_id": 41
  },
  {
    "id": 4103040,
    "nome": "Boa Ventura de São Roque",
    "estado_id": 41
  },
  {
    "id": 4103057,
    "nome": "Boa Vista da Aparecida",
    "estado_id": 41
  },
  {
    "id": 4103107,
    "nome": "Bocaiúva do Sul",
    "estado_id": 41
  },
  {
    "id": 4103156,
    "nome": "Bom Jesus do Sul",
    "estado_id": 41
  },
  {
    "id": 4103206,
    "nome": "Bom Sucesso",
    "estado_id": 41
  },
  {
    "id": 4103222,
    "nome": "Bom Sucesso do Sul",
    "estado_id": 41
  },
  {
    "id": 4103305,
    "nome": "Borrazópolis",
    "estado_id": 41
  },
  {
    "id": 4103354,
    "nome": "Braganey",
    "estado_id": 41
  },
  {
    "id": 4103370,
    "nome": "Brasilândia do Sul",
    "estado_id": 41
  },
  {
    "id": 4103404,
    "nome": "Cafeara",
    "estado_id": 41
  },
  {
    "id": 4103453,
    "nome": "Cafelândia",
    "estado_id": 41
  },
  {
    "id": 4103479,
    "nome": "Cafezal do Sul",
    "estado_id": 41
  },
  {
    "id": 4103503,
    "nome": "Califórnia",
    "estado_id": 41
  },
  {
    "id": 4103602,
    "nome": "Cambará",
    "estado_id": 41
  },
  {
    "id": 4103701,
    "nome": "Cambé",
    "estado_id": 41
  },
  {
    "id": 4103800,
    "nome": "Cambira",
    "estado_id": 41
  },
  {
    "id": 4103909,
    "nome": "Campina da Lagoa",
    "estado_id": 41
  },
  {
    "id": 4103958,
    "nome": "Campina do Simão",
    "estado_id": 41
  },
  {
    "id": 4104006,
    "nome": "Campina Grande do Sul",
    "estado_id": 41
  },
  {
    "id": 4104055,
    "nome": "Campo Bonito",
    "estado_id": 41
  },
  {
    "id": 4104105,
    "nome": "Campo do Tenente",
    "estado_id": 41
  },
  {
    "id": 4104204,
    "nome": "Campo Largo",
    "estado_id": 41
  },
  {
    "id": 4104253,
    "nome": "Campo Magro",
    "estado_id": 41
  },
  {
    "id": 4104303,
    "nome": "Campo Mourão",
    "estado_id": 41
  },
  {
    "id": 4104402,
    "nome": "Cândido de Abreu",
    "estado_id": 41
  },
  {
    "id": 4104428,
    "nome": "Candói",
    "estado_id": 41
  },
  {
    "id": 4104451,
    "nome": "Cantagalo",
    "estado_id": 41
  },
  {
    "id": 4104501,
    "nome": "Capanema",
    "estado_id": 41
  },
  {
    "id": 4104600,
    "nome": "Capitão Leônidas Marques",
    "estado_id": 41
  },
  {
    "id": 4104659,
    "nome": "Carambeí",
    "estado_id": 41
  },
  {
    "id": 4104709,
    "nome": "Carlópolis",
    "estado_id": 41
  },
  {
    "id": 4104808,
    "nome": "Cascavel",
    "estado_id": 41
  },
  {
    "id": 4104907,
    "nome": "Castro",
    "estado_id": 41
  },
  {
    "id": 4105003,
    "nome": "Catanduvas",
    "estado_id": 41
  },
  {
    "id": 4105102,
    "nome": "Centenário do Sul",
    "estado_id": 41
  },
  {
    "id": 4105201,
    "nome": "Cerro Azul",
    "estado_id": 41
  },
  {
    "id": 4105300,
    "nome": "Céu Azul",
    "estado_id": 41
  },
  {
    "id": 4105409,
    "nome": "Chopinzinho",
    "estado_id": 41
  },
  {
    "id": 4105508,
    "nome": "Cianorte",
    "estado_id": 41
  },
  {
    "id": 4105607,
    "nome": "Cidade Gaúcha",
    "estado_id": 41
  },
  {
    "id": 4105706,
    "nome": "Clevelândia",
    "estado_id": 41
  },
  {
    "id": 4105805,
    "nome": "Colombo",
    "estado_id": 41
  },
  {
    "id": 4105904,
    "nome": "Colorado",
    "estado_id": 41
  },
  {
    "id": 4106001,
    "nome": "Congonhinhas",
    "estado_id": 41
  },
  {
    "id": 4106100,
    "nome": "Conselheiro Mairinck",
    "estado_id": 41
  },
  {
    "id": 4106209,
    "nome": "Contenda",
    "estado_id": 41
  },
  {
    "id": 4106308,
    "nome": "Corbélia",
    "estado_id": 41
  },
  {
    "id": 4106407,
    "nome": "Cornélio Procópio",
    "estado_id": 41
  },
  {
    "id": 4106456,
    "nome": "Coronel Domingos Soares",
    "estado_id": 41
  },
  {
    "id": 4106506,
    "nome": "Coronel Vivida",
    "estado_id": 41
  },
  {
    "id": 4106555,
    "nome": "Corumbataí do Sul",
    "estado_id": 41
  },
  {
    "id": 4106571,
    "nome": "Cruzeiro do Iguaçu",
    "estado_id": 41
  },
  {
    "id": 4106605,
    "nome": "Cruzeiro do Oeste",
    "estado_id": 41
  },
  {
    "id": 4106704,
    "nome": "Cruzeiro do Sul",
    "estado_id": 41
  },
  {
    "id": 4106803,
    "nome": "Cruz Machado",
    "estado_id": 41
  },
  {
    "id": 4106852,
    "nome": "Cruzmaltina",
    "estado_id": 41
  },
  {
    "id": 4106902,
    "nome": "Curitiba",
    "estado_id": 41
  },
  {
    "id": 4107009,
    "nome": "Curiúva",
    "estado_id": 41
  },
  {
    "id": 4107108,
    "nome": "Diamante do Norte",
    "estado_id": 41
  },
  {
    "id": 4107124,
    "nome": "Diamante do Sul",
    "estado_id": 41
  },
  {
    "id": 4107157,
    "nome": "Diamante D'Oeste",
    "estado_id": 41
  },
  {
    "id": 4107207,
    "nome": "Dois Vizinhos",
    "estado_id": 41
  },
  {
    "id": 4107256,
    "nome": "Douradina",
    "estado_id": 41
  },
  {
    "id": 4107306,
    "nome": "Doutor Camargo",
    "estado_id": 41
  },
  {
    "id": 4107405,
    "nome": "Enéas Marques",
    "estado_id": 41
  },
  {
    "id": 4107504,
    "nome": "Engenheiro Beltrão",
    "estado_id": 41
  },
  {
    "id": 4107520,
    "nome": "Esperança Nova",
    "estado_id": 41
  },
  {
    "id": 4107538,
    "nome": "Entre Rios do Oeste",
    "estado_id": 41
  },
  {
    "id": 4107546,
    "nome": "Espigão Alto do Iguaçu",
    "estado_id": 41
  },
  {
    "id": 4107553,
    "nome": "Farol",
    "estado_id": 41
  },
  {
    "id": 4107603,
    "nome": "Faxinal",
    "estado_id": 41
  },
  {
    "id": 4107652,
    "nome": "Fazenda Rio Grande",
    "estado_id": 41
  },
  {
    "id": 4107702,
    "nome": "Fênix",
    "estado_id": 41
  },
  {
    "id": 4107736,
    "nome": "Fernandes Pinheiro",
    "estado_id": 41
  },
  {
    "id": 4107751,
    "nome": "Figueira",
    "estado_id": 41
  },
  {
    "id": 4107801,
    "nome": "Floraí",
    "estado_id": 41
  },
  {
    "id": 4107850,
    "nome": "Flor da Serra do Sul",
    "estado_id": 41
  },
  {
    "id": 4107900,
    "nome": "Floresta",
    "estado_id": 41
  },
  {
    "id": 4108007,
    "nome": "Florestópolis",
    "estado_id": 41
  },
  {
    "id": 4108106,
    "nome": "Flórida",
    "estado_id": 41
  },
  {
    "id": 4108205,
    "nome": "Formosa do Oeste",
    "estado_id": 41
  },
  {
    "id": 4108304,
    "nome": "Foz do Iguaçu",
    "estado_id": 41
  },
  {
    "id": 4108320,
    "nome": "Francisco Alves",
    "estado_id": 41
  },
  {
    "id": 4108403,
    "nome": "Francisco Beltrão",
    "estado_id": 41
  },
  {
    "id": 4108452,
    "nome": "Foz do Jordão",
    "estado_id": 41
  },
  {
    "id": 4108502,
    "nome": "General Carneiro",
    "estado_id": 41
  },
  {
    "id": 4108551,
    "nome": "Godoy Moreira",
    "estado_id": 41
  },
  {
    "id": 4108601,
    "nome": "Goioerê",
    "estado_id": 41
  },
  {
    "id": 4108650,
    "nome": "Goioxim",
    "estado_id": 41
  },
  {
    "id": 4108700,
    "nome": "Grandes Rios",
    "estado_id": 41
  },
  {
    "id": 4108809,
    "nome": "Guaíra",
    "estado_id": 41
  },
  {
    "id": 4108908,
    "nome": "Guairaçá",
    "estado_id": 41
  },
  {
    "id": 4108957,
    "nome": "Guamiranga",
    "estado_id": 41
  },
  {
    "id": 4109005,
    "nome": "Guapirama",
    "estado_id": 41
  },
  {
    "id": 4109104,
    "nome": "Guaporema",
    "estado_id": 41
  },
  {
    "id": 4109203,
    "nome": "Guaraci",
    "estado_id": 41
  },
  {
    "id": 4109302,
    "nome": "Guaraniaçu",
    "estado_id": 41
  },
  {
    "id": 4109401,
    "nome": "Guarapuava",
    "estado_id": 41
  },
  {
    "id": 4109500,
    "nome": "Guaraqueçaba",
    "estado_id": 41
  },
  {
    "id": 4109609,
    "nome": "Guaratuba",
    "estado_id": 41
  },
  {
    "id": 4109658,
    "nome": "Honório Serpa",
    "estado_id": 41
  },
  {
    "id": 4109708,
    "nome": "Ibaiti",
    "estado_id": 41
  },
  {
    "id": 4109757,
    "nome": "Ibema",
    "estado_id": 41
  },
  {
    "id": 4109807,
    "nome": "Ibiporã",
    "estado_id": 41
  },
  {
    "id": 4109906,
    "nome": "Icaraíma",
    "estado_id": 41
  },
  {
    "id": 4110003,
    "nome": "Iguaraçu",
    "estado_id": 41
  },
  {
    "id": 4110052,
    "nome": "Iguatu",
    "estado_id": 41
  },
  {
    "id": 4110078,
    "nome": "Imbaú",
    "estado_id": 41
  },
  {
    "id": 4110102,
    "nome": "Imbituva",
    "estado_id": 41
  },
  {
    "id": 4110201,
    "nome": "Inácio Martins",
    "estado_id": 41
  },
  {
    "id": 4110300,
    "nome": "Inajá",
    "estado_id": 41
  },
  {
    "id": 4110409,
    "nome": "Indianópolis",
    "estado_id": 41
  },
  {
    "id": 4110508,
    "nome": "Ipiranga",
    "estado_id": 41
  },
  {
    "id": 4110607,
    "nome": "Iporã",
    "estado_id": 41
  },
  {
    "id": 4110656,
    "nome": "Iracema do Oeste",
    "estado_id": 41
  },
  {
    "id": 4110706,
    "nome": "Irati",
    "estado_id": 41
  },
  {
    "id": 4110805,
    "nome": "Iretama",
    "estado_id": 41
  },
  {
    "id": 4110904,
    "nome": "Itaguajé",
    "estado_id": 41
  },
  {
    "id": 4110953,
    "nome": "Itaipulândia",
    "estado_id": 41
  },
  {
    "id": 4111001,
    "nome": "Itambaracá",
    "estado_id": 41
  },
  {
    "id": 4111100,
    "nome": "Itambé",
    "estado_id": 41
  },
  {
    "id": 4111209,
    "nome": "Itapejara d'Oeste",
    "estado_id": 41
  },
  {
    "id": 4111258,
    "nome": "Itaperuçu",
    "estado_id": 41
  },
  {
    "id": 4111308,
    "nome": "Itaúna do Sul",
    "estado_id": 41
  },
  {
    "id": 4111407,
    "nome": "Ivaí",
    "estado_id": 41
  },
  {
    "id": 4111506,
    "nome": "Ivaiporã",
    "estado_id": 41
  },
  {
    "id": 4111555,
    "nome": "Ivaté",
    "estado_id": 41
  },
  {
    "id": 4111605,
    "nome": "Ivatuba",
    "estado_id": 41
  },
  {
    "id": 4111704,
    "nome": "Jaboti",
    "estado_id": 41
  },
  {
    "id": 4111803,
    "nome": "Jacarezinho",
    "estado_id": 41
  },
  {
    "id": 4111902,
    "nome": "Jaguapitã",
    "estado_id": 41
  },
  {
    "id": 4112009,
    "nome": "Jaguariaíva",
    "estado_id": 41
  },
  {
    "id": 4112108,
    "nome": "Jandaia do Sul",
    "estado_id": 41
  },
  {
    "id": 4112207,
    "nome": "Janiópolis",
    "estado_id": 41
  },
  {
    "id": 4112306,
    "nome": "Japira",
    "estado_id": 41
  },
  {
    "id": 4112405,
    "nome": "Japurá",
    "estado_id": 41
  },
  {
    "id": 4112504,
    "nome": "Jardim Alegre",
    "estado_id": 41
  },
  {
    "id": 4112603,
    "nome": "Jardim Olinda",
    "estado_id": 41
  },
  {
    "id": 4112702,
    "nome": "Jataizinho",
    "estado_id": 41
  },
  {
    "id": 4112751,
    "nome": "Jesuítas",
    "estado_id": 41
  },
  {
    "id": 4112801,
    "nome": "Joaquim Távora",
    "estado_id": 41
  },
  {
    "id": 4112900,
    "nome": "Jundiaí do Sul",
    "estado_id": 41
  },
  {
    "id": 4112959,
    "nome": "Juranda",
    "estado_id": 41
  },
  {
    "id": 4113007,
    "nome": "Jussara",
    "estado_id": 41
  },
  {
    "id": 4113106,
    "nome": "Kaloré",
    "estado_id": 41
  },
  {
    "id": 4113205,
    "nome": "Lapa",
    "estado_id": 41
  },
  {
    "id": 4113254,
    "nome": "Laranjal",
    "estado_id": 41
  },
  {
    "id": 4113304,
    "nome": "Laranjeiras do Sul",
    "estado_id": 41
  },
  {
    "id": 4113403,
    "nome": "Leópolis",
    "estado_id": 41
  },
  {
    "id": 4113429,
    "nome": "Lidianópolis",
    "estado_id": 41
  },
  {
    "id": 4113452,
    "nome": "Lindoeste",
    "estado_id": 41
  },
  {
    "id": 4113502,
    "nome": "Loanda",
    "estado_id": 41
  },
  {
    "id": 4113601,
    "nome": "Lobato",
    "estado_id": 41
  },
  {
    "id": 4113700,
    "nome": "Londrina",
    "estado_id": 41
  },
  {
    "id": 4113734,
    "nome": "Luiziana",
    "estado_id": 41
  },
  {
    "id": 4113759,
    "nome": "Lunardelli",
    "estado_id": 41
  },
  {
    "id": 4113809,
    "nome": "Lupionópolis",
    "estado_id": 41
  },
  {
    "id": 4113908,
    "nome": "Mallet",
    "estado_id": 41
  },
  {
    "id": 4114005,
    "nome": "Mamborê",
    "estado_id": 41
  },
  {
    "id": 4114104,
    "nome": "Mandaguaçu",
    "estado_id": 41
  },
  {
    "id": 4114203,
    "nome": "Mandaguari",
    "estado_id": 41
  },
  {
    "id": 4114302,
    "nome": "Mandirituba",
    "estado_id": 41
  },
  {
    "id": 4114351,
    "nome": "Manfrinópolis",
    "estado_id": 41
  },
  {
    "id": 4114401,
    "nome": "Mangueirinha",
    "estado_id": 41
  },
  {
    "id": 4114500,
    "nome": "Manoel Ribas",
    "estado_id": 41
  },
  {
    "id": 4114609,
    "nome": "Marechal Cândido Rondon",
    "estado_id": 41
  },
  {
    "id": 4114708,
    "nome": "Maria Helena",
    "estado_id": 41
  },
  {
    "id": 4114807,
    "nome": "Marialva",
    "estado_id": 41
  },
  {
    "id": 4114906,
    "nome": "Marilândia do Sul",
    "estado_id": 41
  },
  {
    "id": 4115002,
    "nome": "Marilena",
    "estado_id": 41
  },
  {
    "id": 4115101,
    "nome": "Mariluz",
    "estado_id": 41
  },
  {
    "id": 4115200,
    "nome": "Maringá",
    "estado_id": 41
  },
  {
    "id": 4115309,
    "nome": "Mariópolis",
    "estado_id": 41
  },
  {
    "id": 4115358,
    "nome": "Maripá",
    "estado_id": 41
  },
  {
    "id": 4115408,
    "nome": "Marmeleiro",
    "estado_id": 41
  },
  {
    "id": 4115457,
    "nome": "Marquinho",
    "estado_id": 41
  },
  {
    "id": 4115507,
    "nome": "Marumbi",
    "estado_id": 41
  },
  {
    "id": 4115606,
    "nome": "Matelândia",
    "estado_id": 41
  },
  {
    "id": 4115705,
    "nome": "Matinhos",
    "estado_id": 41
  },
  {
    "id": 4115739,
    "nome": "Mato Rico",
    "estado_id": 41
  },
  {
    "id": 4115754,
    "nome": "Mauá da Serra",
    "estado_id": 41
  },
  {
    "id": 4115804,
    "nome": "Medianeira",
    "estado_id": 41
  },
  {
    "id": 4115853,
    "nome": "Mercedes",
    "estado_id": 41
  },
  {
    "id": 4115903,
    "nome": "Mirador",
    "estado_id": 41
  },
  {
    "id": 4116000,
    "nome": "Miraselva",
    "estado_id": 41
  },
  {
    "id": 4116059,
    "nome": "Missal",
    "estado_id": 41
  },
  {
    "id": 4116109,
    "nome": "Moreira Sales",
    "estado_id": 41
  },
  {
    "id": 4116208,
    "nome": "Morretes",
    "estado_id": 41
  },
  {
    "id": 4116307,
    "nome": "Munhoz de Melo",
    "estado_id": 41
  },
  {
    "id": 4116406,
    "nome": "Nossa Senhora das Graças",
    "estado_id": 41
  },
  {
    "id": 4116505,
    "nome": "Nova Aliança do Ivaí",
    "estado_id": 41
  },
  {
    "id": 4116604,
    "nome": "Nova América da Colina",
    "estado_id": 41
  },
  {
    "id": 4116703,
    "nome": "Nova Aurora",
    "estado_id": 41
  },
  {
    "id": 4116802,
    "nome": "Nova Cantu",
    "estado_id": 41
  },
  {
    "id": 4116901,
    "nome": "Nova Esperança",
    "estado_id": 41
  },
  {
    "id": 4116950,
    "nome": "Nova Esperança do Sudoeste",
    "estado_id": 41
  },
  {
    "id": 4117008,
    "nome": "Nova Fátima",
    "estado_id": 41
  },
  {
    "id": 4117057,
    "nome": "Nova Laranjeiras",
    "estado_id": 41
  },
  {
    "id": 4117107,
    "nome": "Nova Londrina",
    "estado_id": 41
  },
  {
    "id": 4117206,
    "nome": "Nova Olímpia",
    "estado_id": 41
  },
  {
    "id": 4117214,
    "nome": "Nova Santa Bárbara",
    "estado_id": 41
  },
  {
    "id": 4117222,
    "nome": "Nova Santa Rosa",
    "estado_id": 41
  },
  {
    "id": 4117255,
    "nome": "Nova Prata do Iguaçu",
    "estado_id": 41
  },
  {
    "id": 4117271,
    "nome": "Nova Tebas",
    "estado_id": 41
  },
  {
    "id": 4117297,
    "nome": "Novo Itacolomi",
    "estado_id": 41
  },
  {
    "id": 4117305,
    "nome": "Ortigueira",
    "estado_id": 41
  },
  {
    "id": 4117404,
    "nome": "Ourizona",
    "estado_id": 41
  },
  {
    "id": 4117453,
    "nome": "Ouro Verde do Oeste",
    "estado_id": 41
  },
  {
    "id": 4117503,
    "nome": "Paiçandu",
    "estado_id": 41
  },
  {
    "id": 4117602,
    "nome": "Palmas",
    "estado_id": 41
  },
  {
    "id": 4117701,
    "nome": "Palmeira",
    "estado_id": 41
  },
  {
    "id": 4117800,
    "nome": "Palmital",
    "estado_id": 41
  },
  {
    "id": 4117909,
    "nome": "Palotina",
    "estado_id": 41
  },
  {
    "id": 4118006,
    "nome": "Paraíso do Norte",
    "estado_id": 41
  },
  {
    "id": 4118105,
    "nome": "Paranacity",
    "estado_id": 41
  },
  {
    "id": 4118204,
    "nome": "Paranaguá",
    "estado_id": 41
  },
  {
    "id": 4118303,
    "nome": "Paranapoema",
    "estado_id": 41
  },
  {
    "id": 4118402,
    "nome": "Paranavaí",
    "estado_id": 41
  },
  {
    "id": 4118451,
    "nome": "Pato Bragado",
    "estado_id": 41
  },
  {
    "id": 4118501,
    "nome": "Pato Branco",
    "estado_id": 41
  },
  {
    "id": 4118600,
    "nome": "Paula Freitas",
    "estado_id": 41
  },
  {
    "id": 4118709,
    "nome": "Paulo Frontin",
    "estado_id": 41
  },
  {
    "id": 4118808,
    "nome": "Peabiru",
    "estado_id": 41
  },
  {
    "id": 4118857,
    "nome": "Perobal",
    "estado_id": 41
  },
  {
    "id": 4118907,
    "nome": "Pérola",
    "estado_id": 41
  },
  {
    "id": 4119004,
    "nome": "Pérola d'Oeste",
    "estado_id": 41
  },
  {
    "id": 4119103,
    "nome": "Piên",
    "estado_id": 41
  },
  {
    "id": 4119152,
    "nome": "Pinhais",
    "estado_id": 41
  },
  {
    "id": 4119202,
    "nome": "Pinhalão",
    "estado_id": 41
  },
  {
    "id": 4119251,
    "nome": "Pinhal de São Bento",
    "estado_id": 41
  },
  {
    "id": 4119301,
    "nome": "Pinhão",
    "estado_id": 41
  },
  {
    "id": 4119400,
    "nome": "Piraí do Sul",
    "estado_id": 41
  },
  {
    "id": 4119509,
    "nome": "Piraquara",
    "estado_id": 41
  },
  {
    "id": 4119608,
    "nome": "Pitanga",
    "estado_id": 41
  },
  {
    "id": 4119657,
    "nome": "Pitangueiras",
    "estado_id": 41
  },
  {
    "id": 4119707,
    "nome": "Planaltina do Paraná",
    "estado_id": 41
  },
  {
    "id": 4119806,
    "nome": "Planalto",
    "estado_id": 41
  },
  {
    "id": 4119905,
    "nome": "Ponta Grossa",
    "estado_id": 41
  },
  {
    "id": 4119954,
    "nome": "Pontal do Paraná",
    "estado_id": 41
  },
  {
    "id": 4120002,
    "nome": "Porecatu",
    "estado_id": 41
  },
  {
    "id": 4120101,
    "nome": "Porto Amazonas",
    "estado_id": 41
  },
  {
    "id": 4120150,
    "nome": "Porto Barreiro",
    "estado_id": 41
  },
  {
    "id": 4120200,
    "nome": "Porto Rico",
    "estado_id": 41
  },
  {
    "id": 4120309,
    "nome": "Porto Vitória",
    "estado_id": 41
  },
  {
    "id": 4120333,
    "nome": "Prado Ferreira",
    "estado_id": 41
  },
  {
    "id": 4120358,
    "nome": "Pranchita",
    "estado_id": 41
  },
  {
    "id": 4120408,
    "nome": "Presidente Castelo Branco",
    "estado_id": 41
  },
  {
    "id": 4120507,
    "nome": "Primeiro de Maio",
    "estado_id": 41
  },
  {
    "id": 4120606,
    "nome": "Prudentópolis",
    "estado_id": 41
  },
  {
    "id": 4120655,
    "nome": "Quarto Centenário",
    "estado_id": 41
  },
  {
    "id": 4120705,
    "nome": "Quatiguá",
    "estado_id": 41
  },
  {
    "id": 4120804,
    "nome": "Quatro Barras",
    "estado_id": 41
  },
  {
    "id": 4120853,
    "nome": "Quatro Pontes",
    "estado_id": 41
  },
  {
    "id": 4120903,
    "nome": "Quedas do Iguaçu",
    "estado_id": 41
  },
  {
    "id": 4121000,
    "nome": "Querência do Norte",
    "estado_id": 41
  },
  {
    "id": 4121109,
    "nome": "Quinta do Sol",
    "estado_id": 41
  },
  {
    "id": 4121208,
    "nome": "Quitandinha",
    "estado_id": 41
  },
  {
    "id": 4121257,
    "nome": "Ramilândia",
    "estado_id": 41
  },
  {
    "id": 4121307,
    "nome": "Rancho Alegre",
    "estado_id": 41
  },
  {
    "id": 4121356,
    "nome": "Rancho Alegre D'Oeste",
    "estado_id": 41
  },
  {
    "id": 4121406,
    "nome": "Realeza",
    "estado_id": 41
  },
  {
    "id": 4121505,
    "nome": "Rebouças",
    "estado_id": 41
  },
  {
    "id": 4121604,
    "nome": "Renascença",
    "estado_id": 41
  },
  {
    "id": 4121703,
    "nome": "Reserva",
    "estado_id": 41
  },
  {
    "id": 4121752,
    "nome": "Reserva do Iguaçu",
    "estado_id": 41
  },
  {
    "id": 4121802,
    "nome": "Ribeirão Claro",
    "estado_id": 41
  },
  {
    "id": 4121901,
    "nome": "Ribeirão do Pinhal",
    "estado_id": 41
  },
  {
    "id": 4122008,
    "nome": "Rio Azul",
    "estado_id": 41
  },
  {
    "id": 4122107,
    "nome": "Rio Bom",
    "estado_id": 41
  },
  {
    "id": 4122156,
    "nome": "Rio Bonito do Iguaçu",
    "estado_id": 41
  },
  {
    "id": 4122172,
    "nome": "Rio Branco do Ivaí",
    "estado_id": 41
  },
  {
    "id": 4122206,
    "nome": "Rio Branco do Sul",
    "estado_id": 41
  },
  {
    "id": 4122305,
    "nome": "Rio Negro",
    "estado_id": 41
  },
  {
    "id": 4122404,
    "nome": "Rolândia",
    "estado_id": 41
  },
  {
    "id": 4122503,
    "nome": "Roncador",
    "estado_id": 41
  },
  {
    "id": 4122602,
    "nome": "Rondon",
    "estado_id": 41
  },
  {
    "id": 4122651,
    "nome": "Rosário do Ivaí",
    "estado_id": 41
  },
  {
    "id": 4122701,
    "nome": "Sabáudia",
    "estado_id": 41
  },
  {
    "id": 4122800,
    "nome": "Salgado Filho",
    "estado_id": 41
  },
  {
    "id": 4122909,
    "nome": "Salto do Itararé",
    "estado_id": 41
  },
  {
    "id": 4123006,
    "nome": "Salto do Lontra",
    "estado_id": 41
  },
  {
    "id": 4123105,
    "nome": "Santa Amélia",
    "estado_id": 41
  },
  {
    "id": 4123204,
    "nome": "Santa Cecília do Pavão",
    "estado_id": 41
  },
  {
    "id": 4123303,
    "nome": "Santa Cruz de Monte Castelo",
    "estado_id": 41
  },
  {
    "id": 4123402,
    "nome": "Santa Fé",
    "estado_id": 41
  },
  {
    "id": 4123501,
    "nome": "Santa Helena",
    "estado_id": 41
  },
  {
    "id": 4123600,
    "nome": "Santa Inês",
    "estado_id": 41
  },
  {
    "id": 4123709,
    "nome": "Santa Isabel do Ivaí",
    "estado_id": 41
  },
  {
    "id": 4123808,
    "nome": "Santa Izabel do Oeste",
    "estado_id": 41
  },
  {
    "id": 4123824,
    "nome": "Santa Lúcia",
    "estado_id": 41
  },
  {
    "id": 4123857,
    "nome": "Santa Maria do Oeste",
    "estado_id": 41
  },
  {
    "id": 4123907,
    "nome": "Santa Mariana",
    "estado_id": 41
  },
  {
    "id": 4123956,
    "nome": "Santa Mônica",
    "estado_id": 41
  },
  {
    "id": 4124004,
    "nome": "Santana do Itararé",
    "estado_id": 41
  },
  {
    "id": 4124020,
    "nome": "Santa Tereza do Oeste",
    "estado_id": 41
  },
  {
    "id": 4124053,
    "nome": "Santa Terezinha de Itaipu",
    "estado_id": 41
  },
  {
    "id": 4124103,
    "nome": "Santo Antônio da Platina",
    "estado_id": 41
  },
  {
    "id": 4124202,
    "nome": "Santo Antônio do Caiuá",
    "estado_id": 41
  },
  {
    "id": 4124301,
    "nome": "Santo Antônio do Paraíso",
    "estado_id": 41
  },
  {
    "id": 4124400,
    "nome": "Santo Antônio do Sudoeste",
    "estado_id": 41
  },
  {
    "id": 4124509,
    "nome": "Santo Inácio",
    "estado_id": 41
  },
  {
    "id": 4124608,
    "nome": "São Carlos do Ivaí",
    "estado_id": 41
  },
  {
    "id": 4124707,
    "nome": "São Jerônimo da Serra",
    "estado_id": 41
  },
  {
    "id": 4124806,
    "nome": "São João",
    "estado_id": 41
  },
  {
    "id": 4124905,
    "nome": "São João do Caiuá",
    "estado_id": 41
  },
  {
    "id": 4125001,
    "nome": "São João do Ivaí",
    "estado_id": 41
  },
  {
    "id": 4125100,
    "nome": "São João do Triunfo",
    "estado_id": 41
  },
  {
    "id": 4125209,
    "nome": "São Jorge d'Oeste",
    "estado_id": 41
  },
  {
    "id": 4125308,
    "nome": "São Jorge do Ivaí",
    "estado_id": 41
  },
  {
    "id": 4125357,
    "nome": "São Jorge do Patrocínio",
    "estado_id": 41
  },
  {
    "id": 4125407,
    "nome": "São José da Boa Vista",
    "estado_id": 41
  },
  {
    "id": 4125456,
    "nome": "São José das Palmeiras",
    "estado_id": 41
  },
  {
    "id": 4125506,
    "nome": "São José dos Pinhais",
    "estado_id": 41
  },
  {
    "id": 4125555,
    "nome": "São Manoel do Paraná",
    "estado_id": 41
  },
  {
    "id": 4125605,
    "nome": "São Mateus do Sul",
    "estado_id": 41
  },
  {
    "id": 4125704,
    "nome": "São Miguel do Iguaçu",
    "estado_id": 41
  },
  {
    "id": 4125753,
    "nome": "São Pedro do Iguaçu",
    "estado_id": 41
  },
  {
    "id": 4125803,
    "nome": "São Pedro do Ivaí",
    "estado_id": 41
  },
  {
    "id": 4125902,
    "nome": "São Pedro do Paraná",
    "estado_id": 41
  },
  {
    "id": 4126009,
    "nome": "São Sebastião da Amoreira",
    "estado_id": 41
  },
  {
    "id": 4126108,
    "nome": "São Tomé",
    "estado_id": 41
  },
  {
    "id": 4126207,
    "nome": "Sapopema",
    "estado_id": 41
  },
  {
    "id": 4126256,
    "nome": "Sarandi",
    "estado_id": 41
  },
  {
    "id": 4126272,
    "nome": "Saudade do Iguaçu",
    "estado_id": 41
  },
  {
    "id": 4126306,
    "nome": "Sengés",
    "estado_id": 41
  },
  {
    "id": 4126355,
    "nome": "Serranópolis do Iguaçu",
    "estado_id": 41
  },
  {
    "id": 4126405,
    "nome": "Sertaneja",
    "estado_id": 41
  },
  {
    "id": 4126504,
    "nome": "Sertanópolis",
    "estado_id": 41
  },
  {
    "id": 4126603,
    "nome": "Siqueira Campos",
    "estado_id": 41
  },
  {
    "id": 4126652,
    "nome": "Sulina",
    "estado_id": 41
  },
  {
    "id": 4126678,
    "nome": "Tamarana",
    "estado_id": 41
  },
  {
    "id": 4126702,
    "nome": "Tamboara",
    "estado_id": 41
  },
  {
    "id": 4126801,
    "nome": "Tapejara",
    "estado_id": 41
  },
  {
    "id": 4126900,
    "nome": "Tapira",
    "estado_id": 41
  },
  {
    "id": 4127007,
    "nome": "Teixeira Soares",
    "estado_id": 41
  },
  {
    "id": 4127106,
    "nome": "Telêmaco Borba",
    "estado_id": 41
  },
  {
    "id": 4127205,
    "nome": "Terra Boa",
    "estado_id": 41
  },
  {
    "id": 4127304,
    "nome": "Terra Rica",
    "estado_id": 41
  },
  {
    "id": 4127403,
    "nome": "Terra Roxa",
    "estado_id": 41
  },
  {
    "id": 4127502,
    "nome": "Tibagi",
    "estado_id": 41
  },
  {
    "id": 4127601,
    "nome": "Tijucas do Sul",
    "estado_id": 41
  },
  {
    "id": 4127700,
    "nome": "Toledo",
    "estado_id": 41
  },
  {
    "id": 4127809,
    "nome": "Tomazina",
    "estado_id": 41
  },
  {
    "id": 4127858,
    "nome": "Três Barras do Paraná",
    "estado_id": 41
  },
  {
    "id": 4127882,
    "nome": "Tunas do Paraná",
    "estado_id": 41
  },
  {
    "id": 4127908,
    "nome": "Tuneiras do Oeste",
    "estado_id": 41
  },
  {
    "id": 4127957,
    "nome": "Tupãssi",
    "estado_id": 41
  },
  {
    "id": 4127965,
    "nome": "Turvo",
    "estado_id": 41
  },
  {
    "id": 4128005,
    "nome": "Ubiratã",
    "estado_id": 41
  },
  {
    "id": 4128104,
    "nome": "Umuarama",
    "estado_id": 41
  },
  {
    "id": 4128203,
    "nome": "União da Vitória",
    "estado_id": 41
  },
  {
    "id": 4128302,
    "nome": "Uniflor",
    "estado_id": 41
  },
  {
    "id": 4128401,
    "nome": "Uraí",
    "estado_id": 41
  },
  {
    "id": 4128500,
    "nome": "Wenceslau Braz",
    "estado_id": 41
  },
  {
    "id": 4128534,
    "nome": "Ventania",
    "estado_id": 41
  },
  {
    "id": 4128559,
    "nome": "Vera Cruz do Oeste",
    "estado_id": 41
  },
  {
    "id": 4128609,
    "nome": "Verê",
    "estado_id": 41
  },
  {
    "id": 4128625,
    "nome": "Alto Paraíso",
    "estado_id": 41
  },
  {
    "id": 4128633,
    "nome": "Doutor Ulysses",
    "estado_id": 41
  },
  {
    "id": 4128658,
    "nome": "Virmond",
    "estado_id": 41
  },
  {
    "id": 4128708,
    "nome": "Vitorino",
    "estado_id": 41
  },
  {
    "id": 4128807,
    "nome": "Xambrê",
    "estado_id": 41
  },
  {
    "id": 4200051,
    "nome": "Abdon Batista",
    "estado_id": 42
  },
  {
    "id": 4200101,
    "nome": "Abelardo Luz",
    "estado_id": 42
  },
  {
    "id": 4200200,
    "nome": "Agrolândia",
    "estado_id": 42
  },
  {
    "id": 4200309,
    "nome": "Agronômica",
    "estado_id": 42
  },
  {
    "id": 4200408,
    "nome": "Água Doce",
    "estado_id": 42
  },
  {
    "id": 4200507,
    "nome": "Águas de Chapecó",
    "estado_id": 42
  },
  {
    "id": 4200556,
    "nome": "Águas Frias",
    "estado_id": 42
  },
  {
    "id": 4200606,
    "nome": "Águas Mornas",
    "estado_id": 42
  },
  {
    "id": 4200705,
    "nome": "Alfredo Wagner",
    "estado_id": 42
  },
  {
    "id": 4200754,
    "nome": "Alto Bela Vista",
    "estado_id": 42
  },
  {
    "id": 4200804,
    "nome": "Anchieta",
    "estado_id": 42
  },
  {
    "id": 4200903,
    "nome": "Angelina",
    "estado_id": 42
  },
  {
    "id": 4201000,
    "nome": "Anita Garibaldi",
    "estado_id": 42
  },
  {
    "id": 4201109,
    "nome": "Anitápolis",
    "estado_id": 42
  },
  {
    "id": 4201208,
    "nome": "Antônio Carlos",
    "estado_id": 42
  },
  {
    "id": 4201257,
    "nome": "Apiúna",
    "estado_id": 42
  },
  {
    "id": 4201273,
    "nome": "Arabutã",
    "estado_id": 42
  },
  {
    "id": 4201307,
    "nome": "Araquari",
    "estado_id": 42
  },
  {
    "id": 4201406,
    "nome": "Araranguá",
    "estado_id": 42
  },
  {
    "id": 4201505,
    "nome": "Armazém",
    "estado_id": 42
  },
  {
    "id": 4201604,
    "nome": "Arroio Trinta",
    "estado_id": 42
  },
  {
    "id": 4201653,
    "nome": "Arvoredo",
    "estado_id": 42
  },
  {
    "id": 4201703,
    "nome": "Ascurra",
    "estado_id": 42
  },
  {
    "id": 4201802,
    "nome": "Atalanta",
    "estado_id": 42
  },
  {
    "id": 4201901,
    "nome": "Aurora",
    "estado_id": 42
  },
  {
    "id": 4201950,
    "nome": "Balneário Arroio do Silva",
    "estado_id": 42
  },
  {
    "id": 4202008,
    "nome": "Balneário Camboriú",
    "estado_id": 42
  },
  {
    "id": 4202057,
    "nome": "Balneário Barra do Sul",
    "estado_id": 42
  },
  {
    "id": 4202073,
    "nome": "Balneário Gaivota",
    "estado_id": 42
  },
  {
    "id": 4202081,
    "nome": "Bandeirante",
    "estado_id": 42
  },
  {
    "id": 4202099,
    "nome": "Barra Bonita",
    "estado_id": 42
  },
  {
    "id": 4202107,
    "nome": "Barra Velha",
    "estado_id": 42
  },
  {
    "id": 4202131,
    "nome": "Bela Vista do Toldo",
    "estado_id": 42
  },
  {
    "id": 4202156,
    "nome": "Belmonte",
    "estado_id": 42
  },
  {
    "id": 4202206,
    "nome": "Benedito Novo",
    "estado_id": 42
  },
  {
    "id": 4202305,
    "nome": "Biguaçu",
    "estado_id": 42
  },
  {
    "id": 4202404,
    "nome": "Blumenau",
    "estado_id": 42
  },
  {
    "id": 4202438,
    "nome": "Bocaina do Sul",
    "estado_id": 42
  },
  {
    "id": 4202453,
    "nome": "Bombinhas",
    "estado_id": 42
  },
  {
    "id": 4202503,
    "nome": "Bom Jardim da Serra",
    "estado_id": 42
  },
  {
    "id": 4202537,
    "nome": "Bom Jesus",
    "estado_id": 42
  },
  {
    "id": 4202578,
    "nome": "Bom Jesus do Oeste",
    "estado_id": 42
  },
  {
    "id": 4202602,
    "nome": "Bom Retiro",
    "estado_id": 42
  },
  {
    "id": 4202701,
    "nome": "Botuverá",
    "estado_id": 42
  },
  {
    "id": 4202800,
    "nome": "Braço do Norte",
    "estado_id": 42
  },
  {
    "id": 4202859,
    "nome": "Braço do Trombudo",
    "estado_id": 42
  },
  {
    "id": 4202875,
    "nome": "Brunópolis",
    "estado_id": 42
  },
  {
    "id": 4202909,
    "nome": "Brusque",
    "estado_id": 42
  },
  {
    "id": 4203006,
    "nome": "Caçador",
    "estado_id": 42
  },
  {
    "id": 4203105,
    "nome": "Caibi",
    "estado_id": 42
  },
  {
    "id": 4203154,
    "nome": "Calmon",
    "estado_id": 42
  },
  {
    "id": 4203204,
    "nome": "Camboriú",
    "estado_id": 42
  },
  {
    "id": 4203253,
    "nome": "Capão Alto",
    "estado_id": 42
  },
  {
    "id": 4203303,
    "nome": "Campo Alegre",
    "estado_id": 42
  },
  {
    "id": 4203402,
    "nome": "Campo Belo do Sul",
    "estado_id": 42
  },
  {
    "id": 4203501,
    "nome": "Campo Erê",
    "estado_id": 42
  },
  {
    "id": 4203600,
    "nome": "Campos Novos",
    "estado_id": 42
  },
  {
    "id": 4203709,
    "nome": "Canelinha",
    "estado_id": 42
  },
  {
    "id": 4203808,
    "nome": "Canoinhas",
    "estado_id": 42
  },
  {
    "id": 4203907,
    "nome": "Capinzal",
    "estado_id": 42
  },
  {
    "id": 4203956,
    "nome": "Capivari de Baixo",
    "estado_id": 42
  },
  {
    "id": 4204004,
    "nome": "Catanduvas",
    "estado_id": 42
  },
  {
    "id": 4204103,
    "nome": "Caxambu do Sul",
    "estado_id": 42
  },
  {
    "id": 4204152,
    "nome": "Celso Ramos",
    "estado_id": 42
  },
  {
    "id": 4204178,
    "nome": "Cerro Negro",
    "estado_id": 42
  },
  {
    "id": 4204194,
    "nome": "Chapadão do Lageado",
    "estado_id": 42
  },
  {
    "id": 4204202,
    "nome": "Chapecó",
    "estado_id": 42
  },
  {
    "id": 4204251,
    "nome": "Cocal do Sul",
    "estado_id": 42
  },
  {
    "id": 4204301,
    "nome": "Concórdia",
    "estado_id": 42
  },
  {
    "id": 4204350,
    "nome": "Cordilheira Alta",
    "estado_id": 42
  },
  {
    "id": 4204400,
    "nome": "Coronel Freitas",
    "estado_id": 42
  },
  {
    "id": 4204459,
    "nome": "Coronel Martins",
    "estado_id": 42
  },
  {
    "id": 4204509,
    "nome": "Corupá",
    "estado_id": 42
  },
  {
    "id": 4204558,
    "nome": "Correia Pinto",
    "estado_id": 42
  },
  {
    "id": 4204608,
    "nome": "Criciúma",
    "estado_id": 42
  },
  {
    "id": 4204707,
    "nome": "Cunha Porã",
    "estado_id": 42
  },
  {
    "id": 4204756,
    "nome": "Cunhataí",
    "estado_id": 42
  },
  {
    "id": 4204806,
    "nome": "Curitibanos",
    "estado_id": 42
  },
  {
    "id": 4204905,
    "nome": "Descanso",
    "estado_id": 42
  },
  {
    "id": 4205001,
    "nome": "Dionísio Cerqueira",
    "estado_id": 42
  },
  {
    "id": 4205100,
    "nome": "Dona Emma",
    "estado_id": 42
  },
  {
    "id": 4205159,
    "nome": "Doutor Pedrinho",
    "estado_id": 42
  },
  {
    "id": 4205175,
    "nome": "Entre Rios",
    "estado_id": 42
  },
  {
    "id": 4205191,
    "nome": "Ermo",
    "estado_id": 42
  },
  {
    "id": 4205209,
    "nome": "Erval Velho",
    "estado_id": 42
  },
  {
    "id": 4205308,
    "nome": "Faxinal dos Guedes",
    "estado_id": 42
  },
  {
    "id": 4205357,
    "nome": "Flor do Sertão",
    "estado_id": 42
  },
  {
    "id": 4205407,
    "nome": "Florianópolis",
    "estado_id": 42
  },
  {
    "id": 4205431,
    "nome": "Formosa do Sul",
    "estado_id": 42
  },
  {
    "id": 4205456,
    "nome": "Forquilhinha",
    "estado_id": 42
  },
  {
    "id": 4205506,
    "nome": "Fraiburgo",
    "estado_id": 42
  },
  {
    "id": 4205555,
    "nome": "Frei Rogério",
    "estado_id": 42
  },
  {
    "id": 4205605,
    "nome": "Galvão",
    "estado_id": 42
  },
  {
    "id": 4205704,
    "nome": "Garopaba",
    "estado_id": 42
  },
  {
    "id": 4205803,
    "nome": "Garuva",
    "estado_id": 42
  },
  {
    "id": 4205902,
    "nome": "Gaspar",
    "estado_id": 42
  },
  {
    "id": 4206009,
    "nome": "Governador Celso Ramos",
    "estado_id": 42
  },
  {
    "id": 4206108,
    "nome": "Grão-Pará",
    "estado_id": 42
  },
  {
    "id": 4206207,
    "nome": "Gravatal",
    "estado_id": 42
  },
  {
    "id": 4206306,
    "nome": "Guabiruba",
    "estado_id": 42
  },
  {
    "id": 4206405,
    "nome": "Guaraciaba",
    "estado_id": 42
  },
  {
    "id": 4206504,
    "nome": "Guaramirim",
    "estado_id": 42
  },
  {
    "id": 4206603,
    "nome": "Guarujá do Sul",
    "estado_id": 42
  },
  {
    "id": 4206652,
    "nome": "Guatambú",
    "estado_id": 42
  },
  {
    "id": 4206702,
    "nome": "Herval d'Oeste",
    "estado_id": 42
  },
  {
    "id": 4206751,
    "nome": "Ibiam",
    "estado_id": 42
  },
  {
    "id": 4206801,
    "nome": "Ibicaré",
    "estado_id": 42
  },
  {
    "id": 4206900,
    "nome": "Ibirama",
    "estado_id": 42
  },
  {
    "id": 4207007,
    "nome": "Içara",
    "estado_id": 42
  },
  {
    "id": 4207106,
    "nome": "Ilhota",
    "estado_id": 42
  },
  {
    "id": 4207205,
    "nome": "Imaruí",
    "estado_id": 42
  },
  {
    "id": 4207304,
    "nome": "Imbituba",
    "estado_id": 42
  },
  {
    "id": 4207403,
    "nome": "Imbuia",
    "estado_id": 42
  },
  {
    "id": 4207502,
    "nome": "Indaial",
    "estado_id": 42
  },
  {
    "id": 4207577,
    "nome": "Iomerê",
    "estado_id": 42
  },
  {
    "id": 4207601,
    "nome": "Ipira",
    "estado_id": 42
  },
  {
    "id": 4207650,
    "nome": "Iporã do Oeste",
    "estado_id": 42
  },
  {
    "id": 4207684,
    "nome": "Ipuaçu",
    "estado_id": 42
  },
  {
    "id": 4207700,
    "nome": "Ipumirim",
    "estado_id": 42
  },
  {
    "id": 4207759,
    "nome": "Iraceminha",
    "estado_id": 42
  },
  {
    "id": 4207809,
    "nome": "Irani",
    "estado_id": 42
  },
  {
    "id": 4207858,
    "nome": "Irati",
    "estado_id": 42
  },
  {
    "id": 4207908,
    "nome": "Irineópolis",
    "estado_id": 42
  },
  {
    "id": 4208005,
    "nome": "Itá",
    "estado_id": 42
  },
  {
    "id": 4208104,
    "nome": "Itaiópolis",
    "estado_id": 42
  },
  {
    "id": 4208203,
    "nome": "Itajaí",
    "estado_id": 42
  },
  {
    "id": 4208302,
    "nome": "Itapema",
    "estado_id": 42
  },
  {
    "id": 4208401,
    "nome": "Itapiranga",
    "estado_id": 42
  },
  {
    "id": 4208450,
    "nome": "Itapoá",
    "estado_id": 42
  },
  {
    "id": 4208500,
    "nome": "Ituporanga",
    "estado_id": 42
  },
  {
    "id": 4208609,
    "nome": "Jaborá",
    "estado_id": 42
  },
  {
    "id": 4208708,
    "nome": "Jacinto Machado",
    "estado_id": 42
  },
  {
    "id": 4208807,
    "nome": "Jaguaruna",
    "estado_id": 42
  },
  {
    "id": 4208906,
    "nome": "Jaraguá do Sul",
    "estado_id": 42
  },
  {
    "id": 4208955,
    "nome": "Jardinópolis",
    "estado_id": 42
  },
  {
    "id": 4209003,
    "nome": "Joaçaba",
    "estado_id": 42
  },
  {
    "id": 4209102,
    "nome": "Joinville",
    "estado_id": 42
  },
  {
    "id": 4209151,
    "nome": "José Boiteux",
    "estado_id": 42
  },
  {
    "id": 4209177,
    "nome": "Jupiá",
    "estado_id": 42
  },
  {
    "id": 4209201,
    "nome": "Lacerdópolis",
    "estado_id": 42
  },
  {
    "id": 4209300,
    "nome": "Lages",
    "estado_id": 42
  },
  {
    "id": 4209409,
    "nome": "Laguna",
    "estado_id": 42
  },
  {
    "id": 4209458,
    "nome": "Lajeado Grande",
    "estado_id": 42
  },
  {
    "id": 4209508,
    "nome": "Laurentino",
    "estado_id": 42
  },
  {
    "id": 4209607,
    "nome": "Lauro Müller",
    "estado_id": 42
  },
  {
    "id": 4209706,
    "nome": "Lebon Régis",
    "estado_id": 42
  },
  {
    "id": 4209805,
    "nome": "Leoberto Leal",
    "estado_id": 42
  },
  {
    "id": 4209854,
    "nome": "Lindóia do Sul",
    "estado_id": 42
  },
  {
    "id": 4209904,
    "nome": "Lontras",
    "estado_id": 42
  },
  {
    "id": 4210001,
    "nome": "Luiz Alves",
    "estado_id": 42
  },
  {
    "id": 4210035,
    "nome": "Luzerna",
    "estado_id": 42
  },
  {
    "id": 4210050,
    "nome": "Macieira",
    "estado_id": 42
  },
  {
    "id": 4210100,
    "nome": "Mafra",
    "estado_id": 42
  },
  {
    "id": 4210209,
    "nome": "Major Gercino",
    "estado_id": 42
  },
  {
    "id": 4210308,
    "nome": "Major Vieira",
    "estado_id": 42
  },
  {
    "id": 4210407,
    "nome": "Maracajá",
    "estado_id": 42
  },
  {
    "id": 4210506,
    "nome": "Maravilha",
    "estado_id": 42
  },
  {
    "id": 4210555,
    "nome": "Marema",
    "estado_id": 42
  },
  {
    "id": 4210605,
    "nome": "Massaranduba",
    "estado_id": 42
  },
  {
    "id": 4210704,
    "nome": "Matos Costa",
    "estado_id": 42
  },
  {
    "id": 4210803,
    "nome": "Meleiro",
    "estado_id": 42
  },
  {
    "id": 4210852,
    "nome": "Mirim Doce",
    "estado_id": 42
  },
  {
    "id": 4210902,
    "nome": "Modelo",
    "estado_id": 42
  },
  {
    "id": 4211009,
    "nome": "Mondaí",
    "estado_id": 42
  },
  {
    "id": 4211058,
    "nome": "Monte Carlo",
    "estado_id": 42
  },
  {
    "id": 4211108,
    "nome": "Monte Castelo",
    "estado_id": 42
  },
  {
    "id": 4211207,
    "nome": "Morro da Fumaça",
    "estado_id": 42
  },
  {
    "id": 4211256,
    "nome": "Morro Grande",
    "estado_id": 42
  },
  {
    "id": 4211306,
    "nome": "Navegantes",
    "estado_id": 42
  },
  {
    "id": 4211405,
    "nome": "Nova Erechim",
    "estado_id": 42
  },
  {
    "id": 4211454,
    "nome": "Nova Itaberaba",
    "estado_id": 42
  },
  {
    "id": 4211504,
    "nome": "Nova Trento",
    "estado_id": 42
  },
  {
    "id": 4211603,
    "nome": "Nova Veneza",
    "estado_id": 42
  },
  {
    "id": 4211652,
    "nome": "Novo Horizonte",
    "estado_id": 42
  },
  {
    "id": 4211702,
    "nome": "Orleans",
    "estado_id": 42
  },
  {
    "id": 4211751,
    "nome": "Otacílio Costa",
    "estado_id": 42
  },
  {
    "id": 4211801,
    "nome": "Ouro",
    "estado_id": 42
  },
  {
    "id": 4211850,
    "nome": "Ouro Verde",
    "estado_id": 42
  },
  {
    "id": 4211876,
    "nome": "Paial",
    "estado_id": 42
  },
  {
    "id": 4211892,
    "nome": "Painel",
    "estado_id": 42
  },
  {
    "id": 4211900,
    "nome": "Palhoça",
    "estado_id": 42
  },
  {
    "id": 4212007,
    "nome": "Palma Sola",
    "estado_id": 42
  },
  {
    "id": 4212056,
    "nome": "Palmeira",
    "estado_id": 42
  },
  {
    "id": 4212106,
    "nome": "Palmitos",
    "estado_id": 42
  },
  {
    "id": 4212205,
    "nome": "Papanduva",
    "estado_id": 42
  },
  {
    "id": 4212239,
    "nome": "Paraíso",
    "estado_id": 42
  },
  {
    "id": 4212254,
    "nome": "Passo de Torres",
    "estado_id": 42
  },
  {
    "id": 4212270,
    "nome": "Passos Maia",
    "estado_id": 42
  },
  {
    "id": 4212304,
    "nome": "Paulo Lopes",
    "estado_id": 42
  },
  {
    "id": 4212403,
    "nome": "Pedras Grandes",
    "estado_id": 42
  },
  {
    "id": 4212502,
    "nome": "Penha",
    "estado_id": 42
  },
  {
    "id": 4212601,
    "nome": "Peritiba",
    "estado_id": 42
  },
  {
    "id": 4212650,
    "nome": "Pescaria Brava",
    "estado_id": 42
  },
  {
    "id": 4212700,
    "nome": "Petrolândia",
    "estado_id": 42
  },
  {
    "id": 4212809,
    "nome": "Balneário Piçarras",
    "estado_id": 42
  },
  {
    "id": 4212908,
    "nome": "Pinhalzinho",
    "estado_id": 42
  },
  {
    "id": 4213005,
    "nome": "Pinheiro Preto",
    "estado_id": 42
  },
  {
    "id": 4213104,
    "nome": "Piratuba",
    "estado_id": 42
  },
  {
    "id": 4213153,
    "nome": "Planalto Alegre",
    "estado_id": 42
  },
  {
    "id": 4213203,
    "nome": "Pomerode",
    "estado_id": 42
  },
  {
    "id": 4213302,
    "nome": "Ponte Alta",
    "estado_id": 42
  },
  {
    "id": 4213351,
    "nome": "Ponte Alta do Norte",
    "estado_id": 42
  },
  {
    "id": 4213401,
    "nome": "Ponte Serrada",
    "estado_id": 42
  },
  {
    "id": 4213500,
    "nome": "Porto Belo",
    "estado_id": 42
  },
  {
    "id": 4213609,
    "nome": "Porto União",
    "estado_id": 42
  },
  {
    "id": 4213708,
    "nome": "Pouso Redondo",
    "estado_id": 42
  },
  {
    "id": 4213807,
    "nome": "Praia Grande",
    "estado_id": 42
  },
  {
    "id": 4213906,
    "nome": "Presidente Castello Branco",
    "estado_id": 42
  },
  {
    "id": 4214003,
    "nome": "Presidente Getúlio",
    "estado_id": 42
  },
  {
    "id": 4214102,
    "nome": "Presidente Nereu",
    "estado_id": 42
  },
  {
    "id": 4214151,
    "nome": "Princesa",
    "estado_id": 42
  },
  {
    "id": 4214201,
    "nome": "Quilombo",
    "estado_id": 42
  },
  {
    "id": 4214300,
    "nome": "Rancho Queimado",
    "estado_id": 42
  },
  {
    "id": 4214409,
    "nome": "Rio das Antas",
    "estado_id": 42
  },
  {
    "id": 4214508,
    "nome": "Rio do Campo",
    "estado_id": 42
  },
  {
    "id": 4214607,
    "nome": "Rio do Oeste",
    "estado_id": 42
  },
  {
    "id": 4214706,
    "nome": "Rio dos Cedros",
    "estado_id": 42
  },
  {
    "id": 4214805,
    "nome": "Rio do Sul",
    "estado_id": 42
  },
  {
    "id": 4214904,
    "nome": "Rio Fortuna",
    "estado_id": 42
  },
  {
    "id": 4215000,
    "nome": "Rio Negrinho",
    "estado_id": 42
  },
  {
    "id": 4215059,
    "nome": "Rio Rufino",
    "estado_id": 42
  },
  {
    "id": 4215075,
    "nome": "Riqueza",
    "estado_id": 42
  },
  {
    "id": 4215109,
    "nome": "Rodeio",
    "estado_id": 42
  },
  {
    "id": 4215208,
    "nome": "Romelândia",
    "estado_id": 42
  },
  {
    "id": 4215307,
    "nome": "Salete",
    "estado_id": 42
  },
  {
    "id": 4215356,
    "nome": "Saltinho",
    "estado_id": 42
  },
  {
    "id": 4215406,
    "nome": "Salto Veloso",
    "estado_id": 42
  },
  {
    "id": 4215455,
    "nome": "Sangão",
    "estado_id": 42
  },
  {
    "id": 4215505,
    "nome": "Santa Cecília",
    "estado_id": 42
  },
  {
    "id": 4215554,
    "nome": "Santa Helena",
    "estado_id": 42
  },
  {
    "id": 4215604,
    "nome": "Santa Rosa de Lima",
    "estado_id": 42
  },
  {
    "id": 4215653,
    "nome": "Santa Rosa do Sul",
    "estado_id": 42
  },
  {
    "id": 4215679,
    "nome": "Santa Terezinha",
    "estado_id": 42
  },
  {
    "id": 4215687,
    "nome": "Santa Terezinha do Progresso",
    "estado_id": 42
  },
  {
    "id": 4215695,
    "nome": "Santiago do Sul",
    "estado_id": 42
  },
  {
    "id": 4215703,
    "nome": "Santo Amaro da Imperatriz",
    "estado_id": 42
  },
  {
    "id": 4215752,
    "nome": "São Bernardino",
    "estado_id": 42
  },
  {
    "id": 4215802,
    "nome": "São Bento do Sul",
    "estado_id": 42
  },
  {
    "id": 4215901,
    "nome": "São Bonifácio",
    "estado_id": 42
  },
  {
    "id": 4216008,
    "nome": "São Carlos",
    "estado_id": 42
  },
  {
    "id": 4216057,
    "nome": "São Cristóvão do Sul",
    "estado_id": 42
  },
  {
    "id": 4216107,
    "nome": "São Domingos",
    "estado_id": 42
  },
  {
    "id": 4216206,
    "nome": "São Francisco do Sul",
    "estado_id": 42
  },
  {
    "id": 4216255,
    "nome": "São João do Oeste",
    "estado_id": 42
  },
  {
    "id": 4216305,
    "nome": "São João Batista",
    "estado_id": 42
  },
  {
    "id": 4216354,
    "nome": "São João do Itaperiú",
    "estado_id": 42
  },
  {
    "id": 4216404,
    "nome": "São João do Sul",
    "estado_id": 42
  },
  {
    "id": 4216503,
    "nome": "São Joaquim",
    "estado_id": 42
  },
  {
    "id": 4216602,
    "nome": "São José",
    "estado_id": 42
  },
  {
    "id": 4216701,
    "nome": "São José do Cedro",
    "estado_id": 42
  },
  {
    "id": 4216800,
    "nome": "São José do Cerrito",
    "estado_id": 42
  },
  {
    "id": 4216909,
    "nome": "São Lourenço do Oeste",
    "estado_id": 42
  },
  {
    "id": 4217006,
    "nome": "São Ludgero",
    "estado_id": 42
  },
  {
    "id": 4217105,
    "nome": "São Martinho",
    "estado_id": 42
  },
  {
    "id": 4217154,
    "nome": "São Miguel da Boa Vista",
    "estado_id": 42
  },
  {
    "id": 4217204,
    "nome": "São Miguel do Oeste",
    "estado_id": 42
  },
  {
    "id": 4217253,
    "nome": "São Pedro de Alcântara",
    "estado_id": 42
  },
  {
    "id": 4217303,
    "nome": "Saudades",
    "estado_id": 42
  },
  {
    "id": 4217402,
    "nome": "Schroeder",
    "estado_id": 42
  },
  {
    "id": 4217501,
    "nome": "Seara",
    "estado_id": 42
  },
  {
    "id": 4217550,
    "nome": "Serra Alta",
    "estado_id": 42
  },
  {
    "id": 4217600,
    "nome": "Siderópolis",
    "estado_id": 42
  },
  {
    "id": 4217709,
    "nome": "Sombrio",
    "estado_id": 42
  },
  {
    "id": 4217758,
    "nome": "Sul Brasil",
    "estado_id": 42
  },
  {
    "id": 4217808,
    "nome": "Taió",
    "estado_id": 42
  },
  {
    "id": 4217907,
    "nome": "Tangará",
    "estado_id": 42
  },
  {
    "id": 4217956,
    "nome": "Tigrinhos",
    "estado_id": 42
  },
  {
    "id": 4218004,
    "nome": "Tijucas",
    "estado_id": 42
  },
  {
    "id": 4218103,
    "nome": "Timbé do Sul",
    "estado_id": 42
  },
  {
    "id": 4218202,
    "nome": "Timbó",
    "estado_id": 42
  },
  {
    "id": 4218251,
    "nome": "Timbó Grande",
    "estado_id": 42
  },
  {
    "id": 4218301,
    "nome": "Três Barras",
    "estado_id": 42
  },
  {
    "id": 4218350,
    "nome": "Treviso",
    "estado_id": 42
  },
  {
    "id": 4218400,
    "nome": "Treze de Maio",
    "estado_id": 42
  },
  {
    "id": 4218509,
    "nome": "Treze Tílias",
    "estado_id": 42
  },
  {
    "id": 4218608,
    "nome": "Trombudo Central",
    "estado_id": 42
  },
  {
    "id": 4218707,
    "nome": "Tubarão",
    "estado_id": 42
  },
  {
    "id": 4218756,
    "nome": "Tunápolis",
    "estado_id": 42
  },
  {
    "id": 4218806,
    "nome": "Turvo",
    "estado_id": 42
  },
  {
    "id": 4218855,
    "nome": "União do Oeste",
    "estado_id": 42
  },
  {
    "id": 4218905,
    "nome": "Urubici",
    "estado_id": 42
  },
  {
    "id": 4218954,
    "nome": "Urupema",
    "estado_id": 42
  },
  {
    "id": 4219002,
    "nome": "Urussanga",
    "estado_id": 42
  },
  {
    "id": 4219101,
    "nome": "Vargeão",
    "estado_id": 42
  },
  {
    "id": 4219150,
    "nome": "Vargem",
    "estado_id": 42
  },
  {
    "id": 4219176,
    "nome": "Vargem Bonita",
    "estado_id": 42
  },
  {
    "id": 4219200,
    "nome": "Vidal Ramos",
    "estado_id": 42
  },
  {
    "id": 4219309,
    "nome": "Videira",
    "estado_id": 42
  },
  {
    "id": 4219358,
    "nome": "Vitor Meireles",
    "estado_id": 42
  },
  {
    "id": 4219408,
    "nome": "Witmarsum",
    "estado_id": 42
  },
  {
    "id": 4219507,
    "nome": "Xanxerê",
    "estado_id": 42
  },
  {
    "id": 4219606,
    "nome": "Xavantina",
    "estado_id": 42
  },
  {
    "id": 4219705,
    "nome": "Xaxim",
    "estado_id": 42
  },
  {
    "id": 4219853,
    "nome": "Zortéa",
    "estado_id": 42
  },
  {
    "id": 4220000,
    "nome": "Balneário Rincão",
    "estado_id": 42
  },
  {
    "id": 4300034,
    "nome": "Aceguá",
    "estado_id": 43
  },
  {
    "id": 4300059,
    "nome": "Água Santa",
    "estado_id": 43
  },
  {
    "id": 4300109,
    "nome": "Agudo",
    "estado_id": 43
  },
  {
    "id": 4300208,
    "nome": "Ajuricaba",
    "estado_id": 43
  },
  {
    "id": 4300307,
    "nome": "Alecrim",
    "estado_id": 43
  },
  {
    "id": 4300406,
    "nome": "Alegrete",
    "estado_id": 43
  },
  {
    "id": 4300455,
    "nome": "Alegria",
    "estado_id": 43
  },
  {
    "id": 4300471,
    "nome": "Almirante Tamandaré do Sul",
    "estado_id": 43
  },
  {
    "id": 4300505,
    "nome": "Alpestre",
    "estado_id": 43
  },
  {
    "id": 4300554,
    "nome": "Alto Alegre",
    "estado_id": 43
  },
  {
    "id": 4300570,
    "nome": "Alto Feliz",
    "estado_id": 43
  },
  {
    "id": 4300604,
    "nome": "Alvorada",
    "estado_id": 43
  },
  {
    "id": 4300638,
    "nome": "Amaral Ferrador",
    "estado_id": 43
  },
  {
    "id": 4300646,
    "nome": "Ametista do Sul",
    "estado_id": 43
  },
  {
    "id": 4300661,
    "nome": "André da Rocha",
    "estado_id": 43
  },
  {
    "id": 4300703,
    "nome": "Anta Gorda",
    "estado_id": 43
  },
  {
    "id": 4300802,
    "nome": "Antônio Prado",
    "estado_id": 43
  },
  {
    "id": 4300851,
    "nome": "Arambaré",
    "estado_id": 43
  },
  {
    "id": 4300877,
    "nome": "Araricá",
    "estado_id": 43
  },
  {
    "id": 4300901,
    "nome": "Aratiba",
    "estado_id": 43
  },
  {
    "id": 4301008,
    "nome": "Arroio do Meio",
    "estado_id": 43
  },
  {
    "id": 4301057,
    "nome": "Arroio do Sal",
    "estado_id": 43
  },
  {
    "id": 4301073,
    "nome": "Arroio do Padre",
    "estado_id": 43
  },
  {
    "id": 4301107,
    "nome": "Arroio dos Ratos",
    "estado_id": 43
  },
  {
    "id": 4301206,
    "nome": "Arroio do Tigre",
    "estado_id": 43
  },
  {
    "id": 4301305,
    "nome": "Arroio Grande",
    "estado_id": 43
  },
  {
    "id": 4301404,
    "nome": "Arvorezinha",
    "estado_id": 43
  },
  {
    "id": 4301503,
    "nome": "Augusto Pestana",
    "estado_id": 43
  },
  {
    "id": 4301552,
    "nome": "Áurea",
    "estado_id": 43
  },
  {
    "id": 4301602,
    "nome": "Bagé",
    "estado_id": 43
  },
  {
    "id": 4301636,
    "nome": "Balneário Pinhal",
    "estado_id": 43
  },
  {
    "id": 4301651,
    "nome": "Barão",
    "estado_id": 43
  },
  {
    "id": 4301701,
    "nome": "Barão de Cotegipe",
    "estado_id": 43
  },
  {
    "id": 4301750,
    "nome": "Barão do Triunfo",
    "estado_id": 43
  },
  {
    "id": 4301800,
    "nome": "Barracão",
    "estado_id": 43
  },
  {
    "id": 4301859,
    "nome": "Barra do Guarita",
    "estado_id": 43
  },
  {
    "id": 4301875,
    "nome": "Barra do Quaraí",
    "estado_id": 43
  },
  {
    "id": 4301909,
    "nome": "Barra do Ribeiro",
    "estado_id": 43
  },
  {
    "id": 4301925,
    "nome": "Barra do Rio Azul",
    "estado_id": 43
  },
  {
    "id": 4301958,
    "nome": "Barra Funda",
    "estado_id": 43
  },
  {
    "id": 4302006,
    "nome": "Barros Cassal",
    "estado_id": 43
  },
  {
    "id": 4302055,
    "nome": "Benjamin Constant do Sul",
    "estado_id": 43
  },
  {
    "id": 4302105,
    "nome": "Bento Gonçalves",
    "estado_id": 43
  },
  {
    "id": 4302154,
    "nome": "Boa Vista das Missões",
    "estado_id": 43
  },
  {
    "id": 4302204,
    "nome": "Boa Vista do Buricá",
    "estado_id": 43
  },
  {
    "id": 4302220,
    "nome": "Boa Vista do Cadeado",
    "estado_id": 43
  },
  {
    "id": 4302238,
    "nome": "Boa Vista do Incra",
    "estado_id": 43
  },
  {
    "id": 4302253,
    "nome": "Boa Vista do Sul",
    "estado_id": 43
  },
  {
    "id": 4302303,
    "nome": "Bom Jesus",
    "estado_id": 43
  },
  {
    "id": 4302352,
    "nome": "Bom Princípio",
    "estado_id": 43
  },
  {
    "id": 4302378,
    "nome": "Bom Progresso",
    "estado_id": 43
  },
  {
    "id": 4302402,
    "nome": "Bom Retiro do Sul",
    "estado_id": 43
  },
  {
    "id": 4302451,
    "nome": "Boqueirão do Leão",
    "estado_id": 43
  },
  {
    "id": 4302501,
    "nome": "Bossoroca",
    "estado_id": 43
  },
  {
    "id": 4302584,
    "nome": "Bozano",
    "estado_id": 43
  },
  {
    "id": 4302600,
    "nome": "Braga",
    "estado_id": 43
  },
  {
    "id": 4302659,
    "nome": "Brochier",
    "estado_id": 43
  },
  {
    "id": 4302709,
    "nome": "Butiá",
    "estado_id": 43
  },
  {
    "id": 4302808,
    "nome": "Caçapava do Sul",
    "estado_id": 43
  },
  {
    "id": 4302907,
    "nome": "Cacequi",
    "estado_id": 43
  },
  {
    "id": 4303004,
    "nome": "Cachoeira do Sul",
    "estado_id": 43
  },
  {
    "id": 4303103,
    "nome": "Cachoeirinha",
    "estado_id": 43
  },
  {
    "id": 4303202,
    "nome": "Cacique Doble",
    "estado_id": 43
  },
  {
    "id": 4303301,
    "nome": "Caibaté",
    "estado_id": 43
  },
  {
    "id": 4303400,
    "nome": "Caiçara",
    "estado_id": 43
  },
  {
    "id": 4303509,
    "nome": "Camaquã",
    "estado_id": 43
  },
  {
    "id": 4303558,
    "nome": "Camargo",
    "estado_id": 43
  },
  {
    "id": 4303608,
    "nome": "Cambará do Sul",
    "estado_id": 43
  },
  {
    "id": 4303673,
    "nome": "Campestre da Serra",
    "estado_id": 43
  },
  {
    "id": 4303707,
    "nome": "Campina das Missões",
    "estado_id": 43
  },
  {
    "id": 4303806,
    "nome": "Campinas do Sul",
    "estado_id": 43
  },
  {
    "id": 4303905,
    "nome": "Campo Bom",
    "estado_id": 43
  },
  {
    "id": 4304002,
    "nome": "Campo Novo",
    "estado_id": 43
  },
  {
    "id": 4304101,
    "nome": "Campos Borges",
    "estado_id": 43
  },
  {
    "id": 4304200,
    "nome": "Candelária",
    "estado_id": 43
  },
  {
    "id": 4304309,
    "nome": "Cândido Godói",
    "estado_id": 43
  },
  {
    "id": 4304358,
    "nome": "Candiota",
    "estado_id": 43
  },
  {
    "id": 4304408,
    "nome": "Canela",
    "estado_id": 43
  },
  {
    "id": 4304507,
    "nome": "Canguçu",
    "estado_id": 43
  },
  {
    "id": 4304606,
    "nome": "Canoas",
    "estado_id": 43
  },
  {
    "id": 4304614,
    "nome": "Canudos do Vale",
    "estado_id": 43
  },
  {
    "id": 4304622,
    "nome": "Capão Bonito do Sul",
    "estado_id": 43
  },
  {
    "id": 4304630,
    "nome": "Capão da Canoa",
    "estado_id": 43
  },
  {
    "id": 4304655,
    "nome": "Capão do Cipó",
    "estado_id": 43
  },
  {
    "id": 4304663,
    "nome": "Capão do Leão",
    "estado_id": 43
  },
  {
    "id": 4304671,
    "nome": "Capivari do Sul",
    "estado_id": 43
  },
  {
    "id": 4304689,
    "nome": "Capela de Santana",
    "estado_id": 43
  },
  {
    "id": 4304697,
    "nome": "Capitão",
    "estado_id": 43
  },
  {
    "id": 4304705,
    "nome": "Carazinho",
    "estado_id": 43
  },
  {
    "id": 4304713,
    "nome": "Caraá",
    "estado_id": 43
  },
  {
    "id": 4304804,
    "nome": "Carlos Barbosa",
    "estado_id": 43
  },
  {
    "id": 4304853,
    "nome": "Carlos Gomes",
    "estado_id": 43
  },
  {
    "id": 4304903,
    "nome": "Casca",
    "estado_id": 43
  },
  {
    "id": 4304952,
    "nome": "Caseiros",
    "estado_id": 43
  },
  {
    "id": 4305009,
    "nome": "Catuípe",
    "estado_id": 43
  },
  {
    "id": 4305108,
    "nome": "Caxias do Sul",
    "estado_id": 43
  },
  {
    "id": 4305116,
    "nome": "Centenário",
    "estado_id": 43
  },
  {
    "id": 4305124,
    "nome": "Cerrito",
    "estado_id": 43
  },
  {
    "id": 4305132,
    "nome": "Cerro Branco",
    "estado_id": 43
  },
  {
    "id": 4305157,
    "nome": "Cerro Grande",
    "estado_id": 43
  },
  {
    "id": 4305173,
    "nome": "Cerro Grande do Sul",
    "estado_id": 43
  },
  {
    "id": 4305207,
    "nome": "Cerro Largo",
    "estado_id": 43
  },
  {
    "id": 4305306,
    "nome": "Chapada",
    "estado_id": 43
  },
  {
    "id": 4305355,
    "nome": "Charqueadas",
    "estado_id": 43
  },
  {
    "id": 4305371,
    "nome": "Charrua",
    "estado_id": 43
  },
  {
    "id": 4305405,
    "nome": "Chiapetta",
    "estado_id": 43
  },
  {
    "id": 4305439,
    "nome": "Chuí",
    "estado_id": 43
  },
  {
    "id": 4305447,
    "nome": "Chuvisca",
    "estado_id": 43
  },
  {
    "id": 4305454,
    "nome": "Cidreira",
    "estado_id": 43
  },
  {
    "id": 4305504,
    "nome": "Ciríaco",
    "estado_id": 43
  },
  {
    "id": 4305587,
    "nome": "Colinas",
    "estado_id": 43
  },
  {
    "id": 4305603,
    "nome": "Colorado",
    "estado_id": 43
  },
  {
    "id": 4305702,
    "nome": "Condor",
    "estado_id": 43
  },
  {
    "id": 4305801,
    "nome": "Constantina",
    "estado_id": 43
  },
  {
    "id": 4305835,
    "nome": "Coqueiro Baixo",
    "estado_id": 43
  },
  {
    "id": 4305850,
    "nome": "Coqueiros do Sul",
    "estado_id": 43
  },
  {
    "id": 4305871,
    "nome": "Coronel Barros",
    "estado_id": 43
  },
  {
    "id": 4305900,
    "nome": "Coronel Bicaco",
    "estado_id": 43
  },
  {
    "id": 4305934,
    "nome": "Coronel Pilar",
    "estado_id": 43
  },
  {
    "id": 4305959,
    "nome": "Cotiporã",
    "estado_id": 43
  },
  {
    "id": 4305975,
    "nome": "Coxilha",
    "estado_id": 43
  },
  {
    "id": 4306007,
    "nome": "Crissiumal",
    "estado_id": 43
  },
  {
    "id": 4306056,
    "nome": "Cristal",
    "estado_id": 43
  },
  {
    "id": 4306072,
    "nome": "Cristal do Sul",
    "estado_id": 43
  },
  {
    "id": 4306106,
    "nome": "Cruz Alta",
    "estado_id": 43
  },
  {
    "id": 4306130,
    "nome": "Cruzaltense",
    "estado_id": 43
  },
  {
    "id": 4306205,
    "nome": "Cruzeiro do Sul",
    "estado_id": 43
  },
  {
    "id": 4306304,
    "nome": "David Canabarro",
    "estado_id": 43
  },
  {
    "id": 4306320,
    "nome": "Derrubadas",
    "estado_id": 43
  },
  {
    "id": 4306353,
    "nome": "Dezesseis de Novembro",
    "estado_id": 43
  },
  {
    "id": 4306379,
    "nome": "Dilermando de Aguiar",
    "estado_id": 43
  },
  {
    "id": 4306403,
    "nome": "Dois Irmãos",
    "estado_id": 43
  },
  {
    "id": 4306429,
    "nome": "Dois Irmãos das Missões",
    "estado_id": 43
  },
  {
    "id": 4306452,
    "nome": "Dois Lajeados",
    "estado_id": 43
  },
  {
    "id": 4306502,
    "nome": "Dom Feliciano",
    "estado_id": 43
  },
  {
    "id": 4306551,
    "nome": "Dom Pedro de Alcântara",
    "estado_id": 43
  },
  {
    "id": 4306601,
    "nome": "Dom Pedrito",
    "estado_id": 43
  },
  {
    "id": 4306700,
    "nome": "Dona Francisca",
    "estado_id": 43
  },
  {
    "id": 4306734,
    "nome": "Doutor Maurício Cardoso",
    "estado_id": 43
  },
  {
    "id": 4306759,
    "nome": "Doutor Ricardo",
    "estado_id": 43
  },
  {
    "id": 4306767,
    "nome": "Eldorado do Sul",
    "estado_id": 43
  },
  {
    "id": 4306809,
    "nome": "Encantado",
    "estado_id": 43
  },
  {
    "id": 4306908,
    "nome": "Encruzilhada do Sul",
    "estado_id": 43
  },
  {
    "id": 4306924,
    "nome": "Engenho Velho",
    "estado_id": 43
  },
  {
    "id": 4306932,
    "nome": "Entre-Ijuís",
    "estado_id": 43
  },
  {
    "id": 4306957,
    "nome": "Entre Rios do Sul",
    "estado_id": 43
  },
  {
    "id": 4306973,
    "nome": "Erebango",
    "estado_id": 43
  },
  {
    "id": 4307005,
    "nome": "Erechim",
    "estado_id": 43
  },
  {
    "id": 4307054,
    "nome": "Ernestina",
    "estado_id": 43
  },
  {
    "id": 4307104,
    "nome": "Herval",
    "estado_id": 43
  },
  {
    "id": 4307203,
    "nome": "Erval Grande",
    "estado_id": 43
  },
  {
    "id": 4307302,
    "nome": "Erval Seco",
    "estado_id": 43
  },
  {
    "id": 4307401,
    "nome": "Esmeralda",
    "estado_id": 43
  },
  {
    "id": 4307450,
    "nome": "Esperança do Sul",
    "estado_id": 43
  },
  {
    "id": 4307500,
    "nome": "Espumoso",
    "estado_id": 43
  },
  {
    "id": 4307559,
    "nome": "Estação",
    "estado_id": 43
  },
  {
    "id": 4307609,
    "nome": "Estância Velha",
    "estado_id": 43
  },
  {
    "id": 4307708,
    "nome": "Esteio",
    "estado_id": 43
  },
  {
    "id": 4307807,
    "nome": "Estrela",
    "estado_id": 43
  },
  {
    "id": 4307815,
    "nome": "Estrela Velha",
    "estado_id": 43
  },
  {
    "id": 4307831,
    "nome": "Eugênio de Castro",
    "estado_id": 43
  },
  {
    "id": 4307864,
    "nome": "Fagundes Varela",
    "estado_id": 43
  },
  {
    "id": 4307906,
    "nome": "Farroupilha",
    "estado_id": 43
  },
  {
    "id": 4308003,
    "nome": "Faxinal do Soturno",
    "estado_id": 43
  },
  {
    "id": 4308052,
    "nome": "Faxinalzinho",
    "estado_id": 43
  },
  {
    "id": 4308078,
    "nome": "Fazenda Vilanova",
    "estado_id": 43
  },
  {
    "id": 4308102,
    "nome": "Feliz",
    "estado_id": 43
  },
  {
    "id": 4308201,
    "nome": "Flores da Cunha",
    "estado_id": 43
  },
  {
    "id": 4308250,
    "nome": "Floriano Peixoto",
    "estado_id": 43
  },
  {
    "id": 4308300,
    "nome": "Fontoura Xavier",
    "estado_id": 43
  },
  {
    "id": 4308409,
    "nome": "Formigueiro",
    "estado_id": 43
  },
  {
    "id": 4308433,
    "nome": "Forquetinha",
    "estado_id": 43
  },
  {
    "id": 4308458,
    "nome": "Fortaleza dos Valos",
    "estado_id": 43
  },
  {
    "id": 4308508,
    "nome": "Frederico Westphalen",
    "estado_id": 43
  },
  {
    "id": 4308607,
    "nome": "Garibaldi",
    "estado_id": 43
  },
  {
    "id": 4308656,
    "nome": "Garruchos",
    "estado_id": 43
  },
  {
    "id": 4308706,
    "nome": "Gaurama",
    "estado_id": 43
  },
  {
    "id": 4308805,
    "nome": "General Câmara",
    "estado_id": 43
  },
  {
    "id": 4308854,
    "nome": "Gentil",
    "estado_id": 43
  },
  {
    "id": 4308904,
    "nome": "Getúlio Vargas",
    "estado_id": 43
  },
  {
    "id": 4309001,
    "nome": "Giruá",
    "estado_id": 43
  },
  {
    "id": 4309050,
    "nome": "Glorinha",
    "estado_id": 43
  },
  {
    "id": 4309100,
    "nome": "Gramado",
    "estado_id": 43
  },
  {
    "id": 4309126,
    "nome": "Gramado dos Loureiros",
    "estado_id": 43
  },
  {
    "id": 4309159,
    "nome": "Gramado Xavier",
    "estado_id": 43
  },
  {
    "id": 4309209,
    "nome": "Gravataí",
    "estado_id": 43
  },
  {
    "id": 4309258,
    "nome": "Guabiju",
    "estado_id": 43
  },
  {
    "id": 4309308,
    "nome": "Guaíba",
    "estado_id": 43
  },
  {
    "id": 4309407,
    "nome": "Guaporé",
    "estado_id": 43
  },
  {
    "id": 4309506,
    "nome": "Guarani das Missões",
    "estado_id": 43
  },
  {
    "id": 4309555,
    "nome": "Harmonia",
    "estado_id": 43
  },
  {
    "id": 4309571,
    "nome": "Herveiras",
    "estado_id": 43
  },
  {
    "id": 4309605,
    "nome": "Horizontina",
    "estado_id": 43
  },
  {
    "id": 4309654,
    "nome": "Hulha Negra",
    "estado_id": 43
  },
  {
    "id": 4309704,
    "nome": "Humaitá",
    "estado_id": 43
  },
  {
    "id": 4309753,
    "nome": "Ibarama",
    "estado_id": 43
  },
  {
    "id": 4309803,
    "nome": "Ibiaçá",
    "estado_id": 43
  },
  {
    "id": 4309902,
    "nome": "Ibiraiaras",
    "estado_id": 43
  },
  {
    "id": 4309951,
    "nome": "Ibirapuitã",
    "estado_id": 43
  },
  {
    "id": 4310009,
    "nome": "Ibirubá",
    "estado_id": 43
  },
  {
    "id": 4310108,
    "nome": "Igrejinha",
    "estado_id": 43
  },
  {
    "id": 4310207,
    "nome": "Ijuí",
    "estado_id": 43
  },
  {
    "id": 4310306,
    "nome": "Ilópolis",
    "estado_id": 43
  },
  {
    "id": 4310330,
    "nome": "Imbé",
    "estado_id": 43
  },
  {
    "id": 4310363,
    "nome": "Imigrante",
    "estado_id": 43
  },
  {
    "id": 4310405,
    "nome": "Independência",
    "estado_id": 43
  },
  {
    "id": 4310413,
    "nome": "Inhacorá",
    "estado_id": 43
  },
  {
    "id": 4310439,
    "nome": "Ipê",
    "estado_id": 43
  },
  {
    "id": 4310462,
    "nome": "Ipiranga do Sul",
    "estado_id": 43
  },
  {
    "id": 4310504,
    "nome": "Iraí",
    "estado_id": 43
  },
  {
    "id": 4310538,
    "nome": "Itaara",
    "estado_id": 43
  },
  {
    "id": 4310553,
    "nome": "Itacurubi",
    "estado_id": 43
  },
  {
    "id": 4310579,
    "nome": "Itapuca",
    "estado_id": 43
  },
  {
    "id": 4310603,
    "nome": "Itaqui",
    "estado_id": 43
  },
  {
    "id": 4310652,
    "nome": "Itati",
    "estado_id": 43
  },
  {
    "id": 4310702,
    "nome": "Itatiba do Sul",
    "estado_id": 43
  },
  {
    "id": 4310751,
    "nome": "Ivorá",
    "estado_id": 43
  },
  {
    "id": 4310801,
    "nome": "Ivoti",
    "estado_id": 43
  },
  {
    "id": 4310850,
    "nome": "Jaboticaba",
    "estado_id": 43
  },
  {
    "id": 4310876,
    "nome": "Jacuizinho",
    "estado_id": 43
  },
  {
    "id": 4310900,
    "nome": "Jacutinga",
    "estado_id": 43
  },
  {
    "id": 4311007,
    "nome": "Jaguarão",
    "estado_id": 43
  },
  {
    "id": 4311106,
    "nome": "Jaguari",
    "estado_id": 43
  },
  {
    "id": 4311122,
    "nome": "Jaquirana",
    "estado_id": 43
  },
  {
    "id": 4311130,
    "nome": "Jari",
    "estado_id": 43
  },
  {
    "id": 4311155,
    "nome": "Jóia",
    "estado_id": 43
  },
  {
    "id": 4311205,
    "nome": "Júlio de Castilhos",
    "estado_id": 43
  },
  {
    "id": 4311239,
    "nome": "Lagoa Bonita do Sul",
    "estado_id": 43
  },
  {
    "id": 4311254,
    "nome": "Lagoão",
    "estado_id": 43
  },
  {
    "id": 4311270,
    "nome": "Lagoa dos Três Cantos",
    "estado_id": 43
  },
  {
    "id": 4311304,
    "nome": "Lagoa Vermelha",
    "estado_id": 43
  },
  {
    "id": 4311403,
    "nome": "Lajeado",
    "estado_id": 43
  },
  {
    "id": 4311429,
    "nome": "Lajeado do Bugre",
    "estado_id": 43
  },
  {
    "id": 4311502,
    "nome": "Lavras do Sul",
    "estado_id": 43
  },
  {
    "id": 4311601,
    "nome": "Liberato Salzano",
    "estado_id": 43
  },
  {
    "id": 4311627,
    "nome": "Lindolfo Collor",
    "estado_id": 43
  },
  {
    "id": 4311643,
    "nome": "Linha Nova",
    "estado_id": 43
  },
  {
    "id": 4311700,
    "nome": "Machadinho",
    "estado_id": 43
  },
  {
    "id": 4311718,
    "nome": "Maçambará",
    "estado_id": 43
  },
  {
    "id": 4311734,
    "nome": "Mampituba",
    "estado_id": 43
  },
  {
    "id": 4311759,
    "nome": "Manoel Viana",
    "estado_id": 43
  },
  {
    "id": 4311775,
    "nome": "Maquiné",
    "estado_id": 43
  },
  {
    "id": 4311791,
    "nome": "Maratá",
    "estado_id": 43
  },
  {
    "id": 4311809,
    "nome": "Marau",
    "estado_id": 43
  },
  {
    "id": 4311908,
    "nome": "Marcelino Ramos",
    "estado_id": 43
  },
  {
    "id": 4311981,
    "nome": "Mariana Pimentel",
    "estado_id": 43
  },
  {
    "id": 4312005,
    "nome": "Mariano Moro",
    "estado_id": 43
  },
  {
    "id": 4312054,
    "nome": "Marques de Souza",
    "estado_id": 43
  },
  {
    "id": 4312104,
    "nome": "Mata",
    "estado_id": 43
  },
  {
    "id": 4312138,
    "nome": "Mato Castelhano",
    "estado_id": 43
  },
  {
    "id": 4312153,
    "nome": "Mato Leitão",
    "estado_id": 43
  },
  {
    "id": 4312179,
    "nome": "Mato Queimado",
    "estado_id": 43
  },
  {
    "id": 4312203,
    "nome": "Maximiliano de Almeida",
    "estado_id": 43
  },
  {
    "id": 4312252,
    "nome": "Minas do Leão",
    "estado_id": 43
  },
  {
    "id": 4312302,
    "nome": "Miraguaí",
    "estado_id": 43
  },
  {
    "id": 4312351,
    "nome": "Montauri",
    "estado_id": 43
  },
  {
    "id": 4312377,
    "nome": "Monte Alegre dos Campos",
    "estado_id": 43
  },
  {
    "id": 4312385,
    "nome": "Monte Belo do Sul",
    "estado_id": 43
  },
  {
    "id": 4312401,
    "nome": "Montenegro",
    "estado_id": 43
  },
  {
    "id": 4312427,
    "nome": "Mormaço",
    "estado_id": 43
  },
  {
    "id": 4312443,
    "nome": "Morrinhos do Sul",
    "estado_id": 43
  },
  {
    "id": 4312450,
    "nome": "Morro Redondo",
    "estado_id": 43
  },
  {
    "id": 4312476,
    "nome": "Morro Reuter",
    "estado_id": 43
  },
  {
    "id": 4312500,
    "nome": "Mostardas",
    "estado_id": 43
  },
  {
    "id": 4312609,
    "nome": "Muçum",
    "estado_id": 43
  },
  {
    "id": 4312617,
    "nome": "Muitos Capões",
    "estado_id": 43
  },
  {
    "id": 4312625,
    "nome": "Muliterno",
    "estado_id": 43
  },
  {
    "id": 4312658,
    "nome": "Não-Me-Toque",
    "estado_id": 43
  },
  {
    "id": 4312674,
    "nome": "Nicolau Vergueiro",
    "estado_id": 43
  },
  {
    "id": 4312708,
    "nome": "Nonoai",
    "estado_id": 43
  },
  {
    "id": 4312757,
    "nome": "Nova Alvorada",
    "estado_id": 43
  },
  {
    "id": 4312807,
    "nome": "Nova Araçá",
    "estado_id": 43
  },
  {
    "id": 4312906,
    "nome": "Nova Bassano",
    "estado_id": 43
  },
  {
    "id": 4312955,
    "nome": "Nova Boa Vista",
    "estado_id": 43
  },
  {
    "id": 4313003,
    "nome": "Nova Bréscia",
    "estado_id": 43
  },
  {
    "id": 4313011,
    "nome": "Nova Candelária",
    "estado_id": 43
  },
  {
    "id": 4313037,
    "nome": "Nova Esperança do Sul",
    "estado_id": 43
  },
  {
    "id": 4313060,
    "nome": "Nova Hartz",
    "estado_id": 43
  },
  {
    "id": 4313086,
    "nome": "Nova Pádua",
    "estado_id": 43
  },
  {
    "id": 4313102,
    "nome": "Nova Palma",
    "estado_id": 43
  },
  {
    "id": 4313201,
    "nome": "Nova Petrópolis",
    "estado_id": 43
  },
  {
    "id": 4313300,
    "nome": "Nova Prata",
    "estado_id": 43
  },
  {
    "id": 4313334,
    "nome": "Nova Ramada",
    "estado_id": 43
  },
  {
    "id": 4313359,
    "nome": "Nova Roma do Sul",
    "estado_id": 43
  },
  {
    "id": 4313375,
    "nome": "Nova Santa Rita",
    "estado_id": 43
  },
  {
    "id": 4313391,
    "nome": "Novo Cabrais",
    "estado_id": 43
  },
  {
    "id": 4313409,
    "nome": "Novo Hamburgo",
    "estado_id": 43
  },
  {
    "id": 4313425,
    "nome": "Novo Machado",
    "estado_id": 43
  },
  {
    "id": 4313441,
    "nome": "Novo Tiradentes",
    "estado_id": 43
  },
  {
    "id": 4313466,
    "nome": "Novo Xingu",
    "estado_id": 43
  },
  {
    "id": 4313490,
    "nome": "Novo Barreiro",
    "estado_id": 43
  },
  {
    "id": 4313508,
    "nome": "Osório",
    "estado_id": 43
  },
  {
    "id": 4313607,
    "nome": "Paim Filho",
    "estado_id": 43
  },
  {
    "id": 4313656,
    "nome": "Palmares do Sul",
    "estado_id": 43
  },
  {
    "id": 4313706,
    "nome": "Palmeira das Missões",
    "estado_id": 43
  },
  {
    "id": 4313805,
    "nome": "Palmitinho",
    "estado_id": 43
  },
  {
    "id": 4313904,
    "nome": "Panambi",
    "estado_id": 43
  },
  {
    "id": 4313953,
    "nome": "Pantano Grande",
    "estado_id": 43
  },
  {
    "id": 4314001,
    "nome": "Paraí",
    "estado_id": 43
  },
  {
    "id": 4314027,
    "nome": "Paraíso do Sul",
    "estado_id": 43
  },
  {
    "id": 4314035,
    "nome": "Pareci Novo",
    "estado_id": 43
  },
  {
    "id": 4314050,
    "nome": "Parobé",
    "estado_id": 43
  },
  {
    "id": 4314068,
    "nome": "Passa Sete",
    "estado_id": 43
  },
  {
    "id": 4314076,
    "nome": "Passo do Sobrado",
    "estado_id": 43
  },
  {
    "id": 4314100,
    "nome": "Passo Fundo",
    "estado_id": 43
  },
  {
    "id": 4314134,
    "nome": "Paulo Bento",
    "estado_id": 43
  },
  {
    "id": 4314159,
    "nome": "Paverama",
    "estado_id": 43
  },
  {
    "id": 4314175,
    "nome": "Pedras Altas",
    "estado_id": 43
  },
  {
    "id": 4314209,
    "nome": "Pedro Osório",
    "estado_id": 43
  },
  {
    "id": 4314308,
    "nome": "Pejuçara",
    "estado_id": 43
  },
  {
    "id": 4314407,
    "nome": "Pelotas",
    "estado_id": 43
  },
  {
    "id": 4314423,
    "nome": "Picada Café",
    "estado_id": 43
  },
  {
    "id": 4314456,
    "nome": "Pinhal",
    "estado_id": 43
  },
  {
    "id": 4314464,
    "nome": "Pinhal da Serra",
    "estado_id": 43
  },
  {
    "id": 4314472,
    "nome": "Pinhal Grande",
    "estado_id": 43
  },
  {
    "id": 4314498,
    "nome": "Pinheirinho do Vale",
    "estado_id": 43
  },
  {
    "id": 4314506,
    "nome": "Pinheiro Machado",
    "estado_id": 43
  },
  {
    "id": 4314548,
    "nome": "Pinto Bandeira",
    "estado_id": 43
  },
  {
    "id": 4314555,
    "nome": "Pirapó",
    "estado_id": 43
  },
  {
    "id": 4314605,
    "nome": "Piratini",
    "estado_id": 43
  },
  {
    "id": 4314704,
    "nome": "Planalto",
    "estado_id": 43
  },
  {
    "id": 4314753,
    "nome": "Poço das Antas",
    "estado_id": 43
  },
  {
    "id": 4314779,
    "nome": "Pontão",
    "estado_id": 43
  },
  {
    "id": 4314787,
    "nome": "Ponte Preta",
    "estado_id": 43
  },
  {
    "id": 4314803,
    "nome": "Portão",
    "estado_id": 43
  },
  {
    "id": 4314902,
    "nome": "Porto Alegre",
    "estado_id": 43
  },
  {
    "id": 4315008,
    "nome": "Porto Lucena",
    "estado_id": 43
  },
  {
    "id": 4315057,
    "nome": "Porto Mauá",
    "estado_id": 43
  },
  {
    "id": 4315073,
    "nome": "Porto Vera Cruz",
    "estado_id": 43
  },
  {
    "id": 4315107,
    "nome": "Porto Xavier",
    "estado_id": 43
  },
  {
    "id": 4315131,
    "nome": "Pouso Novo",
    "estado_id": 43
  },
  {
    "id": 4315149,
    "nome": "Presidente Lucena",
    "estado_id": 43
  },
  {
    "id": 4315156,
    "nome": "Progresso",
    "estado_id": 43
  },
  {
    "id": 4315172,
    "nome": "Protásio Alves",
    "estado_id": 43
  },
  {
    "id": 4315206,
    "nome": "Putinga",
    "estado_id": 43
  },
  {
    "id": 4315305,
    "nome": "Quaraí",
    "estado_id": 43
  },
  {
    "id": 4315313,
    "nome": "Quatro Irmãos",
    "estado_id": 43
  },
  {
    "id": 4315321,
    "nome": "Quevedos",
    "estado_id": 43
  },
  {
    "id": 4315354,
    "nome": "Quinze de Novembro",
    "estado_id": 43
  },
  {
    "id": 4315404,
    "nome": "Redentora",
    "estado_id": 43
  },
  {
    "id": 4315453,
    "nome": "Relvado",
    "estado_id": 43
  },
  {
    "id": 4315503,
    "nome": "Restinga Sêca",
    "estado_id": 43
  },
  {
    "id": 4315552,
    "nome": "Rio dos Índios",
    "estado_id": 43
  },
  {
    "id": 4315602,
    "nome": "Rio Grande",
    "estado_id": 43
  },
  {
    "id": 4315701,
    "nome": "Rio Pardo",
    "estado_id": 43
  },
  {
    "id": 4315750,
    "nome": "Riozinho",
    "estado_id": 43
  },
  {
    "id": 4315800,
    "nome": "Roca Sales",
    "estado_id": 43
  },
  {
    "id": 4315909,
    "nome": "Rodeio Bonito",
    "estado_id": 43
  },
  {
    "id": 4315958,
    "nome": "Rolador",
    "estado_id": 43
  },
  {
    "id": 4316006,
    "nome": "Rolante",
    "estado_id": 43
  },
  {
    "id": 4316105,
    "nome": "Ronda Alta",
    "estado_id": 43
  },
  {
    "id": 4316204,
    "nome": "Rondinha",
    "estado_id": 43
  },
  {
    "id": 4316303,
    "nome": "Roque Gonzales",
    "estado_id": 43
  },
  {
    "id": 4316402,
    "nome": "Rosário do Sul",
    "estado_id": 43
  },
  {
    "id": 4316428,
    "nome": "Sagrada Família",
    "estado_id": 43
  },
  {
    "id": 4316436,
    "nome": "Saldanha Marinho",
    "estado_id": 43
  },
  {
    "id": 4316451,
    "nome": "Salto do Jacuí",
    "estado_id": 43
  },
  {
    "id": 4316477,
    "nome": "Salvador das Missões",
    "estado_id": 43
  },
  {
    "id": 4316501,
    "nome": "Salvador do Sul",
    "estado_id": 43
  },
  {
    "id": 4316600,
    "nome": "Sananduva",
    "estado_id": 43
  },
  {
    "id": 4316709,
    "nome": "Santa Bárbara do Sul",
    "estado_id": 43
  },
  {
    "id": 4316733,
    "nome": "Santa Cecília do Sul",
    "estado_id": 43
  },
  {
    "id": 4316758,
    "nome": "Santa Clara do Sul",
    "estado_id": 43
  },
  {
    "id": 4316808,
    "nome": "Santa Cruz do Sul",
    "estado_id": 43
  },
  {
    "id": 4316907,
    "nome": "Santa Maria",
    "estado_id": 43
  },
  {
    "id": 4316956,
    "nome": "Santa Maria do Herval",
    "estado_id": 43
  },
  {
    "id": 4316972,
    "nome": "Santa Margarida do Sul",
    "estado_id": 43
  },
  {
    "id": 4317004,
    "nome": "Santana da Boa Vista",
    "estado_id": 43
  },
  {
    "id": 4317103,
    "nome": "Sant'Ana do Livramento",
    "estado_id": 43
  },
  {
    "id": 4317202,
    "nome": "Santa Rosa",
    "estado_id": 43
  },
  {
    "id": 4317251,
    "nome": "Santa Tereza",
    "estado_id": 43
  },
  {
    "id": 4317301,
    "nome": "Santa Vitória do Palmar",
    "estado_id": 43
  },
  {
    "id": 4317400,
    "nome": "Santiago",
    "estado_id": 43
  },
  {
    "id": 4317509,
    "nome": "Santo Ângelo",
    "estado_id": 43
  },
  {
    "id": 4317558,
    "nome": "Santo Antônio do Palma",
    "estado_id": 43
  },
  {
    "id": 4317608,
    "nome": "Santo Antônio da Patrulha",
    "estado_id": 43
  },
  {
    "id": 4317707,
    "nome": "Santo Antônio das Missões",
    "estado_id": 43
  },
  {
    "id": 4317756,
    "nome": "Santo Antônio do Planalto",
    "estado_id": 43
  },
  {
    "id": 4317806,
    "nome": "Santo Augusto",
    "estado_id": 43
  },
  {
    "id": 4317905,
    "nome": "Santo Cristo",
    "estado_id": 43
  },
  {
    "id": 4317954,
    "nome": "Santo Expedito do Sul",
    "estado_id": 43
  },
  {
    "id": 4318002,
    "nome": "São Borja",
    "estado_id": 43
  },
  {
    "id": 4318051,
    "nome": "São Domingos do Sul",
    "estado_id": 43
  },
  {
    "id": 4318101,
    "nome": "São Francisco de Assis",
    "estado_id": 43
  },
  {
    "id": 4318200,
    "nome": "São Francisco de Paula",
    "estado_id": 43
  },
  {
    "id": 4318309,
    "nome": "São Gabriel",
    "estado_id": 43
  },
  {
    "id": 4318408,
    "nome": "São Jerônimo",
    "estado_id": 43
  },
  {
    "id": 4318424,
    "nome": "São João da Urtiga",
    "estado_id": 43
  },
  {
    "id": 4318432,
    "nome": "São João do Polêsine",
    "estado_id": 43
  },
  {
    "id": 4318440,
    "nome": "São Jorge",
    "estado_id": 43
  },
  {
    "id": 4318457,
    "nome": "São José das Missões",
    "estado_id": 43
  },
  {
    "id": 4318465,
    "nome": "São José do Herval",
    "estado_id": 43
  },
  {
    "id": 4318481,
    "nome": "São José do Hortêncio",
    "estado_id": 43
  },
  {
    "id": 4318499,
    "nome": "São José do Inhacorá",
    "estado_id": 43
  },
  {
    "id": 4318507,
    "nome": "São José do Norte",
    "estado_id": 43
  },
  {
    "id": 4318606,
    "nome": "São José do Ouro",
    "estado_id": 43
  },
  {
    "id": 4318614,
    "nome": "São José do Sul",
    "estado_id": 43
  },
  {
    "id": 4318622,
    "nome": "São José dos Ausentes",
    "estado_id": 43
  },
  {
    "id": 4318705,
    "nome": "São Leopoldo",
    "estado_id": 43
  },
  {
    "id": 4318804,
    "nome": "São Lourenço do Sul",
    "estado_id": 43
  },
  {
    "id": 4318903,
    "nome": "São Luiz Gonzaga",
    "estado_id": 43
  },
  {
    "id": 4319000,
    "nome": "São Marcos",
    "estado_id": 43
  },
  {
    "id": 4319109,
    "nome": "São Martinho",
    "estado_id": 43
  },
  {
    "id": 4319125,
    "nome": "São Martinho da Serra",
    "estado_id": 43
  },
  {
    "id": 4319158,
    "nome": "São Miguel das Missões",
    "estado_id": 43
  },
  {
    "id": 4319208,
    "nome": "São Nicolau",
    "estado_id": 43
  },
  {
    "id": 4319307,
    "nome": "São Paulo das Missões",
    "estado_id": 43
  },
  {
    "id": 4319356,
    "nome": "São Pedro da Serra",
    "estado_id": 43
  },
  {
    "id": 4319364,
    "nome": "São Pedro das Missões",
    "estado_id": 43
  },
  {
    "id": 4319372,
    "nome": "São Pedro do Butiá",
    "estado_id": 43
  },
  {
    "id": 4319406,
    "nome": "São Pedro do Sul",
    "estado_id": 43
  },
  {
    "id": 4319505,
    "nome": "São Sebastião do Caí",
    "estado_id": 43
  },
  {
    "id": 4319604,
    "nome": "São Sepé",
    "estado_id": 43
  },
  {
    "id": 4319703,
    "nome": "São Valentim",
    "estado_id": 43
  },
  {
    "id": 4319711,
    "nome": "São Valentim do Sul",
    "estado_id": 43
  },
  {
    "id": 4319737,
    "nome": "São Valério do Sul",
    "estado_id": 43
  },
  {
    "id": 4319752,
    "nome": "São Vendelino",
    "estado_id": 43
  },
  {
    "id": 4319802,
    "nome": "São Vicente do Sul",
    "estado_id": 43
  },
  {
    "id": 4319901,
    "nome": "Sapiranga",
    "estado_id": 43
  },
  {
    "id": 4320008,
    "nome": "Sapucaia do Sul",
    "estado_id": 43
  },
  {
    "id": 4320107,
    "nome": "Sarandi",
    "estado_id": 43
  },
  {
    "id": 4320206,
    "nome": "Seberi",
    "estado_id": 43
  },
  {
    "id": 4320230,
    "nome": "Sede Nova",
    "estado_id": 43
  },
  {
    "id": 4320263,
    "nome": "Segredo",
    "estado_id": 43
  },
  {
    "id": 4320305,
    "nome": "Selbach",
    "estado_id": 43
  },
  {
    "id": 4320321,
    "nome": "Senador Salgado Filho",
    "estado_id": 43
  },
  {
    "id": 4320354,
    "nome": "Sentinela do Sul",
    "estado_id": 43
  },
  {
    "id": 4320404,
    "nome": "Serafina Corrêa",
    "estado_id": 43
  },
  {
    "id": 4320453,
    "nome": "Sério",
    "estado_id": 43
  },
  {
    "id": 4320503,
    "nome": "Sertão",
    "estado_id": 43
  },
  {
    "id": 4320552,
    "nome": "Sertão Santana",
    "estado_id": 43
  },
  {
    "id": 4320578,
    "nome": "Sete de Setembro",
    "estado_id": 43
  },
  {
    "id": 4320602,
    "nome": "Severiano de Almeida",
    "estado_id": 43
  },
  {
    "id": 4320651,
    "nome": "Silveira Martins",
    "estado_id": 43
  },
  {
    "id": 4320677,
    "nome": "Sinimbu",
    "estado_id": 43
  },
  {
    "id": 4320701,
    "nome": "Sobradinho",
    "estado_id": 43
  },
  {
    "id": 4320800,
    "nome": "Soledade",
    "estado_id": 43
  },
  {
    "id": 4320859,
    "nome": "Tabaí",
    "estado_id": 43
  },
  {
    "id": 4320909,
    "nome": "Tapejara",
    "estado_id": 43
  },
  {
    "id": 4321006,
    "nome": "Tapera",
    "estado_id": 43
  },
  {
    "id": 4321105,
    "nome": "Tapes",
    "estado_id": 43
  },
  {
    "id": 4321204,
    "nome": "Taquara",
    "estado_id": 43
  },
  {
    "id": 4321303,
    "nome": "Taquari",
    "estado_id": 43
  },
  {
    "id": 4321329,
    "nome": "Taquaruçu do Sul",
    "estado_id": 43
  },
  {
    "id": 4321352,
    "nome": "Tavares",
    "estado_id": 43
  },
  {
    "id": 4321402,
    "nome": "Tenente Portela",
    "estado_id": 43
  },
  {
    "id": 4321436,
    "nome": "Terra de Areia",
    "estado_id": 43
  },
  {
    "id": 4321451,
    "nome": "Teutônia",
    "estado_id": 43
  },
  {
    "id": 4321469,
    "nome": "Tio Hugo",
    "estado_id": 43
  },
  {
    "id": 4321477,
    "nome": "Tiradentes do Sul",
    "estado_id": 43
  },
  {
    "id": 4321493,
    "nome": "Toropi",
    "estado_id": 43
  },
  {
    "id": 4321501,
    "nome": "Torres",
    "estado_id": 43
  },
  {
    "id": 4321600,
    "nome": "Tramandaí",
    "estado_id": 43
  },
  {
    "id": 4321626,
    "nome": "Travesseiro",
    "estado_id": 43
  },
  {
    "id": 4321634,
    "nome": "Três Arroios",
    "estado_id": 43
  },
  {
    "id": 4321667,
    "nome": "Três Cachoeiras",
    "estado_id": 43
  },
  {
    "id": 4321709,
    "nome": "Três Coroas",
    "estado_id": 43
  },
  {
    "id": 4321808,
    "nome": "Três de Maio",
    "estado_id": 43
  },
  {
    "id": 4321832,
    "nome": "Três Forquilhas",
    "estado_id": 43
  },
  {
    "id": 4321857,
    "nome": "Três Palmeiras",
    "estado_id": 43
  },
  {
    "id": 4321907,
    "nome": "Três Passos",
    "estado_id": 43
  },
  {
    "id": 4321956,
    "nome": "Trindade do Sul",
    "estado_id": 43
  },
  {
    "id": 4322004,
    "nome": "Triunfo",
    "estado_id": 43
  },
  {
    "id": 4322103,
    "nome": "Tucunduva",
    "estado_id": 43
  },
  {
    "id": 4322152,
    "nome": "Tunas",
    "estado_id": 43
  },
  {
    "id": 4322186,
    "nome": "Tupanci do Sul",
    "estado_id": 43
  },
  {
    "id": 4322202,
    "nome": "Tupanciretã",
    "estado_id": 43
  },
  {
    "id": 4322251,
    "nome": "Tupandi",
    "estado_id": 43
  },
  {
    "id": 4322301,
    "nome": "Tuparendi",
    "estado_id": 43
  },
  {
    "id": 4322327,
    "nome": "Turuçu",
    "estado_id": 43
  },
  {
    "id": 4322343,
    "nome": "Ubiretama",
    "estado_id": 43
  },
  {
    "id": 4322350,
    "nome": "União da Serra",
    "estado_id": 43
  },
  {
    "id": 4322376,
    "nome": "Unistalda",
    "estado_id": 43
  },
  {
    "id": 4322400,
    "nome": "Uruguaiana",
    "estado_id": 43
  },
  {
    "id": 4322509,
    "nome": "Vacaria",
    "estado_id": 43
  },
  {
    "id": 4322525,
    "nome": "Vale Verde",
    "estado_id": 43
  },
  {
    "id": 4322533,
    "nome": "Vale do Sol",
    "estado_id": 43
  },
  {
    "id": 4322541,
    "nome": "Vale Real",
    "estado_id": 43
  },
  {
    "id": 4322558,
    "nome": "Vanini",
    "estado_id": 43
  },
  {
    "id": 4322608,
    "nome": "Venâncio Aires",
    "estado_id": 43
  },
  {
    "id": 4322707,
    "nome": "Vera Cruz",
    "estado_id": 43
  },
  {
    "id": 4322806,
    "nome": "Veranópolis",
    "estado_id": 43
  },
  {
    "id": 4322855,
    "nome": "Vespasiano Corrêa",
    "estado_id": 43
  },
  {
    "id": 4322905,
    "nome": "Viadutos",
    "estado_id": 43
  },
  {
    "id": 4323002,
    "nome": "Viamão",
    "estado_id": 43
  },
  {
    "id": 4323101,
    "nome": "Vicente Dutra",
    "estado_id": 43
  },
  {
    "id": 4323200,
    "nome": "Victor Graeff",
    "estado_id": 43
  },
  {
    "id": 4323309,
    "nome": "Vila Flores",
    "estado_id": 43
  },
  {
    "id": 4323358,
    "nome": "Vila Lângaro",
    "estado_id": 43
  },
  {
    "id": 4323408,
    "nome": "Vila Maria",
    "estado_id": 43
  },
  {
    "id": 4323457,
    "nome": "Vila Nova do Sul",
    "estado_id": 43
  },
  {
    "id": 4323507,
    "nome": "Vista Alegre",
    "estado_id": 43
  },
  {
    "id": 4323606,
    "nome": "Vista Alegre do Prata",
    "estado_id": 43
  },
  {
    "id": 4323705,
    "nome": "Vista Gaúcha",
    "estado_id": 43
  },
  {
    "id": 4323754,
    "nome": "Vitória das Missões",
    "estado_id": 43
  },
  {
    "id": 4323770,
    "nome": "Westfália",
    "estado_id": 43
  },
  {
    "id": 4323804,
    "nome": "Xangri-lá",
    "estado_id": 43
  },
  {
    "id": 5000203,
    "nome": "Água Clara",
    "estado_id": 50
  },
  {
    "id": 5000252,
    "nome": "Alcinópolis",
    "estado_id": 50
  },
  {
    "id": 5000609,
    "nome": "Amambai",
    "estado_id": 50
  },
  {
    "id": 5000708,
    "nome": "Anastácio",
    "estado_id": 50
  },
  {
    "id": 5000807,
    "nome": "Anaurilândia",
    "estado_id": 50
  },
  {
    "id": 5000856,
    "nome": "Angélica",
    "estado_id": 50
  },
  {
    "id": 5000906,
    "nome": "Antônio João",
    "estado_id": 50
  },
  {
    "id": 5001003,
    "nome": "Aparecida do Taboado",
    "estado_id": 50
  },
  {
    "id": 5001102,
    "nome": "Aquidauana",
    "estado_id": 50
  },
  {
    "id": 5001243,
    "nome": "Aral Moreira",
    "estado_id": 50
  },
  {
    "id": 5001508,
    "nome": "Bandeirantes",
    "estado_id": 50
  },
  {
    "id": 5001904,
    "nome": "Bataguassu",
    "estado_id": 50
  },
  {
    "id": 5002001,
    "nome": "Batayporã",
    "estado_id": 50
  },
  {
    "id": 5002100,
    "nome": "Bela Vista",
    "estado_id": 50
  },
  {
    "id": 5002159,
    "nome": "Bodoquena",
    "estado_id": 50
  },
  {
    "id": 5002209,
    "nome": "Bonito",
    "estado_id": 50
  },
  {
    "id": 5002308,
    "nome": "Brasilândia",
    "estado_id": 50
  },
  {
    "id": 5002407,
    "nome": "Caarapó",
    "estado_id": 50
  },
  {
    "id": 5002605,
    "nome": "Camapuã",
    "estado_id": 50
  },
  {
    "id": 5002704,
    "nome": "Campo Grande",
    "estado_id": 50
  },
  {
    "id": 5002803,
    "nome": "Caracol",
    "estado_id": 50
  },
  {
    "id": 5002902,
    "nome": "Cassilândia",
    "estado_id": 50
  },
  {
    "id": 5002951,
    "nome": "Chapadão do Sul",
    "estado_id": 50
  },
  {
    "id": 5003108,
    "nome": "Corguinho",
    "estado_id": 50
  },
  {
    "id": 5003157,
    "nome": "Coronel Sapucaia",
    "estado_id": 50
  },
  {
    "id": 5003207,
    "nome": "Corumbá",
    "estado_id": 50
  },
  {
    "id": 5003256,
    "nome": "Costa Rica",
    "estado_id": 50
  },
  {
    "id": 5003306,
    "nome": "Coxim",
    "estado_id": 50
  },
  {
    "id": 5003454,
    "nome": "Deodápolis",
    "estado_id": 50
  },
  {
    "id": 5003488,
    "nome": "Dois Irmãos do Buriti",
    "estado_id": 50
  },
  {
    "id": 5003504,
    "nome": "Douradina",
    "estado_id": 50
  },
  {
    "id": 5003702,
    "nome": "Dourados",
    "estado_id": 50
  },
  {
    "id": 5003751,
    "nome": "Eldorado",
    "estado_id": 50
  },
  {
    "id": 5003801,
    "nome": "Fátima do Sul",
    "estado_id": 50
  },
  {
    "id": 5003900,
    "nome": "Figueirão",
    "estado_id": 50
  },
  {
    "id": 5004007,
    "nome": "Glória de Dourados",
    "estado_id": 50
  },
  {
    "id": 5004106,
    "nome": "Guia Lopes da Laguna",
    "estado_id": 50
  },
  {
    "id": 5004304,
    "nome": "Iguatemi",
    "estado_id": 50
  },
  {
    "id": 5004403,
    "nome": "Inocência",
    "estado_id": 50
  },
  {
    "id": 5004502,
    "nome": "Itaporã",
    "estado_id": 50
  },
  {
    "id": 5004601,
    "nome": "Itaquiraí",
    "estado_id": 50
  },
  {
    "id": 5004700,
    "nome": "Ivinhema",
    "estado_id": 50
  },
  {
    "id": 5004809,
    "nome": "Japorã",
    "estado_id": 50
  },
  {
    "id": 5004908,
    "nome": "Jaraguari",
    "estado_id": 50
  },
  {
    "id": 5005004,
    "nome": "Jardim",
    "estado_id": 50
  },
  {
    "id": 5005103,
    "nome": "Jateí",
    "estado_id": 50
  },
  {
    "id": 5005152,
    "nome": "Juti",
    "estado_id": 50
  },
  {
    "id": 5005202,
    "nome": "Ladário",
    "estado_id": 50
  },
  {
    "id": 5005251,
    "nome": "Laguna Carapã",
    "estado_id": 50
  },
  {
    "id": 5005400,
    "nome": "Maracaju",
    "estado_id": 50
  },
  {
    "id": 5005608,
    "nome": "Miranda",
    "estado_id": 50
  },
  {
    "id": 5005681,
    "nome": "Mundo Novo",
    "estado_id": 50
  },
  {
    "id": 5005707,
    "nome": "Naviraí",
    "estado_id": 50
  },
  {
    "id": 5005806,
    "nome": "Nioaque",
    "estado_id": 50
  },
  {
    "id": 5006002,
    "nome": "Nova Alvorada do Sul",
    "estado_id": 50
  },
  {
    "id": 5006200,
    "nome": "Nova Andradina",
    "estado_id": 50
  },
  {
    "id": 5006259,
    "nome": "Novo Horizonte do Sul",
    "estado_id": 50
  },
  {
    "id": 5006275,
    "nome": "Paraíso das Águas",
    "estado_id": 50
  },
  {
    "id": 5006309,
    "nome": "Paranaíba",
    "estado_id": 50
  },
  {
    "id": 5006358,
    "nome": "Paranhos",
    "estado_id": 50
  },
  {
    "id": 5006408,
    "nome": "Pedro Gomes",
    "estado_id": 50
  },
  {
    "id": 5006606,
    "nome": "Ponta Porã",
    "estado_id": 50
  },
  {
    "id": 5006903,
    "nome": "Porto Murtinho",
    "estado_id": 50
  },
  {
    "id": 5007109,
    "nome": "Ribas do Rio Pardo",
    "estado_id": 50
  },
  {
    "id": 5007208,
    "nome": "Rio Brilhante",
    "estado_id": 50
  },
  {
    "id": 5007307,
    "nome": "Rio Negro",
    "estado_id": 50
  },
  {
    "id": 5007406,
    "nome": "Rio Verde de Mato Grosso",
    "estado_id": 50
  },
  {
    "id": 5007505,
    "nome": "Rochedo",
    "estado_id": 50
  },
  {
    "id": 5007554,
    "nome": "Santa Rita do Pardo",
    "estado_id": 50
  },
  {
    "id": 5007695,
    "nome": "São Gabriel do Oeste",
    "estado_id": 50
  },
  {
    "id": 5007703,
    "nome": "Sete Quedas",
    "estado_id": 50
  },
  {
    "id": 5007802,
    "nome": "Selvíria",
    "estado_id": 50
  },
  {
    "id": 5007901,
    "nome": "Sidrolândia",
    "estado_id": 50
  },
  {
    "id": 5007935,
    "nome": "Sonora",
    "estado_id": 50
  },
  {
    "id": 5007950,
    "nome": "Tacuru",
    "estado_id": 50
  },
  {
    "id": 5007976,
    "nome": "Taquarussu",
    "estado_id": 50
  },
  {
    "id": 5008008,
    "nome": "Terenos",
    "estado_id": 50
  },
  {
    "id": 5008305,
    "nome": "Três Lagoas",
    "estado_id": 50
  },
  {
    "id": 5008404,
    "nome": "Vicentina",
    "estado_id": 50
  },
  {
    "id": 5100102,
    "nome": "Acorizal",
    "estado_id": 51
  },
  {
    "id": 5100201,
    "nome": "Água Boa",
    "estado_id": 51
  },
  {
    "id": 5100250,
    "nome": "Alta Floresta",
    "estado_id": 51
  },
  {
    "id": 5100300,
    "nome": "Alto Araguaia",
    "estado_id": 51
  },
  {
    "id": 5100359,
    "nome": "Alto Boa Vista",
    "estado_id": 51
  },
  {
    "id": 5100409,
    "nome": "Alto Garças",
    "estado_id": 51
  },
  {
    "id": 5100508,
    "nome": "Alto Paraguai",
    "estado_id": 51
  },
  {
    "id": 5100607,
    "nome": "Alto Taquari",
    "estado_id": 51
  },
  {
    "id": 5100805,
    "nome": "Apiacás",
    "estado_id": 51
  },
  {
    "id": 5101001,
    "nome": "Araguaiana",
    "estado_id": 51
  },
  {
    "id": 5101209,
    "nome": "Araguainha",
    "estado_id": 51
  },
  {
    "id": 5101258,
    "nome": "Araputanga",
    "estado_id": 51
  },
  {
    "id": 5101308,
    "nome": "Arenápolis",
    "estado_id": 51
  },
  {
    "id": 5101407,
    "nome": "Aripuanã",
    "estado_id": 51
  },
  {
    "id": 5101605,
    "nome": "Barão de Melgaço",
    "estado_id": 51
  },
  {
    "id": 5101704,
    "nome": "Barra do Bugres",
    "estado_id": 51
  },
  {
    "id": 5101803,
    "nome": "Barra do Garças",
    "estado_id": 51
  },
  {
    "id": 5101852,
    "nome": "Bom Jesus do Araguaia",
    "estado_id": 51
  },
  {
    "id": 5101902,
    "nome": "Brasnorte",
    "estado_id": 51
  },
  {
    "id": 5102504,
    "nome": "Cáceres",
    "estado_id": 51
  },
  {
    "id": 5102603,
    "nome": "Campinápolis",
    "estado_id": 51
  },
  {
    "id": 5102637,
    "nome": "Campo Novo do Parecis",
    "estado_id": 51
  },
  {
    "id": 5102678,
    "nome": "Campo Verde",
    "estado_id": 51
  },
  {
    "id": 5102686,
    "nome": "Campos de Júlio",
    "estado_id": 51
  },
  {
    "id": 5102694,
    "nome": "Canabrava do Norte",
    "estado_id": 51
  },
  {
    "id": 5102702,
    "nome": "Canarana",
    "estado_id": 51
  },
  {
    "id": 5102793,
    "nome": "Carlinda",
    "estado_id": 51
  },
  {
    "id": 5102850,
    "nome": "Castanheira",
    "estado_id": 51
  },
  {
    "id": 5103007,
    "nome": "Chapada dos Guimarães",
    "estado_id": 51
  },
  {
    "id": 5103056,
    "nome": "Cláudia",
    "estado_id": 51
  },
  {
    "id": 5103106,
    "nome": "Cocalinho",
    "estado_id": 51
  },
  {
    "id": 5103205,
    "nome": "Colíder",
    "estado_id": 51
  },
  {
    "id": 5103254,
    "nome": "Colniza",
    "estado_id": 51
  },
  {
    "id": 5103304,
    "nome": "Comodoro",
    "estado_id": 51
  },
  {
    "id": 5103353,
    "nome": "Confresa",
    "estado_id": 51
  },
  {
    "id": 5103361,
    "nome": "Conquista D'Oeste",
    "estado_id": 51
  },
  {
    "id": 5103379,
    "nome": "Cotriguaçu",
    "estado_id": 51
  },
  {
    "id": 5103403,
    "nome": "Cuiabá",
    "estado_id": 51
  },
  {
    "id": 5103437,
    "nome": "Curvelândia",
    "estado_id": 51
  },
  {
    "id": 5103452,
    "nome": "Denise",
    "estado_id": 51
  },
  {
    "id": 5103502,
    "nome": "Diamantino",
    "estado_id": 51
  },
  {
    "id": 5103601,
    "nome": "Dom Aquino",
    "estado_id": 51
  },
  {
    "id": 5103700,
    "nome": "Feliz Natal",
    "estado_id": 51
  },
  {
    "id": 5103809,
    "nome": "Figueirópolis D'Oeste",
    "estado_id": 51
  },
  {
    "id": 5103858,
    "nome": "Gaúcha do Norte",
    "estado_id": 51
  },
  {
    "id": 5103908,
    "nome": "General Carneiro",
    "estado_id": 51
  },
  {
    "id": 5103957,
    "nome": "Glória D'Oeste",
    "estado_id": 51
  },
  {
    "id": 5104104,
    "nome": "Guarantã do Norte",
    "estado_id": 51
  },
  {
    "id": 5104203,
    "nome": "Guiratinga",
    "estado_id": 51
  },
  {
    "id": 5104500,
    "nome": "Indiavaí",
    "estado_id": 51
  },
  {
    "id": 5104526,
    "nome": "Ipiranga do Norte",
    "estado_id": 51
  },
  {
    "id": 5104542,
    "nome": "Itanhangá",
    "estado_id": 51
  },
  {
    "id": 5104559,
    "nome": "Itaúba",
    "estado_id": 51
  },
  {
    "id": 5104609,
    "nome": "Itiquira",
    "estado_id": 51
  },
  {
    "id": 5104807,
    "nome": "Jaciara",
    "estado_id": 51
  },
  {
    "id": 5104906,
    "nome": "Jangada",
    "estado_id": 51
  },
  {
    "id": 5105002,
    "nome": "Jauru",
    "estado_id": 51
  },
  {
    "id": 5105101,
    "nome": "Juara",
    "estado_id": 51
  },
  {
    "id": 5105150,
    "nome": "Juína",
    "estado_id": 51
  },
  {
    "id": 5105176,
    "nome": "Juruena",
    "estado_id": 51
  },
  {
    "id": 5105200,
    "nome": "Juscimeira",
    "estado_id": 51
  },
  {
    "id": 5105234,
    "nome": "Lambari D'Oeste",
    "estado_id": 51
  },
  {
    "id": 5105259,
    "nome": "Lucas do Rio Verde",
    "estado_id": 51
  },
  {
    "id": 5105309,
    "nome": "Luciara",
    "estado_id": 51
  },
  {
    "id": 5105507,
    "nome": "Vila Bela da Santíssima Trindade",
    "estado_id": 51
  },
  {
    "id": 5105580,
    "nome": "Marcelândia",
    "estado_id": 51
  },
  {
    "id": 5105606,
    "nome": "Matupá",
    "estado_id": 51
  },
  {
    "id": 5105622,
    "nome": "Mirassol d'Oeste",
    "estado_id": 51
  },
  {
    "id": 5105903,
    "nome": "Nobres",
    "estado_id": 51
  },
  {
    "id": 5106000,
    "nome": "Nortelândia",
    "estado_id": 51
  },
  {
    "id": 5106109,
    "nome": "Nossa Senhora do Livramento",
    "estado_id": 51
  },
  {
    "id": 5106158,
    "nome": "Nova Bandeirantes",
    "estado_id": 51
  },
  {
    "id": 5106174,
    "nome": "Nova Nazaré",
    "estado_id": 51
  },
  {
    "id": 5106182,
    "nome": "Nova Lacerda",
    "estado_id": 51
  },
  {
    "id": 5106190,
    "nome": "Nova Santa Helena",
    "estado_id": 51
  },
  {
    "id": 5106208,
    "nome": "Nova Brasilândia",
    "estado_id": 51
  },
  {
    "id": 5106216,
    "nome": "Nova Canaã do Norte",
    "estado_id": 51
  },
  {
    "id": 5106224,
    "nome": "Nova Mutum",
    "estado_id": 51
  },
  {
    "id": 5106232,
    "nome": "Nova Olímpia",
    "estado_id": 51
  },
  {
    "id": 5106240,
    "nome": "Nova Ubiratã",
    "estado_id": 51
  },
  {
    "id": 5106257,
    "nome": "Nova Xavantina",
    "estado_id": 51
  },
  {
    "id": 5106265,
    "nome": "Novo Mundo",
    "estado_id": 51
  },
  {
    "id": 5106273,
    "nome": "Novo Horizonte do Norte",
    "estado_id": 51
  },
  {
    "id": 5106281,
    "nome": "Novo São Joaquim",
    "estado_id": 51
  },
  {
    "id": 5106299,
    "nome": "Paranaíta",
    "estado_id": 51
  },
  {
    "id": 5106307,
    "nome": "Paranatinga",
    "estado_id": 51
  },
  {
    "id": 5106315,
    "nome": "Novo Santo Antônio",
    "estado_id": 51
  },
  {
    "id": 5106372,
    "nome": "Pedra Preta",
    "estado_id": 51
  },
  {
    "id": 5106422,
    "nome": "Peixoto de Azevedo",
    "estado_id": 51
  },
  {
    "id": 5106455,
    "nome": "Planalto da Serra",
    "estado_id": 51
  },
  {
    "id": 5106505,
    "nome": "Poconé",
    "estado_id": 51
  },
  {
    "id": 5106653,
    "nome": "Pontal do Araguaia",
    "estado_id": 51
  },
  {
    "id": 5106703,
    "nome": "Ponte Branca",
    "estado_id": 51
  },
  {
    "id": 5106752,
    "nome": "Pontes e Lacerda",
    "estado_id": 51
  },
  {
    "id": 5106778,
    "nome": "Porto Alegre do Norte",
    "estado_id": 51
  },
  {
    "id": 5106802,
    "nome": "Porto dos Gaúchos",
    "estado_id": 51
  },
  {
    "id": 5106828,
    "nome": "Porto Esperidião",
    "estado_id": 51
  },
  {
    "id": 5106851,
    "nome": "Porto Estrela",
    "estado_id": 51
  },
  {
    "id": 5107008,
    "nome": "Poxoréu",
    "estado_id": 51
  },
  {
    "id": 5107040,
    "nome": "Primavera do Leste",
    "estado_id": 51
  },
  {
    "id": 5107065,
    "nome": "Querência",
    "estado_id": 51
  },
  {
    "id": 5107107,
    "nome": "São José dos Quatro Marcos",
    "estado_id": 51
  },
  {
    "id": 5107156,
    "nome": "Reserva do Cabaçal",
    "estado_id": 51
  },
  {
    "id": 5107180,
    "nome": "Ribeirão Cascalheira",
    "estado_id": 51
  },
  {
    "id": 5107198,
    "nome": "Ribeirãozinho",
    "estado_id": 51
  },
  {
    "id": 5107206,
    "nome": "Rio Branco",
    "estado_id": 51
  },
  {
    "id": 5107248,
    "nome": "Santa Carmem",
    "estado_id": 51
  },
  {
    "id": 5107263,
    "nome": "Santo Afonso",
    "estado_id": 51
  },
  {
    "id": 5107297,
    "nome": "São José do Povo",
    "estado_id": 51
  },
  {
    "id": 5107305,
    "nome": "São José do Rio Claro",
    "estado_id": 51
  },
  {
    "id": 5107354,
    "nome": "São José do Xingu",
    "estado_id": 51
  },
  {
    "id": 5107404,
    "nome": "São Pedro da Cipa",
    "estado_id": 51
  },
  {
    "id": 5107578,
    "nome": "Rondolândia",
    "estado_id": 51
  },
  {
    "id": 5107602,
    "nome": "Rondonópolis",
    "estado_id": 51
  },
  {
    "id": 5107701,
    "nome": "Rosário Oeste",
    "estado_id": 51
  },
  {
    "id": 5107743,
    "nome": "Santa Cruz do Xingu",
    "estado_id": 51
  },
  {
    "id": 5107750,
    "nome": "Salto do Céu",
    "estado_id": 51
  },
  {
    "id": 5107768,
    "nome": "Santa Rita do Trivelato",
    "estado_id": 51
  },
  {
    "id": 5107776,
    "nome": "Santa Terezinha",
    "estado_id": 51
  },
  {
    "id": 5107792,
    "nome": "Santo Antônio do Leste",
    "estado_id": 51
  },
  {
    "id": 5107800,
    "nome": "Santo Antônio de Leverger",
    "estado_id": 51
  },
  {
    "id": 5107859,
    "nome": "São Félix do Araguaia",
    "estado_id": 51
  },
  {
    "id": 5107875,
    "nome": "Sapezal",
    "estado_id": 51
  },
  {
    "id": 5107883,
    "nome": "Serra Nova Dourada",
    "estado_id": 51
  },
  {
    "id": 5107909,
    "nome": "Sinop",
    "estado_id": 51
  },
  {
    "id": 5107925,
    "nome": "Sorriso",
    "estado_id": 51
  },
  {
    "id": 5107941,
    "nome": "Tabaporã",
    "estado_id": 51
  },
  {
    "id": 5107958,
    "nome": "Tangará da Serra",
    "estado_id": 51
  },
  {
    "id": 5108006,
    "nome": "Tapurah",
    "estado_id": 51
  },
  {
    "id": 5108055,
    "nome": "Terra Nova do Norte",
    "estado_id": 51
  },
  {
    "id": 5108105,
    "nome": "Tesouro",
    "estado_id": 51
  },
  {
    "id": 5108204,
    "nome": "Torixoréu",
    "estado_id": 51
  },
  {
    "id": 5108303,
    "nome": "União do Sul",
    "estado_id": 51
  },
  {
    "id": 5108352,
    "nome": "Vale de São Domingos",
    "estado_id": 51
  },
  {
    "id": 5108402,
    "nome": "Várzea Grande",
    "estado_id": 51
  },
  {
    "id": 5108501,
    "nome": "Vera",
    "estado_id": 51
  },
  {
    "id": 5108600,
    "nome": "Vila Rica",
    "estado_id": 51
  },
  {
    "id": 5108808,
    "nome": "Nova Guarita",
    "estado_id": 51
  },
  {
    "id": 5108857,
    "nome": "Nova Marilândia",
    "estado_id": 51
  },
  {
    "id": 5108907,
    "nome": "Nova Maringá",
    "estado_id": 51
  },
  {
    "id": 5108956,
    "nome": "Nova Monte Verde",
    "estado_id": 51
  },
  {
    "id": 5200050,
    "nome": "Abadia de Goiás",
    "estado_id": 52
  },
  {
    "id": 5200100,
    "nome": "Abadiânia",
    "estado_id": 52
  },
  {
    "id": 5200134,
    "nome": "Acreúna",
    "estado_id": 52
  },
  {
    "id": 5200159,
    "nome": "Adelândia",
    "estado_id": 52
  },
  {
    "id": 5200175,
    "nome": "Água Fria de Goiás",
    "estado_id": 52
  },
  {
    "id": 5200209,
    "nome": "Água Limpa",
    "estado_id": 52
  },
  {
    "id": 5200258,
    "nome": "Águas Lindas de Goiás",
    "estado_id": 52
  },
  {
    "id": 5200308,
    "nome": "Alexânia",
    "estado_id": 52
  },
  {
    "id": 5200506,
    "nome": "Aloândia",
    "estado_id": 52
  },
  {
    "id": 5200555,
    "nome": "Alto Horizonte",
    "estado_id": 52
  },
  {
    "id": 5200605,
    "nome": "Alto Paraíso de Goiás",
    "estado_id": 52
  },
  {
    "id": 5200803,
    "nome": "Alvorada do Norte",
    "estado_id": 52
  },
  {
    "id": 5200829,
    "nome": "Amaralina",
    "estado_id": 52
  },
  {
    "id": 5200852,
    "nome": "Americano do Brasil",
    "estado_id": 52
  },
  {
    "id": 5200902,
    "nome": "Amorinópolis",
    "estado_id": 52
  },
  {
    "id": 5201108,
    "nome": "Anápolis",
    "estado_id": 52
  },
  {
    "id": 5201207,
    "nome": "Anhanguera",
    "estado_id": 52
  },
  {
    "id": 5201306,
    "nome": "Anicuns",
    "estado_id": 52
  },
  {
    "id": 5201405,
    "nome": "Aparecida de Goiânia",
    "estado_id": 52
  },
  {
    "id": 5201454,
    "nome": "Aparecida do Rio Doce",
    "estado_id": 52
  },
  {
    "id": 5201504,
    "nome": "Aporé",
    "estado_id": 52
  },
  {
    "id": 5201603,
    "nome": "Araçu",
    "estado_id": 52
  },
  {
    "id": 5201702,
    "nome": "Aragarças",
    "estado_id": 52
  },
  {
    "id": 5201801,
    "nome": "Aragoiânia",
    "estado_id": 52
  },
  {
    "id": 5202155,
    "nome": "Araguapaz",
    "estado_id": 52
  },
  {
    "id": 5202353,
    "nome": "Arenópolis",
    "estado_id": 52
  },
  {
    "id": 5202502,
    "nome": "Aruanã",
    "estado_id": 52
  },
  {
    "id": 5202601,
    "nome": "Aurilândia",
    "estado_id": 52
  },
  {
    "id": 5202809,
    "nome": "Avelinópolis",
    "estado_id": 52
  },
  {
    "id": 5203104,
    "nome": "Baliza",
    "estado_id": 52
  },
  {
    "id": 5203203,
    "nome": "Barro Alto",
    "estado_id": 52
  },
  {
    "id": 5203302,
    "nome": "Bela Vista de Goiás",
    "estado_id": 52
  },
  {
    "id": 5203401,
    "nome": "Bom Jardim de Goiás",
    "estado_id": 52
  },
  {
    "id": 5203500,
    "nome": "Bom Jesus de Goiás",
    "estado_id": 52
  },
  {
    "id": 5203559,
    "nome": "Bonfinópolis",
    "estado_id": 52
  },
  {
    "id": 5203575,
    "nome": "Bonópolis",
    "estado_id": 52
  },
  {
    "id": 5203609,
    "nome": "Brazabrantes",
    "estado_id": 52
  },
  {
    "id": 5203807,
    "nome": "Britânia",
    "estado_id": 52
  },
  {
    "id": 5203906,
    "nome": "Buriti Alegre",
    "estado_id": 52
  },
  {
    "id": 5203939,
    "nome": "Buriti de Goiás",
    "estado_id": 52
  },
  {
    "id": 5203962,
    "nome": "Buritinópolis",
    "estado_id": 52
  },
  {
    "id": 5204003,
    "nome": "Cabeceiras",
    "estado_id": 52
  },
  {
    "id": 5204102,
    "nome": "Cachoeira Alta",
    "estado_id": 52
  },
  {
    "id": 5204201,
    "nome": "Cachoeira de Goiás",
    "estado_id": 52
  },
  {
    "id": 5204250,
    "nome": "Cachoeira Dourada",
    "estado_id": 52
  },
  {
    "id": 5204300,
    "nome": "Caçu",
    "estado_id": 52
  },
  {
    "id": 5204409,
    "nome": "Caiapônia",
    "estado_id": 52
  },
  {
    "id": 5204508,
    "nome": "Caldas Novas",
    "estado_id": 52
  },
  {
    "id": 5204557,
    "nome": "Caldazinha",
    "estado_id": 52
  },
  {
    "id": 5204607,
    "nome": "Campestre de Goiás",
    "estado_id": 52
  },
  {
    "id": 5204656,
    "nome": "Campinaçu",
    "estado_id": 52
  },
  {
    "id": 5204706,
    "nome": "Campinorte",
    "estado_id": 52
  },
  {
    "id": 5204805,
    "nome": "Campo Alegre de Goiás",
    "estado_id": 52
  },
  {
    "id": 5204854,
    "nome": "Campo Limpo de Goiás",
    "estado_id": 52
  },
  {
    "id": 5204904,
    "nome": "Campos Belos",
    "estado_id": 52
  },
  {
    "id": 5204953,
    "nome": "Campos Verdes",
    "estado_id": 52
  },
  {
    "id": 5205000,
    "nome": "Carmo do Rio Verde",
    "estado_id": 52
  },
  {
    "id": 5205059,
    "nome": "Castelândia",
    "estado_id": 52
  },
  {
    "id": 5205109,
    "nome": "Catalão",
    "estado_id": 52
  },
  {
    "id": 5205208,
    "nome": "Caturaí",
    "estado_id": 52
  },
  {
    "id": 5205307,
    "nome": "Cavalcante",
    "estado_id": 52
  },
  {
    "id": 5205406,
    "nome": "Ceres",
    "estado_id": 52
  },
  {
    "id": 5205455,
    "nome": "Cezarina",
    "estado_id": 52
  },
  {
    "id": 5205471,
    "nome": "Chapadão do Céu",
    "estado_id": 52
  },
  {
    "id": 5205497,
    "nome": "Cidade Ocidental",
    "estado_id": 52
  },
  {
    "id": 5205513,
    "nome": "Cocalzinho de Goiás",
    "estado_id": 52
  },
  {
    "id": 5205521,
    "nome": "Colinas do Sul",
    "estado_id": 52
  },
  {
    "id": 5205703,
    "nome": "Córrego do Ouro",
    "estado_id": 52
  },
  {
    "id": 5205802,
    "nome": "Corumbá de Goiás",
    "estado_id": 52
  },
  {
    "id": 5205901,
    "nome": "Corumbaíba",
    "estado_id": 52
  },
  {
    "id": 5206206,
    "nome": "Cristalina",
    "estado_id": 52
  },
  {
    "id": 5206305,
    "nome": "Cristianópolis",
    "estado_id": 52
  },
  {
    "id": 5206404,
    "nome": "Crixás",
    "estado_id": 52
  },
  {
    "id": 5206503,
    "nome": "Cromínia",
    "estado_id": 52
  },
  {
    "id": 5206602,
    "nome": "Cumari",
    "estado_id": 52
  },
  {
    "id": 5206701,
    "nome": "Damianópolis",
    "estado_id": 52
  },
  {
    "id": 5206800,
    "nome": "Damolândia",
    "estado_id": 52
  },
  {
    "id": 5206909,
    "nome": "Davinópolis",
    "estado_id": 52
  },
  {
    "id": 5207105,
    "nome": "Diorama",
    "estado_id": 52
  },
  {
    "id": 5207253,
    "nome": "Doverlândia",
    "estado_id": 52
  },
  {
    "id": 5207352,
    "nome": "Edealina",
    "estado_id": 52
  },
  {
    "id": 5207402,
    "nome": "Edéia",
    "estado_id": 52
  },
  {
    "id": 5207501,
    "nome": "Estrela do Norte",
    "estado_id": 52
  },
  {
    "id": 5207535,
    "nome": "Faina",
    "estado_id": 52
  },
  {
    "id": 5207600,
    "nome": "Fazenda Nova",
    "estado_id": 52
  },
  {
    "id": 5207808,
    "nome": "Firminópolis",
    "estado_id": 52
  },
  {
    "id": 5207907,
    "nome": "Flores de Goiás",
    "estado_id": 52
  },
  {
    "id": 5208004,
    "nome": "Formosa",
    "estado_id": 52
  },
  {
    "id": 5208103,
    "nome": "Formoso",
    "estado_id": 52
  },
  {
    "id": 5208152,
    "nome": "Gameleira de Goiás",
    "estado_id": 52
  },
  {
    "id": 5208301,
    "nome": "Divinópolis de Goiás",
    "estado_id": 52
  },
  {
    "id": 5208400,
    "nome": "Goianápolis",
    "estado_id": 52
  },
  {
    "id": 5208509,
    "nome": "Goiandira",
    "estado_id": 52
  },
  {
    "id": 5208608,
    "nome": "Goianésia",
    "estado_id": 52
  },
  {
    "id": 5208707,
    "nome": "Goiânia",
    "estado_id": 52
  },
  {
    "id": 5208806,
    "nome": "Goianira",
    "estado_id": 52
  },
  {
    "id": 5208905,
    "nome": "Goiás",
    "estado_id": 52
  },
  {
    "id": 5209101,
    "nome": "Goiatuba",
    "estado_id": 52
  },
  {
    "id": 5209150,
    "nome": "Gouvelândia",
    "estado_id": 52
  },
  {
    "id": 5209200,
    "nome": "Guapó",
    "estado_id": 52
  },
  {
    "id": 5209291,
    "nome": "Guaraíta",
    "estado_id": 52
  },
  {
    "id": 5209408,
    "nome": "Guarani de Goiás",
    "estado_id": 52
  },
  {
    "id": 5209457,
    "nome": "Guarinos",
    "estado_id": 52
  },
  {
    "id": 5209606,
    "nome": "Heitoraí",
    "estado_id": 52
  },
  {
    "id": 5209705,
    "nome": "Hidrolândia",
    "estado_id": 52
  },
  {
    "id": 5209804,
    "nome": "Hidrolina",
    "estado_id": 52
  },
  {
    "id": 5209903,
    "nome": "Iaciara",
    "estado_id": 52
  },
  {
    "id": 5209937,
    "nome": "Inaciolândia",
    "estado_id": 52
  },
  {
    "id": 5209952,
    "nome": "Indiara",
    "estado_id": 52
  },
  {
    "id": 5210000,
    "nome": "Inhumas",
    "estado_id": 52
  },
  {
    "id": 5210109,
    "nome": "Ipameri",
    "estado_id": 52
  },
  {
    "id": 5210158,
    "nome": "Ipiranga de Goiás",
    "estado_id": 52
  },
  {
    "id": 5210208,
    "nome": "Iporá",
    "estado_id": 52
  },
  {
    "id": 5210307,
    "nome": "Israelândia",
    "estado_id": 52
  },
  {
    "id": 5210406,
    "nome": "Itaberaí",
    "estado_id": 52
  },
  {
    "id": 5210562,
    "nome": "Itaguari",
    "estado_id": 52
  },
  {
    "id": 5210604,
    "nome": "Itaguaru",
    "estado_id": 52
  },
  {
    "id": 5210802,
    "nome": "Itajá",
    "estado_id": 52
  },
  {
    "id": 5210901,
    "nome": "Itapaci",
    "estado_id": 52
  },
  {
    "id": 5211008,
    "nome": "Itapirapuã",
    "estado_id": 52
  },
  {
    "id": 5211206,
    "nome": "Itapuranga",
    "estado_id": 52
  },
  {
    "id": 5211305,
    "nome": "Itarumã",
    "estado_id": 52
  },
  {
    "id": 5211404,
    "nome": "Itauçu",
    "estado_id": 52
  },
  {
    "id": 5211503,
    "nome": "Itumbiara",
    "estado_id": 52
  },
  {
    "id": 5211602,
    "nome": "Ivolândia",
    "estado_id": 52
  },
  {
    "id": 5211701,
    "nome": "Jandaia",
    "estado_id": 52
  },
  {
    "id": 5211800,
    "nome": "Jaraguá",
    "estado_id": 52
  },
  {
    "id": 5211909,
    "nome": "Jataí",
    "estado_id": 52
  },
  {
    "id": 5212006,
    "nome": "Jaupaci",
    "estado_id": 52
  },
  {
    "id": 5212055,
    "nome": "Jesúpolis",
    "estado_id": 52
  },
  {
    "id": 5212105,
    "nome": "Joviânia",
    "estado_id": 52
  },
  {
    "id": 5212204,
    "nome": "Jussara",
    "estado_id": 52
  },
  {
    "id": 5212253,
    "nome": "Lagoa Santa",
    "estado_id": 52
  },
  {
    "id": 5212303,
    "nome": "Leopoldo de Bulhões",
    "estado_id": 52
  },
  {
    "id": 5212501,
    "nome": "Luziânia",
    "estado_id": 52
  },
  {
    "id": 5212600,
    "nome": "Mairipotaba",
    "estado_id": 52
  },
  {
    "id": 5212709,
    "nome": "Mambaí",
    "estado_id": 52
  },
  {
    "id": 5212808,
    "nome": "Mara Rosa",
    "estado_id": 52
  },
  {
    "id": 5212907,
    "nome": "Marzagão",
    "estado_id": 52
  },
  {
    "id": 5212956,
    "nome": "Matrinchã",
    "estado_id": 52
  },
  {
    "id": 5213004,
    "nome": "Maurilândia",
    "estado_id": 52
  },
  {
    "id": 5213053,
    "nome": "Mimoso de Goiás",
    "estado_id": 52
  },
  {
    "id": 5213087,
    "nome": "Minaçu",
    "estado_id": 52
  },
  {
    "id": 5213103,
    "nome": "Mineiros",
    "estado_id": 52
  },
  {
    "id": 5213400,
    "nome": "Moiporá",
    "estado_id": 52
  },
  {
    "id": 5213509,
    "nome": "Monte Alegre de Goiás",
    "estado_id": 52
  },
  {
    "id": 5213707,
    "nome": "Montes Claros de Goiás",
    "estado_id": 52
  },
  {
    "id": 5213756,
    "nome": "Montividiu",
    "estado_id": 52
  },
  {
    "id": 5213772,
    "nome": "Montividiu do Norte",
    "estado_id": 52
  },
  {
    "id": 5213806,
    "nome": "Morrinhos",
    "estado_id": 52
  },
  {
    "id": 5213855,
    "nome": "Morro Agudo de Goiás",
    "estado_id": 52
  },
  {
    "id": 5213905,
    "nome": "Mossâmedes",
    "estado_id": 52
  },
  {
    "id": 5214002,
    "nome": "Mozarlândia",
    "estado_id": 52
  },
  {
    "id": 5214051,
    "nome": "Mundo Novo",
    "estado_id": 52
  },
  {
    "id": 5214101,
    "nome": "Mutunópolis",
    "estado_id": 52
  },
  {
    "id": 5214408,
    "nome": "Nazário",
    "estado_id": 52
  },
  {
    "id": 5214507,
    "nome": "Nerópolis",
    "estado_id": 52
  },
  {
    "id": 5214606,
    "nome": "Niquelândia",
    "estado_id": 52
  },
  {
    "id": 5214705,
    "nome": "Nova América",
    "estado_id": 52
  },
  {
    "id": 5214804,
    "nome": "Nova Aurora",
    "estado_id": 52
  },
  {
    "id": 5214838,
    "nome": "Nova Crixás",
    "estado_id": 52
  },
  {
    "id": 5214861,
    "nome": "Nova Glória",
    "estado_id": 52
  },
  {
    "id": 5214879,
    "nome": "Nova Iguaçu de Goiás",
    "estado_id": 52
  },
  {
    "id": 5214903,
    "nome": "Nova Roma",
    "estado_id": 52
  },
  {
    "id": 5215009,
    "nome": "Nova Veneza",
    "estado_id": 52
  },
  {
    "id": 5215207,
    "nome": "Novo Brasil",
    "estado_id": 52
  },
  {
    "id": 5215231,
    "nome": "Novo Gama",
    "estado_id": 52
  },
  {
    "id": 5215256,
    "nome": "Novo Planalto",
    "estado_id": 52
  },
  {
    "id": 5215306,
    "nome": "Orizona",
    "estado_id": 52
  },
  {
    "id": 5215405,
    "nome": "Ouro Verde de Goiás",
    "estado_id": 52
  },
  {
    "id": 5215504,
    "nome": "Ouvidor",
    "estado_id": 52
  },
  {
    "id": 5215603,
    "nome": "Padre Bernardo",
    "estado_id": 52
  },
  {
    "id": 5215652,
    "nome": "Palestina de Goiás",
    "estado_id": 52
  },
  {
    "id": 5215702,
    "nome": "Palmeiras de Goiás",
    "estado_id": 52
  },
  {
    "id": 5215801,
    "nome": "Palmelo",
    "estado_id": 52
  },
  {
    "id": 5215900,
    "nome": "Palminópolis",
    "estado_id": 52
  },
  {
    "id": 5216007,
    "nome": "Panamá",
    "estado_id": 52
  },
  {
    "id": 5216304,
    "nome": "Paranaiguara",
    "estado_id": 52
  },
  {
    "id": 5216403,
    "nome": "Paraúna",
    "estado_id": 52
  },
  {
    "id": 5216452,
    "nome": "Perolândia",
    "estado_id": 52
  },
  {
    "id": 5216809,
    "nome": "Petrolina de Goiás",
    "estado_id": 52
  },
  {
    "id": 5216908,
    "nome": "Pilar de Goiás",
    "estado_id": 52
  },
  {
    "id": 5217104,
    "nome": "Piracanjuba",
    "estado_id": 52
  },
  {
    "id": 5217203,
    "nome": "Piranhas",
    "estado_id": 52
  },
  {
    "id": 5217302,
    "nome": "Pirenópolis",
    "estado_id": 52
  },
  {
    "id": 5217401,
    "nome": "Pires do Rio",
    "estado_id": 52
  },
  {
    "id": 5217609,
    "nome": "Planaltina",
    "estado_id": 52
  },
  {
    "id": 5217708,
    "nome": "Pontalina",
    "estado_id": 52
  },
  {
    "id": 5218003,
    "nome": "Porangatu",
    "estado_id": 52
  },
  {
    "id": 5218052,
    "nome": "Porteirão",
    "estado_id": 52
  },
  {
    "id": 5218102,
    "nome": "Portelândia",
    "estado_id": 52
  },
  {
    "id": 5218300,
    "nome": "Posse",
    "estado_id": 52
  },
  {
    "id": 5218391,
    "nome": "Professor Jamil",
    "estado_id": 52
  },
  {
    "id": 5218508,
    "nome": "Quirinópolis",
    "estado_id": 52
  },
  {
    "id": 5218607,
    "nome": "Rialma",
    "estado_id": 52
  },
  {
    "id": 5218706,
    "nome": "Rianápolis",
    "estado_id": 52
  },
  {
    "id": 5218789,
    "nome": "Rio Quente",
    "estado_id": 52
  },
  {
    "id": 5218805,
    "nome": "Rio Verde",
    "estado_id": 52
  },
  {
    "id": 5218904,
    "nome": "Rubiataba",
    "estado_id": 52
  },
  {
    "id": 5219001,
    "nome": "Sanclerlândia",
    "estado_id": 52
  },
  {
    "id": 5219100,
    "nome": "Santa Bárbara de Goiás",
    "estado_id": 52
  },
  {
    "id": 5219209,
    "nome": "Santa Cruz de Goiás",
    "estado_id": 52
  },
  {
    "id": 5219258,
    "nome": "Santa Fé de Goiás",
    "estado_id": 52
  },
  {
    "id": 5219308,
    "nome": "Santa Helena de Goiás",
    "estado_id": 52
  },
  {
    "id": 5219357,
    "nome": "Santa Isabel",
    "estado_id": 52
  },
  {
    "id": 5219407,
    "nome": "Santa Rita do Araguaia",
    "estado_id": 52
  },
  {
    "id": 5219456,
    "nome": "Santa Rita do Novo Destino",
    "estado_id": 52
  },
  {
    "id": 5219506,
    "nome": "Santa Rosa de Goiás",
    "estado_id": 52
  },
  {
    "id": 5219605,
    "nome": "Santa Tereza de Goiás",
    "estado_id": 52
  },
  {
    "id": 5219704,
    "nome": "Santa Terezinha de Goiás",
    "estado_id": 52
  },
  {
    "id": 5219712,
    "nome": "Santo Antônio da Barra",
    "estado_id": 52
  },
  {
    "id": 5219738,
    "nome": "Santo Antônio de Goiás",
    "estado_id": 52
  },
  {
    "id": 5219753,
    "nome": "Santo Antônio do Descoberto",
    "estado_id": 52
  },
  {
    "id": 5219803,
    "nome": "São Domingos",
    "estado_id": 52
  },
  {
    "id": 5219902,
    "nome": "São Francisco de Goiás",
    "estado_id": 52
  },
  {
    "id": 5220009,
    "nome": "São João d'Aliança",
    "estado_id": 52
  },
  {
    "id": 5220058,
    "nome": "São João da Paraúna",
    "estado_id": 52
  },
  {
    "id": 5220108,
    "nome": "São Luís de Montes Belos",
    "estado_id": 52
  },
  {
    "id": 5220157,
    "nome": "São Luiz do Norte",
    "estado_id": 52
  },
  {
    "id": 5220207,
    "nome": "São Miguel do Araguaia",
    "estado_id": 52
  },
  {
    "id": 5220264,
    "nome": "São Miguel do Passa Quatro",
    "estado_id": 52
  },
  {
    "id": 5220280,
    "nome": "São Patrício",
    "estado_id": 52
  },
  {
    "id": 5220405,
    "nome": "São Simão",
    "estado_id": 52
  },
  {
    "id": 5220454,
    "nome": "Senador Canedo",
    "estado_id": 52
  },
  {
    "id": 5220504,
    "nome": "Serranópolis",
    "estado_id": 52
  },
  {
    "id": 5220603,
    "nome": "Silvânia",
    "estado_id": 52
  },
  {
    "id": 5220686,
    "nome": "Simolândia",
    "estado_id": 52
  },
  {
    "id": 5220702,
    "nome": "Sítio d'Abadia",
    "estado_id": 52
  },
  {
    "id": 5221007,
    "nome": "Taquaral de Goiás",
    "estado_id": 52
  },
  {
    "id": 5221080,
    "nome": "Teresina de Goiás",
    "estado_id": 52
  },
  {
    "id": 5221197,
    "nome": "Terezópolis de Goiás",
    "estado_id": 52
  },
  {
    "id": 5221304,
    "nome": "Três Ranchos",
    "estado_id": 52
  },
  {
    "id": 5221403,
    "nome": "Trindade",
    "estado_id": 52
  },
  {
    "id": 5221452,
    "nome": "Trombas",
    "estado_id": 52
  },
  {
    "id": 5221502,
    "nome": "Turvânia",
    "estado_id": 52
  },
  {
    "id": 5221551,
    "nome": "Turvelândia",
    "estado_id": 52
  },
  {
    "id": 5221577,
    "nome": "Uirapuru",
    "estado_id": 52
  },
  {
    "id": 5221601,
    "nome": "Uruaçu",
    "estado_id": 52
  },
  {
    "id": 5221700,
    "nome": "Uruana",
    "estado_id": 52
  },
  {
    "id": 5221809,
    "nome": "Urutaí",
    "estado_id": 52
  },
  {
    "id": 5221858,
    "nome": "Valparaíso de Goiás",
    "estado_id": 52
  },
  {
    "id": 5221908,
    "nome": "Varjão",
    "estado_id": 52
  },
  {
    "id": 5222005,
    "nome": "Vianópolis",
    "estado_id": 52
  },
  {
    "id": 5222054,
    "nome": "Vicentinópolis",
    "estado_id": 52
  },
  {
    "id": 5222203,
    "nome": "Vila Boa",
    "estado_id": 52
  },
  {
    "id": 5222302,
    "nome": "Vila Propício",
    "estado_id": 52
  },
  {
    "id": 5300108,
    "nome": "Brasília",
    "estado_id": 53
  }
]
JSON
Cidade.import(%w[id nome estado_id], cidades, on_duplicate_key_ignore: true)

Configuracao.create if Configuracao.count.zero?
