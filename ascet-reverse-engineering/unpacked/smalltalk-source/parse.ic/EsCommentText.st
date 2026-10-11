"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x200000c8; bytecode file offset 0x15744"
!EsCommentText methodsFor: 'recovered'!
comment
    | recoveredValue0 |
    recoveredValue0 := (self) errorCannotHaveComments.
    ^recoveredValue0
! !

"parse.ic method 0x20000118; bytecode file offset 0x15788"
!EsCommentText methodsFor: 'recovered'!
comment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) errorCannotHaveComments.
    ^recoveredValue0
! !

"parse.ic method 0x20000374; bytecode file offset 0x159cc"
!EsCommentText methodsFor: 'recovered'!
length
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := comment.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"parse.ic method 0x200017d0; bytecode file offset 0x16e24"
!EsCommentText methodsFor: 'recovered'!
text: recoveredArg1 atEnd: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    comment := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    atEndOfLine := recoveredValue1.
    ^self
! !

"parse.ic method 0x200019b4; bytecode file offset 0x17030"
!EsCommentText methodsFor: 'recovered'!
text: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    comment := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001a8c; bytecode file offset 0x170f0"
!EsCommentText methodsFor: 'recovered'!
atEnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    atEndOfLine := recoveredValue0.
    ^self
! !

"parse.ic method 0x200037e8; bytecode file offset 0x18e44"
!EsCommentText methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPut: ($").
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := comment.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    (recoveredValue0) nextPut: ($").
    ^self
! !

