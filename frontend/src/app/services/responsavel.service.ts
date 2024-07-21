import { HttpStatusCode } from "@angular/common/http";
import { inject, Injectable } from "@angular/core";
import { map, Observable } from "rxjs";
import { Responsavel } from "../models/responsavel.model";
import { ApiService } from "./api.service";

@Injectable({
  providedIn: "root",
})
export class ResponsavelService {
  private apiService = inject(ApiService);
  private url = "responsaveis";

  listar_responsaveis(parametros_busca: any): Observable<Responsavel[]> {
    return this.apiService.get<Responsavel[]>(this.url, parametros_busca).pipe(
      map((res) => {
        return res.body!.map((item) => {
          return new Responsavel(item);
        });
      })
    );
  }

  obter_responsavel(id: number): Observable<Responsavel> {
    return this.apiService.get<Responsavel>([this.url, id.toString()]).pipe(
      map((res) => {
        return new Responsavel(res.body!);
      })
    );
  }

  criar_responsavel(): Observable<Responsavel> {
    return this.apiService.get<Responsavel>(this.url).pipe(
      map((res) => {
        return new Responsavel(res.body!);
      })
    );
  }

  atualizar_responsavel(): Observable<Responsavel> {
    return this.apiService.get<Responsavel>(this.url).pipe(
      map((res) => {
        return new Responsavel(res.body!);
      })
    );
  }

  apagar_responsavel(id: number): Observable<boolean> {
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
