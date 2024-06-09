import { Component } from "@angular/core";
import { ImportsModule } from "../../../imports.module";
import { IndexComponent } from "../../shared/index/index.component";
import { ApiService } from "../../../services/api.service";
import { ActivatedRoute, Router } from "@angular/router";
import { TreeNode } from "primeng/api";
import { Grupo } from "../../../models/grupo";
import { IndexBase } from "../../index-base";

@Component({
  selector: "app-grupos-index",
  standalone: true,
  imports: [ImportsModule, IndexComponent],
  templateUrl: "./grupos-index.component.html",
  styleUrl: "./grupos-index.component.scss",
})
export class GruposIndexComponent extends IndexBase {
  constructor(api: ApiService, router: Router, route: ActivatedRoute) {
    super(api, Grupo, router, route);
  }

  protected override before_set_dados(dados: Grupo[]) {
    return this.tree_node_grupos(dados);
  }

  get grupos(): TreeNode<Grupo>[] {
    return this.dados;
  }

  private tree_node_grupos(grupos: Grupo[]): TreeNode<Grupo>[] {
    return grupos.map((grupo) => {
      return {
        key: String(grupo.id),
        label: grupo.descricao,
        data: grupo,
        children: grupo.subgrupos?.map((subgrupo) => {
          return {
            key: `${String(grupo.id)}-${String(subgrupo.id)}`,
            label: subgrupo.descricao,
            data: subgrupo,
          } as TreeNode<Grupo>;
        }),
      } as TreeNode<Grupo>;
    }) as TreeNode<Grupo>[];
  }
}
