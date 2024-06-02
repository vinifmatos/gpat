import { Injectable } from '@angular/core';
import { NavigationEnd, Router } from '@angular/router';
import { filter } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class NavegacaoService {
  private url_atual: string
  private url_anterior: string

  constructor(
    private router: Router
  ) {
    this.url_atual = router.url
    this.url_anterior = router.url

    this.router.events
      .pipe(filter(e => e instanceof NavigationEnd))
      .subscribe((e: any) => {
        this.url_anterior = this.url_atual
        this.url_atual = e.url
      })
  }

  get_url_atual(): string {
    return this.url_atual
  }

  get_url_anterior(): string {
    return this.url_anterior
  }
}
