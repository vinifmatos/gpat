import { Component, Input, TemplateRef } from '@angular/core';
import { ImportsModule } from '../../../imports.module';
import { SpinnerComponent } from '../spinner/spinner.component';
import { NavegacaoService } from '../../../services/navegacao.service';

@Component({
  selector: 'app-show',
  standalone: true,
  imports: [ImportsModule, SpinnerComponent],
  templateUrl: './show.component.html',
  styleUrl: './show.component.scss'
})
export class ShowComponent {
  @Input() titulo: string
  @Input() layout: TemplateRef<any>
  @Input() carregando: boolean = true
  @Input() erro: boolean = false

  constructor(
    private navegacao: NavegacaoService
  ) { }

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
