import { ActivatedRoute, Router } from "@angular/router";
import { ComponentBase } from "../../../component-base/component-base";
import { ApiService } from "../../../services/api.service";
import { ShowComponent } from "../../shared/show/show.component";
import { ImportsModule } from "../../../imports.module";
import { Component } from "@angular/core";
import { Local } from "../../../interfaces/local";
import { ShowEnderecosComponent } from "../../shared/show-enderecos/show-enderecos.component";

@Component({
  selector: "app-locais-show",
  standalone: true,
  imports: [ImportsModule, ShowComponent, ShowEnderecosComponent],
  templateUrl: "./locais-show.component.html",
  styleUrl: "./locais-show.component.scss",
})
export class LocaisShowComponent extends ComponentBase {
  local: Local;
  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, api.recursos["locais"], router, route);
    this.route.params.subscribe(() => {
      this.carregando = true;
      this.api
        .get<Local>([
          api.recursos["locais"].rotas.get,
          route.snapshot.paramMap.get("id") as string,
        ])
        .subscribe(
          (res) => {
            this.local = res.body as Local;
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
