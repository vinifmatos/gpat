import { Component } from "@angular/core";
import { ActivatedRoute, Router } from "@angular/router";
import { ImportsModule } from "../../../imports.module";
import { Patrimonio } from "../../../models/patrimonio.model";
import { SituacaoPatrimonioPipe } from "../../../pipes/situacao-patrimonio.pipe";
import { ApiService } from "../../../services/api.service";
import { IndexBase } from "../../index-base";
import { IndexComponent } from "../../shared/index/index.component";

@Component({
  selector: "app-patrimonios-index",
  standalone: true,
  imports: [ImportsModule, IndexComponent, SituacaoPatrimonioPipe],
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
