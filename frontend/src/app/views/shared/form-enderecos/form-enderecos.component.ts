import { Component, OnInit } from '@angular/core';
import { ImportsModule } from '../../../imports.module';
import { ControlContainer, FormArray, FormBuilder, FormControl, FormGroup, FormGroupDirective, ReactiveFormsModule } from '@angular/forms';
import { AutoCompleteCompleteEvent } from 'primeng/autocomplete';
import { Cidade } from '../../../interfaces/cidade';
import { ApiService } from '../../../services/api.service';

@Component({
  selector: 'app-form-enderecos',
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
    let endereco = enderecos.at(index) as FormGroup
    if (endereco.get('id')) {
      endereco.addControl('_destroy', new FormControl(true))
      let el = document.getElementById(`endereco-${index}`) as HTMLDivElement
      el.style.visibility = 'hidden'
    }
    else
      enderecos.removeAt(index)
  }

  get_cidades(e: AutoCompleteCompleteEvent) {
    this.api.get<Cidade[]>([this.api.recursos['cidades'].rotas.index], { por_estado: true, nome: `${e.query}` }).subscribe((res) => {
      if (res.ok)
        this.cidades = res.body as Cidade[]
      else {
        console.error(res.status)
      }
    })
  }
}
