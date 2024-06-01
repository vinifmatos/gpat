import { Component } from '@angular/core';
import { FormularioComponent } from '../../shared/formulario/formulario.component';
import { ApiService } from '../../../api.service';
import { FormBuilder, FormControl, ReactiveFormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { Fornecedor } from '../../../interfaces/fornecedor';
import { ImportsModule } from '../../../imports.module';
import { FormEnderecosComponent } from '../../shared/form-enderecos/form-enderecos.component';
import { FormComponentBase } from '../../../base-compoenents/form-component-base';

@Component({
  selector: 'app-fornecedores-form',
  standalone: true,
  imports: [ImportsModule, FormularioComponent, ReactiveFormsModule, FormEnderecosComponent],
  templateUrl: './fornecedores-form.component.html',
  styleUrl: './fornecedores-form.component.scss'
})
export class FornecedoresFormComponent extends FormComponentBase {
  tipos = [
    { tipo: 'pessoa_fisica', descricao: 'Pessoa Física' },
    { tipo: 'pessoa_juridica', descricao: 'Pessoa Jurídica' }
  ]
  override recurso: Fornecedor
  constructor(
    api: ApiService,
    fb: FormBuilder,
    router: Router,
  ) {
    super(api, fb, router)
    this.nome_recurso = 'fornecedores'
    this.recurso = {
      documento: '',
      enderecos: [],
      razao_social: '',
      tipo: '',
      nome_fantasia: undefined
    }
    this.inicializa_form(this.fb.group({
      documento: new FormControl(''),
      enderecos: this.fb.array([
        this.fb.group({
          bairro: '',
          cep: '',
          cidade: undefined,
          complemento: '',
          logradouro: '',
          numero: '',
          principal: true
        })]
      ),
      razao_social: new FormControl(''),
      tipo: new FormControl('pessoa_fisica'),
      nome_fantasia: new FormControl(undefined)
    }))
  }

  protected override before_submit(submited: boolean): void {
    this.recurso.enderecos.map((endereco) => {
      endereco.cidade_id = endereco.cidade?.id || -1
    })
  }
}
