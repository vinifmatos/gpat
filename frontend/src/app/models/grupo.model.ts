import { ModelBase } from "./model-base.model";

export class Grupo extends ModelBase {
  codigo?: number;
  grupo_id?: number;
  descricao: string;
  ativo: boolean;
  grupo?: Grupo;
  subgrupos?: Grupo[];

  constructor({
    codigo,
    grupo_id,
    descricao = "",
    ativo = true,
    grupo,
    subgrupos = [],
    id,
    created_at,
    updated_at,
  }: {
    codigo?: number;
    grupo_id?: number;
    descricao?: string;
    ativo?: boolean;
    grupo?: Grupo;
    subgrupos?: Grupo[];
    id?: number;
    created_at?: Date;
    updated_at?: Date;
  } = {}) {
    super(id, created_at, updated_at);
    this.codigo = codigo;
    this.grupo_id = grupo_id;
    this.descricao = descricao;
    this.ativo = ativo;
    this.grupo = grupo;
    this.subgrupos = subgrupos;
  }
}
