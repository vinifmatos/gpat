import { Component } from "@angular/core";
import { FormComponent } from "../../shared/form/form.component";
import { ApiService } from "../../../services/api.service";
import { FormArray, FormBuilder, FormControl, FormGroup } from "@angular/forms";
import { ActivatedRoute, Router } from "@angular/router";
import { Fornecedor } from "../../../interfaces/fornecedor";
import { ImportsModule } from "../../../imports.module";
import { FormEnderecoComponent } from "../../shared/form-endereco/form-endereco.component";
import { FormComponentBase } from "../../../component-base/form-component-base";
import { StringService } from "../../../services/string.service";

@Component({
  selector: "app-fornecedores-form",
  standalone: true,
  imports: [ImportsModule, FormComponent, FormEnderecoComponent],
  templateUrl: "./fornecedores-form.component.html",
  styleUrl: "./fornecedores-form.component.scss",
})
export class FornecedoresFormComponent extends FormComponentBase {
  tipos = [
    { tipo: "pessoa_fisica", descricao: "Pessoa Física" },
    { tipo: "pessoa_juridica", descricao: "Pessoa Jurídica" },
  ];
  override campos: Fornecedor;
  constructor(
    api: ApiService,
    fb: FormBuilder,
    route: ActivatedRoute,
    router: Router,
    strs: StringService
  ) {
    let campos = {
      id: null,
      documento: "",
      enderecos: [
        {
          bairro: "",
          cep: "",
          cidade: undefined,
          complemento: "",
          logradouro: "",
          numero: "",
          principal: true,
          cidade_id: null,
        },
      ],
      razao_social: "",
      tipo: "pessoa_fisica",
      nome_fantasia: undefined,
    };
    super(api, campos, fb, route, router, api.recursos["fornecedores"], strs);
  }

  protected override build_form(): FormGroup<any> {
    return this.fb.group({
      id: new FormControl(this.campos.id),
      documento: new FormControl(this.campos.documento),
      enderecos: this.fb.array(
        this.campos.enderecos.map((e) =>
          this.fb.group({
            id: e.id,
            bairro: e.bairro,
            cep: e.cep,
            cidade: e.cidade,
            complemento: e.complemento,
            logradouro: e.logradouro,
            numero: e.numero,
            principal: e.principal,
            cidade_id: e.cidade_id,
          })
        )
      ),
      razao_social: new FormControl(this.campos.razao_social),
      tipo: new FormControl(this.campos.tipo),
      nome_fantasia: new FormControl(this.campos.nome_fantasia),
    });
  }

  protected override before_submit(submited: boolean): void {
    this.campos.enderecos.map((endereco) => {
      endereco.cidade_id = endereco.cidade?.id as number;
    });
  }

  protected override filtra_campos_payload(campos: any) {
    campos.enderecos.forEach((e: any) => delete e.cidade);
    return super.filtra_campos_payload(campos);
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
