import { FormControl, FormGroup } from "@angular/forms";
import { Cidade } from "../interfaces/cidade";
import { ModelBase } from "./model-base";

export class Endereco extends ModelBase {
  static override nome: string = "endereco";
  static rota_cidades = "cidades";

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

  override to_payload(): Partial<this> {
    let payload: Partial<this> = this;
    payload.cidade_id = payload.cidade?.id;
    delete payload.cidade;
    return payload;
  }

  override to_form(): FormGroup<any> {
    return new FormGroup({
      logradouro: new FormControl(this.logradouro),
      numero: new FormControl(this.numero),
      bairro: new FormControl(this.bairro),
      complemento: new FormControl(this.complemento),
      cep: new FormControl(this.cep),
      principal: new FormControl(this.principal),
      cidade: new FormControl(this.cidade),
    });
  }
}
