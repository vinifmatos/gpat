import { Component } from "@angular/core";
import { ImportsModule } from "../../../imports.module";
import { ApiService } from "../../../services/api.service";
import { ActivatedRoute, Router } from "@angular/router";
import { ShowComponent } from "../../shared/show/show.component";
import { ShowEnderecosComponent } from "../../shared/show-enderecos/show-enderecos.component";
import { ShowBase } from "../../show-base";
import { Fornecedor } from "../../../models/fornecedor";

@Component({
  selector: "app-fornecedores-show",
  standalone: true,
  imports: [ImportsModule, ShowComponent, ShowEnderecosComponent],
  templateUrl: "./fornecedores-show.component.html",
  styleUrl: "./fornecedores-show.component.scss",
})
export class FornecedoresShowComponent extends ShowBase {
  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, Fornecedor, router, route);
  }

  get fornecedor(): Fornecedor {
    return this.dados;
  }
}
