import { Component, TemplateRef, Input, Output, EventEmitter } from '@angular/core';
import { ImportsModule } from '../../../imports.module';
import { SpinnerComponent } from '../spinner/spinner.component';
import { NavegacaoService } from '../../../services/navegacao.service';

@Component({
  selector: 'app-form',
  standalone: true,
  imports: [ImportsModule, SpinnerComponent],
  templateUrl: './form.component.html',
  styleUrl: './form.component.scss'
})
export class FormComponent {
  @Input() campos: TemplateRef<any>
  @Input() titulo: string
  @Input() dados_carregados: boolean = false
  @Output() submited = new EventEmitter<boolean>()

  constructor(
    private navegacao: NavegacaoService,
  ) { }

  submit(valor: boolean): void {
    this.submited.emit(valor)
  }

  get_url_anterior(): string {
    let url_atual = this.navegacao.get_url_atual()
    let url_anterior = this.navegacao.get_url_anterior()
    let base_url_atual = url_atual.match(/^\/\w+/)?.[0]
    let base_url_anterior = url_anterior.match(/^\/\w+/)?.[0]
    let show_anterior = url_anterior.match(/^\/\w+\/\d+$/)?.[0]

    if (base_url_atual === base_url_anterior && show_anterior) {
      return url_anterior;
    } else {
      return url_atual.match(/^\/\w+/)?.[0] || '..'
    }
  }
}
