import { Component } from "@angular/core";
import { ImportsModule } from "../../../imports.module";
import { ComponentBase } from "../../../component-base/component-base";
import { ApiService } from "../../../services/api.service";
import { ActivatedRoute, Router } from "@angular/router";
import { Fornecedor } from "../../../interfaces/fornecedor";
import { ShowComponent } from "../../shared/show/show.component";
import { ShowEnderecosComponent } from "../../shared/show-enderecos/show-enderecos.component";

@Component({
  selector: "app-fornecedores-show",
  standalone: true,
  imports: [ImportsModule, ShowComponent, ShowEnderecosComponent],
  templateUrl: "./fornecedores-show.component.html",
  styleUrl: "./fornecedores-show.component.scss",
})
export class FornecedoresShowComponent extends ComponentBase {
  fornecedor: Fornecedor;
  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, api.recursos["fornecedores"], router, route);
    this.api
      .get<Fornecedor>([
        this.api.recursos["fornecedores"].rotas.show,
        this.route.snapshot.paramMap.get("id") as string,
      ])
      .subscribe(
        (res) => {
          this.fornecedor = res.body as Fornecedor;
          this.carregando = false;
          this.erro_ao_carregar = false;
        },
        (res) => {
          this.carregando = false;
          this.erro_ao_carregar = true;
        }
      );
  }
}
