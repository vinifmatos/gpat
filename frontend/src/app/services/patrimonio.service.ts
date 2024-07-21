import { HttpStatusCode } from "@angular/common/http";
import { inject, Injectable } from "@angular/core";
import { map, Observable } from "rxjs";
import { Patrimonio } from "../models/patrimonio.model";
import { ApiService } from "./api.service";

@Injectable({
  providedIn: "root",
})
export class PatrimonioService {
  private apiService = inject(ApiService);
  private url = "patrimonios";

  listar_patrimonios(parametros_busca: any): Observable<Patrimonio[]> {
    return this.apiService.get<Patrimonio[]>(this.url, parametros_busca).pipe(
      map((res) => {
        return res.body!.map((item) => {
          return new Patrimonio(item);
        });
      })
    );
  }

  obter_patriomnio(id: number): Observable<Patrimonio> {
    return this.apiService.get<Patrimonio>([this.url, id.toString()]).pipe(
      map((res) => {
        return new Patrimonio(res.body!);
      })
    );
  }

  criar_patrimonio(patrimonio: Patrimonio): Observable<Patrimonio> {
    return this.apiService
      .create<Patrimonio>(this.url, { patrimonio: patrimonio })
      .pipe(
        map((res) => {
          return new Patrimonio(res.body!);
        })
      );
  }

  atualizar_patriomnio(patrimonio: Patrimonio): Observable<Patrimonio> {
    return this.apiService
      .put<Patrimonio>(this.url, { patrimonio: patrimonio })
      .pipe(
        map((res) => {
          return new Patrimonio(res.body!);
        })
      );
  }

  apagar_patriomnio(id: number): Observable<boolean> {
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
