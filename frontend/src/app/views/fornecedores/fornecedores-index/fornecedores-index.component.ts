import { Component } from '@angular/core';
import { DataViewModule } from 'primeng/dataview';
import { CommonModule } from '@angular/common';
import { ButtonModule } from 'primeng/button';
import { TagModule } from 'primeng/tag';
import { CardModule } from 'primeng/card';
import { RouterModule } from '@angular/router';
import { RippleModule } from 'primeng/ripple';
import { Fornecedor } from '../../../interfaces/fornecedor';

@Component({
  selector: 'app-fornecedores-index',
  standalone: true,
  imports: [DataViewModule, CommonModule, TagModule, ButtonModule, CardModule, RouterModule, RippleModule],
  templateUrl: './fornecedores-index.component.html',
  styleUrl: './fornecedores-index.component.scss'
})
export class FornecedoresIndexComponent {
  fornecedores: Fornecedor[]
}
