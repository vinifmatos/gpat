import { Component } from "@angular/core";
import { ActivatedRoute, Router } from "@angular/router";
import { ImportsModule } from "../../../imports.module";
import { Local } from "../../../models/local.model";
import { ApiService } from "../../../services/api.service";
import { IndexBase } from "../../index-base";
import { IndexComponent } from "../../shared/index/index.component";

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
