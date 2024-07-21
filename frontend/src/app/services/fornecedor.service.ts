import { HttpStatusCode } from "@angular/common/http";
import { inject, Injectable } from "@angular/core";
import { map, Observable } from "rxjs";
import { Fornecedor } from "../models/fornecedor.model";
import { ApiService } from "./api.service";

@Injectable({
  providedIn: "root",
})
export class FornecedorService {
  private apiService = inject(ApiService);
  private url = "fornecedores";

  listar_fornecedores(parametros_busca: any): Observable<Fornecedor[]> {
    return this.apiService.get<Fornecedor[]>(this.url, parametros_busca).pipe(
      map((res) => {
        return res.body!.map((item) => {
          return new Fornecedor(item);
        });
      })
    );
  }

  obter_fornecedor(id: number): Observable<Fornecedor> {
    return this.apiService.get<Fornecedor>([this.url, id.toString()]).pipe(
      map((res) => {
        return new Fornecedor(res.body!);
      })
    );
  }

  criar_fornecedor(fornecedor: Fornecedor): Observable<Fornecedor> {
    return this.apiService
      .get<Fornecedor>(this.url, { fornecedor: fornecedor })
      .pipe(
        map((res) => {
          return new Fornecedor(res.body!);
        })
      );
  }

  atualizar_fornecedor(fornecedor: Fornecedor): Observable<Fornecedor> {
    return this.apiService
      .get<Fornecedor>(this.url, { fornecedor: fornecedor })
      .pipe(
        map((res) => {
          return new Fornecedor(res.body!);
        })
      );
  }

  apagar_fornecedor(id: number): Observable<boolean> {
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
