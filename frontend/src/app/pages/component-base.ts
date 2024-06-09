import { ActivatedRoute, Router } from "@angular/router";
import { ApiService } from "../services/api.service";

export abstract class ComponentBase {
  dados: any;
  carregando: boolean;
  erro_ao_carregar: boolean;
  constructor(
    protected api: ApiService,
    protected model: any,
    protected router: Router,
    protected route: ActivatedRoute
  ) {
    this.carregando = true;
    this.erro_ao_carregar = false;
  }
}
