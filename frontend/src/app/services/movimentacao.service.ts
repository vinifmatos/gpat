import { HttpStatusCode } from "@angular/common/http";
import { inject, Injectable } from "@angular/core";
import { map, Observable } from "rxjs";
import { Movimentacao } from "../models/movimentacao.model";
import { ApiService } from "./api.service";

@Injectable({
  providedIn: "root",
})
export class MovimentacaoService {
  private apiService = inject(ApiService);
  private url = "movimentacoes";

  listarMovimentacoes(parametrosBusca: any = {}): Observable<Movimentacao[]> {
    return this.apiService
      .get<Movimentacao[]>(this.url, parametrosBusca)
      .pipe(map((res) => res.body!.map(Movimentacao.build)));
  }

  obterMovimentacao(id: number): Observable<Movimentacao> {
    return this.apiService
      .get<Movimentacao>([this.url, id.toString()])
      .pipe(map((res) => Movimentacao.build(res.body!)));
  }

  criarMovimentacao(movimentacao: Movimentacao): Observable<Movimentacao> {
    return this.apiService
      .get<Movimentacao>(this.url, {
        movimentacao: this.removeCamposNaoPermitidos(movimentacao),
      })
      .pipe(map((res) => Movimentacao.build(res.body!)));
  }

  atualizarMovimentacao(
    id: number,
    movimentacao: Movimentacao
  ): Observable<Movimentacao> {
    return this.apiService
      .get<Movimentacao>([this.url, id.toString()], {
        movimentacao: this.removeCamposNaoPermitidos(movimentacao),
      })
      .pipe(map((res) => Movimentacao.build(res.body!)));
  }

  apagarMovimentacao(id: number): Observable<boolean> {
    return this.apiService.delete([this.url, id.toString()]).pipe(
      map((res) => {
        if (res.status === HttpStatusCode.NoContent) {
          return true;
        } else {
          return false;
        }
      })
    );
  }

  private removeCamposNaoPermitidos(movimentacao: Movimentacao) {
    delete movimentacao.local;
    movimentacao.itens.forEach((i) => {
      delete i.patrimonio;
    });
    return movimentacao;
  }
}
