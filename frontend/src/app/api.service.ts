import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  url_api = '/api'

  constructor(
    private http: HttpClient
  ) { }

  get<T>(path: string): Observable<T> {
    return this.http.get<T>(new URL(path, this.url_api).href)
  }

  create<T>(path: string, recurso: T): Observable<T> {
    return this.http.post<T>(new URL(path, this.url_api).href, recurso)
  }

  update<T>(path: string, recurso: T): Observable<T> {
    return this.http.put<T>(new URL(path, this.url_api).href, recurso)
  }

  delete<T>(path: string): Observable<T> {
    return this.http.delete<T>(new URL(path, this.url_api).href)
  }
}
