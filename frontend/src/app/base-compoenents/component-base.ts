import { Router } from "@angular/router";
import { ApiService } from "../api.service";

export class ComponentBase {
  constructor(
    protected api: ApiService,
    protected router: Router,
  ) { }
}
