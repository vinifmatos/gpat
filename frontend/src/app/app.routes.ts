import { Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { PatrimoniosComponent } from './patrimonios/patrimonios.component';
import { GruposComponent } from './grupos/grupos.component';
import { LocaisComponent } from './locais/locais.component';
import { ResponsaveisComponent } from './responsaveis/responsaveis.component';
import { ConfiguracoesComponent } from './configuracoes/configuracoes.component';

export const routes: Routes = [
  { path: '', redirectTo: 'home', pathMatch: 'full' },
  { path: 'home', component: HomeComponent, pathMatch: 'full' },
  { path: 'patrimonios', component: PatrimoniosComponent, pathMatch: 'full' },
  { path: 'grupos', component: GruposComponent, pathMatch: 'full' },
  { path: 'locais', component: LocaisComponent, pathMatch: 'full' },
  { path: 'responsaveis', component: ResponsaveisComponent, pathMatch: 'full' },
  { path: 'configuracoes', component: ConfiguracoesComponent, pathMatch: 'full' }
];
