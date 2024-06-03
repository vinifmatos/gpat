import { Endereco } from "./endereco"

export interface Local {
  id?: number | null,
  local_id?: number | null,
  codigo: number | null,
  descricao: string | null,
  ativo: boolean | null,
  created_at?: Date,
  updated_at?: Date,
  endereco: Endereco,
  subordinados?: Local[]
  subordinacao?: Local
}
