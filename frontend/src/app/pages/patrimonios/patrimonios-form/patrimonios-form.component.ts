import { Component } from "@angular/core";
import { FormComponent } from "../../shared/form/form.component";
import { ApiService } from "../../../services/api.service";
import {
  FormBuilder,
  FormControl,
  FormGroup,
  ReactiveFormsModule,
} from "@angular/forms";
import { Patrimonio } from "../../../interfaces/patrimonio";
import { ActivatedRoute, Router } from "@angular/router";
import { AutoCompleteCompleteEvent } from "primeng/autocomplete";
import { ImportsModule } from "../../../imports.module";
import { FormComponentBase } from "../../../component-base/form-component-base";
import { StringService } from "../../../services/string.service";
import { Grupo } from "../../../interfaces/grupo";
import { Fornecedor } from "../../../interfaces/fornecedor";

@Component({
  selector: "app-patrimonios-form",
  standalone: true,
  imports: [FormComponent, ReactiveFormsModule, ImportsModule],
  templateUrl: "./patrimonios-form.component.html",
  styleUrl: "./patrimonios-form.component.scss",
})
export class PatrimoniosFormComponent extends FormComponentBase {
  override campos: Patrimonio;
  grupos: Grupo[] = [];
  fornecedores: Fornecedor[] = [];

  constructor(
    api: ApiService,
    fb: FormBuilder,
    route: ActivatedRoute,
    router: Router,
    strs: StringService
  ) {
    let campos = {
      id: undefined,
      codigo: undefined,
      descricao: undefined,
      especificacao: undefined,
      data_aquisicao: undefined,
      data_incorporacao: undefined,
      valor_aquisicao: undefined,
      vida_util: undefined,
      valor_residual: undefined,
      data_desincorporacao: undefined,
      situacao: undefined,
      grupo_id: undefined,
      numero_empenho: undefined,
      ano_empenho: undefined,
      numero_processo_compra: undefined,
      ano_processo_compra: undefined,
      fornecedor_id: undefined,
      grupo: undefined,
      fornecedor: undefined,
    };
    super(api, campos, fb, route, router, api.recursos["patrimonios"], strs);
  }

  protected override build_form(): FormGroup<any> {
    return this.fb.group({
      id: this.campos.id,
      codigo: this.campos.codigo,
      descricao: this.campos.descricao,
      especificacao: this.campos.especificacao,
      data_aquisicao: this.campos.data_aquisicao,
      data_incorporacao: this.campos.data_incorporacao,
      valor_aquisicao: this.campos.valor_aquisicao,
      vida_util: this.campos.vida_util,
      valor_residual: this.campos.valor_residual,
      data_desincorporacao: this.campos.data_desincorporacao,
      situacao: this.campos.situacao,
      grupo_id: this.campos.grupo_id,
      numero_empenho: this.campos.numero_empenho,
      ano_empenho: this.campos.ano_empenho,
      numero_processo_compra: this.campos.numero_processo_compra,
      ano_processo_compra: this.campos.ano_processo_compra,
      fornecedor_id: this.campos.fornecedor_id,
      grupo: this.campos.grupo,
      fornecedor: this.campos.fornecedor,
    });
  }

  protected override before_submit(submited: boolean): void {
    this.campos.fornecedor_id = this.campos.fornecedor?.id as number;
    this.campos.grupo_id = this.campos.grupo?.id as number;
  }

  protected override filtra_campos_payload(campos: Patrimonio) {
    delete campos.fornecedor;
    delete campos.grupo;
    return super.filtra_campos_payload(campos);
  }
  get_grupos(event: AutoCompleteCompleteEvent) {
    this.api
      .get<Grupo[]>(this.api.recursos["grupos"].rotas.index, {
        para_patrimonio: true,
        query: event.query,
      })
      .subscribe((res) => {
        this.grupos = res.body as Grupo[];
      });
  }

  get_fornecedores(event: AutoCompleteCompleteEvent) {
    this.api
      .get<Fornecedor[]>(this.api.recursos["fornecedores"].rotas.index, {
        descricao: event.query,
      })
      .subscribe((res) => {
        this.fornecedores = res.body as Fornecedor[];
      });
  }
}
