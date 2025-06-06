.data
a: .asciiz "alpha "
b: .asciiz "bravo "
c: .asciiz "charlie "
d: .asciiz "delta "
e: .asciiz "echo "
f: .asciiz "foxtrot "
g: .asciiz "golf "
h: .asciiz "hotel "
i: .asciiz "india "
j: .asciiz "juliet "
k: .asciiz "kilo "
l: .asciiz "lima "
m: .asciiz "mike "
n: .asciiz "november "
o: .asciiz "oscar "
p: .asciiz "papa "
q: .asciiz "quebec "
r: .asciiz "romeo "
s: .asciiz "sierra "
t: .asciiz "tango "
u: .asciiz "uniform "
v: .asciiz "victor "
w: .asciiz "whisky "
x: .asciiz "x-ray "
y: .asciiz "yankee "
z: .asciiz "zulu "
A: .asciiz "Alpha "
B: .asciiz "Bravo "
C: .asciiz "Charlie "
D: .asciiz "Delta "
E: .asciiz "Echo "
F: .asciiz "Foxtrot "
G: .asciiz "Golf "
H: .asciiz "Hotel "
I: .asciiz "India "
J: .asciiz "Juliet "
K: .asciiz "Kilo "
L: .asciiz "Lima "
M: .asciiz "Mike "
N: .asciiz "November "
O: .asciiz "Oscar "
P: .asciiz "Papa "
Q: .asciiz "Quebec "
R: .asciiz "Romeo "
S: .asciiz "Sierra "
T: .asciiz "Tango "
U: .asciiz "Uniform "
V: .asciiz "Victor "
W: .asciiz "Whisky "
X: .asciiz "X-ray "
Y: .asciiz "Yankee "
Z: .asciiz "Zulu"
num1: .asciiz "First "
num2: .asciiz "Second "
num3: .asciiz "Third "
num4: .asciiz "Fourth "
num5: .asciiz "Fifth "
num6: .asciiz "Sixth "
num7: .asciiz "Seventh "
num8: .asciiz "Eighth "
num9: .asciiz "Nineth "
num0: .asciiz "Zero "

.text
.globl main

main:
    li $v0, 12
    syscall
    beq $v0, '?', stop

    # 这里只保留几个分支作为示例，完整版本见原文
    next_a: bne $v0, 'a', next_b
        li $v0, 4
        la $a0, a
        syscall
        j main
    next_b: bne $v0, 'b', next_c
        li $v0, 4
        la $a0, b
        syscall
        j main
    next_c: bne $v0, 'c', next_d
        li $v0, 4
        la $a0, c
        syscall
        j main
    next_d: bne $v0, 'd', next_e
        li $v0, 4
        la $a0, d
        syscall
        j main
    next_e: bne $v0, 'e', other
        li $v0, 4
        la $a0, e
        syscall
        j main

    other:
        li $v0, 11
        li $a0, '*'
        syscall
        j main

stop:
    li $v0, 10
    syscall