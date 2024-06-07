import { Component } from '@angular/core';
import { DataViewModule } from 'primeng/dataview';
import { Patrimonio } from '../../../interfaces/patrimonio';
import { CommonModule } from '@angular/common';
import { ButtonModule } from 'primeng/button';
import { TagModule } from 'primeng/tag';
import { CardModule } from 'primeng/card';
import { RouterModule } from '@angular/router';
import { RippleModule } from 'primeng/ripple';

@Component({
  selector: 'app-patrimonios-index',
  standalone: true,
  imports: [DataViewModule, CommonModule, TagModule, ButtonModule, CardModule, RouterModule, RippleModule],
  templateUrl: './patrimonios-index.component.html',
  styleUrl: './patrimonios-index.component.scss'
})
export class PatrimoniosIndexComponent {
  patrimonios: Patrimonio[] = []

  getSeverity(patrimonio: Patrimonio): 'success' | 'secondary' | 'info' | 'warning' | 'danger' | 'contrast' | undefined {
    switch (patrimonio.situacao) {
      case 'incorporado':
        return 'success'
      default:
        return undefined
    }
  }
}
