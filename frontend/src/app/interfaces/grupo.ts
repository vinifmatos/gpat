export interface Grupo {
  id?: number,
  codigo: number,
  grupo_id?: number,
  descricao: string,
  ativo: boolean,
  created_at?: Date,
  updated_at?: Date,
  filhos?: Grupo[]
}
