import { Component } from "@angular/core";
import { ActivatedRoute, Router } from "@angular/router";
import { ImportsModule } from "../../../imports.module";
import { Responsavel } from "../../../models/responsavel.model";
import { ApiService } from "../../../services/api.service";
import { ShowComponent } from "../../shared/show/show.component";
import { ShowBase } from "../../show-base";

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
