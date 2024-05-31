import { Component } from '@angular/core';
import { FormularioComponent } from '../../partials/formulario/formulario.component';
import { ApiService } from '../../../api.service';
import { FormArray, FormBuilder, FormControl, FormGroup, ReactiveFormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { FormComponentBase } from '../../../form-component-base';
import { Fornecedor } from '../../../interfaces/fornecedor';
import { ImportsModule } from '../../../imports.module';
import { Cidade } from '../../../interfaces/cidade';
import { AutoCompleteCompleteEvent } from 'primeng/autocomplete';


@Component({
  selector: 'app-fornecedores-form',
  standalone: true,
  imports: [ImportsModule, FormularioComponent, ReactiveFormsModule],
  templateUrl: './fornecedores-form.component.html',
  styleUrl: './fornecedores-form.component.scss'
})
export class FornecedoresFormComponent extends FormComponentBase {
  tipos = [
    { tipo: 'pessoa_fisica', descricao: 'Pessoa Física' },
    { tipo: 'pessoa_juridica', descricao: 'Pessoa Jurídica' }
  ]
  cidades: Cidade[] = []
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
  enderecos() {
    return this.form.controls['enderecos'] as FormArray
  }

  novo_endereco() {
    let enderecos = this.form.controls['enderecos'] as FormArray
    enderecos.push(this.fb.group({
      bairro: '',
      cep: '',
      cidade: undefined,
      complemento: '',
      logradouro: '',
      numero: '',
      principal: false
    }))
  }

  excluir_endereco(index: number) {
    let enderecos = this.form.controls['enderecos'] as FormArray
    enderecos.removeAt(index)
  }

  get_cidades(e: AutoCompleteCompleteEvent) {
    this.api.get<Cidade[]>([this.api.recursos.cidades.path], { por_estado: true, nome: `${e.query}` }).subscribe((res) => {
      if (res.ok)
        this.cidades = res.body as Cidade[]
      else {
        console.error(res.status)
      }
    })
  }

  protected override before_submit(submited: boolean): void {
    this.recurso.enderecos.map((endereco) => {
      endereco.cidade_id = endereco.cidade?.id || -1
    })
  }
}
