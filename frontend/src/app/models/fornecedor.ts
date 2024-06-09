import { Endereco } from "./endereco";
import { Rotas } from "../interfaces/rotas";
import { ModelBase } from "./model-base";
import { FormArray, FormControl, FormGroup } from "@angular/forms";

export class Fornecedor extends ModelBase {
  static override nome: string = "fornecedor";
  static override rotas: Rotas = {
    index: "fornecedores",
    get: "fornecedores",
    show: "fornecedores",
    create: "fornecedores",
    update: "fornecedores",
    delete: "fornecedores",
  };

  tipo: string;
  documento: string;
  razao_social: string;
  nome_fantasia?: string;
  enderecos: Endereco[];

  override to_payload(): Partial<this> {
    let payload = super.to_payload();
    payload.enderecos = this.enderecos.map((e) =>
      e.to_payload()
    ) as this["enderecos"];
    return payload;
  }

  override to_form(): FormGroup<any> {
    return new FormGroup({
      tipo: new FormControl(this.tipo),
      documento: new FormControl(this.documento),
      razao_social: new FormControl(this.razao_social),
      nome_fantasia: new FormControl(this.nome_fantasia),
      enderecos: new FormArray(this.enderecos.map((e) => e.to_form())),
    });
  }
}
