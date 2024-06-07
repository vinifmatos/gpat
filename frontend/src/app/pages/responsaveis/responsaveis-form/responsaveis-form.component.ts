import { FormBuilder, FormGroup } from "@angular/forms";
import { FormComponentBase } from "../../../component-base/form-component-base";
import { ApiService } from "../../../services/api.service";
import { Responsavel } from "./../../../interfaces/responsavel";
import { Component } from "@angular/core";
import { ActivatedRoute, Router } from "@angular/router";
import { StringService } from "../../../services/string.service";
import { ImportsModule } from "../../../imports.module";
import { FormComponent } from "../../shared/form/form.component";

@Component({
  selector: "app-responsaveis-form",
  standalone: true,
  imports: [ImportsModule, FormComponent],
  templateUrl: "./responsaveis-form.component.html",
  styleUrl: "./responsaveis-form.component.scss",
})
export class ResponsaveisFormComponent extends FormComponentBase {
  override campos: Responsavel;
  constructor(
    api: ApiService,
    fb: FormBuilder,
    route: ActivatedRoute,
    router: Router,
    strs: StringService
  ) {
    let campos = {
      id: null,
      cpf: "",
      nome: "",
      ativo: true,
    };
    super(api, campos, fb, route, router, api.recursos["responsaveis"], strs);
  }

  protected override before_submit(submited: boolean): void {}

  protected override build_form(): FormGroup<any> {
    return this.fb.group({
      id: this.campos.id,
      cpf: this.campos.cpf,
      nome: this.campos.nome,
      ativo: this.campos.ativo,
    });
  }
}
