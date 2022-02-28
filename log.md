## Setup

```sh
TESTDIR=${LAB2ROOT}/lab/directed
cd ${TESTDIR}
SIMDIR=${LAB2ROOT}/sims/verilator
cd ${SIMDIR}
make CONFIG=CS152RocketConfig -j4
```

## Naive Transpose
```
            cycles : 1350476
           instret : 83261
             loads : 16384
            stores : 16407
           I$ miss : 4
   D$ regular miss : 18661
  D$ prefetch miss : 0
        D$ release : 25844
         ITLB miss : 0
         DTLB miss : 0
       L2 TLB miss : 0
          branches : 16640
       mispredicts : 521
load-use interlock : 0
        I$ blocked : 126
        D$ blocked : 909190
```

## Cache Blocked Transpose
```
            cycles : 527174
           instret : 97453
             loads : 16391
            stores : 16414
           I$ miss : 6
   D$ regular miss : 6958
  D$ prefetch miss : 0
        D$ release : 8223
         ITLB miss : 0
         DTLB miss : 0
       L2 TLB miss : 0
          branches : 21024
       mispredicts : 5786
load-use interlock : 6013
        I$ blocked : 206
        D$ blocked : 293762
```

## 2-way Set Associative Cache Blocked Transpose
```
           cycles : 567265
           instret : 97453
             loads : 16391
            stores : 16414
           I$ miss : 6
   D$ regular miss : 8051
  D$ prefetch miss : 0
        D$ release : 8499
         ITLB miss : 0
         DTLB miss : 0
       L2 TLB miss : 0
          branches : 21024
       mispredicts : 5852
load-use interlock : 6324
        I$ blocked : 210
        D$ blocked : 330024
```

## 4-way Set Associative Cache Blocked Transpose
```
            cycles : 608780
           instret : 97453
             loads : 16391
            stores : 16414
           I$ miss : 6
   D$ regular miss : 9202
  D$ prefetch miss : 0
        D$ release : 8739
         ITLB miss : 0
         DTLB miss : 0
       L2 TLB miss : 0
          branches : 21024
       mispredicts : 5846
load-use interlock : 8036
        I$ blocked : 208
        D$ blocked : 367880
```

## 8-way Set Associative Cache Blocked Transpose
```
            cycles : 654365
           instret : 97453
             loads : 16391
            stores : 16414
           I$ miss : 6
   D$ regular miss : 10406
  D$ prefetch miss : 0
        D$ release : 9037
         ITLB miss : 0
         DTLB miss : 0
       L2 TLB miss : 0
          branches : 21024
       mispredicts : 6087
load-use interlock : 10627
        I$ blocked : 206
        D$ blocked : 408643
```