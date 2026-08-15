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

## Contributing

Contributions are welcome to help expand and improve the list. Please refer to the `CONTRIBUTING.md` file for guidelines.

License
This project is licensed under the MIT License.
