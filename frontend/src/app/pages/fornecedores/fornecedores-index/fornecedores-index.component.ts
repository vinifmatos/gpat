import { Component } from "@angular/core";
import { ActivatedRoute, Router, RouterModule } from "@angular/router";
import { Fornecedor } from "../../../interfaces/fornecedor";
import { ImportsModule } from "../../../imports.module";
import { ApiService } from "../../../services/api.service";
import { ComponentBase } from "../../../component-base/component-base";
import { IndexComponent } from "../../shared/index/index.component";

@Component({
  selector: "app-fornecedores-index",
  standalone: true,
  imports: [RouterModule, ImportsModule, IndexComponent],
  templateUrl: "./fornecedores-index.component.html",
  styleUrl: "./fornecedores-index.component.scss",
})
export class FornecedoresIndexComponent extends ComponentBase {
  fornecedores: Fornecedor[];

  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, api.recursos["fornecedores"], router, route);
    this.api
      .get<Fornecedor[]>([this.api.recursos["fornecedores"].rotas.index])
      .subscribe(
        (res) => {
          this.fornecedores = res.body as Fornecedor[];
          this.carregando = false;
          this.erro_ao_carregar = false;
        },
        (res) => {
          this.carregando = false;
          this.erro_ao_carregar = false;
        }
      );
  }
}
