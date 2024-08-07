import { Component } from "@angular/core";
import { ActivatedRoute, Router, RouterModule } from "@angular/router";
import { ImportsModule } from "../../../imports.module";
import { Fornecedor } from "../../../models/fornecedor.model";
import { ApiService } from "../../../services/api.service";
import { IndexBase } from "../../index-base";
import { IndexComponent } from "../../shared/index/index.component";

@Component({
  selector: "app-fornecedores-index",
  standalone: true,
  imports: [RouterModule, ImportsModule, IndexComponent],
  templateUrl: "./fornecedores-index.component.html",
  styleUrl: "./fornecedores-index.component.scss",
})
export class FornecedoresIndexComponent extends IndexBase {
  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, Fornecedor, router, route);
  }

  get fornecedores(): Fornecedor[] {
    return this.dados;
  }
}
