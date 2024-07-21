import { Component } from "@angular/core";
import { ActivatedRoute, Router } from "@angular/router";
import { ImportsModule } from "../../../imports.module";
import { Grupo } from "../../../models/grupo.model";
import { ApiService } from "../../../services/api.service";
import { ShowComponent } from "../../shared/show/show.component";
import { ShowBase } from "../../show-base";

@Component({
  selector: "app-grupos-show",
  standalone: true,
  imports: [ImportsModule, ShowComponent],
  templateUrl: "./grupos-show.component.html",
  styleUrl: "./grupos-show.component.scss",
})
export class GruposShowComponent extends ShowBase {
  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, Grupo, router, route);
  }

  get grupo(): Grupo {
    return this.dados;
  }
}
