import { Component } from "@angular/core";
import { ComponentBase } from "../../../component-base/component-base";
import { ImportsModule } from "../../../imports.module";
import { ShowComponent } from "../../shared/show/show.component";
import { ApiService } from "../../../services/api.service";
import { ActivatedRoute, Router } from "@angular/router";
import { Patrimonio } from "../../../interfaces/patrimonio";

@Component({
  selector: "app-patrimonios-show",
  standalone: true,
  imports: [ImportsModule, ShowComponent],
  templateUrl: "./patrimonios-show.component.html",
  styleUrl: "./patrimonios-show.component.scss",
})
export class PatrimoniosShowComponent extends ComponentBase {
  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, api.recursos["patrimonios"], router, route);
  }

  get patrimonio(): Patrimonio {
    return this.dados as Patrimonio;
  }
}
