import { Component, inject, OnInit } from "@angular/core";
import { FormBuilder, FormControl, FormGroup } from "@angular/forms";
import { ActivatedRoute, Router } from "@angular/router";
import { ImportsModule } from "../../../imports.module";
import { Local } from "../../../models/local.model";
import { Movimentacao } from "../../../models/movimentacao.model";
import { Patrimonio } from "../../../models/patrimonio.model";
import { MovimentacaoService } from "../../../services/movimentacao.service";
import { NavegacaoService } from "../../../services/navegacao.service";
import { SpinnerComponent } from "../../shared/spinner/spinner.component";

@Component({
  selector: "app-movimentacao-form",
  standalone: true,
  imports: [SpinnerComponent, ImportsModule],
  templateUrl: "./form.component.html",
  styleUrl: "./form.component.scss",
})
export class MovimentacaoFormComponent implements OnInit {
  private movimentacaoService = inject(MovimentacaoService);
  private navegacaoService = inject(NavegacaoService);
  private route = inject(ActivatedRoute);
  private router = inject(Router);
  private fb = inject(FormBuilder);
  private movimentacao: Movimentacao;
  carregando = true;
  carregado_com_erro = false;
  editando = false;
  form = this.fb.group({
    id: this.fb.control<number | null>(null),
    data: this.fb.control(new Date()),
    local_id: this.fb.control<number | null>(null),
    motivo: this.fb.control<
      | "incorporacao"
      | "transferencia"
      | "emprestimo"
      | "manutencao"
      | "desincorporacao"
      | "inventario"
      | null
    >("incorporacao"),
    itens: this.fb.array<
      FormGroup<{
        id?: FormControl<number | null>;
        movimentacao_id?: FormControl<number | null>;
        patrimonio_id?: FormControl<number | null>;
        patrimonio?: FormControl<Patrimonio | null>;
        _destroy?: FormControl<boolean | null>;
      }>
    >([]),
    local: this.fb.control<Local | null>(null),
  });
  titulo = "";
  ngOnInit(): void {
    this.movimentacao = this.route.snapshot.data["movimentacao"];
    if (this.movimentacao.id) {
      this.editando = true;
      this.form.setValue({
        data: this.movimentacao.data,
        itens: this.movimentacao.itens.map((i) => {
          return {
            id: i.id,
            movimentacao_id: i.movimentacao_id,
            patrimonio_id: i.patrimonio_id,
            patrimonio: i.patrimonio,
            _destroy: false,
          };
        }),
        motivo: this.movimentacao.motivo,
        id: this.movimentacao.id,
        local: this.movimentacao.local!,
        local_id: this.movimentacao.local_id!,
      });
    } else {
      this.editando = false;
      this.carregando = false;
      this.carregado_com_erro = false;
    }
    this.titulo = this.editando ? "Editar Movimentação" : "Nova Movimentação";
  }

  onSubmit() {
    const movimentacao = this.form.value as Movimentacao;

    if (this.editando) {
      this.movimentacaoService
        .atualizarMovimentacao(this.movimentacao.id!, movimentacao)
        .subscribe((movimentacaoAtualizada) => {
          this.router.navigate(["movimentacoes", this.movimentacao.id], {
            state: { movimentacao: movimentacaoAtualizada },
          });
        });
    } else {
      this.movimentacaoService
        .criarMovimentacao(movimentacao)
        .subscribe((novaMovimentacao) => {
          this.router.navigate(["movimentacoes", novaMovimentacao.id], {
            state: { movimentacao: novaMovimentacao },
          });
        });
    }
  }

  get_url_anterior() {
    return this.navegacaoService.get_url_anterior();
  }

  itens() {
    return this.form.controls.itens.controls;
  }
}
