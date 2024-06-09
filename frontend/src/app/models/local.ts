import { Endereco } from "./endereco";
import { Rotas } from "../interfaces/rotas";
import { ModelBase } from "./model-base";
import { FormControl, FormGroup } from "@angular/forms";

export class Local extends ModelBase {
  static override nome: string = "local";
  static override rotas: Rotas = {
    index: "locais",
    get: "locais",
    show: "locais",
    create: "locais",
    update: "locais",
    delete: "locais",
  };

  local_id?: number;
  codigo?: number;
  descricao: string;
  ativo: boolean;
  endereco: Endereco;
  subordinados?: Local[];
  subordinacao?: Local;

  constructor({
    codigo,
    descricao = "",
    ativo = true,
    endereco = new Endereco(),
    local_id,
    subordinados,
    subordinacao,
    id,
    created_at,
    updated_at,
  }: {
    codigo?: number;
    descricao?: string;
    ativo?: boolean;
    endereco?: Endereco;
    local_id?: number;
    subordinados?: Local[];
    subordinacao?: Local;
    id?: number;
    created_at?: Date;
    updated_at?: Date;
  } = {}) {
    super(id, created_at, updated_at);
    this.local_id = local_id;
    this.codigo = codigo;
    this.descricao = descricao;
    this.ativo = ativo;
    if (endereco instanceof Endereco) this.endereco = endereco;
    else this.endereco = new Endereco(endereco);
    this.subordinados = subordinados;
    this.subordinacao = subordinacao;
  }

  override to_payload(): Partial<this> {
    let payload = super.to_payload();
    payload.endereco = this.endereco.to_payload() as this["endereco"];
    payload.local_id = payload.subordinacao?.id;
    delete payload.subordinacao;
    delete payload.subordinados;
    return payload;
  }

  override to_form(): FormGroup<any> {
    return new FormGroup({
      codigo: new FormControl(this.codigo),
      local_id: new FormControl(this.local_id),
      descricao: new FormControl(this.descricao),
      ativo: new FormControl(this.ativo),
      endereco: this.endereco.to_form(),
      subordinacao: new FormControl(this.subordinacao),
    });
  }
}
