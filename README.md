# 32x8 RAM in VHDL

RAM (Random Access Memory) is a type of memory used by computers to read, write, and store data. From small systems like embedded devices and smartphones to large systems like desktops and laptops, RAM is present in all of these. Performance of a system is significantly influenced by the RAM it uses. It is in charge of performing numerous operations and storing data.

## Schematic Diagram
<p >
  <div align="center" >
 <img src="https://github.com/Kanishk-K-U/32x8-RAM/blob/main/RAM-Schematic.png">
    </div>
</p>

## Implementation of32x8 RAM

The typical way to describe memory is M x N, where M is the quantity of addresses and N is the quantity of data lines. In this case, 32 x 8 means that "32" stands for ___32 bits of address lines___, and "8" stands for ___8 bits of data lines___. A **32 x 8 RAM**, to put it simply, has 32 locations, and each of those 32 locations can store 8-bit data. Consequently, a 32 x 8 RAM may store up to ___256 bits___ in total. RAM, it has a data line, an address line, a write signal, a clock signal, and a data out port. Depending on the M x N parameters, the address line size/bits varies. Let's look at how to compute the address line bit size (A).

#### _Address Line bits/size (A): 2**A=M._ ####

So it is _2A=32 (M=32), where A=5._

<sub>A - Address Line</sub> <sub>M  - Number of Locations</sub>

RAM has a clock signal because it is a sequential circuit. A clock signal is present in all sequential circuits. In addition, the write signal is responsible for burning the data into the RAM. Only when both the clock and the write signal are "1" is data stored in RAM.

_The following occurrences will occur in relation to the write and clock signals._

Clock  | Write Signal | Event
------------- | ------------- | -------------
0  | 0  | No data stored
0  | 1  | No data stored
1  | 0  | No data stored
1  | 1  | Data stored 

## Output waveform
![](https://github.com/Kanishk-K-U/32x8-RAM/blob/main/RAM-Simulation-Waveform.png)
