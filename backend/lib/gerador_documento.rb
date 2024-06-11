module GeradorDocumento
  def self.cpf
    # Gera os 9 primeiros dígitos de forma aleatória
    base = Array.new(9) { rand(0..9) }

    # Calcula o primeiro dígito verificador
    soma = base.each_with_index.reduce(0) do |acc, (num, index)|
      acc + num * (10 - index)
    end

    d1 = (soma % 11)
    d1 = d1 < 2 ? 0 : 11 - d1

    # Adiciona o primeiro dígito verificador ao CPF base
    base << d1

    # Calcula o segundo dígito verificador
    soma = base.each_with_index.reduce(0) do |acc, (num, index)|
      acc + num * (11 - index)
    end

    d2 = (soma % 11)
    d2 = d2 < 2 ? 0 : 11 - d2

    # Adiciona o segundo dígito verificador ao CPF base
    base << d2

    base.join
  end

  def self.cnpj
    # Gera os 12 primeiros dígitos de forma aleatória
    base = Array.new(12) { rand(0..9) }

    # Calcula o primeiro dígito verificador
    multiplicadores_d1 = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2]
    soma = base.each_with_index.reduce(0) do |acc, (num, index)|
      acc + num * multiplicadores_d1[index]
    end

    d1 = (soma % 11)
    d1 = d1 < 2 ? 0 : 11 - d1

    # Adiciona o primeiro dígito verificador ao CNPJ base
    base << d1

    # Calcula o segundo dígito verificador
    multiplicadores_d2 = [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2]
    soma = base.each_with_index.reduce(0) do |acc, (num, index)|
      acc + num * multiplicadores_d2[index]
    end

    d2 = (soma % 11)
    d2 = d2 < 2 ? 0 : 11 - d2

    # Adiciona o segundo dígito verificador ao CNPJ base
    base << d2

    base.join
  end
end
