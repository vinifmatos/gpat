import { FormBuilder, FormGroup } from "@angular/forms";
import { ComponentBase } from "./component-base";
import { ApiService } from "../services/api.service";
import { ActivatedRoute, Router } from "@angular/router";
import { StringService } from "../services/string.service";
import { ModelBase } from "../models/model-base";
export abstract class FormBase extends ComponentBase {
  editando: boolean = false;
  titulo: string;
  form: FormGroup;
  erros: [];
  override dados: ModelBase;
  constructor(
    api: ApiService,
    protected fb: FormBuilder,
    model: any,
    route: ActivatedRoute,
    router: Router,
    private strs: StringService
  ) {
    super(api, model, router, route);
    this.carregar_dados();
  }

  onSubmit() {
    let id = this.route.snapshot.paramMap.get("id");
    let registro = {
      [this.model.nome]: new this.model(this.form.getRawValue()).to_payload(),
    };

    if (!id) {
      this.api
        .create<typeof this.dados>(this.model.rotas.create, registro)
        .subscribe(
          (res) =>
            this.router.navigate(["/", this.model.rotas.show, res.body?.id]),
          (res) => {
            this.erros = res.body;
          }
        );
    } else {
      this.api
        .update<typeof this.dados>([this.model.rotas.update, id], registro)
        .subscribe(
          (res) =>
            this.router.navigate(["/", this.model.rotas.show, res.body?.id]),
          (res) => {
            this.erros = res.body;
          }
        );
    }
  }

  protected carregar_dados() {
    let id = this.route.snapshot.paramMap.get("id");
    if (id) {
      this.api.get<typeof this.dados>([this.model.rotas.get, id]).subscribe(
        (res) => {
          this.editando = true;
          this.titulo = `Editar ${this.strs.capitalize(
            this.strs.singularize(this.model.nome)
          )}`;
          this.dados = this.model_factory(res.body);
          this.form = this.dados.to_form();
          this.carregando = false;
          this.erro_ao_carregar = false;
        },
        (res) => {
          this.carregando = false;
          this.erro_ao_carregar = true;
        }
      );
    } else {
      this.editando = false;
      this.titulo = `Novo ${this.strs.capitalize(
        this.strs.singularize(this.model.nome)
      )}`;
      this.form = new this.model().to_form();
      this.carregando = false;
      this.erro_ao_carregar = false;
    }
  }

  protected abstract model_factory(dados: any): ModelBase;
}
