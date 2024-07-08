import { keyframes } from "@angular/animations";
import { HttpClient, HttpParams, HttpResponse } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { Observable } from "rxjs";
import urlJoin from "url-join";

@Injectable({
  providedIn: "root",
})
export class ApiService {
  url_base = "/api";

  constructor(private http: HttpClient) {}

  get<T>(
    path: string | string[],
    query_params?: any,
    ordenacao_params?: any,
    paginacao_params?: any
  ): Observable<HttpResponse<T>> {
    if (!Array.isArray(path)) path = [path];

    let params = new HttpParams();

    for (const k in query_params) {
      if (query_params.hasOwnProperty(k)) {
        params = params.set(`q[${k}]`, query_params[k]);
      }
    }

    this.ordenacao_params(ordenacao_params).forEach((v) => {
      params = params.append(`q[s][]`, v);
    });

    for (const k in paginacao_params) {
      if (paginacao_params.hasOwnProperty(k)) {
        params = params.set(k, paginacao_params[k]);
      }
    }

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

  ordenacao_params(params: any): string[] {
    const ordenacoes: string[] = [];
    for (const k in params) {
      if (params.hasOwnProperty(k)) {
        ordenacoes.push(`${k} ${params[k]}`);
      }
    }
    return ordenacoes;
  }
}
