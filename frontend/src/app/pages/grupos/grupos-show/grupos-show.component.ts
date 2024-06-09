import { Component } from "@angular/core";
import { ImportsModule } from "../../../imports.module";
import { ShowComponent } from "../../shared/show/show.component";
import { ApiService } from "../../../services/api.service";
import { ActivatedRoute, Router } from "@angular/router";
import { ShowBase } from "../../show-base";
import { Grupo } from "../../../models/grupo";

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
