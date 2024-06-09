import { ActivatedRoute, Router } from "@angular/router";
import { ApiService } from "../../../services/api.service";
import { IndexComponent } from "../../shared/index/index.component";
import { ImportsModule } from "../../../imports.module";
import { Component } from "@angular/core";
import { Local } from "../../../models/local";
import { IndexBase } from "../../index-base";

@Component({
  selector: "app-locais-index",
  standalone: true,
  imports: [ImportsModule, IndexComponent],
  templateUrl: "./locais-index.component.html",
  styleUrl: "./locais-index.component.scss",
})
export class LocaisIndexComponent extends IndexBase {
  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, Local, router, route);
  }

  get locais(): Local[] {
    return this.dados;
  }
}
