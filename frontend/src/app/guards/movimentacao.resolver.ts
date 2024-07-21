import { inject } from "@angular/core";
import { ResolveFn } from "@angular/router";
import { of } from "rxjs";
import { Movimentacao } from "../models/movimentacao.model";
import { MovimentacaoService } from "../services/movimentacao.service";

export const movimentacaoResolver: ResolveFn<Movimentacao> = (route, state) => {
  const movimentacaoId = Number(route.paramMap.get("id"));
  if (movimentacaoId)
    return inject(MovimentacaoService).obterMovimentacao(movimentacaoId);
  else return of(new Movimentacao(new Date(), "incorporacao"));
};
