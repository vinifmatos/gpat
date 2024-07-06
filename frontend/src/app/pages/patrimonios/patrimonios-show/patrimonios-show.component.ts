import { Component } from "@angular/core";
import { ImportsModule } from "../../../imports.module";
import { ShowComponent } from "../../shared/show/show.component";
import { ApiService } from "../../../services/api.service";
import { ActivatedRoute, Router } from "@angular/router";
import { Patrimonio } from "../../../models/patrimonio";
import { ShowBase } from "../../show-base";
import { NumeroAno } from "../../../pipes/numero-ano";

@Component({
  selector: "app-patrimonios-show",
  standalone: true,
  imports: [ImportsModule, ShowComponent, NumeroAno],
  templateUrl: "./patrimonios-show.component.html",
  styleUrl: "./patrimonios-show.component.scss",
})
export class PatrimoniosShowComponent extends ShowBase {
  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, Patrimonio, router, route);
  }

  get patrimonio(): Patrimonio {
    return this.dados;
  }
}
