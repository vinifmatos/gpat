import { Component } from '@angular/core';
import { RouterModule } from '@angular/router';
import { Fornecedor } from '../../../interfaces/fornecedor';
import { ImportsModule } from '../../../imports.module';
import { ApiService } from '../../../api.service';

@Component({
  selector: 'app-fornecedores-index',
  standalone: true,
  imports: [RouterModule, ImportsModule],
  templateUrl: './fornecedores-index.component.html',
  styleUrl: './fornecedores-index.component.scss'
})
export class FornecedoresIndexComponent {
  fornecedores: Fornecedor[]

  constructor(
    private api: ApiService
  ) {
    this.api.get<Fornecedor[]>([this.api.recursos.fornecedores]).subscribe(res => {
      this.fornecedores = res.body || []
    })
  }
}
