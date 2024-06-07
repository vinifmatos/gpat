import { Component } from "@angular/core";
import { ImportsModule } from "../../../imports.module";
import { FormComponent } from "../../shared/form/form.component";
import { FormComponentBase } from "../../../component-base/form-component-base";
import { ApiService } from "../../../services/api.service";
import { FormBuilder, FormGroup } from "@angular/forms";
import { ActivatedRoute, Router } from "@angular/router";
import { Local } from "../../../interfaces/local";
import { StringService } from "../../../services/string.service";
import { AutoCompleteCompleteEvent } from "primeng/autocomplete";
import { FormEnderecoComponent } from "../../shared/form-endereco/form-endereco.component";

@Component({
  selector: "app-locais-form",
  standalone: true,
  imports: [ImportsModule, FormComponent, FormEnderecoComponent],
  templateUrl: "./locais-form.component.html",
  styleUrl: "./locais-form.component.scss",
})
export class LocaisFormComponent extends FormComponentBase {
  override campos: Local;
  locais: Local[];
  constructor(
    api: ApiService,
    fb: FormBuilder,
    route: ActivatedRoute,
    router: Router,
    strs: StringService
  ) {
    let campos = {
      id: null,
      local_id: null,
      codigo: null,
      descricao: "",
      ativo: true,
      endereco: {
        bairro: "",
        cep: "",
        cidade: undefined,
        complemento: "",
        logradouro: "",
        numero: "",
        principal: true,
        cidade_id: null,
      },
      subordinacao: null,
    };
    super(api, campos, fb, route, router, api.recursos["locais"], strs);
  }

  protected override build_form(): FormGroup<any> {
    return this.fb.group({
      id: this.campos.id,
      local_id: this.campos.local_id,
      codigo: this.campos.codigo,
      descricao: this.campos.descricao,
      ativo: this.campos.ativo,
      endereco: this.fb.group({
        bairro: "",
        cep: "",
        cidade: undefined,
        complemento: "",
        logradouro: "",
        numero: "",
        principal: true,
        cidade_id: null,
      }),

      subordinacao: this.campos.subordinacao,
    });
  }

  protected override before_submit(submited: boolean): void {
    this.campos.local_id = this.campos.subordinacao?.id;
    this.campos.endereco.cidade_id = this.campos.endereco.cidade?.id as number;
  }

  protected override filtra_campos_payload(campos: any) {
    delete campos.subordinacao;
    delete campos.endereco.cidade;
    return super.filtra_campos_payload(campos);
  }

  get_locais(e: AutoCompleteCompleteEvent) {
    this.api
      .get<Local[]>([this.recurso.rotas.get], { descricao: e.query })
      .subscribe((res) => {
        this.locais = res.body as Local[];
      });
  }

  endereco(): FormGroup {
    return this.form.controls["endereco"] as FormGroup;
  }
}
