import { Cidade } from "./cidade";

export interface Endereco {
  id?: number | null,
  logradouro: string,
  numero: string,
  bairro: string,
  complemento: string,
  cep: string,
  cidade_id: number | null,
  principal: boolean,
  created_at?: Date,
  updated_at?: Date,
  cidade?: Cidade
}