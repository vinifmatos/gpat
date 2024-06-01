export interface Recurso {
  nome: string,
  rotas: {
    index: string,
    get: string,
    show: string,
    create: string,
    update: string,
    delete: string
  }
}

export interface Recursos {
  [k: string]: Recurso
}
