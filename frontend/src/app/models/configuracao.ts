import { FormGroup } from "@angular/forms";
import { Rotas } from "../interfaces/rotas";
import { ModelBase } from "./model-base";

export class Configuracao extends ModelBase {
  static override nome: string = "configuracao";
  static override rotas: Rotas = {
    index: "",
    get: "configuracao",
    show: "configuracao",
    create: "",
    update: "configuracao",
    delete: "",
  };

  constructor({
    id,
    created_at,
    updated_at,
  }: { id?: number; created_at?: Date; updated_at?: Date } = {}) {
    super(id, created_at, updated_at);
  }

  override to_payload(): Partial<this> {
    let payload = super.to_payload();
    return payload;
  }

  override to_form(): FormGroup<any> {
    return new FormGroup({});
  }
}
