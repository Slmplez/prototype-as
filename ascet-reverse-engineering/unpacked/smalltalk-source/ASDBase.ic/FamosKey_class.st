"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001416c; bytecode file offset 0x912098"
!FamosKey class methodsFor: 'recovered'!
keyTable
    | recoveredValue0 |
    recoveredValue0 := KeyTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014c1c; bytecode file offset 0x912098"
!FamosKey class methodsFor: 'recovered'!
WriteBinary
    | recoveredValue0 |
    recoveredValue0 := WriteBinary.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cc28; bytecode file offset 0x92209c"
!FamosKey class methodsFor: 'recovered'!
members
    ^#('version' 'keyLength' 'subKeys' 'userDefineds')
! !

"ASDBase.ic method 0x2002525c; bytecode file offset 0x92209c"
!FamosKey class methodsFor: 'recovered'!
nextKeySection
    ^#()
! !

"ASDBase.ic method 0x200541b8; bytecode file offset 0x951190"
!FamosKey class methodsFor: 'recovered'!
WriteBinary: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    WriteBinary := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20054374; bytecode file offset 0x951190"
!FamosKey class methodsFor: 'recovered'!
keyTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    KeyTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20074140; bytecode file offset 0x970b34"
!FamosKey class methodsFor: 'recovered'!
keyWord
    ^nil
! !

"ASDBase.ic method 0x20159a04; bytecode file offset 0xa562d0"
!FamosKey class methodsFor: 'recovered'!
create
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) currentVersion.
    (recoveredValue3) version: (recoveredValue5).
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    (recoveredValue2) subKeys: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x202fa2b8; bytecode file offset 0xbf6b90"
!FamosKey class methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    (self) initializeKeyTable.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) startChar.
    (recoveredValue0) skipTo: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) separatorChar.
    recoveredValue4 := (recoveredValue2) upTo: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := KeyTable.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := (recoveredBlock28Value0) create.
    recoveredBlock28Value2 := recoveredArg1.
    recoveredBlock28Value3 := (recoveredBlock28Value1) getFrom: (recoveredBlock28Value2).
    recoveredBlock28Value4 := recoveredBlock28Value3.
    recoveredLocal1 := recoveredBlock28Value4.
    recoveredBlock28Value3
].
    (recoveredValue5) at: (recoveredValue6) ifPresent: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2031aed4; bytecode file offset 0xc177b8"
!FamosKey class methodsFor: 'recovered'!
initializeKeyTable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            KeyTable := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280eb4acArg1 | 
    | block280eb4acLocal1 block280eb4acStack0 block280eb4acStack1 block280eb4acStack2 block280eb4acStack3 block280eb4acStack4 block280eb4acPC block280eb4acStep block280eb4acDone block280eb4acResult |
    block280eb4acStack0 := self.
    block280eb4acPC := 4.
    block280eb4acDone := false.
    [block280eb4acDone not] whileTrue: [
        block280eb4acStep := block280eb4acPC.
        block280eb4acStep = 4 ifTrue: [
            block280eb4acStack1 := nil.
            block280eb4acPC := 5.
        ].
        block280eb4acStep = 5 ifTrue: [
            block280eb4acStack2 := block280eb4acArg1.
            block280eb4acPC := 6.
        ].
        block280eb4acStep = 6 ifTrue: [
            block280eb4acStack2 := (block280eb4acStack2) keyWord.
            block280eb4acPC := 8.
        ].
        block280eb4acStep = 8 ifTrue: [
            block280eb4acStack3 := block280eb4acStack2.
            block280eb4acPC := 9.
        ].
        block280eb4acStep = 9 ifTrue: [
            block280eb4acLocal1 := block280eb4acStack3.
            block280eb4acPC := 10.
        ].
        block280eb4acStep = 10 ifTrue: [
            (block280eb4acStack2 == nil) ifTrue: [block280eb4acPC := 40] ifFalse: [block280eb4acPC := 14].
        ].
        block280eb4acStep = 14 ifTrue: [
            block280eb4acPC := 15.
        ].
        block280eb4acStep = 15 ifTrue: [
            block280eb4acStack1 := KeyTable.
            block280eb4acPC := 17.
        ].
        block280eb4acStep = 17 ifTrue: [
            block280eb4acStack2 := block280eb4acLocal1.
            block280eb4acPC := 18.
        ].
        block280eb4acStep = 18 ifTrue: [
            block280eb4acStack1 := (block280eb4acStack1) includesKey: (block280eb4acStack2).
            block280eb4acPC := 20.
        ].
        block280eb4acStep = 20 ifTrue: [
            (block280eb4acStack1) ifTrue: [block280eb4acPC := 24] ifFalse: [block280eb4acPC := 34].
        ].
        block280eb4acStep = 24 ifTrue: [
            block280eb4acStack1 := ETASError.
            block280eb4acPC := 26.
        ].
        block280eb4acStep = 26 ifTrue: [
            block280eb4acStack2 := 'keyWord already present'.
            block280eb4acPC := 28.
        ].
        block280eb4acStep = 28 ifTrue: [
            block280eb4acStack1 := (block280eb4acStack1) create: (block280eb4acStack2).
            block280eb4acPC := 30.
        ].
        block280eb4acStep = 30 ifTrue: [
            block280eb4acPC := 40.
        ].
        block280eb4acStep = 34 ifTrue: [
            block280eb4acStack1 := KeyTable.
            block280eb4acPC := 36.
        ].
        block280eb4acStep = 36 ifTrue: [
            block280eb4acStack2 := block280eb4acLocal1.
            block280eb4acPC := 37.
        ].
        block280eb4acStep = 37 ifTrue: [
            block280eb4acStack3 := block280eb4acArg1.
            block280eb4acPC := 38.
        ].
        block280eb4acStep = 38 ifTrue: [
            block280eb4acStack1 := (block280eb4acStack1) at: (block280eb4acStack2) put: (block280eb4acStack3).
            block280eb4acPC := 40.
        ].
        block280eb4acStep = 40 ifTrue: [
            block280eb4acResult := block280eb4acStack1.
            block280eb4acDone := true.
        ].
    ].
    block280eb4acResult
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := KeyTable.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

