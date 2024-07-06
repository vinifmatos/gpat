import { Pipe, PipeTransform } from "@angular/core";

@Pipe({
  name: "numero_ano",
  standalone: true,
})
export class NumeroAno implements PipeTransform {
  transform(value: (number | undefined)[], ...args: any[]): string {
    if (!value[0] || !value[1]) return "";
    return value.join("/");
  }
}
