import { Component } from "@angular/core";
import { ImportsModule } from "../../../imports.module";
import { FormComponent } from "../../shared/form/form.component";
import { ApiService } from "../../../services/api.service";
import { FormBuilder, FormGroup } from "@angular/forms";
import { ActivatedRoute, Router } from "@angular/router";
import { StringService } from "../../../services/string.service";
import { AutoCompleteCompleteEvent } from "primeng/autocomplete";
import { FormEnderecoComponent } from "../../shared/form-endereco/form-endereco.component";
import { Local } from "../../../models/local";
import { FormBase } from "../../form-base";
import { Endereco } from "../../../models/endereco";

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

  protected override model_factory(dados: Local): Local {
    dados.endereco = new Endereco(dados.endereco);
    let model = new Local(dados);
    return Object.assign(model, dados);
  }
}
