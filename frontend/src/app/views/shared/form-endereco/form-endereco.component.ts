import { Component, EventEmitter, Input, Output } from "@angular/core";
import { ImportsModule } from "../../../imports.module";
import {
  ControlContainer,
  FormGroup,
  FormGroupDirective,
  ReactiveFormsModule,
} from "@angular/forms";
import { AutoCompleteCompleteEvent } from "primeng/autocomplete";
import { Cidade } from "../../../interfaces/cidade";
import { ApiService } from "../../../services/api.service";

@Component({
  selector: "app-form-endereco",
  standalone: true,
  imports: [ImportsModule, ReactiveFormsModule],
  templateUrl: "./form-endereco.component.html",
  styleUrl: "./form-endereco.component.scss",
  viewProviders: [
    { provide: ControlContainer, useExisting: FormGroupDirective },
  ],
})
export class FormEnderecoComponent {
  cidades: Cidade[] = [];
  @Input() endereco_id: number;
  @Input() form_group: FormGroup;
  @Input() exibir_excluir: boolean = false;
  @Output() excluir: EventEmitter<number> = new EventEmitter<number>();
  constructor(private api: ApiService, public fgd: FormGroupDirective) {}

  get_cidades(e: AutoCompleteCompleteEvent) {
    this.api
      .get<Cidade[]>([this.api.recursos["cidades"].rotas.index], {
        por_estado: true,
        nome: `${e.query}`,
      })
      .subscribe((res) => {
        if (res.ok) this.cidades = res.body as Cidade[];
        else {
          console.error(res.status);
        }
      });
  }

  excluir_endereco(id: number) {
    this.excluir.emit(id);
  }

  gera_id_html(prefixo: string): string {
    let id = [prefixo];
    if (this.endereco_id >= 0) id.push(String(this.endereco_id));
    return id.join("-");
  }
}
