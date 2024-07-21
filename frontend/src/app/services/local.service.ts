import { HttpStatusCode } from "@angular/common/http";
import { inject, Injectable } from "@angular/core";
import { map, Observable } from "rxjs";
import { Local } from "../models/local.model";
import { ApiService } from "./api.service";

@Injectable({
  providedIn: "root",
})
export class LocalService {
  private apiService = inject(ApiService);
  private url = "locais";

  listar_locais(parametros_busca: any): Observable<Local[]> {
    return this.apiService.get<Local[]>(this.url, parametros_busca).pipe(
      map((res) => {
        return res.body!.map((item) => {
          return new Local(item);
        });
      })
    );
  }

  obter_local(id: number): Observable<Local> {
    return this.apiService.get<Local>([this.url, id.toString()]).pipe(
      map((res) => {
        return new Local(res.body!);
      })
    );
  }

  criar_local(local: Local): Observable<Local> {
    return this.apiService.get<Local>(this.url, { local: local }).pipe(
      map((res) => {
        return new Local(res.body!);
      })
    );
  }

  atualizar_local(local: Local): Observable<Local> {
    return this.apiService.get<Local>(this.url, { local: local }).pipe(
      map((res) => {
        return new Local(res.body!);
      })
    );
  }

  apagar_local(id: number): Observable<boolean> {
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
