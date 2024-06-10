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
    return this.navegacao.get_url_retorno();
  }
}
