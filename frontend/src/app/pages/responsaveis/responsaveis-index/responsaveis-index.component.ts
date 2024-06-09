import { Component } from "@angular/core";
import { ImportsModule } from "../../../imports.module";
import { IndexComponent } from "../../shared/index/index.component";
import { ApiService } from "../../../services/api.service";
import { ActivatedRoute, Router } from "@angular/router";
import { IndexBase } from "../../index-base";
import { Responsavel } from "../../../models/responsavel";

@Component({
  selector: "app-responsaveis-index",
  standalone: true,
  imports: [ImportsModule, IndexComponent],
  templateUrl: "./responsaveis-index.component.html",
  styleUrl: "./responsaveis-index.component.scss",
})
export class ResponsaveisIndexComponent extends IndexBase {
  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, Responsavel, router, route);
  }

  get responsaveis(): Responsavel[] {
    return this.dados;
  }
}
