import { HttpClient, HttpParams, HttpResponse } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import urlJoin from 'url-join';
import { Recursos } from '../interfaces/recurso';

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  url_base = '/api'

  recursos: Recursos = {
    cidades: {
      nome: 'cidades',
      rotas: {
        index: 'cidades',
        show: '',
        get: '',
        create: '',
        update: '',
        delete: ''
      }
    },
    fornecedores: {
      nome: 'fornecedores',
      rotas: {
        index: 'fornecedores',
        show: 'fornecedores',
        get: 'fornecedores',
        create: 'fornecedores',
        update: 'fornecedores',
        delete: 'fornecedores'
      }
    },
  }

  constructor(
    private http: HttpClient
  ) { }

  get<T>(path: string[], params: any = {}): Observable<HttpResponse<T>> {
    return this.http.get<T>(urlJoin(this.url_base, ...path), { observe: 'response', params: params })
  }

  create<T>(path: string[], payload: any): Observable<HttpResponse<T>> {
    return this.http.post<T>(urlJoin(this.url_base, ...path), payload, { observe: 'response' })
  }

  update<T>(path: string[], payload: any): Observable<HttpResponse<T>> {
    return this.http.put<T>(urlJoin(this.url_base, ...path), payload, { observe: 'response' })
  }

  delete<T>(path: string[]): Observable<HttpResponse<T>> {
    return this.http.delete<T>(urlJoin(this.url_base, ...path), { observe: 'response' })
  }
}
