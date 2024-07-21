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
    parametros?: any
  ): Observable<HttpResponse<T>> {
    if (!Array.isArray(path)) path = [path];

    return this.http.get<T>(
      urlJoin(this.url_base, ...path.map((p) => String(p))),
      { observe: "response", params: this.parse_parametros(parametros) }
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

  put<T>(path: string | string[], payload: any): Observable<HttpResponse<T>> {
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

  parse_parametros(
    parametros: any,
    http_params: HttpParams = new HttpParams(),
    chave_pai?: string
  ): HttpParams {
    for (const k in parametros) {
      let chave = chave_pai ? `${chave_pai}[${k}]` : `${k}`;
      if (
        Array.isArray(parametros[k]) &&
        Object.prototype.toString.call(parametros[k]) !== "[object String]"
      ) {
        parametros[k].forEach((v: any) => {
          if (Object.prototype.toString.call(v) === "[object Object]") {
            for (const kk in v) {
              http_params = http_params.append(`${chave}[][${kk}]`, v[kk]);
            }
          } else {
            http_params = http_params.append(`${chave}[]`, v);
          }
        });
      } else if (
        Object.prototype.toString.call(parametros[k]) === "[object Object]"
      ) {
        http_params = this.parse_parametros(
          parametros[k],
          http_params,
          `${chave}`
        );
      } else {
        http_params = http_params.set(chave, parametros[k]);
      }
    }
    return http_params;
  }
}
