import { Injectable } from "@angular/core";

@Injectable({
  providedIn: "root",
})
export class StringService {
  private irregular = [{ regra: "país", rep: "países" }];
  private incontaveis = ["tórax", "tênis", "ônibus", "lápis", "fênix"];
  private plural = [
    { regra: /^(alem|c|p)ao$/i, rep: "$1aes" },
    { regra: /^(irm|m)ao$/i, rep: "$1aos" },
    { regra: /ao$/i, rep: "oes" },
    { regra: /^(alem|c|p)ão$/i, rep: "$1ães" },
    { regra: /^(irm|m)ão$/i, rep: "$1ãos" },
    { regra: /ão$/i, rep: "ões" },
    { regra: /^(|g)ás$/i, rep: "$1ases" },
    {
      regra: /^(japon|escoc|ingl|dinamarqu|fregu|portugu)ês$/i,
      rep: "$1eses",
    },
    { regra: /m$/i, rep: "ns" },
    { regra: /([^aeou])il$/i, rep: "$1is" },
    { regra: /ul$/i, rep: "uis" },
    { regra: /ol$/i, rep: "ois" },
    { regra: /el$/i, rep: "eis" },
    { regra: /al$/i, rep: "ais" },
    { regra: /(z|r)$/i, rep: "$1es" },
    { regra: /^(paí)s$/i, rep: "$1ses" },
    { regra: /(s)$/i, rep: "$1" },
    { regra: /$/, rep: "s" },
  ];
  private singular = [
    { regra: /^(g|)ases$/i, rep: "$1ás" },
    { regra: /(japon|escoc|ingl|dinamarqu|fregu|portugu)eses$/i, rep: "$1ês" },
    { regra: /oes$/i, rep: "ao" },
    { regra: /ões$/i, rep: "ão" },
    { regra: /aos$/i, rep: "ao" },
    { regra: /ãos$/i, rep: "ão" },
    { regra: /aes$/i, rep: "ao" },
    { regra: /ães$/i, rep: "ão" },
    { regra: /^(.*[^s]s)es$/i, rep: "$1" },
    { regra: /sses$/i, rep: "sse" },
    { regra: /ns$/i, rep: "m" },
    { regra: /(r|t|f|v)is$/i, rep: "$1il" },
    { regra: /uis$/i, rep: "ul" },
    { regra: /ois$/i, rep: "ol" },
    { regra: /eis$/i, rep: "el" },
    { regra: /([^p])ais$/i, rep: "$1al" },
    { regra: /(r|z)es$/i, rep: "$1" },
    { regra: /^(á|gá|paí)s$/i, rep: "$1s" },
    { regra: /([^ê])s$/i, rep: "$1" },
  ];

  constructor() {}

  capitalize(str: string): string {
    if (!str) return str;
    return str.charAt(0).toUpperCase() + str.slice(1).toLowerCase();
  }

  pluralize(str: string): string {
    let resultado: string = str;

    // testa regras incontaveis
    if (str in this.incontaveis) return str;

    // testa regras irregular
    for (let r of this.irregular) {
      resultado = resultado.replace(r.regra, r.rep);
      if (resultado !== str) break;
    }
    if (resultado !== str) return resultado;

    //testa regras plural
    for (let r of this.plural) {
      resultado = resultado.replace(r.regra, r.rep);
      if (resultado !== str) break;
    }
    if (resultado !== str) return resultado;

    return resultado;
  }

  singularize(str: string): string {
    let resultado: string = str;

    // testa regras do singular
    for (let r of this.singular) {
      resultado = resultado.replace(r.regra, r.rep);
      if (resultado !== str) break;
    }
    if (resultado !== str) return resultado;

    return resultado;
  }
}
