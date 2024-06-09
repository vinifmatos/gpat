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
