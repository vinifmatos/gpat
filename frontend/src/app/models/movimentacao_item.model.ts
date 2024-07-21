import { ModelBase } from "./model-base.model";
import { Patrimonio } from "./patrimonio.model";

export class MovimentacaoItem extends ModelBase {
  movimentacao_id?: number;
  patrimonio_id?: number;
  patrimonio?: Patrimonio;
  _destroy?: boolean;

  constructor(
    patrimonio_id: number,
    patrimonio: Patrimonio,
    movimentacao_id?: number,
    id?: number,
    created_at?: Date,
    updated_at?: Date
  ) {
    super(id, created_at, updated_at);
    this.patrimonio_id = patrimonio_id;
    this.movimentacao_id = movimentacao_id;
    this.patrimonio = patrimonio;
  }

  static build({
    patrimonio_id,
    movimentacao_id,
    patrimonio,
    id,
    created_at,
    updated_at,
  }: {
    patrimonio_id?: number;
    movimentacao_id?: number;
    id?: number;
    created_at?: Date;
    updated_at?: Date;
    patrimonio?: Patrimonio;
  } = {}) {
    return new MovimentacaoItem(
      patrimonio_id!,
      patrimonio!,
      movimentacao_id,
      id,
      created_at,
      updated_at
    );
  }
}
