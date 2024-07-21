import { Cidade } from "../interfaces/cidade";
import { ModelBase } from "./model-base.model";

export class Endereco extends ModelBase {
  logradouro: string;
  numero: string;
  bairro: string;
  complemento: string;
  cep: string;
  cidade_id?: number;
  principal: boolean;
  cidade?: Cidade;
  _destroy?: boolean;

  constructor({
    logradouro = "",
    numero = "",
    bairro = "",
    complemento = "",
    cep = "",
    cidade_id,
    principal = true,
    cidade,
    id,
    created_at,
    updated_at,
  }: {
    logradouro?: string;
    numero?: string;
    bairro?: string;
    complemento?: string;
    cep?: string;
    cidade_id?: number;
    principal?: boolean;
    cidade?: Cidade;
    id?: number;
    created_at?: Date;
    updated_at?: Date;
  } = {}) {
    super(id, created_at, updated_at);
    this.logradouro = logradouro;
    this.numero = numero;
    this.bairro = bairro;
    this.complemento = complemento;
    this.cep = cep;
    this.cidade_id = cidade_id;
    this.principal = principal;
    this.cidade = cidade;
  }
}
