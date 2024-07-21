import { Component } from "@angular/core";
import { FormBuilder, ReactiveFormsModule } from "@angular/forms";
import { ActivatedRoute, Router } from "@angular/router";
import { SelectItemGroup } from "primeng/api";
import { ListboxFilterEvent } from "primeng/listbox";
import { ImportsModule } from "../../../imports.module";
import { Fornecedor } from "../../../models/fornecedor.model";
import { Grupo } from "../../../models/grupo.model";
import { Local } from "../../../models/local.model";
import { Patrimonio } from "../../../models/patrimonio.model";
import { ApiService } from "../../../services/api.service";
import { StringService } from "../../../services/string.service";
import { FormBase } from "../../form-base";
import { FormComponent } from "../../shared/form/form.component";

@Component({
  selector: "app-patrimonios-form",
  standalone: true,
  imports: [FormComponent, ReactiveFormsModule, ImportsModule],
  templateUrl: "./patrimonios-form.component.html",
  styleUrl: "./patrimonios-form.component.scss",
})
export class PatrimoniosFormComponent extends FormBase {
  fornecedores: Fornecedor[] = [];
  grupos: SelectItemGroup[] = [];
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
        q: {
          g: [
            {
              codigo_eq: event.filter,
              descricao_regex_insensitive: event.filter,
              m: "or",
            },
          ],
          ativo_eq: true,
          subgrupos: true,
        },
        descricao: "asc",
      })
      .subscribe((res) => {
        const grupos = res.body as Grupo[];

        this.grupos = Object.values(
          grupos.reduce((a: any, i: any) => {
            const { id, codigo, descricao } = i.grupo;
            if (!a[id])
              a[id] = {
                label: `${codigo} - ${descricao}`,
                value: id,
                items: [],
              };

            a[id].items.push({
              label: `${i.codigo} - ${i.descricao}`,
              value: i,
            });
            return a;
          }, {})
        );
        console.log(this.grupos);
      });
  }

  get_fornecedores(event: ListboxFilterEvent) {
    event.originalEvent.preventDefault();
    this.api
      .get<Fornecedor[]>(Fornecedor.rotas.index, {
        q: {
          razao_social_regex_insensitive: event.filter,
          documento_eq: event.filter,
          m: "or",
        },
        razao_social: "asc",
      })
      .subscribe((res) => {
        this.fornecedores = res.body as Fornecedor[];
      });
  }

  get_locais(event: ListboxFilterEvent) {
    this.api
      .get<Local[]>(Local.rotas.index, {
        q: {
          g: [
            {
              codigo_eq: event.filter,
              descricao_regex_insensitive: event.filter,
              m: "or",
            },
          ],
          ativo_eq: true,
        },
        descricao: "asc",
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
