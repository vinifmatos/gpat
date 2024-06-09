import { FormGroup } from "@angular/forms";
import { Rotas } from "../interfaces/rotas";

export abstract class ModelBase {
  static nome: string = "";
  static rotas: Rotas = {
    index: "",
    get: "",
    show: "",
    create: "",
    update: "",
    delete: "",
  };

  id?: number;
  created_at?: Date;
  updated_at?: Date;

  constructor(id?: number, created_at?: Date, updated_at?: Date) {
    this.id = id;
    this.created_at = created_at;
    this.updated_at = updated_at;
  }

  to_payload(): Partial<this> {
    let payload: Partial<this> = this;
    delete payload.id;
    return payload;
  }

  abstract to_form(): FormGroup;
}
