"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009008; bytecode file offset 0x908be4"
!SGPerformerClassName methodsFor: 'recovered'!
asCebraString
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017be8; bytecode file offset 0x92209c"
!SGPerformerClassName methodsFor: 'recovered'!
asCebraFormat
    ^'C'
! !

"ASDBase.ic method 0x200366c4; bytecode file offset 0x934580"
!SGPerformerClassName methodsFor: 'recovered'!
asCebraLength
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) name.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200376b4; bytecode file offset 0x934580"
!SGPerformerClassName methodsFor: 'recovered'!
asCebraSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) name.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006644c; bytecode file offset 0x963428"
!SGPerformerClassName methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008c190; bytecode file offset 0x988b68"
!SGPerformerClassName methodsFor: 'recovered'!
asString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) name.
    recoveredValue1 := ('<class> ') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200be64c; bytecode file offset 0x9bb178"
!SGPerformerClassName methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d898c; bytecode file offset 0x9d5268"
!SGPerformerClassName methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) name.
    recoveredValue2 := ('<class> ') , (recoveredValue1).
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

