import { Component } from '@angular/core';
import { FormularioComponent } from '../../partials/formulario/formulario.component';
import { InputTextModule } from 'primeng/inputtext';
import { ApiService } from '../../../api.service';
import { FormBuilder, FormGroup, ReactiveFormsModule } from '@angular/forms';
import { Patrimonio } from '../../../interfaces/patrimonio';
import { Router } from '@angular/router';
import { InputTextareaModule } from 'primeng/inputtextarea';
import { CalendarModule } from 'primeng/calendar';
import { InputNumberModule } from 'primeng/inputnumber';
import { AutoCompleteCompleteEvent, AutoCompleteModule } from 'primeng/autocomplete';

@Component({
  selector: 'app-patrimonios-form',
  standalone: true,
  imports: [FormularioComponent, InputTextModule, ReactiveFormsModule, InputTextareaModule, CalendarModule, InputNumberModule, AutoCompleteModule],
  templateUrl: './patrimonios-form.component.html',
  styleUrl: './patrimonios-form.component.scss'
})
export class PatrimoniosFormComponent {
  form_patrimonio: FormGroup
  patrimonio?: Patrimonio
  grupos = []
  fornecedores = []

  constructor(
    private api: ApiService,
    private fb: FormBuilder,
    private router: Router,
  ) {
    this.form_patrimonio = this.fb.group<Patrimonio>({
      codigo: '',
      descricao: '',
      especificacao: undefined,
      data_aquisicao: undefined,
      data_incorporacao: undefined,
      valor_aquisicao: undefined,
      vida_util: undefined,
      valor_residual: undefined,
      data_desincorporacao: undefined,
      grupo_id: undefined,
      numero_empenho: undefined,
      ano_empenho: undefined,
      numero_processo_compra: undefined,
      ano_processo_compra: undefined,
      fornecedor_id: undefined
    })
  }

  onSubmit(submited: boolean) {
    if (submited) {
      console.log(this.form_patrimonio.getRawValue())
    } else {
      this.router.navigate(['/patrimonios'])
    }
  }

  get_grupos(event: AutoCompleteCompleteEvent) {
    this.grupos = []
  }

  get_fornecedores(event: AutoCompleteCompleteEvent) {
    this.fornecedores = []
  }
}
