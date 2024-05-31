import { FormBuilder, FormGroup } from "@angular/forms"
import { Router } from "@angular/router"
import { ApiService } from "./api.service"

export class FormComponentBase {
  nome_recurso: string
  recurso: any
  form: FormGroup
  erros: []
  constructor(
    protected api: ApiService,
    protected fb: FormBuilder,
    protected router: Router,
  ) { }

  protected inicializa_form(form_grupo: FormGroup) {
    this.form = form_grupo
  }

  protected before_submit(submited: boolean) { }

  onSubmit(submited: boolean) {
    this.recurso = this.form.getRawValue()
    if (submited) {
      this.before_submit(submited)
      if (!this.recurso.id) {
        this.api.create([`/${this.nome_recurso}`], this.recurso).subscribe(
          (res) => this.router.navigate([`/${this.nome_recurso}/${res.body.id}`]),
          (res) => { this.erros = res.body }
        )
      }
    } else {
      this.router.navigate([`/${this.nome_recurso}`])
    }
  }
}
