import { Component } from "@angular/core";
import { FormBuilder, FormGroup } from "@angular/forms";
import { ActivatedRoute, Router } from "@angular/router";
import { AutoCompleteCompleteEvent } from "primeng/autocomplete";
import { ImportsModule } from "../../../imports.module";
import { Local } from "../../../models/local.model";
import { ApiService } from "../../../services/api.service";
import { StringService } from "../../../services/string.service";
import { FormBase } from "../../form-base";
import { FormEnderecoComponent } from "../../shared/form-endereco/form-endereco.component";
import { FormComponent } from "../../shared/form/form.component";

@Component({
  selector: "app-locais-form",
  standalone: true,
  imports: [ImportsModule, FormComponent, FormEnderecoComponent],
  templateUrl: "./locais-form.component.html",
  styleUrl: "./locais-form.component.scss",
})
export class LocaisFormComponent extends FormBase {
  locais: Local[];
  constructor(
    api: ApiService,
    fb: FormBuilder,
    route: ActivatedRoute,
    router: Router,
    strs: StringService
  ) {
    super(api, fb, Local, route, router, strs);
  }

  get_locais(e: AutoCompleteCompleteEvent) {
    this.api
      .get<Local[]>(this.model.rotas.get, { descricao: e.query })
      .subscribe((res) => {
        this.locais = res.body as Local[];
      });
  }

  endereco(): FormGroup {
    return this.form.controls["endereco"] as FormGroup;
  }
}
