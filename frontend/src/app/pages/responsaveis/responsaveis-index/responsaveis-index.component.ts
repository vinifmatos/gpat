import { Component } from "@angular/core";
import { ImportsModule } from "../../../imports.module";
import { IndexComponent } from "../../shared/index/index.component";
import { ComponentBase } from "../../../component-base/component-base";
import { ApiService } from "../../../services/api.service";
import { ActivatedRoute, Router } from "@angular/router";
import { Responsavel } from "../../../interfaces/responsavel";

@Component({
  selector: "app-responsaveis-index",
  standalone: true,
  imports: [ImportsModule, IndexComponent],
  templateUrl: "./responsaveis-index.component.html",
  styleUrl: "./responsaveis-index.component.scss",
})
export class ResponsaveisIndexComponent extends ComponentBase {
  responsaveis: Responsavel[];
  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, api.recursos["responsaveis"], router, route);
    api.get(api.recursos["responsaveis"].rotas.index).subscribe(
      (res) => {
        this.responsaveis = res.body as Responsavel[];
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
