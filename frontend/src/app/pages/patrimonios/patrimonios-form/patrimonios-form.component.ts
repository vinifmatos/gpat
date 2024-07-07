import { Component } from "@angular/core";
import { FormComponent } from "../../shared/form/form.component";
import { ApiService } from "../../../services/api.service";
import { FormBuilder, ReactiveFormsModule } from "@angular/forms";
import { ActivatedRoute, Router } from "@angular/router";
import { ImportsModule } from "../../../imports.module";
import { StringService } from "../../../services/string.service";
import { FormBase } from "../../form-base";
import { Grupo } from "../../../models/grupo";
import { Fornecedor } from "../../../models/fornecedor";
import { Patrimonio } from "../../../models/patrimonio";
import { Local } from "../../../models/local";
import { ListboxFilterEvent } from "primeng/listbox";

@Component({
  selector: "app-patrimonios-form",
  standalone: true,
  imports: [FormComponent, ReactiveFormsModule, ImportsModule],
  templateUrl: "./patrimonios-form.component.html",
  styleUrl: "./patrimonios-form.component.scss",
})
export class PatrimoniosFormComponent extends FormBase {
  fornecedores: Fornecedor[] = [];
  grupos: Grupo[] = [];
  locais: Local[] = [];
  exibir_selecao_fornecedor: boolean = false;
  exibir_selecao_grupo: boolean = false;
  exibir_selecao_local: boolean = false;
  fornecedor_selecionado: Fornecedor;
  grupo_selecionado: Grupo;
  local_selecionado: Local;

  constructor(
    api: ApiService,
    fb: FormBuilder,
    route: ActivatedRoute,
    router: Router,
    strs: StringService
  ) {
    super(api, fb, Patrimonio, route, router, strs);
  }

  get_grupos(event: ListboxFilterEvent) {
    this.api
      .get<Grupo[]>(Grupo.rotas.index, {
        subgrupos: true,
        descricao: event.filter,
        ativo: "=true",
        ordenar_por: ["descricao"],
      })
      .subscribe((res) => {
        this.grupos = res.body as Grupo[];
      });
  }

  get_fornecedores(event: ListboxFilterEvent) {
    this.api
      .get<Fornecedor[]>(Fornecedor.rotas.index, {
        razao_social: `~*${event.filter}`,
        documento: `=${event.filter}`,
        ordenar_por: ["razao_social"],
      })
      .subscribe((res) => {
        this.fornecedores = res.body as Fornecedor[];
      });
  }

  get_locais(event: ListboxFilterEvent) {
    this.api
      .get<Local[]>(Local.rotas.index, {
        descricao: `~*${event.filter}`,
        ativo: "=true",
        ordenar_por: ["descricao"],
      })
      .subscribe((res) => {
        this.locais = res.body as Local[];
      });
  }
  on_selecionar_fornecedor() {
    this.form.controls["fornecedor_id"].setValue(
      this.fornecedor_selecionado.id
    );
    this.exibir_selecao_fornecedor = false;
    let input = document.getElementById("fornecedor") as HTMLInputElement;
    input.value = `${this.fornecedor_selecionado.documento} - ${this.fornecedor_selecionado.razao_social}`;
  }

  on_selecionar_grupo() {
    this.form.controls["grupo_id"].setValue(this.grupo_selecionado.id);
    this.exibir_selecao_grupo = false;
    let input = document.getElementById("grupo") as HTMLInputElement;
    input.value = `${this.grupo_selecionado.codigo} - ${this.grupo_selecionado.descricao}`;
  }

  on_selecionar_local() {
    this.form.controls["local_inicial_id"].setValue(this.local_selecionado.id);
    this.exibir_selecao_local = false;
    let input = document.getElementById(
      "localizacao-inicial"
    ) as HTMLInputElement;
    input.value = `${this.local_selecionado.codigo} - ${this.local_selecionado.descricao}`;
  }
}
