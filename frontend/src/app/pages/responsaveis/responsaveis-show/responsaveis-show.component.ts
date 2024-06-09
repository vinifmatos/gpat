import { Component } from "@angular/core";
import { ApiService } from "../../../services/api.service";
import { ActivatedRoute, Router } from "@angular/router";
import { ImportsModule } from "../../../imports.module";
import { ShowComponent } from "../../shared/show/show.component";
import { ShowBase } from "../../show-base";
import { Responsavel } from "../../../models/responsavel";

@Component({
  selector: "app-responsaveis-show",
  standalone: true,
  imports: [ImportsModule, ShowComponent],
  templateUrl: "./responsaveis-show.component.html",
  styleUrl: "./responsaveis-show.component.scss",
})
export class ResponsaveisShowComponent extends ShowBase {
  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, Responsavel, router, route);
  }

  get responsavel(): Responsavel {
    return this.dados;
  }
}
