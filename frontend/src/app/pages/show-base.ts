import { ActivatedRoute, Router } from "@angular/router";
import { ComponentBase } from "./component-base";
import { ApiService } from "../services/api.service";

export abstract class ShowBase extends ComponentBase {
  constructor(
    api: ApiService,
    model: any,
    router: Router,
    route: ActivatedRoute
  ) {
    super(api, model, router, route);
    this.carregando = true;
    this.erro_ao_carregar = false;
    this.carregar_dados();
  }

  protected carregar_dados() {
    this.route.params.subscribe(() => {
      this.carregando = true;
      this.api
        .get<typeof this.dados>([
          this.model.rotas.show,
          this.route.snapshot.paramMap.get("id") as string,
        ])
        .subscribe(
          (res: typeof this.dados) => {
            this.dados = res.body as typeof this.dados;
            this.carregando = false;
            this.erro_ao_carregar = false;
          },
          (res: any) => {
            this.carregando = false;
            this.erro_ao_carregar = true;
            console.error(res);
          }
        );
    });
  }
}
