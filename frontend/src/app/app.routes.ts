import { Routes } from '@angular/router';
import { HomeComponent } from './views/home/home.component';
import { PatrimoniosIndexComponent } from './views/patrimonios/patrimonios-index/patrimonios-index.component';
import { GruposIndexComponent } from './views/grupos/grupos-index/grupos-index.component';
import { LocaisIndexComponent } from './views/locais/locais-index/locais-index.component';
import { ResponsaveisIndexComponent } from './views/responsaveis/responsaveis-index/responsaveis-index.component';
import { ConfiguracoesIndexComponent } from './views/configuracoes/configuracoes-index/configuracoes-index.component';
import { PatrimoniosFormComponent } from './views/patrimonios/patrimonios-form/patrimonios-form.component';
import { FornecedoresIndexComponent } from './views/fornecedores/fornecedores-index/fornecedores-index.component';
import { FornecedoresFormComponent } from './views/fornecedores/fornecedores-form/fornecedores-form.component';
import { FornecedoresShowComponent } from './views/fornecedores/fornecedores-show/fornecedores-show.component';
import { GruposFormComponent } from './views/grupos/grupos-form/grupos-form.component';
import { GruposShowComponent } from './views/grupos/grupos-show/grupos-show.component';
import { LocaisFormComponent } from './views/locais/locais-form/locais-form.component';
import { LocaisShowComponent } from './views/locais/locais-show/locais-show.component';
import { ResponsaveisFormComponent } from './views/responsaveis/responsaveis-form/responsaveis-form.component';
import { ResponsaveisShowComponent } from './views/responsaveis/responsaveis-show/responsaveis-show.component';
import { PatrimoniosShowComponent } from './views/patrimonios/patrimonios-show/patrimonios-show.component';

export const routes: Routes = [
  { path: '', redirectTo: 'home', pathMatch: 'full' },
  { path: 'home', component: HomeComponent, pathMatch: 'full' },
  { path: 'configuracoes', component: ConfiguracoesIndexComponent, pathMatch: 'full' },
  {
    path: 'patrimonios', children: [
      { path: '', component: PatrimoniosIndexComponent, pathMatch: 'full' },
      { path: 'novo', component: PatrimoniosFormComponent, pathMatch: 'full' },
      {
        path: ':id', children: [
          { path: '', component: PatrimoniosShowComponent, pathMatch: 'full' },
          { path: 'editar', component: PatrimoniosFormComponent, pathMatch: 'full' },
        ]
      },
    ]
  },
  {
    path: 'fornecedores', children: [
      { path: '', component: FornecedoresIndexComponent, pathMatch: 'full' },
      { path: 'novo', component: FornecedoresFormComponent, pathMatch: 'full' },
      {
        path: ':id', children: [
          { path: '', component: FornecedoresShowComponent, pathMatch: 'full' },
          { path: 'editar', component: FornecedoresFormComponent, pathMatch: 'full' },
        ]
      },
    ]
  },
  {
    path: 'grupos', children: [
      { path: '', component: GruposIndexComponent, pathMatch: 'full' },
      { path: 'novo', component: GruposFormComponent, pathMatch: 'full' },
      {
        path: ':id', children: [
          { path: '', component: GruposShowComponent, pathMatch: 'full' },
          { path: 'editar', component: GruposFormComponent, pathMatch: 'full' },
        ]
      }
    ]
  },
  {
    path: 'locais', children: [
      { path: '', component: LocaisIndexComponent, pathMatch: 'full' },
      { path: 'novo', component: LocaisFormComponent, pathMatch: 'full' },
      {
        path: ':id', children: [
          { path: '', component: LocaisShowComponent, pathMatch: 'full' },
          { path: 'editar', component: LocaisFormComponent, pathMatch: 'full' },
        ]
      }
    ]
  },
  {
    path: 'responsaveis', children: [
      { path: '', component: ResponsaveisIndexComponent, pathMatch: 'full' },
      { path: 'novo', component: ResponsaveisFormComponent, pathMatch: 'full' },
      {
        path: ':id', children: [
          { path: '', component: ResponsaveisShowComponent, pathMatch: 'full' },
          { path: 'editar', component: ResponsaveisFormComponent, pathMatch: 'full' },
        ]
      }
    ]
  },
];
