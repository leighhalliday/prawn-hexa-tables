# Prawn / Hexa Table Performance Test

To run: `rake pdf:speed`

| Records | Prawn Speed         | Prawn Filesize | Hexa Speed          | Hexa Filesize |
|---------|---------------------|----------------|---------------------|---------------|
| 100     | 0.37063700007274747 | 27kb           | 0.16368599981069565 | 14kb          |
| 1000    | 3.4797479999251664  | 256kb          | 0.5527800000272691  | 130kb         |
| 10000   | 36.72769400011748   | 2.6mb          | 5.337353999959305   | 1.3mb         |
| 100000  | 436.7839490000624   | 25.5mb         | 63.38208199990913   | 12.9mb        |

## Output

```txt
Prawn 100
0.37063700007274747
Hexa 100
0.16368599981069565

Prawn 1000
3.4797479999251664
Hexa 1000
0.5527800000272691

Prawn 10000
36.72769400011748
Hexa 10000
5.337353999959305

Prawn 100000
436.7839490000624
Hexa 100000
63.38208199990913
```

## Other

From Hexa, here is a comparison which shows similar performance results, but it should be noted that Hexa uses 1.4x memory of Prawn: https://gist.github.com/gettalong/8afae547ac3e50e9b8ce6c521a2a0eea
