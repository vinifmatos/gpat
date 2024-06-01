import { HttpClient, HttpParams, HttpResponse } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import urlJoin from 'url-join';

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  url_base = '/api'

  recursos = {
    cidades: 'cidades',
    fornecedores: 'fornecedores'
  }

  constructor(
    private http: HttpClient
  ) { }

  get<T>(path: string[], params: any = {}): Observable<HttpResponse<T>> {
    return this.http.get<T>(urlJoin(this.url_base, ...path), { observe: 'response', params: params })
  }

  create<T>(path: string[], recurso: T): Observable<HttpResponse<T>> {
    return this.http.post<T>(urlJoin(this.url_base, ...path), recurso, { observe: 'response' })
  }

  update<T>(path: string[], recurso: T): Observable<HttpResponse<T>> {
    return this.http.put<T>(urlJoin(this.url_base, ...path), recurso, { observe: 'response' })
  }

  delete<T>(path: string[]): Observable<HttpResponse<T>> {
    return this.http.delete<T>(urlJoin(this.url_base, ...path), { observe: 'response' })
  }
}
