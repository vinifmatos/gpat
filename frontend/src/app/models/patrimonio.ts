import { FormControl, FormGroup } from "@angular/forms";
import { Rotas } from "../interfaces/rotas";
import { Fornecedor } from "./fornecedor";
import { Grupo } from "./grupo";
import { ModelBase } from "./model-base";

export class Patrimonio extends ModelBase {
  static override nome: string = "patrimonio";
  static override rotas: Rotas = {
    index: "patrimonios",
    get: "patrimonios",
    show: "patrimonios",
    create: "patrimonios",
    update: "patrimonios",
    delete: "patrimonios",
  };

  codigo?: string;
  descricao: string;
  especificacao?: string;
  data_aquisicao?: Date;
  data_incorporacao?: Date;
  valor_aquisicao?: number;
  vida_util?: number;
  valor_residual?: number;
  data_desincorporacao?: Date;
  situacao?: string;
  grupo_id?: number;
  numero_empenho?: number;
  ano_empenho?: number;
  numero_processo_compra?: number;
  ano_processo_compra?: number;
  fornecedor_id?: number;
  localizacao_atual?: string;
  grupo?: Grupo;
  fornecedor?: Fornecedor;
  url_thumb?: string;

  constructor({
    codigo,
    descricao = "",
    especificacao,
    data_aquisicao = new Date(),
    data_incorporacao,
    valor_aquisicao,
    vida_util,
    valor_residual,
    data_desincorporacao,
    situacao,
    grupo_id,
    numero_empenho,
    ano_empenho,
    numero_processo_compra,
    ano_processo_compra,
    fornecedor_id,
    localizacao_atual,
    grupo,
    fornecedor,
    url_thumb,
    id,
    created_at,
    updated_at,
  }: {
    codigo?: string;
    descricao?: string;
    especificacao?: string;
    data_aquisicao?: Date;
    data_incorporacao?: Date;
    valor_aquisicao?: number;
    vida_util?: number;
    valor_residual?: number;
    data_desincorporacao?: Date;
    situacao?: string;
    grupo_id?: number;
    numero_empenho?: number;
    ano_empenho?: number;
    numero_processo_compra?: number;
    ano_processo_compra?: number;
    fornecedor_id?: number;
    localizacao_atual?: string;
    grupo?: Grupo;
    fornecedor?: Fornecedor;
    url_thumb?: string;
    id?: number;
    created_at?: Date;
    updated_at?: Date;
  } = {}) {
    super(id, created_at, updated_at);
    this.codigo = codigo;
    this.descricao = descricao;
    this.especificacao = especificacao;
    this.data_aquisicao = data_aquisicao;
    this.data_incorporacao = data_incorporacao;
    this.valor_aquisicao = valor_aquisicao;
    this.vida_util = vida_util;
    this.valor_residual = valor_residual;
    this.data_desincorporacao = data_desincorporacao;
    this.situacao = situacao;
    this.grupo_id = grupo_id;
    this.numero_empenho = numero_empenho;
    this.ano_empenho = ano_empenho;
    this.numero_processo_compra = numero_processo_compra;
    this.ano_processo_compra = ano_processo_compra;
    this.fornecedor_id = fornecedor_id;
    this.localizacao_atual = localizacao_atual;
    this.grupo = grupo;
    this.fornecedor = fornecedor;
    this.url_thumb = url_thumb;
  }

  override to_payload(): Partial<this> {
    let payload = super.to_payload();
    payload.grupo_id = payload.grupo?.id;
    payload.fornecedor_id = payload.fornecedor?.id;
    delete payload.grupo;
    delete payload.fornecedor;
    return payload;
  }

  override to_form(): FormGroup<any> {
    return new FormGroup({
      codigo: new FormControl(this.codigo),
      descricao: new FormControl(this.descricao),
      especificacao: new FormControl(this.especificacao),
      data_aquisicao: new FormControl(this.data_aquisicao),
      data_incorporacao: new FormControl(this.data_incorporacao),
      valor_aquisicao: new FormControl(this.valor_aquisicao),
      vida_util: new FormControl(this.vida_util),
      valor_residual: new FormControl(this.valor_residual),
      data_desincorporacao: new FormControl(this.data_desincorporacao),
      situacao: new FormControl(this.situacao),
      numero_empenho: new FormControl(this.numero_empenho),
      ano_empenho: new FormControl(this.ano_empenho),
      numero_processo_compra: new FormControl(this.numero_processo_compra),
      ano_processo_compra: new FormControl(this.ano_processo_compra),
      grupo: new FormControl(this.grupo),
      fornecedor: new FormControl(this.fornecedor),
    });
  }
}
