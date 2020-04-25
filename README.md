# sort command line utility

```bash
sort [OPTION] [FILE]
```

options:
* `-f, --ignore-case` - fold lower case to upper case characters
* `-n, --numeric-sort` - compare according to string numerical value

### Example
```bash
$ cat e.txt
784
1298
 -9
  

$ ./sort e.txt
  
1298
784
 -9

$ ./sort -n e.txt
 -9
  
784
1298
