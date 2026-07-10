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
└── Bulldog1-Lab/
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
- Network Scanning & Discovery: `nmap`, `arp-scan`, `netdiscover`, `DirBuster`, `FFUF`
- Exploitation & Payloads: `Metasploit`, `MSFVenom`, `sqlmap`, `Hydra`
- Password Cracking & Profiling: `john`, `cupp`
- Post-Exploitation Forensics: Custom frameworks `bubble-scanner` and `bubble-siphon`
- Platform: Kali Linux, Oracle VirtualBox VM, Linux Target Servers

---

## Lessons / takeaways
- **Server Exploitation & Post-Exploitation** — Explored network automation scripting to scan `/24` subnets, fingerprint vulnerability exposures (Samba/vsftpd), and draft corporate-grade audit reports.
- **MSFVenom and Trojan Lab** — Configured bind/reverse TCP stagers, analyzed payload options, and forged file metadata to mask meterpreter binaries as legitimate tools to evade detection.
- **Full Chain SQLi** — Utilized `bubble-scanner` for automated endpoint discovery and `sqlmap` to exploit SQLi vulnerability on Nginx servers, dumping plaintext user tables.
- **Pickle Rick** — Combined command injection with basic shell redirection to gain initial access, followed by abusing sudo configuration gaps to elevate privileges to root.
- **Network Reconnaissance** — Conducted stealth SYN scans, mapped local subnets via ARP, and profiled passwords dynamically using custom list generators (`cupp`) for automated SSH brute-forcing.
- **DC-1** — Exploited Drupalgeddon2 (CVE-2018-7600) via Metasploit, reset database admin accounts, and escalated privilege to root using SUID permissions on the `find` binary.
- **N7** — Discovered hidden paths using endpoint brute-force and exploited time-based blind SQL injection with `sqlmap` to exfiltrate time-delayed flag responses.
- **Bulldog 1** — Extracted leaked SHA-1 password hashes from browser source files, cracked them, bypassed Django WebShell command sanitizers using pipeline commands, and extracted a root password from binary string inspection.
- **Linux Data Analysis** — Authored Bash text-processing pipelines using `grep`, `sed`, and `awk` with complex regex patterns to audit passwords and parse data files forensically.

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
