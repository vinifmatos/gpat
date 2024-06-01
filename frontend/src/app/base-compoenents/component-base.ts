import { Router } from "@angular/router";
import { ApiService } from "../services/api.service";

export abstract class ComponentBase {
  constructor(
    protected api: ApiService,
    protected router: Router,
  ) { }
}
