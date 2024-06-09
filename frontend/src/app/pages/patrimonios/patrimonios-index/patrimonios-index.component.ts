import { Component } from "@angular/core";
import { ActivatedRoute, Router, RouterModule } from "@angular/router";
import { ApiService } from "../../../services/api.service";
import { ImportsModule } from "../../../imports.module";
import { IndexComponent } from "../../shared/index/index.component";
import { Patrimonio } from "../../../models/patrimonio";
import { IndexBase } from "../../index-base";

@Component({
  selector: "app-patrimonios-index",
  standalone: true,
  imports: [ImportsModule, IndexComponent],
  templateUrl: "./patrimonios-index.component.html",
  styleUrl: "./patrimonios-index.component.scss",
})
export class PatrimoniosIndexComponent extends IndexBase {
  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, Patrimonio, router, route);
  }

  get patrimonios(): Patrimonio[] {
    return this.dados as Patrimonio[];
  }
}
