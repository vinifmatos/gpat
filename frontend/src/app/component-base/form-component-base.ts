import { FormBuilder, FormGroup } from "@angular/forms"
import { ComponentBase } from "./component-base"
import { ApiService } from "../services/api.service"
import { ActivatedRoute, Router } from "@angular/router"
import { Recurso } from "../interfaces/recurso"

export abstract class FormComponentBase extends ComponentBase {
  dados_carregados: boolean = false
  campos: any
  form: FormGroup
  erros: []
  constructor(
    api: ApiService,
    protected fb: FormBuilder,
    route: ActivatedRoute,
    router: Router,
    protected recurso: Recurso
  ) {
    super(api, router, route)
  }

  protected set_form() {
    this.form = this.build_form()
  }

  protected abstract build_form(): FormGroup

  protected before_submit(submited: boolean) { }

  onSubmit(submited: boolean) {
    this.campos = this.form.getRawValue()
    if (submited) {
      this.before_submit(submited)
      if (!this.campos.id) {
        this.api.create<any>([this.recurso.rotas.create], this.set_payload()).subscribe(
          (res) => this.router.navigate(['/', this.recurso.rotas.show, res.body.id]),
          (res) => { this.erros = res.body }
        )
      } else {
        this.api.update<any>([this.recurso.rotas.update, this.campos.id], this.set_payload()).subscribe(
          (res) => this.router.navigate(['/', this.recurso.rotas.show, res.body.id]),
          (res) => { this.erros = res.body }
        )
      }
    } else {
      this.router.navigate([this.recurso.rotas.index])
    }
  }

  protected set_payload(): any {
    let payload: any = {}
    payload[this.recurso.nome] = this.filtra_campos_payload(this.campos)
    return payload
  }

  protected filtra_campos_payload(campos: any): any {
    delete campos.id
    return campos
  }
}
