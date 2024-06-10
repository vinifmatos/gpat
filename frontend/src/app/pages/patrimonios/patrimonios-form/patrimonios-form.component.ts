import { Component } from "@angular/core";
import { FormComponent } from "../../shared/form/form.component";
import { ApiService } from "../../../services/api.service";
import { FormBuilder, ReactiveFormsModule } from "@angular/forms";
import { ActivatedRoute, Router } from "@angular/router";
import { AutoCompleteCompleteEvent } from "primeng/autocomplete";
import { ImportsModule } from "../../../imports.module";
import { StringService } from "../../../services/string.service";
import { FormBase } from "../../form-base";
import { Grupo } from "../../../models/grupo";
import { Fornecedor } from "../../../models/fornecedor";
import { Patrimonio } from "../../../models/patrimonio";

@Component({
  selector: "app-patrimonios-form",
  standalone: true,
  imports: [FormComponent, ReactiveFormsModule, ImportsModule],
  templateUrl: "./patrimonios-form.component.html",
  styleUrl: "./patrimonios-form.component.scss",
})
export class PatrimoniosFormComponent extends FormBase {
  grupos: Grupo[] = [];
  fornecedores: Fornecedor[] = [];

  constructor(
    api: ApiService,
    fb: FormBuilder,
    route: ActivatedRoute,
    router: Router,
    strs: StringService
  ) {
    super(api, fb, Patrimonio, route, router, strs);
  }

  get_grupos(event: AutoCompleteCompleteEvent) {
    this.api
      .get<Grupo[]>(Grupo.rotas.index, {
        para_patrimonio: true,
        query: event.query,
      })
      .subscribe((res) => {
        this.grupos = res.body as Grupo[];
      });
  }

  get_fornecedores(event: AutoCompleteCompleteEvent) {
    this.api
      .get<Fornecedor[]>(Fornecedor.rotas.index, {
        descricao: event.query,
      })
      .subscribe((res) => {
        this.fornecedores = res.body as Fornecedor[];
      });
  }
}
