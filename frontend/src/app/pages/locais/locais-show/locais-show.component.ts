import { ActivatedRoute, Router } from "@angular/router";
import { ApiService } from "../../../services/api.service";
import { ShowComponent } from "../../shared/show/show.component";
import { ImportsModule } from "../../../imports.module";
import { Component } from "@angular/core";
import { ShowEnderecosComponent } from "../../shared/show-enderecos/show-enderecos.component";
import { ShowBase } from "../../show-base";
import { Local } from "../../../models/local";

@Component({
  selector: "app-locais-show",
  standalone: true,
  imports: [ImportsModule, ShowComponent, ShowEnderecosComponent],
  templateUrl: "./locais-show.component.html",
  styleUrl: "./locais-show.component.scss",
})
export class LocaisShowComponent extends ShowBase {
  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, Local, router, route);
  }

  get local(): Local {
    return this.dados;
  }
}
