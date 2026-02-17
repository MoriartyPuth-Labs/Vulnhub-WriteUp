# Cyberium Arena: Linux Data Analysis (Module 1, Part II)

## 📌 Project Overview
This project contains the solutions and technical methodologies for the Cyberium Arena Module 1 Lab (Part II). The primary focus is on utilizing Linux command-line utilities (`grep`, `awk`, `sed`, `wc`, and `sort`) to perform data extraction and text processing on large datasets.

## 🛠 Tech Stack
* **Environment:** Linux / Unix Terminal
* **Utilities:** Grep (Regex), Sed (Stream Editor), Awk, Wc (Word Count), Sort, Uniq

## 📂 Data Sources
The analysis is performed on the following datasets:
1. [cite_start]**Passwords List:** `passwords.lst` - A dataset containing passwords and associated emails[cite: 19, 31].
2. [cite_start]**General Text File:** `file.txt` - A large text file used for word analysis and character manipulation[cite: 51, 53].

## 🚀 Lab Questions & Methodologies

### Part 1: Analysis of `passwords.lst`
| ID | Task | Command / Methodology |
|:---|:---|:---|
| 1 | [cite_start]Total line count [cite: 19] | `wc -l passwords.lst` |
| 2 | [cite_start]Lines containing 'gmail' [cite: 21] | `grep "gmail" passwords.lst \| wc -l` |
| 3 | [cite_start]Most common password [cite: 23] | `awk '{print $1}' passwords.lst \| sort \| uniq -c \| sort -nr \| head -1` |
| 4 | [cite_start]Domain repeating 99 times [cite: 25] | `awk -F"@" '{print $2}' passwords.lst \| sort \| uniq -c \| grep "99"` |
| 7 | [cite_start]Passwords containing '@' [cite: 31] | `awk '{print $1}' passwords.lst \| grep "@" \| wc -l` |
| 11 | [cite_start]Line of first password with '.' [cite: 49] | `grep -n "^\S*\." passwords.lst \| head -1` |

### Part 2: Analysis of `file.txt`
| ID | Task | Command / Methodology |
|:---|:---|:---|
| 12 | [cite_start]Total lines in `file.txt` [cite: 51] | `wc -l file.txt` |
| 14 | [cite_start]Case-insensitive 'secret' count [cite: 55] | `grep -i "secret" file.txt \| wc -l` |
| 15 | [cite_start]Replace 'e' with 'x' & count 'xx' [cite: 57, 58] | `sed 's/e/x/g' file.txt > new_file.txt && grep "xx" new_file.txt \| wc -l` |
| 16 | [cite_start]Character count of line 97 [cite: 60] | `sed -n '97p' file.txt \| wc -m` |
| 18 | [cite_start]Count remaining non-blank lines [cite: 64] | `grep -v "^$" file.txt \| wc -l` |
| 19 | [cite_start]Global search for specific string [cite: 66] | `grep -iRn 'Darrenvandervaate' ~` |

## 🧠 Key Concepts Covered
* [cite_start]**Regular Expressions:** Using `^`, `$`, `\S`, and character classes `[]` for pattern matching[cite: 36, 37, 42, 45].
* [cite_start]**Columnar Filtering:** Using `awk` to separate passwords from email addresses[cite: 31].
* [cite_start]**System Forensics:** Recursive searching through directories using `grep -iRn`[cite: 66].

## 📝 How to Use
1. Clone the repository.
2. [cite_start]Download the required files from Cyberium Arena[cite: 19, 51].
3. Run the provided script in the `/scripts` folder to verify the results.
