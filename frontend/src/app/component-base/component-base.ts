import { ActivatedRoute, Router } from "@angular/router";
import { ApiService } from "../services/api.service";
import { Recurso } from "../interfaces/recurso";

export abstract class ComponentBase {
  dados: any;
  carregando: boolean;
  erro_ao_carregar: boolean;
  constructor(
    protected api: ApiService,
    protected recurso: Recurso,
    protected router: Router,
    protected route: ActivatedRoute
  ) {
    this.carregando = true;
    this.erro_ao_carregar = false;
    this.carrega_dados();
  }

  protected carrega_dados() {
    this.route.params.subscribe(() => {
      this.carregando = true;
      this.api
        .get([
          this.recurso.rotas.get,
          this.route.snapshot.paramMap.get("id") as string,
        ])
        .subscribe(
          (res) => {
            this.dados = res.body;
            this.carregando = false;
            this.erro_ao_carregar = false;
          },
          (res) => {
            this.carregando = false;
            this.erro_ao_carregar = true;
          }
        );
    });
  }
}
