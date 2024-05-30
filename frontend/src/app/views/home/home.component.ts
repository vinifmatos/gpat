import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { CardModule } from 'primeng/card';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [CommonModule, CardModule],
  templateUrl: './home.component.html',
  styleUrl: './home.component.scss'
})
export class HomeComponent {
  secoes = [
    { id: 'secao1', titulo: 'Ultimos Patrimônios' },
    { id: 'secao2', titulo: 'Baixas' },
    { id: 'secao3', titulo: 'Depreciação' },
    { id: 'secao4', titulo: 'Incorporações Pendentes' },
  ]
}
