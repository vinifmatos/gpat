import { FormControl, FormGroup } from "@angular/forms";
import { Rotas } from "../interfaces/rotas";
import { Local } from "./local";
import { ModelBase } from "./model-base";
import { Patrimonio } from "./patrimonio";

export class Responsavel extends ModelBase {
  static override nome: string = "responsavel";
  static override rotas: Rotas = {
    index: "responsaveis",
    get: "responsaveis",
    show: "responsaveis",
    create: "responsaveis",
    update: "responsaveis",
    delete: "responsaveis",
  };

  cpf?: string;
  nome: string;
  ativo: boolean;
  locais?: Local[];
  patrimonios?: Patrimonio[];

  constructor({
    cpf,
    nome = "",
    ativo = true,
    locais = [],
    patrimonios = [],
    id,
    created_at,
    updated_at,
  }: {
    cpf?: string;
    nome?: string;
    ativo?: boolean;
    locais?: Local[];
    patrimonios?: Patrimonio[];
    id?: number;
    created_at?: Date;
    updated_at?: Date;
  } = {}) {
    super(id, created_at, updated_at);
    this.cpf = cpf;
    this.nome = nome;
    this.ativo = ativo;
    this.locais = locais;
    this.patrimonios = patrimonios;
  }

  override to_payload(): Partial<this> {
    let payload = super.to_payload();
    delete payload.locais;
    delete payload.patrimonios;
    return payload;
  }

  override to_form(): FormGroup<any> {
    return new FormGroup({
      cpf: new FormControl(this.cpf),
      nome: new FormControl(this.nome),
      ativo: new FormControl(this.ativo),
    });
  }
}
