# SambaTu
Uma lista de senhas brasileiras para testes de segurança e análise acadêmica.

O SambaTu é uma lista de senhas, composta por senhas de brasileiros presentes em vazamentos de dados, logs de *infostealers* e outras fontes abertas. Este recurso destina-se a profissionais de segurança e pesquisadores, auxiliando em testes de intrusão, auditorias de segurança e estudos acadêmicos.

*   Lista abrangente de senhas brasileiras comuns.
*   Proveniente de vazamentos de dados reais.
*   Útil para simulações de quebra de senhas.
*   Auxilia na identificação de políticas de senha fracas.

## Instalação

```bash
git clone https://github.com/HideMeBr/SambaTu.git
cd SambaTu
# A lista de senhas estará disponível no diretório principal.
```

## Uso

Você pode usar a lista SambaTu com ferramentas comuns de auditoria de senhas como o John The Ripper ou o Hashcat. Por exemplo, com o `hashcat`:

```bash
hashcat -a 0 -m 1000 arquivo_de_hashes.txt SambaTu/SambaTu.txt
```

## Ordenação automática da lista

Um workflow do GitHub Actions ([.github/workflows/sort-wordlist.yml](.github/workflows/sort-wordlist.yml)) reescreve o `SambaTu.txt` automaticamente sempre que ele é alterado na branch `main` (via commit direto ou merge de PR). O arquivo é normalizado, ordenado e deduplicado (`LC_ALL=C sort -u`), facilitando a indexação e a busca programática por terceiros. O job tem `timeout-minutes` tanto no nível do job quanto na etapa de ordenação, e usa `concurrency` para cancelar execuções antigas, evitando consumir minutos além do necessário no plano gratuito.

### Ordenar manualmente

Se preferir rodar a ordenação localmente em vez de esperar pela Action, use o script correspondente ao seu sistema (pasta [scripts/](scripts/)):

```bash
# Linux
bash scripts/sort-wordlist.sh
```

```powershell
# Windows (PowerShell 5.1 ou 7+)
./scripts/sort-wordlist.ps1
```

Ambos aceitam opcionalmente o caminho de outro arquivo como parâmetro e reproduzem a mesma lógica usada na Action (normaliza quebras de linha, remove linhas em branco, ordena e remove duplicatas).

## Contribuições

Contribuições são bem-vindas para ajudar a expandir e melhorar a lista. Por favor leia o `CONTRIBUTING.md` para saber como ajudar.

License
This project is licensed under the MIT License.


# SambaTu - En
A Brazilian password list for security testing and academic analysis.

SambaTu is a curated password list containing 100% Brazilian passwords extracted from various data breaches, infostealer logs, and other open sources. This resource is intended for security professionals and researchers to aid in penetration testing, security audits and academic research.

*   Comprehensive list of common Brazilian passwords.
*   Derived from real-world data breaches.
*   Useful for password cracking simulations.
*   Aids in identifying weak password policies.

## Installation

```bash
git clone https://github.com/HideMeBr/SambaTu.git
cd SambaTu
# The password list will be available in the main directory
```

## Usage

You can use SambaTu with common password cracking tools like John The Ripper or Hashcat. For example, with `hashcat`:

```bash
hashcat -a 0 -m 1000 your_hash_file SambaTu/senhas.txt
```

## Automatic sorting

A GitHub Actions workflow ([.github/workflows/sort-wordlist.yml](.github/workflows/sort-wordlist.yml)) automatically rewrites `SambaTu.txt` whenever it changes on the `main` branch (direct commit or PR merge). The file is normalized, sorted and deduplicated (`LC_ALL=C sort -u`), making it easier for third-party tools to index and programmatically search. The job sets `timeout-minutes` at both the job and the sorting step level, and uses `concurrency` to cancel stale runs, so it won't burn through the free-tier minutes.

### Sorting manually

If you'd rather sort locally instead of waiting for the Action, use the script for your OS (see the [scripts/](scripts/) folder):

```bash
# Linux
bash scripts/sort-wordlist.sh
```

```powershell
# Windows (PowerShell 5.1 or 7+)
./scripts/sort-wordlist.ps1
```

Both optionally accept another file path as an argument and mirror the same logic used in the Action (normalize line endings, drop blank lines, sort and deduplicate).

## Contributing

Contributions are welcome to help expand and improve the list. Please refer to the `CONTRIBUTING.md` file for guidelines.

License
This project is licensed under the MIT License.
