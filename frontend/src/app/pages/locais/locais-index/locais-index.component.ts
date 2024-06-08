import { ActivatedRoute, Router } from "@angular/router";
import { ApiService } from "../../../services/api.service";
import { IndexComponent } from "../../shared/index/index.component";
import { ImportsModule } from "../../../imports.module";
import { Component } from "@angular/core";
import { ComponentBase } from "../../../component-base/component-base";
import { Local } from "../../../interfaces/local";

@Component({
  selector: "app-locais-index",
  standalone: true,
  imports: [ImportsModule, IndexComponent],
  templateUrl: "./locais-index.component.html",
  styleUrl: "./locais-index.component.scss",
})
export class LocaisIndexComponent extends ComponentBase {
  locais: Local[] = [];
  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, api.recursos["locais"], router, route);
    api.get<Local[]>([api.recursos["locais"].rotas.index]).subscribe(
      (res) => {
        this.locais = res.body as Local[];
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
