import { Component, Input, TemplateRef } from '@angular/core';
import { ImportsModule } from '../../../imports.module';

@Component({
  selector: 'app-show',
  standalone: true,
  imports: [ImportsModule],
  templateUrl: './show.component.html',
  styleUrl: './show.component.scss'
})
export class ShowComponent {
  @Input() titulo: string
  @Input() nome_recurso: string
  @Input() dados: TemplateRef<any>
}
