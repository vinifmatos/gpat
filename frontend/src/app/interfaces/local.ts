import { Endereco } from "./endereco"

export interface Local {
  id?: number,
  local_id?: number,
  codigo: number,
  descricao: string,
  ativo: boolean,
  created_at?: Date,
  updated_at?: Date,
  endereco: Endereco,
  subordinados?: Local[]
}
