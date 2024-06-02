import { Component } from '@angular/core';
import { ImportsModule } from '../../../imports.module';
import { ShowComponent } from '../../shared/show/show.component';
import { Grupo } from '../../../interfaces/grupo';
import { ComponentBase } from '../../../component-base/component-base';
import { ApiService } from '../../../services/api.service';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-grupos-show',
  standalone: true,
  imports: [ImportsModule, ShowComponent],
  templateUrl: './grupos-show.component.html',
  styleUrl: './grupos-show.component.scss'
})
export class GruposShowComponent extends ComponentBase {
  grupo: Grupo

  constructor(
    api: ApiService,
    router: Router,
    route: ActivatedRoute,
  ) {
    super(api, router, route)
    this.route.params.subscribe(() => {
      this.carregando = true
      this.api.get<Grupo>([this.api.recursos['grupos'].rotas.get, this.route.snapshot.paramMap.get('id') as string]).subscribe(
        res => {
          this.grupo = res.body as Grupo
          this.carregando = false
          this.erro = false
        },
        res => {
          this.carregando = false
          this.erro = true
        }
      )
    })
  }
}
