import { Pipe, PipeTransform } from "@angular/core";

@Pipe({
  name: "situacao_patrimonio",
  standalone: true,
})
export class SituacaoPatrimonioPipe implements PipeTransform {
  situacoes = {
    pendente: "Pendente",
    ativo: "Ativo",
    em_manutencao: "Em Manutenção",
    inativo: "Inativo",
  };

  transform(value: string | undefined, ...args: any[]): string {
    return this.situacoes[value as keyof typeof this.situacoes];
  }
}
