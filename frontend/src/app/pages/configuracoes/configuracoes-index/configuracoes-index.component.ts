import { Component } from "@angular/core";
import { ActivatedRoute, Router } from "@angular/router";
import { ImportsModule } from "../../../imports.module";
import { Configuracao } from "../../../models/configuracao.model";
import { ApiService } from "../../../services/api.service";
import { NavegacaoService } from "../../../services/navegacao.service";
import { ComponentBase } from "../../component-base";
import { SpinnerComponent } from "../../shared/spinner/spinner.component";

@Component({
  selector: "app-configuracoes-index",
  standalone: true,
  imports: [ImportsModule, SpinnerComponent],
  templateUrl: "./configuracoes-index.component.html",
  styleUrl: "./configuracoes-index.component.scss",
})
export class ConfiguracoesIndexComponent extends ComponentBase {
  titulo = "Configurações";
  constructor(
    api: ApiService,
    router: Router,
    route: ActivatedRoute,
    private navegacao: NavegacaoService
  ) {
    super(api, Configuracao, router, route);
    this.carregando = true;
    this.erro_ao_carregar = false;
    this.carregar_dados();
  }

  protected carregar_dados() {
    this.route.params.subscribe(() => {
      this.carregando = true;
      this.api.get<typeof this.dados>([this.model.rotas.show]).subscribe(
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

  get_url_anterior(): string {
    return this.navegacao.get_url_retorno();
  }
}
