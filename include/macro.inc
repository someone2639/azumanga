# Assembly Macros

.macro glabel label
    .global \label
    \label:
.endm
.macro dlabel label
    .global \label
    \label:
.endm
.macro jlabel label
    .global \label
    .balign 2
    \label:
.endm

.macro move a, b
    addu \a, \b, $zero
.endm

.include "gte.inc"
