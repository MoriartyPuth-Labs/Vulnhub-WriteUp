# VulnHub & TryHackMe Writeups

Full writeups with proof-of-concept code, reproduction steps, and tooling notes. Some labs are from AUPP programs.

---

## Challenge Solutions

### VulnHub Writeups
| Challenge Name | Platform / VulnVM | Flag / Solution |
| :--- | :--- | :--- |
| [DC-1](vulnhub/DC1-Lab) | Drupal 7 Exploitation & SUID Privilege Escalation | 5 Flags captured (`/root/thefinalflag.txt`) |
| [N7](vulnhub/N7-Lab) | Blind Time-Based SQLi & Web Exploitation | `FLAG{N7:KSA_01}` |
| [Bulldog 1](vulnhub/Bulldog1-Lab) | Django command injection & Hash cracking | `congrats.txt` (Root shell access) |
| [VulnOS 1](vulnhub/VulnOS1-Lab) | distcc RCE & Webmin File Disclosure | Root flag captured |
| [VulnOS 2](vulnhub/VulnOS2-Lab) | OpenDocMan SQLi & Kernel Privilege Escalation | Root flag via CVE-2015-1328 |
| [Holynix 1](vulnhub/Holynix1-Lab) | SQLi, LFI & tar.gz Binary Replacement Privesc | Root flag captured |
| [Jigsaw 1](vulnhub/Jigsaw1-Lab) | UDP Sniffing, Port Knocking & ret2libc BOF | Root flag + custom exploit.py |
| [StarWars 1](vulnhub/StarWars1-Lab) | Steganography, CeWL Wordlist & Hydra | Root flag via nmap .nse script |
| [Katana](vulnhub/Katana-Lab) | Capability-Based Privesc (cap_setuid) | Root flag + custom privesc.py |
| [Sunset: Sunrise](vulnhub/Sunset-Sunrise-Lab) | Weborf Dir Traversal & Wine Privesc | Root flag via sudo wine |
| [Sunset: Dusk](vulnhub/Sunset-Dusk-Lab) | MySQL INTO OUTFILE & Docker Group Privesc | Root flag captured |
| [Super Mario](vulnhub/SuperMario-Lab) | OverlayFS Kernel Exploit & SSH Brute Force | 2 Flags (kernel 3.13.0) |
| [SkyDog](vulnhub/SkyDog-Lab) | 6-Flag CTF: ExifTool, CeWL, Wireshark & Writable Cron | All 6 MD5 flags cracked |

### TryHackMe Writeups
| Challenge Name | Category / Room | Flag / Solution |
| :--- | :--- | :--- |
| [Pickle Rick](tryhackme/Pickle-Rick-Lab) | Command Injection & Privilege Escalation | Rick's 3 Ingredients (`mr. meeseek hair`, `1 jerry tear`, `fleeb juice`) |

### AUPP Program Coursework
| Challenge Name | Category | Flag / Solution |
| :--- | :--- | :--- |
| [Server Exploitation & Post-Exploitation](aupp/Server-Exploitation-Post-Exploitation-Lab) | Linux Server Exploitation & Forensic Audit | Completed Pentest Report (Samba/vsftpd exploit) |
| [MSFVenom and Trojan Lab](aupp/MSFVenom-and-Trojan-Lab) | Payload Engineering & Defense Evasion | Meterpreter RAT generation & signature evasion |
| [Full Chain SQLi Case Study](aupp/Full-Chain-SQLi-Case-Study) | Web Audit / SQL Injection | SQLi database dump of `users` table |
| [Network Security Reconnaissance](aupp/Network-Security-Reconnaissance-Lab) | Subnet Scanning & Password Profiling | SYN scan discovery, `cupp` profiling, and Hydra SSH brute-force |
| [Linux Data Analysis & Text Processing](aupp/Linux-Data-Analysis-Lab) | Linux CLI / Forensic Text Processing | Regex pattern extraction & log auditing |

---

Each folder contains a self-contained README.md writeup plus a runnable solver script or walkthrough.

```
tryhackme/
└── Pickle-Rick-Lab/
    └── README.md

vulnhub/
├── DC1-Lab/
│   └── README.md
├── N7-Lab/
│   └── README.md
├── Bulldog1-Lab/
│   └── README.md
├── VulnOS1-Lab/
│   └── README.md
├── VulnOS2-Lab/
│   └── README.md
├── Holynix1-Lab/
│   └── README.md
├── Jigsaw1-Lab/
│   └── README.md
├── StarWars1-Lab/
│   └── README.md
├── Katana-Lab/
│   └── README.md
├── Sunset-Sunrise-Lab/
│   └── README.md
├── Sunset-Dusk-Lab/
│   └── README.md
├── SuperMario-Lab/
│   └── README.md
└── SkyDog-Lab/
    └── README.md

aupp/
├── Server-Exploitation-Post-Exploitation-Lab/
│   ├── README.md
│   └── Midterm_Pentest_Report.pdf
├── MSFVenom-and-Trojan-Lab/
│   ├── README.md
│   └── MSFVenom_Payload_Lab.pdf
├── Full-Chain-SQLi-Case-Study/
│   └── README.md
├── Network-Security-Reconnaissance-Lab/
│   ├── README.md
│   └── Final exam network.pdf
└── Linux-Data-Analysis-Lab/
    ├── README.md
    ├── docs/
    └── scripts/
```

---

## Tooling used
- Network Scanning & Discovery: `nmap`, `arp-scan`, `netdiscover`, `DirBuster`, `FFUF`, `dirb`
- Exploitation & Payloads: `Metasploit`, `MSFVenom`, `sqlmap`, `Hydra`, `msfpc`
- Password Cracking & Profiling: `john`, `cupp`, `fcrackzip`, `hashcat`
- Steganography & Forensics: `steghide`, `ExifTool`, `Wireshark`, `stegcrack`
- Post-Exploitation Forensics: Custom frameworks `bubble-scanner` and `bubble-siphon`
- Custom Exploits: `exploit.py` (ret2libc BOF), `privesc.py` (cap_setuid abuse)
- Wordlist Generation: `CeWL`, `John the Ripper` (rule-based generation)
- Platform: Kali Linux, Oracle VirtualBox VM, Linux Target Servers

---

<div align="center">

## 👤 Author

**MoriartyPuth** — Offensive Security

![GitHub](https://img.shields.io/badge/GitHub-MoriartyPuth-181717?logo=github)

</div>

> ⚠️ **Disclaimer.** _This document is a writeup produced from ctf challenges
> All challenge details pertain strictly to intentionally vulnerable, isolated competition infrastructure
> documentation-reserved placeholders. It contains no client data, no live targets and no
> novel exploit code. Techniques shown are standard, publicly documented, and provided for
> educational and defensive purposes only. Do not test any system you do not own or lack
> explicit written authorisation to assess._
