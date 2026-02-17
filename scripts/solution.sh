# --- Download the file ---
wget https://cyberiumarena.com/lab/nx201/passwords.lst
wget https://cyberiumarena.com/lab/nx201/file.txt
# --- Phase 1: passwords.lst ---

# Task 1
cat passwords.lst | wc -l

# Task 2
cat passwords.lst | grep "gmail" | wc -l

# Task 3
cat passwords.lst | awk '{print $1}' | sort | uniq -c | sort -n | tail -1

# Task 4
cat passwords.lst | awk '{print $2}' | awk -F "@" '{print $2}' | sort | uniq -c | sort -n

# Task 5
cat passwords.lst | grep "@" | wc -l

# Task 6
cat passwords.lst | grep - v "@" | wc -l

# Task 7
cat passwords.lst | awk '{print $1}' | grep "@" | wc -l

# Task 8
cat passwords.lst | awk '{print $1}' | grep "\!" | wc -l

# Task 9
cat passwords.lst | awk '{print $1}' | grep "\." | wc -l

# Task 10
cat passwords.lst | awk '{print $2}' | grep "2" | wc -l

# Task 11
cat passwords.lst | awk '{print $1}' | grep "\." 

# --- Phase 2: file.txt ---

# Task 12
cat file.txt | wc -l

# Task 13
cat file.txt | wc -w

# Task 14
cat file.txt | grep -l "secret" | wc -l

# Task 15
cat replace.txt | grep "xx" | wc -l

# Task 16
cat file.txt | awk "NR==97" | wc -m
cat file.txt | awk "NR==97" 

# Task 17
cat file.txt | awk "NR==111" 

# Task 18
cat file.txt | grep -v '\s*$' | wc -l

# Task 19
grep -iRn 'Darrenvandervaate' *;

# Task 20
cat file.txt | grep -wo "human" | wc -l
