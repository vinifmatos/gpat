import { Component, Inject, OnInit } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { MenuModule } from 'primeng/menu';
import { PrimeNGConfig } from 'primeng/api';
import { CommonModule, DOCUMENT } from '@angular/common';
import { ButtonModule } from 'primeng/button';
import { InputSwitchModule } from 'primeng/inputswitch';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, MenuModule, CommonModule, ButtonModule, InputSwitchModule, FormsModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent implements OnInit {
  tema_dark = false
  icone_tema = 'pi pi-moon'
  label_tema = 'Modo Escuro'
  itens_menu = [
    {
      label: 'Home',
      icon: 'pi pi-home',
      link: '/home'
    },
    {
      label: 'Patrimônios',
      icon: 'pi pi-building-columns',
      link: '/patrimonios'
    },
    {
      label: 'Grupos',
      icon: 'pi pi-objects-column',
      link: '/grupos'
    },
    {
      label: 'Locais',
      icon: 'pi pi-building',
      link: '/locais'
    },
    {
      label: 'Responsaveis',
      icon: 'pi pi-users',
      link: '/responsaveis'
    },
    {
      label: 'Configurações',
      icon: 'pi pi-cog',
      link: '/configuracoes'
    }
  ];

  constructor(private primengConfig: PrimeNGConfig, @Inject(DOCUMENT) private document: Document) { }

  ngOnInit(): void {
    this.primengConfig.ripple = true
  }

  mudarTema() {
    this.tema_dark = !this.tema_dark
    let linkTema = this.document.getElementById('app-tema') as HTMLLinkElement
    let css
    if (this.tema_dark) {
      this.label_tema = 'Modo Claro'
      this.icone_tema = 'pi pi-sun'
      css = 'aura-dark-blue'
    } else {
      this.label_tema = 'Modo Escuro'
      this.icone_tema = 'pi pi-moon'
      css = 'aura-light-blue'
    }
    linkTema.href = `${css}.css`
  }
}
