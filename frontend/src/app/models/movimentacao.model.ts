import { Local } from "./local.model";
import { ModelBase } from "./model-base.model";
import { MovimentacaoItem } from "./movimentacao_item.model";

export class Movimentacao extends ModelBase {
  data: Date;
  local_id?: number;
  motivo:
    | "incorporacao"
    | "transferencia"
    | "emprestimo"
    | "manutencao"
    | "desincorporacao"
    | "inventario";
  itens: MovimentacaoItem[];
  local?: Local;

  constructor(
    data: Date,
    motivo:
      | "incorporacao"
      | "transferencia"
      | "emprestimo"
      | "manutencao"
      | "desincorporacao"
      | "inventario",
    itens: MovimentacaoItem[] = [],
    local_id?: number,
    id?: number,
    created_at?: Date,
    updated_at?: Date
  ) {
    super(id, created_at, updated_at);
    this.data = data;
    this.local_id = local_id;
    this.motivo = motivo;
    this.itens = itens.map(MovimentacaoItem.build);
  }

  static build({
    data = new Date(),
    local_id,
    motivo = "incorporacao",
    itens = [],
    id,
    created_at,
    updated_at,
  }: {
    data?: Date;
    local_id?: number;
    motivo?:
      | "incorporacao"
      | "transferencia"
      | "emprestimo"
      | "manutencao"
      | "desincorporacao"
      | "inventario";
    itens?: MovimentacaoItem[];
    id?: number;
    created_at?: Date;
    updated_at?: Date;
  } = {}) {
    return new Movimentacao(
      data!,
      motivo!,
      itens,
      local_id,
      id,
      created_at,
      updated_at
    );
  }
}
