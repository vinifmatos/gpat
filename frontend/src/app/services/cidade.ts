import { inject, Injectable } from "@angular/core";
import { map, Observable } from "rxjs";
import { Cidade } from "../interfaces/cidade";
import { ApiService } from "./api.service";

@Injectable({
  providedIn: "root",
})
export class CidadeService {
  private apiService = inject(ApiService);
  private url = "cidades";

  listar_cidades(): Observable<Cidade[]> {
    return this.apiService.get<Cidade[]>(this.url).pipe(
      map((res) => {
        return res.body!;
      })
    );
  }
}
