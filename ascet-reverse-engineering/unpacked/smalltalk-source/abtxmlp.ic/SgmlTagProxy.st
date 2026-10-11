"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x200000e8; bytecode file offset 0x18938"
!SgmlTagProxy methodsFor: 'recovered'!
explicitStartTag: recoveredArg1
    ^self
! !

"abtxmlp.ic method 0x20000150; bytecode file offset 0x18938"
!SgmlTagProxy methodsFor: 'recovered'!
explicitEndTag: recoveredArg1
    ^self
! !

"abtxmlp.ic method 0x200006b4; bytecode file offset 0x18fa4"
!SgmlTagProxy methodsFor: 'recovered'!
privateAttributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) realTag.
    recoveredValue1 := (recoveredValue0) attributes.
    ^recoveredValue1
! !

"abtxmlp.ic method 0x200006e4; bytecode file offset 0x18fa4"
!SgmlTagProxy methodsFor: 'recovered'!
contents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) realTag.
    recoveredValue1 := (recoveredValue0) contents.
    ^recoveredValue1
! !

"abtxmlp.ic method 0x20000c94; bytecode file offset 0x1948c"
!SgmlTagProxy methodsFor: 'recovered'!
free
    (self) basicContents: (nil).
    ^self
! !

"abtxmlp.ic method 0x20001068; bytecode file offset 0x19878"
!SgmlTagProxy methodsFor: 'recovered'!
resolveBlock
    | recoveredValue0 |
    recoveredValue0 := resolveBlock.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x2000125c; bytecode file offset 0x19a94"
!SgmlTagProxy methodsFor: 'recovered'!
explicitStartTag
    ^true
! !

"abtxmlp.ic method 0x20001294; bytecode file offset 0x19a94"
!SgmlTagProxy methodsFor: 'recovered'!
explicitEndTag
    ^true
! !

"abtxmlp.ic method 0x20001aac; bytecode file offset 0x1a2ec"
!SgmlTagProxy methodsFor: 'recovered'!
contents: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) realTag.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) contents: (recoveredValue1).
    ^self
! !

"abtxmlp.ic method 0x20001adc; bytecode file offset 0x1a2ec"
!SgmlTagProxy methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) realTag.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) attributes: (recoveredValue1).
    ^self
! !

"abtxmlp.ic method 0x20002768; bytecode file offset 0x1af78"
!SgmlTagProxy methodsFor: 'recovered'!
resolveBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    resolveBlock := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20007d3c; bytecode file offset 0x2055c"
!SgmlTagProxy methodsFor: 'recovered'!
realTag
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicContents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolveBlock.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) parent.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) parent: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) explicitStartTag: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) explicitEndTag: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) basicContents: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) declaration.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) declaration.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := SgmlSyntaxError.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'WrongDeclaration'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'Proxy resolve block returned a %1 tag where a %2 tag was expected'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) declaration.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) declaration.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) code: (recoveredStack1) text: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalException.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

