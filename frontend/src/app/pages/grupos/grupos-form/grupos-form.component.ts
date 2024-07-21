import { Component } from "@angular/core";
import { FormBuilder } from "@angular/forms";
import { ActivatedRoute, Router } from "@angular/router";
import { AutoCompleteCompleteEvent } from "primeng/autocomplete";
import { ImportsModule } from "../../../imports.module";
import { Grupo } from "../../../models/grupo.model";
import { ApiService } from "../../../services/api.service";
import { StringService } from "../../../services/string.service";
import { FormBase } from "../../form-base";
import { FormComponent } from "../../shared/form/form.component";

@Component({
  selector: "app-grupos-form",
  standalone: true,
  imports: [ImportsModule, FormComponent],
  templateUrl: "./grupos-form.component.html",
  styleUrl: "./grupos-form.component.scss",
})
export class GruposFormComponent extends FormBase {
  grupos: Grupo[];
  vincular_grupo: boolean = false;
  constructor(
    api: ApiService,
    fb: FormBuilder,
    route: ActivatedRoute,
    router: Router,
    strs: StringService
  ) {
    super(api, fb, Grupo, route, router, strs);
  }

  get_grupos(e: AutoCompleteCompleteEvent) {
    this.api
      .get<Grupo[]>(this.model.rotas.index, { pais: true, query: e.query })
      .subscribe((res) => {
        this.grupos = res.body as Grupo[];
      });
  }
}
