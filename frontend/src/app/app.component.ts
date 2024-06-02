import { Component, OnInit } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { PrimeNGConfig } from 'primeng/api';
import { CommonModule } from '@angular/common';
import { NavComponent } from './views/shared/nav/nav.component';
import { NavegacaoService } from './services/navegacao.service';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, NavComponent, CommonModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent implements OnInit {


  constructor(
    private primengConfig: PrimeNGConfig,
    private navegacao: NavegacaoService
  ) { }

  ngOnInit(): void {
    this.primengConfig.ripple = true
  }
}
