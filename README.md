# Shell Script Portfolio

Coleção de scripts Shell focada em exemplos práticos, simples e didáticos para estudos e demonstrações em portfólio.

## Objetivo do projeto

Este repositório apresenta automações em Bash com foco em:

- fundamentos de scripting no terminal;
- exemplos rápidos para consulta;
- organização clara para avaliação técnica.

## Estrutura

```text
.
├── script-echo.sh
└── script-barra_de_progresso.sh
```

## Scripts disponíveis

### `script-echo.sh`

Imprime uma mensagem e exibe data/hora atual do sistema.

```bash
bash script-echo.sh
```

Ajuda:

```bash
bash script-echo.sh --help
```

### `script-barra_de_progresso.sh`

Exibe uma barra de progresso simulada no terminal.

```bash
bash script-barra_de_progresso.sh
```

Ajuda:

```bash
bash script-barra_de_progresso.sh --help
```

## Requisitos

- Bash 4+
- Terminal compatível com ANSI (com fallback para ambientes sem suporte completo)

## Boas práticas adotadas

- cabeçalho de metadados nos scripts;
- interface de ajuda (`--help` / `-h`);
- execução portátil para diferentes ambientes de terminal.

## Como contribuir

1. Faça um fork do projeto.
2. Crie uma branch para sua melhoria.
3. Abra um Pull Request com descrição objetiva da alteração.

## Licença

Projeto licenciado em **GPL v3**. Consulte o arquivo [LICENSE](LICENSE).