# SambaTu
A Brazilian password list for security testing.

SambaTu is a curated password list containing 100% Brazilian passwords extracted from various data breaches, infostealer logs, and other sources. This resource is intended for security professionals and researchers to aid in penetration testing and security audits.

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
