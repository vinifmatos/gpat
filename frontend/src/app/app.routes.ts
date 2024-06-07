import { Routes } from "@angular/router";
import { HomeComponent } from "./pages/home/home.component";
import { PatrimoniosIndexComponent } from "./pages/patrimonios/patrimonios-index/patrimonios-index.component";
import { GruposIndexComponent } from "./pages/grupos/grupos-index/grupos-index.component";
import { LocaisIndexComponent } from "./pages/locais/locais-index/locais-index.component";
import { ResponsaveisIndexComponent } from "./pages/responsaveis/responsaveis-index/responsaveis-index.component";
import { ConfiguracoesIndexComponent } from "./pages/configuracoes/configuracoes-index/configuracoes-index.component";
import { PatrimoniosFormComponent } from "./pages/patrimonios/patrimonios-form/patrimonios-form.component";
import { FornecedoresIndexComponent } from "./pages/fornecedores/fornecedores-index/fornecedores-index.component";
import { FornecedoresFormComponent } from "./pages/fornecedores/fornecedores-form/fornecedores-form.component";
import { FornecedoresShowComponent } from "./pages/fornecedores/fornecedores-show/fornecedores-show.component";
import { GruposFormComponent } from "./pages/grupos/grupos-form/grupos-form.component";
import { GruposShowComponent } from "./pages/grupos/grupos-show/grupos-show.component";
import { LocaisFormComponent } from "./pages/locais/locais-form/locais-form.component";
import { LocaisShowComponent } from "./pages/locais/locais-show/locais-show.component";
import { ResponsaveisFormComponent } from "./pages/responsaveis/responsaveis-form/responsaveis-form.component";
import { ResponsaveisShowComponent } from "./pages/responsaveis/responsaveis-show/responsaveis-show.component";
import { PatrimoniosShowComponent } from "./pages/patrimonios/patrimonios-show/patrimonios-show.component";

export const routes: Routes = [
  { path: "", redirectTo: "home", pathMatch: "full" },
  { path: "home", component: HomeComponent, pathMatch: "full" },
  {
    path: "configuracoes",
    component: ConfiguracoesIndexComponent,
    pathMatch: "full",
  },
  {
    path: "patrimonios",
    children: [
      { path: "", component: PatrimoniosIndexComponent, pathMatch: "full" },
      { path: "novo", component: PatrimoniosFormComponent, pathMatch: "full" },
      {
        path: ":id",
        children: [
          { path: "", component: PatrimoniosShowComponent, pathMatch: "full" },
          {
            path: "editar",
            component: PatrimoniosFormComponent,
            pathMatch: "full",
          },
        ],
      },
    ],
  },
  {
    path: "fornecedores",
    children: [
      { path: "", component: FornecedoresIndexComponent, pathMatch: "full" },
      { path: "novo", component: FornecedoresFormComponent, pathMatch: "full" },
      {
        path: ":id",
        children: [
          { path: "", component: FornecedoresShowComponent, pathMatch: "full" },
          {
            path: "editar",
            component: FornecedoresFormComponent,
            pathMatch: "full",
          },
        ],
      },
    ],
  },
  {
    path: "grupos",
    children: [
      { path: "", component: GruposIndexComponent, pathMatch: "full" },
      { path: "novo", component: GruposFormComponent, pathMatch: "full" },
      {
        path: ":id",
        children: [
          { path: "", component: GruposShowComponent, pathMatch: "full" },
          { path: "editar", component: GruposFormComponent, pathMatch: "full" },
        ],
      },
    ],
  },
  {
    path: "locais",
    children: [
      { path: "", component: LocaisIndexComponent, pathMatch: "full" },
      { path: "novo", component: LocaisFormComponent, pathMatch: "full" },
      {
        path: ":id",
        children: [
          { path: "", component: LocaisShowComponent, pathMatch: "full" },
          { path: "editar", component: LocaisFormComponent, pathMatch: "full" },
        ],
      },
    ],
  },
  {
    path: "responsaveis",
    children: [
      { path: "", component: ResponsaveisIndexComponent, pathMatch: "full" },
      { path: "novo", component: ResponsaveisFormComponent, pathMatch: "full" },
      {
        path: ":id",
        children: [
          { path: "", component: ResponsaveisShowComponent, pathMatch: "full" },
          {
            path: "editar",
            component: ResponsaveisFormComponent,
            pathMatch: "full",
          },
        ],
      },
    ],
  },
];
