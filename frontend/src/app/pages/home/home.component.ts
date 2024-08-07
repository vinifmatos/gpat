import {
  AfterViewInit,
  ChangeDetectorRef,
  Component,
  inject,
  TemplateRef,
  ViewChild,
} from "@angular/core";
import { ImportsModule } from "../../imports.module";
import { Patrimonio } from "../../models/patrimonio.model";
import { PatrimonioService } from "../../services/patrimonio.service";

@Component({
  selector: "app-home",
  standalone: true,
  imports: [ImportsModule],
  templateUrl: "./home.component.html",
  styleUrl: "./home.component.scss",
})
export class HomeComponent implements AfterViewInit {
  @ViewChild("template_patrimonios") template_patrimonios: TemplateRef<any>;
  @ViewChild("template_baixas") template_baixas: TemplateRef<any>;
  @ViewChild("template_depreciacao") template_depreciacao: TemplateRef<any>;
  @ViewChild("template_pendentes") template_pendentes: TemplateRef<any>;
  private cdr = inject(ChangeDetectorRef);
  private patrimonioService = inject(PatrimonioService);

  secoes: {
    id: string;
    titulo: string;
    template: TemplateRef<any>;
  }[] = [];
  ultimos: Patrimonio[] = [];
  baixas: Patrimonio[] = [];
  depreciacao = [];
  pendentes: Patrimonio[] = [];

  constructor() {
    this.patrimonioService
      .listar_patrimonios({
        q: {
          s: ["created_at desc", "codigo asc"],
        },
        pagina: 1,
        limite_pagina: 5,
      })
      .subscribe((patrimonios) => (this.ultimos = patrimonios));

    this.patrimonioService
      .listar_patrimonios({
        q: {
          situacao_eq: "inativo",
          s: ["data_baixa desc", "codigo asc"],
        },
        pagina: 1,
        limite_pagina: 5,
      })
      .subscribe((patrimonios) => (this.baixas = patrimonios));

    this.patrimonioService
      .listar_patrimonios({
        q: {
          situacao_eq: "pendente",
          s: ["created_at desc", "id desc"],
        },
        pagina: 1,
        limite_pagina: 5,
      })
      .subscribe((patrimonios) => (this.pendentes = patrimonios));
  }
  ngAfterViewInit(): void {
    this.secoes = [
      {
        id: "secao1",
        titulo: "Últimos Cadastros",
        template: this.template_patrimonios,
      },
      {
        id: "secao2",
        titulo: "Últimas Baixas",
        template: this.template_baixas,
      },
      {
        id: "secao3",
        titulo: "Depreciação",
        template: this.template_depreciacao,
      },
      {
        id: "secao4",
        titulo: "Pendentes",
        template: this.template_pendentes,
      },
    ];
    this.cdr.detectChanges();
  }
}
