import { Injectable } from "@angular/core";
import { NavigationEnd, Router } from "@angular/router";
import { filter } from "rxjs";

@Injectable({
  providedIn: "root",
})
export class NavegacaoService {
  private url_atual: string;
  private url_anterior: string;
  private url_incial: string;

  constructor(private router: Router) {
    this.url_atual = router.url;
    this.url_anterior = router.url;
    this.url_incial = router.url;

    this.router.events
      .pipe(filter((e) => e instanceof NavigationEnd))
      .subscribe((e: any) => {
        this.url_incial = this.url_anterior;
        this.url_anterior = this.url_atual;
        this.url_atual = e.url;
      });
  }

  get_url_atual(): string {
    return this.url_atual;
  }

  get_url_anterior(): string {
    return this.url_anterior;
  }
  get_url_incial(): string {
    return this.url_incial;
  }

  get_url_retorno(): string {
    let url_atual = this.get_url_atual();
    let url_anterior = this.get_url_anterior();
    let url_inicial = this.get_url_incial();
    let base_url_atual = url_atual.match(/^\/\w+/)?.[0] as string;
    let base_url_anterior = url_anterior.match(/^\/\w+/)?.[0] as string;

    if (
      base_url_atual === base_url_anterior &&
      url_atual !== url_anterior &&
      url_atual !== url_inicial
    ) {
      return url_anterior;
    } else if (url_atual !== url_anterior && url_atual === url_inicial) {
      return base_url_atual;
    } else if (url_atual === url_anterior && url_atual === url_inicial) {
      return base_url_atual;
    } else if (url_anterior === "") {
      return base_url_atual;
    } else {
      return url_anterior;
    }
  }
}
