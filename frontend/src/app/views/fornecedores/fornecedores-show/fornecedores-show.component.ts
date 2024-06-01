import { Component } from '@angular/core';
import { ImportsModule } from '../../../imports.module';
import { ComponentBase } from '../../../base-compoenents/component-base';
import { ApiService } from '../../../services/api.service';
import { ActivatedRoute, Router } from '@angular/router';
import { Fornecedor } from '../../../interfaces/fornecedor';
import { ShowComponent } from '../../shared/show/show.component';
import { ShowEnderecosComponent } from '../../shared/show-enderecos/show-enderecos.component';

@Component({
  selector: 'app-fornecedores-show',
  standalone: true,
  imports: [ImportsModule, ShowComponent, ShowEnderecosComponent],
  templateUrl: './fornecedores-show.component.html',
  styleUrl: './fornecedores-show.component.scss'
})
export class FornecedoresShowComponent extends ComponentBase {
  nome_recurso = 'fornecedores'
  fornecedor: Fornecedor = {
    id: null,
    documento: '',
    enderecos: [],
    razao_social: '',
    tipo: ''
  }
  constructor(
    api: ApiService,
    router: Router,
    private route: ActivatedRoute
  ) {
    super(api, router)
    this.api.get<Fornecedor>([this.api.recursos['fornecedores'].rotas.show, this.route.snapshot.paramMap.get('id') as string]).subscribe(
      res => {
        this.fornecedor = res.body as Fornecedor
      }
    )
  }
}
