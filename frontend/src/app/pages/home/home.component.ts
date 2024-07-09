import {
  AfterViewInit,
  ChangeDetectorRef,
  Component,
  TemplateRef,
  ViewChild,
} from "@angular/core";
import { Patrimonio } from "../../models/patrimonio";
import { ImportsModule } from "../../imports.module";
import { ApiService } from "../../services/api.service";

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
  secoes: {
    id: string;
    titulo: string;
    template: TemplateRef<any>;
  }[] = [];
  ultimos: Patrimonio[] = [];
  baixas: Patrimonio[] = [];
  depreciacao = [];
  pendentes: Patrimonio[] = [];

  constructor(private cdr: ChangeDetectorRef, api: ApiService) {
    api
      .get<Patrimonio[]>(Patrimonio.rotas.index, {
        q: {
          s: {
            created_at: "desc",
            codigo: "asc",
          },
        },
        pagina: 1,
        limite_pagina: 5,
      })
      .subscribe((res) => {
        this.ultimos = res.body?.map((p) => {
          return new Patrimonio(p);
        }) as Patrimonio[];
      });

    api
      .get<Patrimonio[]>(Patrimonio.rotas.index, {
        q: {
          situacao_eq: "inativo",
          s: {
            data_baixa: "desc",
            codigo: "asc",
          },
        },
        pagina: 1,
        limite_pagina: 5,
      })
      .subscribe((res) => {
        this.baixas = res.body?.map((p) => {
          return new Patrimonio(p);
        }) as Patrimonio[];
      });

    api
      .get<Patrimonio[]>(Patrimonio.rotas.index, {
        q: {
          situacao_eq: "pendente",
          s: {
            created_at: "desc",
            id: "desc",
          },
        },
        pagina: 1,
        limite_pagina: 5,
      })
      .subscribe((res) => {
        this.pendentes = res.body?.map((p) => {
          return new Patrimonio(p);
        }) as Patrimonio[];
      });
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

  get_url_instancia(obj: any): string[] {
    return ["/", obj.constructor.rotas.get, obj.id as string];
  }
}
