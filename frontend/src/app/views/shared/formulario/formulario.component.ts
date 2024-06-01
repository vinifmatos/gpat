import { CommonModule } from '@angular/common';
import { Component, TemplateRef, Input, Output, EventEmitter } from '@angular/core';
import { CardModule } from 'primeng/card';
import { ButtonModule } from 'primeng/button';


@Component({
  selector: 'app-formulario',
  standalone: true,
  imports: [CardModule, CommonModule, ButtonModule],
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
