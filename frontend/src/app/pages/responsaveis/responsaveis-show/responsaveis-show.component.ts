import { Component } from "@angular/core";
import { Responsavel } from "../../../interfaces/responsavel";
import { ApiService } from "../../../services/api.service";
import { ActivatedRoute, Router } from "@angular/router";
import { ComponentBase } from "../../../component-base/component-base";
import { ImportsModule } from "../../../imports.module";
import { ShowComponent } from "../../shared/show/show.component";

@Component({
  selector: "app-responsaveis-show",
  standalone: true,
  imports: [ImportsModule, ShowComponent],
  templateUrl: "./responsaveis-show.component.html",
  styleUrl: "./responsaveis-show.component.scss",
})
export class ResponsaveisShowComponent extends ComponentBase {
  responsavel: Responsavel;

  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, router, route);
    this.route.params.subscribe(() => {
      this.carregando = true;
      this.api
        .get<Responsavel>([
          this.api.recursos["responsaveis"].rotas.get,
          this.route.snapshot.paramMap.get("id") as string,
        ])
        .subscribe(
          (res) => {
            this.responsavel = res.body as Responsavel;
            this.carregando = false;
            this.erro_ao_carregar = false;
          },
          (res) => {
            this.carregando = false;
            this.erro_ao_carregar = true;
          }
        );
    });
  }
}
