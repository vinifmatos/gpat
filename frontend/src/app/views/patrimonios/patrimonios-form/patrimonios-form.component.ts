import { Component } from '@angular/core';
import { FormComponent } from '../../shared/form/form.component';
import { ApiService } from '../../../api.service';
import { FormBuilder, FormGroup, ReactiveFormsModule } from '@angular/forms';
import { Patrimonio } from '../../../interfaces/patrimonio';
import { Router } from '@angular/router';
import { AutoCompleteCompleteEvent } from 'primeng/autocomplete';
import { ImportsModule } from '../../../imports.module';

@Component({
  selector: 'app-patrimonios-form',
  standalone: true,
  imports: [FormComponent, ReactiveFormsModule, ImportsModule],
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
