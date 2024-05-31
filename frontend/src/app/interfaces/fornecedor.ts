import { Endereco } from "./endereco";

export interface Fornecedor {
  id?: number | null,
  tipo: string | null,
  documento: string | null,
  razao_social: string | null,
  nome_fantasia?: string | null,
  created_at?: Date | null,
  updated_at?: Date | null,
  enderecos: Endereco[]
}
