import { HttpStatusCode } from "@angular/common/http";
import { inject, Injectable } from "@angular/core";
import { map, Observable } from "rxjs";
import { Grupo } from "../models/grupo.model";
import { ApiService } from "./api.service";

@Injectable({
  providedIn: "root",
})
export class GrupoService {
  private apiService = inject(ApiService);
  private url = "grupos";

  listar_grupos(parametros_busca: any): Observable<Grupo[]> {
    return this.apiService.get<Grupo[]>(this.url, parametros_busca).pipe(
      map((res) => {
        return res.body!.map((item) => {
          return new Grupo(item);
        });
      })
    );
  }

  obter_grupo(id: number): Observable<Grupo> {
    return this.apiService.get<Grupo>([this.url, id.toString()]).pipe(
      map((res) => {
        return new Grupo(res.body!);
      })
    );
  }

  criar_grupo(grupo: Grupo): Observable<Grupo> {
    return this.apiService.get<Grupo>(this.url, { grupo: grupo }).pipe(
      map((res) => {
        return new Grupo(res.body!);
      })
    );
  }

  atualizar_grupo(grupo: Grupo): Observable<Grupo> {
    return this.apiService.get<Grupo>(this.url, { grupo: grupo }).pipe(
      map((res) => {
        return new Grupo(res.body!);
      })
    );
  }

  apagar_grupo(id: number): Observable<boolean> {
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
}
