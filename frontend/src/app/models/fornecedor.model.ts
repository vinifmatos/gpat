// import { TipoPessoaFornecedor } from "../types/tipo_pessoa_fornecedor";
import { Endereco } from "./endereco.model";
import { ModelBase } from "./model-base.model";

export class Fornecedor extends ModelBase {
  tipo: "pessoa_fisica" | "pessoa_juridica";
  documento: string;
  razao_social: string;
  nome_fantasia?: string;
  enderecos: Endereco[];

  constructor({
    tipo = "pessoa_juridica",
    documento = "",
    razao_social = "",
    nome_fantasia,
    enderecos = [],
    id,
    created_at,
    updated_at,
  }: {
    tipo?: "pessoa_fisica" | "pessoa_juridica";
    documento?: string;
    razao_social?: string;
    nome_fantasia?: string;
    enderecos?: Endereco[];
    id?: number;
    created_at?: Date;
    updated_at?: Date;
  } = {}) {
    super(id, created_at, updated_at);
    this.tipo = tipo;
    this.documento = documento;
    this.razao_social = razao_social;
    this.nome_fantasia = nome_fantasia;
    this.enderecos = enderecos;
  }
}
