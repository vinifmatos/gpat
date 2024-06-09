import { FormBuilder } from "@angular/forms";
import { ApiService } from "../../../services/api.service";
import { Component } from "@angular/core";
import { ActivatedRoute, Router } from "@angular/router";
import { StringService } from "../../../services/string.service";
import { ImportsModule } from "../../../imports.module";
import { FormComponent } from "../../shared/form/form.component";
import { FormBase } from "../../form-base";
import { Responsavel } from "../../../models/responsavel";

@Component({
  selector: "app-responsaveis-form",
  standalone: true,
  imports: [ImportsModule, FormComponent],
  templateUrl: "./responsaveis-form.component.html",
  styleUrl: "./responsaveis-form.component.scss",
})
export class ResponsaveisFormComponent extends FormBase {
  constructor(
    api: ApiService,
    fb: FormBuilder,
    route: ActivatedRoute,
    router: Router,
    strs: StringService
  ) {
    super(api, fb, Responsavel, route, router, strs);
  }

  protected override model_factory(dados: any): Responsavel {
    let model = new this.model();
    return Object.assign(model, dados);
  }
}
