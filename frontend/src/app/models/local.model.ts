import { Endereco } from "./endereco.model";
import { ModelBase } from "./model-base.model";

export class Local extends ModelBase {
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
}
