import { Routes } from '@angular/router';
import { HomeComponent } from './views/home/home.component';
import { PatrimoniosIndexComponent } from './views/patrimonios/patrimonios-index/patrimonios-index.component';
import { GruposIndexComponent } from './views/grupos/grupos-index/grupos-index.component';
import { LocaisIndexComponent } from './views/locais/locais-index/locais-index.component';
import { ResponsaveisIndexComponent } from './views/responsaveis/responsaveis-index/responsaveis-index.component';
import { ConfiguracoesIndexComponent } from './views/configuracoes/configuracoes-index/configuracoes-index.component';
import { PatrimoniosFormComponent } from './views/patrimonios/patrimonios-form/patrimonios-form.component';

export const routes: Routes = [
  { path: '', redirectTo: 'home', pathMatch: 'full' },
  { path: 'home', component: HomeComponent, pathMatch: 'full' },
  {
    path: 'patrimonios', children: [
      { path: '', component: PatrimoniosIndexComponent, pathMatch: 'full' },
      { path: 'novo', component: PatrimoniosFormComponent, pathMatch: 'full' },
    ]
  },
  { path: 'grupos', component: GruposIndexComponent, pathMatch: 'full' },
  { path: 'locais', component: LocaisIndexComponent, pathMatch: 'full' },
  { path: 'responsaveis', component: ResponsaveisIndexComponent, pathMatch: 'full' },
  { path: 'configuracoes', component: ConfiguracoesIndexComponent, pathMatch: 'full' }
];
