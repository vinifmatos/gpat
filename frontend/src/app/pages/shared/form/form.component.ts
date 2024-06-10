import {
  Component,
  TemplateRef,
  Input,
  Output,
  EventEmitter,
} from "@angular/core";
import { ImportsModule } from "../../../imports.module";
import { SpinnerComponent } from "../spinner/spinner.component";
import { NavegacaoService } from "../../../services/navegacao.service";

@Component({
  selector: "app-form",
  standalone: true,
  imports: [ImportsModule, SpinnerComponent],
  templateUrl: "./form.component.html",
  styleUrl: "./form.component.scss",
})
export class FormComponent {
  @Input() campos: TemplateRef<any>;
  @Input() titulo: string;
  @Input() carregando: boolean = true;
  @Input() erro_ao_carregar: boolean = false;
  @Output() submited = new EventEmitter<boolean>();

  constructor(private navegacao: NavegacaoService) {}

  submit(valor: boolean): void {
    this.submited.emit(valor);
  }

  get_url_anterior(): string {
    return this.navegacao.get_url_retorno();
  }
}
