"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x200005bc; bytecode file offset 0x18dd8"
!SgmlSupport class methodsFor: 'recovered'!
packagerKnownSymbols
    | recoveredValue0 |
    recoveredValue0 := (Notification new: 8) instVarAt: 1 put: ('AttributeNotDeclared'); instVarAt: 2 put: ('AttriubteIsFixed'); instVarAt: 3 put: ('BLOCKS'); instVarAt: 4 put: ('CURRENT'); instVarAt: 5 put: ('EndTagRequired'); instVarAt: 6 put: ('EndTagWithoutStartTag'); instVarAt: 7 put: ('FIXED'); instVarAt: 8 put: ('IdAlreadyUsed'); at: 1 put: ('Inadmissible'); at: 2 put: ('InvalidRoot'); at: 3 put: ('LEAF'); at: 4 put: ('MissingMinimizationFlag'); at: 5 put: ('TagNotAllowed'); at: 6 put: ('TagRequired'); at: 7 put: ('UnknownParameterEntity'); at: 8 put: ('WrongDeclaration'); yourself.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x200008f0; bytecode file offset 0x19160"
!SgmlSupport class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"abtxmlp.ic method 0x200011a8; bytecode file offset 0x199b8"
!SgmlSupport class methodsFor: 'recovered'!
dtd
    ^nil
! !

"abtxmlp.ic method 0x200015ec; bytecode file offset 0x19ddc"
!SgmlSupport class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := SgmlEntitySet.
    (recoveredValue0) deregisterEntitySetsOwnedBy: (self).
    ^self
! !

"abtxmlp.ic method 0x20004544; bytecode file offset 0x1cd44"
!SgmlSupport class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1FVVFG1'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRunningImage.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'SgmlConstants'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) includeGlobalVariable: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtxmlp.ic method 0x2000629c; bytecode file offset 0x1eab0"
!SgmlSupport class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SgmlDTD.
    (recoveredValue0) initialize.
    recoveredValue1 := SgmlEntitySet.
    (recoveredValue1) initialize.
    recoveredValue2 := SgmlParser.
    (recoveredValue2) initialize.
    recoveredValue3 := SgmlEntitySet.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) deregisterEntitySetsOwnedBy: (self).
    recoveredValue5 := SgmlEntitySet.
    recoveredValue6 := Warning.
    recoveredValue7 := (recoveredValue6) at: ('SgmlConstants').
    recoveredValue8 := (recoveredValue5) fromPoolDictionary: (recoveredValue7) name: ('SGML') owner: (self).
    (recoveredValue3) registerEntitySet: (recoveredValue8).
    ^self
! !

