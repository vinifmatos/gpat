import { Component, OnInit } from '@angular/core';
import { ImportsModule } from '../../../imports.module';
import { ControlContainer, FormArray, FormBuilder, FormGroup, FormGroupDirective, ReactiveFormsModule } from '@angular/forms';
import { AutoCompleteCompleteEvent } from 'primeng/autocomplete';
import { Cidade } from '../../../interfaces/cidade';
import { ApiService } from '../../../api.service';

@Component({
  selector: 'app-enderecos',
  standalone: true,
  imports: [ImportsModule, ReactiveFormsModule],
  templateUrl: './form-enderecos.component.html',
  styleUrl: './form-enderecos.component.scss',
  viewProviders: [{ provide: ControlContainer, useExisting: FormGroupDirective }]
})
export class FormEnderecosComponent implements OnInit {
  form: FormGroup
  cidades: Cidade[] = []

  constructor(
    private fb: FormBuilder,
    private api: ApiService,
    public fgd: FormGroupDirective
  ) { }

  ngOnInit(): void {
    this.form = this.fgd.form
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
      principal: !(enderecos.length > 0)
    }))
  }

  excluir_endereco(index: number) {
    let enderecos = this.form.controls['enderecos'] as FormArray
    enderecos.removeAt(index)
  }

  get_cidades(e: AutoCompleteCompleteEvent) {
    this.api.get<Cidade[]>([this.api.recursos.cidades], { por_estado: true, nome: `${e.query}` }).subscribe((res) => {
      if (res.ok)
        this.cidades = res.body as Cidade[]
      else {
        console.error(res.status)
      }
    })
  }
}
