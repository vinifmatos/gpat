export interface Grupo {
  id?: number | null,
  codigo: number | null,
  grupo_id?: number | null,
  descricao: string | null,
  ativo: boolean | null,
  created_at?: Date | null,
  updated_at?: Date | null,
  filhos?: Grupo[]
}
