import { formatDate } from "date-fns";
import { Fornecedor } from "./fornecedor.model";
import { Grupo } from "./grupo.model";
import { Local } from "./local.model";
import { ModelBase } from "./model-base.model";

export class Patrimonio extends ModelBase {
  codigo?: string;
  descricao: string;
  especificacao?: string;
  data_aquisicao: Date;
  data_incorporacao?: Date;
  valor_aquisicao: number;
  vida_util: number;
  valor_residual: number;
  data_baixa?: Date;
  situacao: "pendente" | "ativo" | "em_manutencao" | "inativo";
  grupo_id?: number;
  numero_empenho?: number;
  ano_empenho?: number;
  numero_processo_compra?: number;
  ano_processo_compra?: number;
  fornecedor_id?: number;
  localizacao_atual?: Local;
  grupo?: Grupo;
  fornecedor?: Fornecedor;
  thumb?: string;
  local_inicial_id?: number;

  constructor({
    codigo,
    descricao = "",
    especificacao,
    data_aquisicao = new Date(),
    data_incorporacao,
    valor_aquisicao = 0,
    vida_util = 0,
    valor_residual = 0,
    data_baixa,
    situacao = "pendente",
    grupo_id,
    numero_empenho,
    ano_empenho,
    numero_processo_compra,
    ano_processo_compra,
    fornecedor_id,
    localizacao_atual,
    grupo,
    fornecedor,
    thumb,
    id,
    created_at,
    updated_at,
    local_inicial_id,
  }: {
    codigo?: string;
    descricao?: string;
    especificacao?: string;
    data_aquisicao?: Date;
    data_incorporacao?: Date;
    valor_aquisicao?: number;
    vida_util?: number;
    valor_residual?: number;
    data_baixa?: Date;
    situacao?: "pendente" | "ativo" | "em_manutencao" | "inativo";
    grupo_id?: number;
    numero_empenho?: number;
    ano_empenho?: number;
    numero_processo_compra?: number;
    ano_processo_compra?: number;
    fornecedor_id?: number;
    localizacao_atual?: Local;
    grupo?: Grupo;
    fornecedor?: Fornecedor;
    thumb?: string;
    id?: number;
    created_at?: Date;
    updated_at?: Date;
    local_inicial_id?: number;
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
    this.data_baixa = data_baixa;
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
    this.thumb = thumb;
    this.local_inicial_id = local_inicial_id;
  }

  private formata_data(data?: Date): string | undefined {
    if (data) return formatDate(data, "dd/MM/yyyy");
    else return undefined;
  }
}
