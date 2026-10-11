"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066944; bytecode file offset 0x963428"
!ASDEHooksVariable methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066c04; bytecode file offset 0x9646f8"
!ASDEHooksVariable methodsFor: 'recovered'!
measurementName
    | recoveredValue0 |
    recoveredValue0 := measurementName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068e74; bytecode file offset 0x965b90"
!ASDEHooksVariable methodsFor: 'recovered'!
arrayIndex
    | recoveredValue0 |
    recoveredValue0 := arrayIndex.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a268; bytecode file offset 0x966bdc"
!ASDEHooksVariable methodsFor: 'recovered'!
conversion
    | recoveredValue0 |
    recoveredValue0 := conversion.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a82c; bytecode file offset 0x967a18"
!ASDEHooksVariable methodsFor: 'recovered'!
ecuBackupCopy
    | recoveredValue0 |
    recoveredValue0 := ecuBackupCopy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007592c; bytecode file offset 0x9757c8"
!ASDEHooksVariable methodsFor: 'recovered'!
isHookVariableNode
    ^true
! !

"ASDBase.ic method 0x200be714; bytecode file offset 0x9bb178"
!ASDEHooksVariable methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200be9f0; bytecode file offset 0x9bc0b4"
!ASDEHooksVariable methodsFor: 'recovered'!
measurementName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    measurementName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfe9c; bytecode file offset 0x9bd228"
!ASDEHooksVariable methodsFor: 'recovered'!
arrayIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    arrayIndex := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0e00; bytecode file offset 0x9bdf14"
!ASDEHooksVariable methodsFor: 'recovered'!
conversion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    conversion := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c21ac; bytecode file offset 0x9beac8"
!ASDEHooksVariable methodsFor: 'recovered'!
ecuBackupCopy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ecuBackupCopy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201301cc; bytecode file offset 0xa2ca98"
!ASDEHooksVariable methodsFor: 'recovered'!
isECUBackupCopy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ecuBackupCopy.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    ^recoveredBlock5Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x20131fd0; bytecode file offset 0xa2e8b4"
!ASDEHooksVariable methodsFor: 'recovered'!
writeXMLforOutputVar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) outputVarTag.
    (recoveredValue0) openComplex: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) writeXML: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) closeComplex.
    ^self
! !

"ASDBase.ic method 0x20131fec; bytecode file offset 0xa2e8b4"
!ASDEHooksVariable methodsFor: 'recovered'!
writeXMLforInputVar: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) inputVarTag.
    (recoveredValue0) openComplex: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) writeXML: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) closeComplex.
    ^self
! !

"ASDBase.ic method 0x201e4d40; bytecode file offset 0xae1610"
!ASDEHooksVariable methodsFor: 'recovered'!
initialize
    super initialize.
    (self) name: ('').
    (self) measurementName: ('').
    (self) arrayIndex: (-1).
    (self) ecuBackupCopy: (false).
    ^self
! !

"ASDBase.ic method 0x202978c8; bytecode file offset 0xb941b0"
!ASDEHooksVariable methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) name.
    (recoveredValue0) attr: ('name') string: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) measurementName.
    (recoveredValue2) attr: ('measurementName') string: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) arrayIndex.
    (recoveredValue4) attr: ('arrayIndex') int: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) conversion.
    (recoveredValue6) attr: ('conversion') boolean: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (self) ecuBackupCopy.
    (recoveredValue8) attr: ('backupCopy') boolean: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x202e137c; bytecode file offset 0xbddc54"
!ASDEHooksVariable methodsFor: 'recovered'!
asCSVprintLine
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := ','.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) measurementName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := ','.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) arrayIndex.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) arrayIndex.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := ','.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) conversion.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := ','.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) ecuBackupCopy.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f30e4; bytecode file offset 0xcef9d4"
!ASDEHooksVariable methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) nextPutAll: ('name: ').
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) name.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) cr.
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) nextPutAll: ('measurementName: ').
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) measurementName.
    recoveredValue10 := (recoveredValue9) asString.
    (recoveredValue8) nextPutAll: (recoveredValue10).
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) cr.
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) nextPutAll: ('arrayIndex: ').
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := (self) arrayIndex.
    recoveredValue15 := (recoveredValue14) asString.
    (recoveredValue13) nextPutAll: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    (recoveredValue16) cr.
    recoveredValue17 := recoveredValue1.
    (recoveredValue17) nextPutAll: ('conversion: ').
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := (self) conversion.
    recoveredValue20 := (recoveredValue19) asString.
    (recoveredValue18) nextPutAll: (recoveredValue20).
    recoveredValue21 := recoveredValue1.
    (recoveredValue21) cr.
    recoveredValue22 := recoveredValue1.
    (recoveredValue22) nextPutAll: ('backup copy: ').
    recoveredValue23 := recoveredValue1.
    recoveredValue24 := (self) ecuBackupCopy.
    recoveredValue25 := (recoveredValue24) asString.
    (recoveredValue23) nextPutAll: (recoveredValue25).
    (recoveredValue1) cr.
    ^self
! !

