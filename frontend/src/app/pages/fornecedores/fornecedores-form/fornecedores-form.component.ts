import { Component } from "@angular/core";
import { FormArray, FormBuilder, FormControl, FormGroup } from "@angular/forms";
import { ActivatedRoute, Router } from "@angular/router";
import { ImportsModule } from "../../../imports.module";
import { Fornecedor } from "../../../models/fornecedor.model";
import { ApiService } from "../../../services/api.service";
import { StringService } from "../../../services/string.service";
import { FormBase } from "../../form-base";
import { FormEnderecoComponent } from "../../shared/form-endereco/form-endereco.component";
import { FormComponent } from "../../shared/form/form.component";

@Component({
  selector: "app-fornecedores-form",
  standalone: true,
  imports: [ImportsModule, FormComponent, FormEnderecoComponent],
  templateUrl: "./fornecedores-form.component.html",
  styleUrl: "./fornecedores-form.component.scss",
})
export class FornecedoresFormComponent extends FormBase {
  tipos = [
    { tipo: "pessoa_fisica", descricao: "Pessoa Física" },
    { tipo: "pessoa_juridica", descricao: "Pessoa Jurídica" },
  ];
  override dados: Fornecedor;
  constructor(
    api: ApiService,
    fb: FormBuilder,
    route: ActivatedRoute,
    router: Router,
    strs: StringService
  ) {
    super(api, fb, Fornecedor, route, router, strs);
  }

  excluir_endereco(index: number) {
    let enderecos = this.form.controls["enderecos"] as FormArray;
    let endereco = enderecos.at(index) as FormGroup;
    if (endereco.get("id")) {
      endereco.addControl("_destroy", new FormControl(true));
      let el = document.getElementById(`endereco-${index}`) as HTMLDivElement;
      el.style.visibility = "hidden";
    } else enderecos.removeAt(index);
  }

  enderecos() {
    return this.form.controls["enderecos"] as FormArray;
  }

  novo_endereco() {
    let enderecos = this.form.controls["enderecos"] as FormArray;
    enderecos.push(
      this.fb.group({
        bairro: "",
        cep: "",
        cidade: undefined,
        complemento: "",
        logradouro: "",
        numero: "",
        principal: !(enderecos.length > 0),
      })
    );
  }
}
