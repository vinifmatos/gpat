import { Component } from "@angular/core";
import { FormBuilder } from "@angular/forms";
import { ActivatedRoute, Router } from "@angular/router";
import { ImportsModule } from "../../../imports.module";
import { Responsavel } from "../../../models/responsavel.model";
import { ApiService } from "../../../services/api.service";
import { StringService } from "../../../services/string.service";
import { FormBase } from "../../form-base";
import { FormComponent } from "../../shared/form/form.component";

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
}
