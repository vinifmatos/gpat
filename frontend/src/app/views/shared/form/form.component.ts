import { Component, TemplateRef, Input, Output, EventEmitter } from '@angular/core';
import { ImportsModule } from '../../../imports.module';

@Component({
  selector: 'app-form',
  standalone: true,
  imports: [ImportsModule],
  templateUrl: './form.component.html',
  styleUrl: './form.component.scss'
})
export class FormComponent {
  @Input() campos: TemplateRef<any>
  @Input() titulo: string
  @Input() dados_carregados: boolean = false
  @Output() submited = new EventEmitter<boolean>()

  submit(valor: boolean): void {
    this.submited.emit(valor)
  }
}
