import { Local } from "./local.model";
import { ModelBase } from "./model-base.model";
import { Patrimonio } from "./patrimonio.model";

export class Responsavel extends ModelBase {
  cpf: string;
  nome: string;
  ativo: boolean;
  locais?: Local[];
  patrimonios?: Patrimonio[];

  constructor({
    cpf = "",
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
}
