import { Component } from "@angular/core";
import { ActivatedRoute, Router } from "@angular/router";
import { ImportsModule } from "../../../imports.module";
import { Patrimonio } from "../../../models/patrimonio.model";
import { NumeroAno } from "../../../pipes/numero-ano";
import { ApiService } from "../../../services/api.service";
import { ShowComponent } from "../../shared/show/show.component";
import { ShowBase } from "../../show-base";

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
