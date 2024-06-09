import { ActivatedRoute, Router } from "@angular/router";
import { ComponentBase } from "./component-base";
import { ApiService } from "../services/api.service";

export abstract class IndexBase extends ComponentBase {
  constructor(
    api: ApiService,
    model: any,
    router: Router,
    route: ActivatedRoute
  ) {
    super(api, model, router, route);
    this.carregar_dados();
  }

  protected carregar_dados() {
    this.carregando = true;
    this.api.get<typeof this.dados>(this.model.rotas.index).subscribe(
      (res: typeof this.dados) => {
        this.dados = this.before_set_dados(res.body);
        this.carregando = false;
        this.erro_ao_carregar = false;
      },
      (res: any) => {
        this.carregando = false;
        this.erro_ao_carregar = true;
        console.error(res);
      }
    );
  }

  protected before_set_dados(dados: any): typeof this.dados {
    return dados;
  }
}
