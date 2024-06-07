import { HttpClient, HttpParams, HttpResponse } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { Observable } from "rxjs";
import urlJoin from "url-join";
import { Recursos } from "../interfaces/recurso";

@Injectable({
  providedIn: "root",
})
export class ApiService {
  url_base = "/api";

  recursos: Recursos = {
    cidades: {
      nome: "cidade",
      rotas: {
        index: "cidades",
        show: "",
        get: "",
        create: "",
        update: "",
        delete: "",
      },
    },
    fornecedores: {
      nome: "fornecedor",
      rotas: {
        index: "fornecedores",
        show: "fornecedores",
        get: "fornecedores",
        create: "fornecedores",
        update: "fornecedores",
        delete: "fornecedores",
      },
    },
    grupos: {
      nome: "grupo",
      rotas: {
        index: "grupos",
        show: "grupos",
        get: "grupos",
        create: "grupos",
        update: "grupos",
        delete: "grupos",
      },
    },
    responsaveis: {
      nome: "responsavel",
      rotas: {
        index: "responsaveis",
        show: "responsaveis",
        get: "responsaveis",
        create: "responsaveis",
        update: "responsaveis",
        delete: "responsaveis",
      },
    },
    locais: {
      nome: "local",
      rotas: {
        index: "locais",
        show: "locais",
        get: "locais",
        create: "locais",
        update: "locais",
        delete: "locais",
      },
    },
    patrimonios: {
      nome: "patrimonio",
      rotas: {
        index: "patrimonios",
        show: "patrimonios",
        get: "patrimonios",
        create: "patrimonios",
        update: "patrimonios",
        delete: "patrimonios",
      },
    },
  };

  constructor(private http: HttpClient) {}

  get<T>(
    path: string | string[],
    params: any = {}
  ): Observable<HttpResponse<T>> {
    if (!Array.isArray(path)) path = [path];
    return this.http.get<T>(
      urlJoin(this.url_base, ...path.map((p) => String(p))),
      { observe: "response", params: params }
    );
  }

  create<T>(
    path: string | string[],
    payload: any
  ): Observable<HttpResponse<T>> {
    if (!Array.isArray(path)) path = [path];
    return this.http.post<T>(
      urlJoin(this.url_base, ...path.map((p) => String(p))),
      payload,
      { observe: "response" }
    );
  }

  update<T>(
    path: string | string[],
    payload: any
  ): Observable<HttpResponse<T>> {
    if (!Array.isArray(path)) path = [path];
    return this.http.put<T>(
      urlJoin(this.url_base, ...path.map((p) => String(p))),
      payload,
      { observe: "response" }
    );
  }

  delete<T>(path: string | string[]): Observable<HttpResponse<T>> {
    if (!Array.isArray(path)) path = [path];
    return this.http.delete<T>(
      urlJoin(this.url_base, ...path.map((p) => String(p))),
      { observe: "response" }
    );
  }
}
