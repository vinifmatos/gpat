export interface Endereco {
  id?: number,
  logradouro: string,
  numero: string,
  bairro: string,
  complemento: string,
  cep: string,
  cidade_id: number,
  principal: boolean,
  created_at?: Date,
  updated_at?: Date,
  nome_cidade?: string,
  estado?: string
}