import { CommonModule, DOCUMENT } from '@angular/common';
import { Component, Inject } from '@angular/core';
import { RouterModule } from '@angular/router';
import { ButtonModule } from 'primeng/button';

@Component({
  selector: 'app-nav',
  standalone: true,
  imports: [CommonModule, ButtonModule, RouterModule],
  templateUrl: './nav.component.html',
  styleUrl: './nav.component.scss'
})
export class NavComponent {
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

  constructor(@Inject(DOCUMENT) private document: Document) { }

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
