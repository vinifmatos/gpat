import { Component, Input, TemplateRef } from '@angular/core';
import { ImportsModule } from '../../../imports.module';
import { RouterModule } from '@angular/router';
import { SpinnerComponent } from '../spinner/spinner.component';

@Component({
  selector: 'app-index',
  standalone: true,
  imports: [RouterModule, ImportsModule, SpinnerComponent],
  templateUrl: './index.component.html',
  styleUrl: './index.component.scss'
})
export class IndexComponent {
  @Input() carregando: boolean = true
  @Input() erro_ao_carregar: boolean = false
  @Input() dados: any
  @Input() layout: TemplateRef<any>
  @Input() titulo: string
}
