import { Routes } from "@angular/router";
import { movimentacaoResolver } from "./guards/movimentacao.resolver";
import { HomeComponent } from "./pages/home/home.component";
import { MovimentacaoFormComponent } from "./pages/movimentacoes/form/form.component";
import { MovimentacaoIndexComponent } from "./pages/movimentacoes/index/index.component";
import { MovimentacaoShowComponent } from "./pages/movimentacoes/movimentacao-show/movimentacao-show.component";

export const routes: Routes = [
  { path: "", redirectTo: "home", pathMatch: "full" },
  { path: "home", component: HomeComponent, pathMatch: "full" },
  // {
  //   path: "configuracoes",
  //   component: ConfiguracoesIndexComponent,
  //   pathMatch: "full",
  // },
  // {
  //   path: "patrimonios",
  //   children: [
  //     { path: "", component: PatrimoniosIndexComponent, pathMatch: "full" },
  //     { path: "novo", component: PatrimoniosFormComponent, pathMatch: "full" },
  //     {
  //       path: ":id",
  //       children: [
  //         { path: "", component: PatrimoniosShowComponent, pathMatch: "full" },
  //         {
  //           path: "editar",
  //           component: PatrimoniosFormComponent,
  //           pathMatch: "full",
  //         },
  //       ],
  //     },
  //   ],
  // },
  // {
  //   path: "fornecedores",
  //   children: [
  //     { path: "", component: FornecedoresIndexComponent, pathMatch: "full" },
  //     { path: "novo", component: FornecedoresFormComponent, pathMatch: "full" },
  //     {
  //       path: ":id",
  //       children: [
  //         { path: "", component: FornecedoresShowComponent, pathMatch: "full" },
  //         {
  //           path: "editar",
  //           component: FornecedoresFormComponent,
  //           pathMatch: "full",
  //         },
  //       ],
  //     },
  //   ],
  // },
  // {
  //   path: "grupos",
  //   children: [
  //     { path: "", component: GruposIndexComponent, pathMatch: "full" },
  //     { path: "novo", component: GruposFormComponent, pathMatch: "full" },
  //     {
  //       path: ":id",
  //       children: [
  //         { path: "", component: GruposShowComponent, pathMatch: "full" },
  //         { path: "editar", component: GruposFormComponent, pathMatch: "full" },
  //       ],
  //     },
  //   ],
  // },
  // {
  //   path: "locais",
  //   children: [
  //     { path: "", component: LocaisIndexComponent, pathMatch: "full" },
  //     { path: "novo", component: LocaisFormComponent, pathMatch: "full" },
  //     {
  //       path: ":id",
  //       children: [
  //         { path: "", component: LocaisShowComponent, pathMatch: "full" },
  //         { path: "editar", component: LocaisFormComponent, pathMatch: "full" },
  //       ],
  //     },
  //   ],
  // },
  // {
  //   path: "responsaveis",
  //   children: [
  //     { path: "", component: ResponsaveisIndexComponent, pathMatch: "full" },
  //     { path: "novo", component: ResponsaveisFormComponent, pathMatch: "full" },
  //     {
  //       path: ":id",
  //       children: [
  //         { path: "", component: ResponsaveisShowComponent, pathMatch: "full" },
  //         {
  //           path: "editar",
  //           component: ResponsaveisFormComponent,
  //           pathMatch: "full",
  //         },
  //       ],
  //     },
  //   ],
  // },
  {
    path: "movimentacoes",
    children: [
      { path: "", component: MovimentacaoIndexComponent, pathMatch: "full" },
      {
        path: "novo",
        component: MovimentacaoFormComponent,
        pathMatch: "full",
        resolve: { movimentacao: movimentacaoResolver },
      },
      {
        path: ":id",
        children: [
          { path: "", component: MovimentacaoShowComponent, pathMatch: "full" },
          {
            path: "editar",
            component: MovimentacaoFormComponent,
            pathMatch: "full",
            resolve: { movimentacao: movimentacaoResolver },
          },
        ],
      },
    ],
  },
];
