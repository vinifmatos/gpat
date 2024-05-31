import { Local } from "./local"
import { Patrimonio } from "./patrimonio"

export interface Responsavel {
  id?: number,
  cpf: string,
  nome: string,
  ativo: boolean,
  created_at?: Date,
  updated_at?: Date,
  locais?: Local[],
  patrimonios?: Patrimonio[]
}
