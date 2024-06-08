import { Component } from "@angular/core";
import { ImportsModule } from "../../../imports.module";
import { IndexComponent } from "../../shared/index/index.component";
import { Grupo } from "../../../interfaces/grupo";
import { ComponentBase } from "../../../component-base/component-base";
import { ApiService } from "../../../services/api.service";
import { ActivatedRoute, Router } from "@angular/router";
import { TreeNode } from "primeng/api";

@Component({
  selector: "app-grupos-index",
  standalone: true,
  imports: [ImportsModule, IndexComponent],
  templateUrl: "./grupos-index.component.html",
  styleUrl: "./grupos-index.component.scss",
})
export class GruposIndexComponent extends ComponentBase {
  grupos: TreeNode<Grupo>[] = [];

  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, api.recursos["grupos"], router, route);
    this.api.get<Grupo[]>([this.api.recursos["grupos"].rotas.index]).subscribe(
      (res) => {
        this.grupos = this.tree_node_grupos(res.body as Grupo[]);
        this.carregando = false;
        this.erro_ao_carregar = false;
      },
      (res) => {
        this.grupos = [];
        this.carregando = false;
        this.erro_ao_carregar = true;
      }
    );
  }

  tree_node_grupos(grupos: Grupo[]): TreeNode<Grupo>[] {
    return grupos.map((grupo) => {
      return {
        key: String(grupo.id),
        label: grupo.descricao,
        data: grupo,
        children: grupo.filhos?.map((filho) => {
          return {
            key: `${String(grupo.id)}-${String(filho.id)}`,
            label: filho.descricao,
            data: filho,
          } as TreeNode<Grupo>;
        }),
      } as TreeNode<Grupo>;
    }) as TreeNode<Grupo>[];
  }
}
