import { ActivatedRoute, Router } from "@angular/router";
import { ApiService } from "../services/api.service";

export abstract class ComponentBase {
  carregando: boolean
  erro_ao_carregar: boolean
  constructor(
    protected api: ApiService,
    protected router: Router,
    protected route: ActivatedRoute,
  ) {
    this.carregando = true
    this.erro_ao_carregar = false
  }
}
