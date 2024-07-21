import { Component } from "@angular/core";
import { ActivatedRoute, Router } from "@angular/router";
import { ImportsModule } from "../../../imports.module";
import { ApiService } from "../../../services/api.service";

@Component({
  selector: "app-movimentacao-index",
  standalone: true,
  imports: [ImportsModule],
  templateUrl: "./index.component.html",
  styleUrl: "./index.component.scss",
})
export class MovimentacaoIndexComponent {
  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    // super(api, Movimentacao, router, route);
  }
}
