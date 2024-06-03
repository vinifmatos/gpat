import { Component, OnInit } from "@angular/core";
import { FormComponent } from "../../shared/form/form.component";
import { ImportsModule } from "../../../imports.module";
import { FormComponentBase } from "../../../component-base/form-component-base";
import { ApiService } from "../../../services/api.service";
import { FormBuilder, FormControl, FormGroup } from "@angular/forms";
import { ActivatedRoute, Router } from "@angular/router";
import { Grupo } from "../../../interfaces/grupo";
import { AutoCompleteCompleteEvent } from "primeng/autocomplete";
import { StringService } from "../../../services/string.service";

@Component({
  selector: "app-grupos-form",
  standalone: true,
  imports: [ImportsModule, FormComponent],
  templateUrl: "./grupos-form.component.html",
  styleUrl: "./grupos-form.component.scss",
})
export class GruposFormComponent extends FormComponentBase {
  override campos: Grupo;
  grupos_pai: Grupo[];
  vincular_pai: boolean = false;
  constructor(
    api: ApiService,
    fb: FormBuilder,
    route: ActivatedRoute,
    router: Router,
    strs: StringService
  ) {
    let campos = {
      id: null,
      codigo: null,
      descricao: "",
      ativo: true,
      grupo_id: null,
      pai: undefined,
      filhos: [],
    };
    super(api, campos, fb, route, router, api.recursos["grupos"], strs);
  }

  protected override build_form(): FormGroup<any> {
    return this.fb.group({
      id: this.campos.id,
      codigo: this.campos.codigo,
      descricao: this.campos.descricao,
      ativo: this.campos.ativo,
      grupo_id: this.campos.grupo_id,
      pai: new FormControl({ value: this.campos.pai, disabled: this.editando }),
      filhos: [],
    });
  }

  get_grupos_pai(e: AutoCompleteCompleteEvent) {
    this.api
      .get<Grupo[]>([this.recurso.rotas.index], { pais: true, query: e.query })
      .subscribe((res) => {
        this.grupos_pai = res.body as Grupo[];
      });
  }

  protected override before_submit(submited: boolean): void {
    this.campos.grupo_id = this.campos.pai?.id;
  }

  protected override filtra_campos_payload(campos: any) {
    delete campos.grupo;
    delete campos.pai;
    delete campos.filhos;
    return super.filtra_campos_payload(campos);
  }

  protected override atualiza_form(): void {
    let id = this.route.snapshot.paramMap.get("id");
    if (id) {
      this.api.get([this.recurso.rotas.get, id]).subscribe(
        (res) => {
          this.editando = true;
          this.campos = res.body as any;
          this.set_form();
          this.carregando = false;
          this.erro_ao_carregar = false;
          this.vincular_pai = (res.body as any).grupo_id ? true : false;
        },
        (res) => {
          this.carregando = false;
          this.erro_ao_carregar = true;
        }
      );
    } else {
      this.editando = false;
      this.set_form();
      this.carregando = false;
      this.erro_ao_carregar = false;
    }
  }
}
