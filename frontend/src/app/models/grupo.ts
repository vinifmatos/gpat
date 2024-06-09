import { FormControl, FormGroup } from "@angular/forms";
import { Rotas } from "../interfaces/rotas";
import { ModelBase } from "./model-base";

export class Grupo extends ModelBase {
  static override nome: string = "grupo";
  static override rotas: Rotas = {
    index: "grupos",
    get: "grupos",
    show: "grupos",
    create: "grupos",
    update: "grupos",
    delete: "grupos",
  };

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

  override to_payload(): Partial<this> {
    let payload = super.to_payload();
    payload.grupo_id = payload.grupo?.id;
    delete payload.grupo;
    delete payload.subgrupos;
    return payload;
  }

  override to_form(): FormGroup<any> {
    return new FormGroup({
      codigo: new FormControl(this.codigo),
      grupo_id: new FormControl(this.grupo_id),
      descricao: new FormControl(this.descricao),
      ativo: new FormControl(this.ativo),
      grupo: new FormControl(this.grupo),
    });
  }
}
