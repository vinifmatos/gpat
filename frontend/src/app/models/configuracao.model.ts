import { ModelBase } from "./model-base.model";

export class Configuracao extends ModelBase {
  constructor({
    id,
    created_at,
    updated_at,
  }: { id?: number; created_at?: Date; updated_at?: Date } = {}) {
    super(id, created_at, updated_at);
  }
}
