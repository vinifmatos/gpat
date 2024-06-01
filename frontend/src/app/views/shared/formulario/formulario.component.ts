import { Component, TemplateRef, Input, Output, EventEmitter } from '@angular/core';
import { ImportsModule } from '../../../imports.module';

@Component({
  selector: 'app-formulario',
  standalone: true,
  imports: [ImportsModule],
  templateUrl: './formulario.component.html',
  styleUrl: './formulario.component.scss'
})
export class FormularioComponent {
  @Input() template_campos: TemplateRef<any>
  @Input() titulo: string
  @Output() submited = new EventEmitter<boolean>()

  submit(valor: boolean): void {
    this.submited.emit(valor)
  }
}
