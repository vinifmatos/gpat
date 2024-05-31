import { Endereco } from "./endereco";

export interface Fornecedor {
  id?: number,
  tipo: string,
  documento: string,
  razao_social: string,
  nome_fantasia?: string,
  created_at?: Date,
  updated_at?: Date,
  enderecos: Endereco[]
}
