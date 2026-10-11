"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200074f0; bytecode file offset 0x908be4"
!SGANSICType methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006690c; bytecode file offset 0x963428"
!SGANSICType methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200763a4; bytecode file offset 0x9757c8"
!SGANSICType methodsFor: 'recovered'!
isSGANSICType
    ^true
! !

"ASDBase.ic method 0x200888e0; bytecode file offset 0x985628"
!SGANSICType methodsFor: 'recovered'!
createDataElement
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBANSICType.
    recoveredValue1 := (self) name.
    recoveredValue2 := (recoveredValue0) createDefault: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200be6fc; bytecode file offset 0x9bb178"
!SGANSICType methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fa794; bytecode file offset 0x9f7070"
!SGANSICType methodsFor: 'recovered'!
initialize
    super initialize.
    (self) name: ('ANSIC').
    ^self
! !

"ASDBase.ic method 0x20132a34; bytecode file offset 0xa2f308"
!SGANSICType methodsFor: 'recovered'!
conformsWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGANSICType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

