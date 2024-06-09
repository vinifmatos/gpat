import { CommonModule, DOCUMENT } from "@angular/common";
import { Component, Inject } from "@angular/core";
import { RouterModule } from "@angular/router";
import { ButtonModule } from "primeng/button";
import { LocalStorageService } from "../../../services/local_storage";

@Component({
  selector: "app-nav",
  standalone: true,
  imports: [CommonModule, ButtonModule, RouterModule],
  templateUrl: "./nav.component.html",
  styleUrl: "./nav.component.scss",
})
export class NavComponent {
  expandido = false;
  tema_dark = false;
  icone_btn_expandir = "pi pi-chevron-down";
  icone_tema = "pi pi-moon";
  itens_menu = [
    {
      label: "Home",
      icon: "pi pi-home",
      link: "/home",
    },
    {
      label: "Patrimônios",
      icon: "pi pi-building-columns",
      link: "/patrimonios",
    },
    {
      label: "Grupos",
      icon: "pi pi-objects-column",
      link: "/grupos",
    },
    {
      label: "Locais",
      icon: "pi pi-building",
      link: "/locais",
    },
    {
      label: "Responsaveis",
      icon: "pi pi-users",
      link: "/responsaveis",
    },
    {
      label: "Fornecedores",
      icon: "pi pi-box",
      link: "/fornecedores",
    },
    {
      label: "Configurações",
      icon: "pi pi-cog",
      link: "/configuracoes",
    },
  ];

  constructor(
    @Inject(DOCUMENT) private document: Document,
    private ls: LocalStorageService
  ) {
    this.tema_dark = ls.getItem("tema_dark");
    this.set_tema();
  }

  mudar_tema() {
    this.tema_dark = !this.tema_dark;
    this.set_tema();
  }

  private set_tema() {
    let linkTema = this.document.getElementById("app-tema") as HTMLLinkElement;
    let css;
    if (this.tema_dark) {
      this.icone_tema = "pi pi-sun";
      css = "aura-dark-blue";
    } else {
      this.icone_tema = "pi pi-moon";
      css = "aura-light-blue";
    }
    linkTema.href = `${css}.css`;
    this.ls.setItem("tema_dark", this.tema_dark);
  }

  expandir() {
    this.expandido = !this.expandido;
    this.icone_btn_expandir = !this.expandido
      ? "pi pi-chevron-down"
      : "pi pi-chevron-up";
  }
}
