import { Component, inject, OnInit } from "@angular/core";
import { Observable } from "rxjs";
import { ImportsModule } from "../../../imports.module";
import { Movimentacao } from "../../../models/movimentacao.model";
import { MovimentacaoService } from "../../../services/movimentacao.service";
import { SpinnerComponent } from "../../shared/spinner/spinner.component";

@Component({
  selector: "app-movimentacao-index",
  standalone: true,
  imports: [ImportsModule, SpinnerComponent],
  templateUrl: "./index.component.html",
  styleUrl: "./index.component.scss",
})
export class MovimentacaoIndexComponent implements OnInit {
  private movimentacaoService = inject(MovimentacaoService);
  movimentacoes$: Observable<Movimentacao[]>;
  titulo = "Movimentações";

  ngOnInit(): void {
    this.movimentacoes$ = this.movimentacaoService.listarMovimentacoes();
  }
}
