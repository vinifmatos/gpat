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
    sort_params?: any
  ): Observable<HttpResponse<T>> {
    if (!Array.isArray(path)) path = [path];
    let params = new HttpParams();
    for (const k in query_params) {
      if (query_params.hasOwnProperty(k)) {
        params = params.set(`q[${k}]`, query_params[k]);
      }
    }
    const ordenacoes: string[] = [];
    for (const k in sort_params) {
      if (sort_params.hasOwnProperty(k)) {
        ordenacoes.push(`${k} ${sort_params[k]}`);
      }
    }
    if (ordenacoes.length > 0)
      params = params.set("q[s]", ordenacoes.join(","));
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
