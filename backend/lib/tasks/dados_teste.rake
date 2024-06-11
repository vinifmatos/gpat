namespace :dados_teste do
  task criar: :environment do
    FactoryBot.create_list(:local, 25)
    FactoryBot.create_list(:patrimonio, 50)
    FactoryBot.create_list(:patrimonio_pendente, 10)
    FactoryBot.create_list(:patrimonio_inativo, 50)
  end
end
