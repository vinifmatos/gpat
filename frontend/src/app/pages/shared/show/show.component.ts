import { Component, Input, TemplateRef } from "@angular/core";
import { ImportsModule } from "../../../imports.module";
import { SpinnerComponent } from "../spinner/spinner.component";
import { NavegacaoService } from "../../../services/navegacao.service";

@Component({
  selector: "app-show",
  standalone: true,
  imports: [ImportsModule, SpinnerComponent],
  templateUrl: "./show.component.html",
  styleUrl: "./show.component.scss",
})
export class ShowComponent {
  @Input() titulo: string;
  @Input() layout: TemplateRef<any>;
  @Input() carregando: boolean = true;
  @Input() erro_ao_carregar: boolean = false;

  constructor(private navegacao: NavegacaoService) {}

  get_url_anterior(): string {
    let url_atual = this.navegacao.get_url_atual();
    let url_anterior = this.navegacao.get_url_anterior();
    let url_inicial = this.navegacao.get_url_incial();
    let base_url_atual = url_atual.match(/^\/\w+/)?.[0] as string;
    let base_url_anterior = url_anterior.match(/^\/\w+/)?.[0] as string;
    let show_anterior = url_anterior.match(/^\/\w+\/\d+$/)?.[0] as string;

    if (
      base_url_atual === base_url_anterior &&
      show_anterior &&
      url_atual !== url_inicial
    ) {
      return url_anterior;
    } else if (url_anterior === "") {
      return base_url_atual;
    } else {
      return url_atual.match(/^\/\w+/)?.[0] || "..";
    }
  }
}
