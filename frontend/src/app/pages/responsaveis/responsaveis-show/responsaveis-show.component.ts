import { Component } from "@angular/core";
import { Responsavel } from "../../../interfaces/responsavel";
import { ApiService } from "../../../services/api.service";
import { ActivatedRoute, Router } from "@angular/router";
import { ComponentBase } from "../../../component-base/component-base";
import { ImportsModule } from "../../../imports.module";
import { ShowComponent } from "../../shared/show/show.component";

@Component({
  selector: "app-responsaveis-show",
  standalone: true,
  imports: [ImportsModule, ShowComponent],
  templateUrl: "./responsaveis-show.component.html",
  styleUrl: "./responsaveis-show.component.scss",
})
export class ResponsaveisShowComponent extends ComponentBase {
  responsavel: Responsavel;

  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, api.recursos["responsaveis"], router, route);
  }
}
