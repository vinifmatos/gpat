import { Fornecedor } from "./fornecedor";
import { Grupo } from "./grupo";

export interface Patrimonio {
  id?: number | undefined;
  codigo: string | undefined;
  descricao: string | undefined;
  especificacao: string | undefined;
  data_aquisicao: Date | undefined;
  data_incorporacao: Date | undefined;
  valor_aquisicao: number | undefined;
  vida_util: number | undefined;
  valor_residual: number | undefined;
  data_desincorporacao: Date | undefined;
  situacao: string | undefined;
  grupo_id: number | undefined;
  numero_empenho: number | undefined;
  ano_empenho: number | undefined;
  numero_processo_compra: number | undefined;
  ano_processo_compra: number | undefined;
  fornecedor_id: number | undefined;
  created_at?: Date;
  updated_at?: Date;
  localizacao_atual?: string;
  grupo?: Grupo;
  fornecedor?: Fornecedor;
  url_imagem?: string;
}
