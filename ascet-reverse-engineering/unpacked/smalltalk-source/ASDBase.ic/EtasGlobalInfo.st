"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015480; bytecode file offset 0x912098"
!EtasGlobalInfo methodsFor: 'recovered'!
dynamicMemory
    | recoveredValue0 |
    recoveredValue0 := DynamicMemory.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019100; bytecode file offset 0x92209c"
!EtasGlobalInfo methodsFor: 'recovered'!
memoryMaxConstant
    ^268435456
! !

"ASDBase.ic method 0x20026a94; bytecode file offset 0x923928"
!EtasGlobalInfo methodsFor: 'recovered'!
sectionName
    ^'MemoryParameter'
! !

"ASDBase.ic method 0x20054284; bytecode file offset 0x951190"
!EtasGlobalInfo methodsFor: 'recovered'!
dynamicMemory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DynamicMemory := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005bd64; bytecode file offset 0x958ab0"
!EtasGlobalInfo methodsFor: 'recovered'!
scavenge
    | recoveredValue0 |
    recoveredValue0 := System.
    (recoveredValue0) scavenge.
    ^self
! !

"ASDBase.ic method 0x2005c124; bytecode file offset 0x958ab0"
!EtasGlobalInfo methodsFor: 'recovered'!
globalGarbageCollect
    | recoveredValue0 |
    recoveredValue0 := System.
    (recoveredValue0) globalGarbageCollect.
    ^self
! !

"ASDBase.ic method 0x2008dae0; bytecode file offset 0x98a398"
!EtasGlobalInfo methodsFor: 'recovered'!
codeCacheSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (128).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e2a8; bytecode file offset 0x98ab6c"
!EtasGlobalInfo methodsFor: 'recovered'!
newSpaceSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (100).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e2fc; bytecode file offset 0x98abb4"
!EtasGlobalInfo methodsFor: 'recovered'!
fixedSpaceSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (104).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e344; bytecode file offset 0x98ac08"
!EtasGlobalInfo methodsFor: 'recovered'!
oldSpaceSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (108).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e398; bytecode file offset 0x98ac5c"
!EtasGlobalInfo methodsFor: 'recovered'!
allocationIncrement
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (112).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e3ec; bytecode file offset 0x98acbc"
!EtasGlobalInfo methodsFor: 'recovered'!
lowMinimum
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (116).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e41c; bytecode file offset 0x98acd4"
!EtasGlobalInfo methodsFor: 'recovered'!
memoryMax
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (120).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008e44c; bytecode file offset 0x98ad04"
!EtasGlobalInfo methodsFor: 'recovered'!
allowMergedSpaces
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (124).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ba5b4; bytecode file offset 0x9b6e6c"
!EtasGlobalInfo methodsFor: 'recovered'!
codeCacheSize: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (128) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ba62c; bytecode file offset 0x9b6ee4"
!EtasGlobalInfo methodsFor: 'recovered'!
allocationIncrement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (112) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ba65c; bytecode file offset 0x9b6f14"
!EtasGlobalInfo methodsFor: 'recovered'!
allowMergedSpaces: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (124) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d8098; bytecode file offset 0x9d4950"
!EtasGlobalInfo methodsFor: 'recovered'!
newSpaceSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (100) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d80b4; bytecode file offset 0x9d496c"
!EtasGlobalInfo methodsFor: 'recovered'!
fixedSpaceSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (104) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d80d0; bytecode file offset 0x9d4988"
!EtasGlobalInfo methodsFor: 'recovered'!
oldSpaceSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (108) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d80ec; bytecode file offset 0x9d49a4"
!EtasGlobalInfo methodsFor: 'recovered'!
lowMinimum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (116) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d8108; bytecode file offset 0x9d49c0"
!EtasGlobalInfo methodsFor: 'recovered'!
memoryMax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (120) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201047e4; bytecode file offset 0xa010ac"
!EtasGlobalInfo methodsFor: 'recovered'!
vmStats
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := (recoveredValue0) at: ('EtasVMStats').
    recoveredValue2 := (self) uint32At: (12).
    recoveredValue3 := (recoveredValue1) address: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20143bcc; bytecode file offset 0xa40520"
!EtasGlobalInfo methodsFor: 'recovered'!
setOptionsFromEntries: recoveredArg1
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
            recoveredStack2 := [:block280cc294Arg1 | 
    | block280cc294Value0 block280cc294Value1 block280cc294Value2 block280cc294Value3 block280cc294Value4 |
    block280cc294Value0 := block280cc294Arg1.
    block280cc294Value1 := (block280cc294Value0) userField.
    block280cc294Value2 := block280cc294Arg1.
    block280cc294Value3 := (block280cc294Value2) value.
    block280cc294Value4 := (block280cc294Value1) value: (block280cc294Value3).
    block280cc294Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027750c; bytecode file offset 0xb73e94"
!EtasGlobalInfo methodsFor: 'recovered'!
addInspectorMenuEntriesIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super addInspectorMenuEntriesIn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'globalGarbageCollect'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'globalGarbageCollect'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'scavenge'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'scavenge'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := [
    true
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20445c18; bytecode file offset 0xd4251c"
!EtasGlobalInfo methodsFor: 'recovered'!
writeIniFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 |
    recoveredValue0 := WinProfile.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) newSpaceSize.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := (self) sectionName.
    recoveredValue6 := recoveredArg1.
    (recoveredValue2) writeEntry: ('mn') value: (recoveredValue4) in: (recoveredValue5) to: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := (self) oldSpaceSize.
    recoveredValue9 := (recoveredValue8) printString.
    recoveredValue10 := (self) sectionName.
    recoveredValue11 := recoveredArg1.
    (recoveredValue7) writeEntry: ('mo') value: (recoveredValue9) in: (recoveredValue10) to: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) fixedSpaceSize.
    recoveredValue14 := (recoveredValue13) printString.
    recoveredValue15 := (self) sectionName.
    recoveredValue16 := recoveredArg1.
    (recoveredValue12) writeEntry: ('mf') value: (recoveredValue14) in: (recoveredValue15) to: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    recoveredValue18 := (self) allocationIncrement.
    recoveredValue19 := (recoveredValue18) printString.
    recoveredValue20 := (self) sectionName.
    recoveredValue21 := recoveredArg1.
    (recoveredValue17) writeEntry: ('ai') value: (recoveredValue19) in: (recoveredValue20) to: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) codeCacheSize.
    recoveredValue24 := (recoveredValue23) printString.
    recoveredValue25 := (self) sectionName.
    recoveredValue26 := recoveredArg1.
    (recoveredValue22) writeEntry: ('cc') value: (recoveredValue24) in: (recoveredValue25) to: (recoveredValue26).
    recoveredValue27 := recoveredValue1.
    recoveredValue28 := (self) lowMinimum.
    recoveredValue29 := (recoveredValue28) printString.
    recoveredValue30 := (self) sectionName.
    recoveredValue31 := recoveredArg1.
    (recoveredValue27) writeEntry: ('ml') value: (recoveredValue29) in: (recoveredValue30) to: (recoveredValue31).
    recoveredValue32 := recoveredValue1.
    recoveredValue33 := (self) dynamicMemory.
    recoveredValue34 := (recoveredValue33) defaultReturn: (0).
    recoveredValue35 := (recoveredValue34) printString.
    recoveredValue36 := (self) sectionName.
    recoveredValue37 := recoveredArg1.
    (recoveredValue32) writeEntry: ('dynamicMemory') value: (recoveredValue35) in: (recoveredValue36) to: (recoveredValue37).
    ^self
! !

"ASDBase.ic method 0x2057a844; bytecode file offset 0xe77150"
!EtasGlobalInfo methodsFor: 'recovered'!
readIniFile: recoveredArg1 defaultIniFile: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WinProfile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'dynamicMemory'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) sectionName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) readEntry: (recoveredStack2) in: (recoveredStack3) from: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) notEmpty.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 32] ifFalse: [recoveredBlock17PC := 39].
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) asInteger.
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) dynamicMemory: (recoveredBlock17Stack2).
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) dynamicMemory.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'mn'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) sectionName.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) readEntry: (recoveredStack1) in: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 67.
        ].
        recoveredBlock59Step = 67 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg1.
            recoveredBlock59PC := 68.
        ].
        recoveredBlock59Step = 68 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) notEmpty.
            recoveredBlock59PC := 70.
        ].
        recoveredBlock59Step = 70 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 74] ifFalse: [recoveredBlock59PC := 81].
        ].
        recoveredBlock59Step = 74 ifTrue: [
            recoveredBlock59PC := 75.
        ].
        recoveredBlock59Step = 75 ifTrue: [
            recoveredBlock59Stack1 := self.
            recoveredBlock59PC := 76.
        ].
        recoveredBlock59Step = 76 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg1.
            recoveredBlock59PC := 77.
        ].
        recoveredBlock59Step = 77 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) asInteger.
            recoveredBlock59PC := 79.
        ].
        recoveredBlock59Step = 79 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) newSpaceSize: (recoveredBlock59Stack2).
            recoveredBlock59PC := 81.
        ].
        recoveredBlock59Step = 81 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := 'mo'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) sectionName.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) readEntry: (recoveredStack1) in: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := [:recoveredBlock93Arg1 | 
    | recoveredBlock93Stack0 recoveredBlock93Stack1 recoveredBlock93Stack2 recoveredBlock93Stack3 recoveredBlock93PC recoveredBlock93Step recoveredBlock93Done recoveredBlock93Result |
    recoveredBlock93Stack0 := self.
    recoveredBlock93PC := 100.
    recoveredBlock93Done := false.
    [recoveredBlock93Done not] whileTrue: [
        recoveredBlock93Step := recoveredBlock93PC.
        recoveredBlock93Step = 100 ifTrue: [
            recoveredBlock93Stack1 := nil.
            recoveredBlock93PC := 101.
        ].
        recoveredBlock93Step = 101 ifTrue: [
            recoveredBlock93Stack2 := recoveredBlock93Arg1.
            recoveredBlock93PC := 102.
        ].
        recoveredBlock93Step = 102 ifTrue: [
            recoveredBlock93Stack2 := (recoveredBlock93Stack2) notEmpty.
            recoveredBlock93PC := 104.
        ].
        recoveredBlock93Step = 104 ifTrue: [
            (recoveredBlock93Stack2) ifTrue: [recoveredBlock93PC := 108] ifFalse: [recoveredBlock93PC := 115].
        ].
        recoveredBlock93Step = 108 ifTrue: [
            recoveredBlock93PC := 109.
        ].
        recoveredBlock93Step = 109 ifTrue: [
            recoveredBlock93Stack1 := self.
            recoveredBlock93PC := 110.
        ].
        recoveredBlock93Step = 110 ifTrue: [
            recoveredBlock93Stack2 := recoveredBlock93Arg1.
            recoveredBlock93PC := 111.
        ].
        recoveredBlock93Step = 111 ifTrue: [
            recoveredBlock93Stack2 := (recoveredBlock93Stack2) asInteger.
            recoveredBlock93PC := 113.
        ].
        recoveredBlock93Step = 113 ifTrue: [
            recoveredBlock93Stack1 := (recoveredBlock93Stack1) oldSpaceSize: (recoveredBlock93Stack2).
            recoveredBlock93PC := 115.
        ].
        recoveredBlock93Step = 115 ifTrue: [
            recoveredBlock93Result := recoveredBlock93Stack1.
            recoveredBlock93Done := true.
        ].
    ].
    recoveredBlock93Result
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 'mf'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) sectionName.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) readEntry: (recoveredStack1) in: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Stack0 recoveredBlock127Stack1 recoveredBlock127Stack2 recoveredBlock127Stack3 recoveredBlock127PC recoveredBlock127Step recoveredBlock127Done recoveredBlock127Result |
    recoveredBlock127Stack0 := self.
    recoveredBlock127PC := 134.
    recoveredBlock127Done := false.
    [recoveredBlock127Done not] whileTrue: [
        recoveredBlock127Step := recoveredBlock127PC.
        recoveredBlock127Step = 134 ifTrue: [
            recoveredBlock127Stack1 := nil.
            recoveredBlock127PC := 135.
        ].
        recoveredBlock127Step = 135 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Arg1.
            recoveredBlock127PC := 136.
        ].
        recoveredBlock127Step = 136 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) notEmpty.
            recoveredBlock127PC := 138.
        ].
        recoveredBlock127Step = 138 ifTrue: [
            (recoveredBlock127Stack2) ifTrue: [recoveredBlock127PC := 142] ifFalse: [recoveredBlock127PC := 149].
        ].
        recoveredBlock127Step = 142 ifTrue: [
            recoveredBlock127PC := 143.
        ].
        recoveredBlock127Step = 143 ifTrue: [
            recoveredBlock127Stack1 := self.
            recoveredBlock127PC := 144.
        ].
        recoveredBlock127Step = 144 ifTrue: [
            recoveredBlock127Stack2 := recoveredBlock127Arg1.
            recoveredBlock127PC := 145.
        ].
        recoveredBlock127Step = 145 ifTrue: [
            recoveredBlock127Stack2 := (recoveredBlock127Stack2) asInteger.
            recoveredBlock127PC := 147.
        ].
        recoveredBlock127Step = 147 ifTrue: [
            recoveredBlock127Stack1 := (recoveredBlock127Stack1) fixedSpaceSize: (recoveredBlock127Stack2).
            recoveredBlock127PC := 149.
        ].
        recoveredBlock127Step = 149 ifTrue: [
            recoveredBlock127Result := recoveredBlock127Stack1.
            recoveredBlock127Done := true.
        ].
    ].
    recoveredBlock127Result
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := 'ai'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) sectionName.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) readEntry: (recoveredStack1) in: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := [:recoveredBlock161Arg1 | 
    | recoveredBlock161Stack0 recoveredBlock161Stack1 recoveredBlock161Stack2 recoveredBlock161Stack3 recoveredBlock161PC recoveredBlock161Step recoveredBlock161Done recoveredBlock161Result |
    recoveredBlock161Stack0 := self.
    recoveredBlock161PC := 168.
    recoveredBlock161Done := false.
    [recoveredBlock161Done not] whileTrue: [
        recoveredBlock161Step := recoveredBlock161PC.
        recoveredBlock161Step = 168 ifTrue: [
            recoveredBlock161Stack1 := nil.
            recoveredBlock161PC := 169.
        ].
        recoveredBlock161Step = 169 ifTrue: [
            recoveredBlock161Stack2 := recoveredBlock161Arg1.
            recoveredBlock161PC := 170.
        ].
        recoveredBlock161Step = 170 ifTrue: [
            recoveredBlock161Stack2 := (recoveredBlock161Stack2) notEmpty.
            recoveredBlock161PC := 172.
        ].
        recoveredBlock161Step = 172 ifTrue: [
            (recoveredBlock161Stack2) ifTrue: [recoveredBlock161PC := 176] ifFalse: [recoveredBlock161PC := 183].
        ].
        recoveredBlock161Step = 176 ifTrue: [
            recoveredBlock161PC := 177.
        ].
        recoveredBlock161Step = 177 ifTrue: [
            recoveredBlock161Stack1 := self.
            recoveredBlock161PC := 178.
        ].
        recoveredBlock161Step = 178 ifTrue: [
            recoveredBlock161Stack2 := recoveredBlock161Arg1.
            recoveredBlock161PC := 179.
        ].
        recoveredBlock161Step = 179 ifTrue: [
            recoveredBlock161Stack2 := (recoveredBlock161Stack2) asInteger.
            recoveredBlock161PC := 181.
        ].
        recoveredBlock161Step = 181 ifTrue: [
            recoveredBlock161Stack1 := (recoveredBlock161Stack1) allocationIncrement: (recoveredBlock161Stack2).
            recoveredBlock161PC := 183.
        ].
        recoveredBlock161Step = 183 ifTrue: [
            recoveredBlock161Result := recoveredBlock161Stack1.
            recoveredBlock161Done := true.
        ].
    ].
    recoveredBlock161Result
].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := 'cc'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := (recoveredStack2) sectionName.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) readEntry: (recoveredStack1) in: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := [:recoveredBlock195Arg1 | 
    | recoveredBlock195Stack0 recoveredBlock195Stack1 recoveredBlock195Stack2 recoveredBlock195Stack3 recoveredBlock195PC recoveredBlock195Step recoveredBlock195Done recoveredBlock195Result |
    recoveredBlock195Stack0 := self.
    recoveredBlock195PC := 202.
    recoveredBlock195Done := false.
    [recoveredBlock195Done not] whileTrue: [
        recoveredBlock195Step := recoveredBlock195PC.
        recoveredBlock195Step = 202 ifTrue: [
            recoveredBlock195Stack1 := nil.
            recoveredBlock195PC := 203.
        ].
        recoveredBlock195Step = 203 ifTrue: [
            recoveredBlock195Stack2 := recoveredBlock195Arg1.
            recoveredBlock195PC := 204.
        ].
        recoveredBlock195Step = 204 ifTrue: [
            recoveredBlock195Stack2 := (recoveredBlock195Stack2) notEmpty.
            recoveredBlock195PC := 206.
        ].
        recoveredBlock195Step = 206 ifTrue: [
            (recoveredBlock195Stack2) ifTrue: [recoveredBlock195PC := 210] ifFalse: [recoveredBlock195PC := 217].
        ].
        recoveredBlock195Step = 210 ifTrue: [
            recoveredBlock195PC := 211.
        ].
        recoveredBlock195Step = 211 ifTrue: [
            recoveredBlock195Stack1 := self.
            recoveredBlock195PC := 212.
        ].
        recoveredBlock195Step = 212 ifTrue: [
            recoveredBlock195Stack2 := recoveredBlock195Arg1.
            recoveredBlock195PC := 213.
        ].
        recoveredBlock195Step = 213 ifTrue: [
            recoveredBlock195Stack2 := (recoveredBlock195Stack2) asInteger.
            recoveredBlock195PC := 215.
        ].
        recoveredBlock195Step = 215 ifTrue: [
            recoveredBlock195Stack1 := (recoveredBlock195Stack1) codeCacheSize: (recoveredBlock195Stack2).
            recoveredBlock195PC := 217.
        ].
        recoveredBlock195Step = 217 ifTrue: [
            recoveredBlock195Result := recoveredBlock195Stack1.
            recoveredBlock195Done := true.
        ].
    ].
    recoveredBlock195Result
].
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := 'ml'.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := (recoveredStack2) sectionName.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := (recoveredStack0) readEntry: (recoveredStack1) in: (recoveredStack2) from: (recoveredStack3).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := [:recoveredBlock229Arg1 | 
    | recoveredBlock229Stack0 recoveredBlock229Stack1 recoveredBlock229Stack2 recoveredBlock229Stack3 recoveredBlock229PC recoveredBlock229Step recoveredBlock229Done recoveredBlock229Result |
    recoveredBlock229Stack0 := self.
    recoveredBlock229PC := 236.
    recoveredBlock229Done := false.
    [recoveredBlock229Done not] whileTrue: [
        recoveredBlock229Step := recoveredBlock229PC.
        recoveredBlock229Step = 236 ifTrue: [
            recoveredBlock229Stack1 := nil.
            recoveredBlock229PC := 237.
        ].
        recoveredBlock229Step = 237 ifTrue: [
            recoveredBlock229Stack2 := recoveredBlock229Arg1.
            recoveredBlock229PC := 238.
        ].
        recoveredBlock229Step = 238 ifTrue: [
            recoveredBlock229Stack2 := (recoveredBlock229Stack2) notEmpty.
            recoveredBlock229PC := 240.
        ].
        recoveredBlock229Step = 240 ifTrue: [
            (recoveredBlock229Stack2) ifTrue: [recoveredBlock229PC := 244] ifFalse: [recoveredBlock229PC := 251].
        ].
        recoveredBlock229Step = 244 ifTrue: [
            recoveredBlock229PC := 245.
        ].
        recoveredBlock229Step = 245 ifTrue: [
            recoveredBlock229Stack1 := self.
            recoveredBlock229PC := 246.
        ].
        recoveredBlock229Step = 246 ifTrue: [
            recoveredBlock229Stack2 := recoveredBlock229Arg1.
            recoveredBlock229PC := 247.
        ].
        recoveredBlock229Step = 247 ifTrue: [
            recoveredBlock229Stack2 := (recoveredBlock229Stack2) asInteger.
            recoveredBlock229PC := 249.
        ].
        recoveredBlock229Step = 249 ifTrue: [
            recoveredBlock229Stack1 := (recoveredBlock229Stack1) lowMinimum: (recoveredBlock229Stack2).
            recoveredBlock229PC := 251.
        ].
        recoveredBlock229Step = 251 ifTrue: [
            recoveredBlock229Result := recoveredBlock229Stack1.
            recoveredBlock229Done := true.
        ].
    ].
    recoveredBlock229Result
].
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b85dc; bytecode file offset 0xeb4efc"
!EtasGlobalInfo methodsFor: 'recovered'!
do: recoveredArg1 withExtendedMemorySegmentSize: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := (self) dynamicMemory.
    recoveredBlock4Value0
].
    recoveredValue1 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) value.
    recoveredBlock14Value2 := recoveredBlock14Value1.
    recoveredLocal2 := recoveredBlock14Value2.
    recoveredBlock14Value1
].
    recoveredValue2 := [
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := LookupTable.
            recoveredBlock31PC := 40.
        ].
        recoveredBlock31Step = 40 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) new.
            recoveredBlock31PC := 41.
        ].
        recoveredBlock31Step = 41 ifTrue: [
            recoveredLocal1 := recoveredBlock31Stack1.
            recoveredBlock31PC := 44.
        ].
        recoveredBlock31Step = 44 ifTrue: [
            recoveredBlock31Stack0 := (recoveredBlock31Stack0) class.
            recoveredBlock31PC := 46.
        ].
        recoveredBlock31Step = 46 ifTrue: [
            recoveredBlock31Stack0 := (recoveredBlock31Stack0) members.
            recoveredBlock31PC := 48.
        ].
        recoveredBlock31Step = 48 ifTrue: [
            recoveredBlock31Stack1 := [:recoveredBlock31Block48Arg1 | 
    | recoveredBlock31Block48Value0 recoveredBlock31Block48Value1 recoveredBlock31Block48Value2 recoveredBlock31Block48Value3 recoveredBlock31Block48Value4 |
    recoveredBlock31Block48Value0 := recoveredLocal1.
    recoveredBlock31Block48Value1 := recoveredBlock31Block48Arg1.
    recoveredBlock31Block48Value2 := recoveredBlock31Block48Arg1.
    recoveredBlock31Block48Value3 := (self) perform: (recoveredBlock31Block48Value2).
    recoveredBlock31Block48Value4 := (recoveredBlock31Block48Value0) at: (recoveredBlock31Block48Value1) put: (recoveredBlock31Block48Value3).
    recoveredBlock31Block48Value4
].
            recoveredBlock31PC := 65.
        ].
        recoveredBlock31Step = 65 ifTrue: [
            (recoveredBlock31Stack0) do: (recoveredBlock31Stack1).
            recoveredBlock31PC := 67.
        ].
        recoveredBlock31Step = 67 ifTrue: [
            recoveredBlock31Stack0 := self.
            recoveredBlock31PC := 68.
        ].
        recoveredBlock31Step = 68 ifTrue: [
            recoveredBlock31Stack0 := (recoveredBlock31Stack0) newSpaceSize.
            recoveredBlock31PC := 70.
        ].
        recoveredBlock31Step = 70 ifTrue: [
            recoveredBlock31Stack1 := 2097152.
            recoveredBlock31PC := 72.
        ].
        recoveredBlock31Step = 72 ifTrue: [
            recoveredBlock31Stack0 := (recoveredBlock31Stack0) = (recoveredBlock31Stack1).
            recoveredBlock31PC := 73.
        ].
        recoveredBlock31Step = 73 ifTrue: [
            (recoveredBlock31Stack0) ifTrue: [recoveredBlock31PC := 76] ifFalse: [recoveredBlock31PC := 100].
        ].
        recoveredBlock31Step = 76 ifTrue: [
            recoveredBlock31Stack0 := self.
            recoveredBlock31PC := 77.
        ].
        recoveredBlock31Step = 77 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Stack0.
            recoveredBlock31PC := 78.
        ].
        recoveredBlock31Step = 78 ifTrue: [
            recoveredBlock31Stack2 := 8388608.
            recoveredBlock31PC := 80.
        ].
        recoveredBlock31Step = 80 ifTrue: [
            (recoveredBlock31Stack1) allocationIncrement: (recoveredBlock31Stack2).
            recoveredBlock31Stack1 := recoveredBlock31Stack0.
            recoveredBlock31PC := 83.
        ].
        recoveredBlock31Step = 83 ifTrue: [
            recoveredBlock31Stack2 := 16777216.
            recoveredBlock31PC := 85.
        ].
        recoveredBlock31Step = 85 ifTrue: [
            (recoveredBlock31Stack1) lowMinimum: (recoveredBlock31Stack2).
            recoveredBlock31Stack1 := recoveredBlock31Stack0.
            recoveredBlock31PC := 88.
        ].
        recoveredBlock31Step = 88 ifTrue: [
            recoveredBlock31Stack2 := 16777216.
            recoveredBlock31PC := 90.
        ].
        recoveredBlock31Step = 90 ifTrue: [
            (recoveredBlock31Stack1) newSpaceSize: (recoveredBlock31Stack2).
            recoveredBlock31PC := 92.
        ].
        recoveredBlock31Step = 92 ifTrue: [
            recoveredBlock31Stack1 := 16777216.
            recoveredBlock31PC := 94.
        ].
        recoveredBlock31Step = 94 ifTrue: [
            (recoveredBlock31Stack0) oldSpaceSize: (recoveredBlock31Stack1).
            recoveredBlock31PC := 96.
        ].
        recoveredBlock31Step = 96 ifTrue: [
            recoveredBlock31PC := 100.
        ].
        recoveredBlock31Step = 100 ifTrue: [
            recoveredBlock31Stack0 := recoveredArg1.
            recoveredBlock31PC := 103.
        ].
        recoveredBlock31Step = 103 ifTrue: [
            recoveredBlock31Stack1 := [
    | recoveredBlock31Block103Value0 recoveredBlock31Block103Value1 recoveredBlock31Block103Value2 |
    recoveredBlock31Block103Value0 := recoveredLocal1.
    recoveredBlock31Block103Value1 := [:recoveredBlock31Block103Block113Arg1 :recoveredBlock31Block103Block113Arg2 | 
    | recoveredBlock31Block103Block113Value0 recoveredBlock31Block103Block113Value1 recoveredBlock31Block103Block113Value2 recoveredBlock31Block103Block113Value3 recoveredBlock31Block103Block113Value4 |
    recoveredBlock31Block103Block113Value0 := recoveredBlock31Block103Block113Arg1.
    recoveredBlock31Block103Block113Value1 := (recoveredBlock31Block103Block113Value0) , (':').
    recoveredBlock31Block103Block113Value2 := (recoveredBlock31Block103Block113Value1) asSymbol.
    recoveredBlock31Block103Block113Value3 := recoveredBlock31Block103Block113Arg2.
    recoveredBlock31Block103Block113Value4 := (self) perform: (recoveredBlock31Block103Block113Value2) with: (recoveredBlock31Block103Block113Value3).
    recoveredBlock31Block103Block113Value4
].
    recoveredBlock31Block103Value2 := (recoveredBlock31Block103Value0) keysAndValuesDo: (recoveredBlock31Block103Value1).
    recoveredBlock31Block103Value2
].
            recoveredBlock31PC := 134.
        ].
        recoveredBlock31Step = 134 ifTrue: [
            recoveredBlock31Stack0 := (recoveredBlock31Stack0) ensure: (recoveredBlock31Stack1).
            recoveredBlock31PC := 136.
        ].
        recoveredBlock31Step = 136 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Stack0.
            recoveredBlock31PC := 137.
        ].
        recoveredBlock31Step = 137 ifTrue: [
            recoveredLocal2 := recoveredBlock31Stack1.
            recoveredBlock31PC := 140.
        ].
        recoveredBlock31Step = 140 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack0.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
    recoveredValue3 := [
    | recoveredBlock143Stack0 recoveredBlock143Stack1 recoveredBlock143Stack2 recoveredBlock143Stack3 recoveredBlock143Stack4 recoveredBlock143Stack5 recoveredBlock143PC recoveredBlock143Step recoveredBlock143Done recoveredBlock143Result |
    recoveredBlock143Stack0 := self.
    recoveredBlock143PC := 150.
    recoveredBlock143Done := false.
    [recoveredBlock143Done not] whileTrue: [
        recoveredBlock143Step := recoveredBlock143PC.
        recoveredBlock143Step = 150 ifTrue: [
            recoveredBlock143Stack1 := recoveredArg2.
            recoveredBlock143PC := 153.
        ].
        recoveredBlock143Step = 153 ifTrue: [
            recoveredBlock143Stack1 := (recoveredBlock143Stack1) isError.
            recoveredBlock143PC := 155.
        ].
        recoveredBlock143Step = 155 ifTrue: [
            (recoveredBlock143Stack1) ifTrue: [recoveredBlock143PC := 286] ifFalse: [recoveredBlock143PC := 158].
        ].
        recoveredBlock143Step = 158 ifTrue: [
            recoveredBlock143Stack1 := recoveredArg2.
            recoveredBlock143PC := 161.
        ].
        recoveredBlock143Step = 161 ifTrue: [
            recoveredBlock143Stack2 := self.
            recoveredBlock143PC := 162.
        ].
        recoveredBlock143Step = 162 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) oldSpaceSize.
            recoveredBlock143PC := 164.
        ].
        recoveredBlock143Step = 164 ifTrue: [
            recoveredBlock143Stack1 := (recoveredBlock143Stack1) > (recoveredBlock143Stack2).
            recoveredBlock143PC := 165.
        ].
        recoveredBlock143Step = 165 ifTrue: [
            (recoveredBlock143Stack1) ifTrue: [recoveredBlock143PC := 168] ifFalse: [recoveredBlock143PC := 286].
        ].
        recoveredBlock143Step = 168 ifTrue: [
            recoveredBlock143Stack1 := LookupTable.
            recoveredBlock143PC := 170.
        ].
        recoveredBlock143Step = 170 ifTrue: [
            recoveredBlock143Stack1 := (recoveredBlock143Stack1) new.
            recoveredBlock143PC := 171.
        ].
        recoveredBlock143Step = 171 ifTrue: [
            recoveredLocal1 := recoveredBlock143Stack1.
            recoveredBlock143PC := 174.
        ].
        recoveredBlock143Step = 174 ifTrue: [
            recoveredBlock143Stack1 := self.
            recoveredBlock143PC := 175.
        ].
        recoveredBlock143Step = 175 ifTrue: [
            recoveredBlock143Stack1 := (recoveredBlock143Stack1) class.
            recoveredBlock143PC := 177.
        ].
        recoveredBlock143Step = 177 ifTrue: [
            recoveredBlock143Stack1 := (recoveredBlock143Stack1) members.
            recoveredBlock143PC := 179.
        ].
        recoveredBlock143Step = 179 ifTrue: [
            recoveredBlock143Stack2 := [:recoveredBlock143Block179Arg1 | 
    | recoveredBlock143Block179Value0 recoveredBlock143Block179Value1 recoveredBlock143Block179Value2 recoveredBlock143Block179Value3 recoveredBlock143Block179Value4 |
    recoveredBlock143Block179Value0 := recoveredLocal1.
    recoveredBlock143Block179Value1 := recoveredBlock143Block179Arg1.
    recoveredBlock143Block179Value2 := recoveredBlock143Block179Arg1.
    recoveredBlock143Block179Value3 := (self) perform: (recoveredBlock143Block179Value2).
    recoveredBlock143Block179Value4 := (recoveredBlock143Block179Value0) at: (recoveredBlock143Block179Value1) put: (recoveredBlock143Block179Value3).
    recoveredBlock143Block179Value4
].
            recoveredBlock143PC := 197.
        ].
        recoveredBlock143Step = 197 ifTrue: [
            (recoveredBlock143Stack1) do: (recoveredBlock143Stack2).
            recoveredBlock143PC := 199.
        ].
        recoveredBlock143Step = 199 ifTrue: [
            recoveredBlock143Stack1 := self.
            recoveredBlock143PC := 200.
        ].
        recoveredBlock143Step = 200 ifTrue: [
            recoveredBlock143Stack2 := recoveredBlock143Stack1.
            recoveredBlock143PC := 201.
        ].
        recoveredBlock143Step = 201 ifTrue: [
            recoveredBlock143Stack3 := 8388608.
            recoveredBlock143PC := 203.
        ].
        recoveredBlock143Step = 203 ifTrue: [
            (recoveredBlock143Stack2) allocationIncrement: (recoveredBlock143Stack3).
            recoveredBlock143Stack2 := recoveredBlock143Stack1.
            recoveredBlock143PC := 206.
        ].
        recoveredBlock143Step = 206 ifTrue: [
            recoveredBlock143Stack3 := 4.
            recoveredBlock143PC := 208.
        ].
        recoveredBlock143Step = 208 ifTrue: [
            recoveredBlock143Stack4 := recoveredArg2.
            recoveredBlock143PC := 211.
        ].
        recoveredBlock143Step = 211 ifTrue: [
            recoveredBlock143Stack3 := (recoveredBlock143Stack3) * (recoveredBlock143Stack4).
            recoveredBlock143PC := 212.
        ].
        recoveredBlock143Step = 212 ifTrue: [
            recoveredBlock143Stack4 := 8388608.
            recoveredBlock143PC := 214.
        ].
        recoveredBlock143Step = 214 ifTrue: [
            recoveredBlock143Stack3 := (recoveredBlock143Stack3) max: (recoveredBlock143Stack4).
            recoveredBlock143PC := 216.
        ].
        recoveredBlock143Step = 216 ifTrue: [
            (recoveredBlock143Stack2) lowMinimum: (recoveredBlock143Stack3).
            recoveredBlock143Stack2 := recoveredBlock143Stack1.
            recoveredBlock143PC := 219.
        ].
        recoveredBlock143Step = 219 ifTrue: [
            recoveredBlock143Stack3 := 4.
            recoveredBlock143PC := 221.
        ].
        recoveredBlock143Step = 221 ifTrue: [
            recoveredBlock143Stack4 := recoveredArg2.
            recoveredBlock143PC := 224.
        ].
        recoveredBlock143Step = 224 ifTrue: [
            recoveredBlock143Stack3 := (recoveredBlock143Stack3) * (recoveredBlock143Stack4).
            recoveredBlock143PC := 225.
        ].
        recoveredBlock143Step = 225 ifTrue: [
            recoveredBlock143Stack4 := 8388608.
            recoveredBlock143PC := 227.
        ].
        recoveredBlock143Step = 227 ifTrue: [
            recoveredBlock143Stack3 := (recoveredBlock143Stack3) max: (recoveredBlock143Stack4).
            recoveredBlock143PC := 229.
        ].
        recoveredBlock143Step = 229 ifTrue: [
            (recoveredBlock143Stack2) newSpaceSize: (recoveredBlock143Stack3).
            recoveredBlock143PC := 231.
        ].
        recoveredBlock143Step = 231 ifTrue: [
            recoveredBlock143Stack2 := 4.
            recoveredBlock143PC := 233.
        ].
        recoveredBlock143Step = 233 ifTrue: [
            recoveredBlock143Stack3 := recoveredArg2.
            recoveredBlock143PC := 236.
        ].
        recoveredBlock143Step = 236 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) * (recoveredBlock143Stack3).
            recoveredBlock143PC := 237.
        ].
        recoveredBlock143Step = 237 ifTrue: [
            recoveredBlock143Stack3 := 8388608.
            recoveredBlock143PC := 239.
        ].
        recoveredBlock143Step = 239 ifTrue: [
            recoveredBlock143Stack2 := (recoveredBlock143Stack2) max: (recoveredBlock143Stack3).
            recoveredBlock143PC := 241.
        ].
        recoveredBlock143Step = 241 ifTrue: [
            (recoveredBlock143Stack1) oldSpaceSize: (recoveredBlock143Stack2).
            recoveredBlock143PC := 243.
        ].
        recoveredBlock143Step = 243 ifTrue: [
            recoveredBlock143Stack1 := recoveredArg1.
            recoveredBlock143PC := 246.
        ].
        recoveredBlock143Step = 246 ifTrue: [
            recoveredBlock143Stack2 := [
    | recoveredBlock143Block246Value0 recoveredBlock143Block246Value1 recoveredBlock143Block246Value2 |
    recoveredBlock143Block246Value0 := recoveredLocal1.
    recoveredBlock143Block246Value1 := [:recoveredBlock143Block246Block255Arg1 :recoveredBlock143Block246Block255Arg2 | 
    | recoveredBlock143Block246Block255Value0 recoveredBlock143Block246Block255Value1 recoveredBlock143Block246Block255Value2 recoveredBlock143Block246Block255Value3 recoveredBlock143Block246Block255Value4 |
    recoveredBlock143Block246Block255Value0 := recoveredBlock143Block246Block255Arg1.
    recoveredBlock143Block246Block255Value1 := (recoveredBlock143Block246Block255Value0) , (':').
    recoveredBlock143Block246Block255Value2 := (recoveredBlock143Block246Block255Value1) asSymbol.
    recoveredBlock143Block246Block255Value3 := recoveredBlock143Block246Block255Arg2.
    recoveredBlock143Block246Block255Value4 := (self) perform: (recoveredBlock143Block246Block255Value2) with: (recoveredBlock143Block246Block255Value3).
    recoveredBlock143Block246Block255Value4
].
    recoveredBlock143Block246Value2 := (recoveredBlock143Block246Value0) keysAndValuesDo: (recoveredBlock143Block246Value1).
    recoveredBlock143Block246Value2
].
            recoveredBlock143PC := 276.
        ].
        recoveredBlock143Step = 276 ifTrue: [
            recoveredBlock143Stack1 := (recoveredBlock143Stack1) ensure: (recoveredBlock143Stack2).
            recoveredBlock143PC := 278.
        ].
        recoveredBlock143Step = 278 ifTrue: [
            recoveredBlock143Stack2 := recoveredBlock143Stack1.
            recoveredBlock143PC := 279.
        ].
        recoveredBlock143Step = 279 ifTrue: [
            recoveredLocal2 := recoveredBlock143Stack2.
            recoveredBlock143PC := 282.
        ].
        recoveredBlock143Step = 282 ifTrue: [
            recoveredBlock143PC := 294.
        ].
        recoveredBlock143Step = 286 ifTrue: [
            recoveredBlock143Stack1 := recoveredArg1.
            recoveredBlock143PC := 289.
        ].
        recoveredBlock143Step = 289 ifTrue: [
            recoveredBlock143Stack1 := (recoveredBlock143Stack1) value.
            recoveredBlock143PC := 290.
        ].
        recoveredBlock143Step = 290 ifTrue: [
            recoveredBlock143Stack2 := recoveredBlock143Stack1.
            recoveredBlock143PC := 291.
        ].
        recoveredBlock143Step = 291 ifTrue: [
            recoveredLocal2 := recoveredBlock143Stack2.
            recoveredBlock143PC := 294.
        ].
        recoveredBlock143Step = 294 ifTrue: [
            recoveredBlock143Result := recoveredBlock143Stack1.
            recoveredBlock143Done := true.
        ].
    ].
    recoveredBlock143Result
].
    recoveredValue4 := [
    | recoveredBlock295Value0 recoveredBlock295Value1 recoveredBlock295Value2 |
    recoveredBlock295Value0 := recoveredArg1.
    recoveredBlock295Value1 := (recoveredBlock295Value0) value.
    recoveredBlock295Value2 := recoveredBlock295Value1.
    recoveredLocal2 := recoveredBlock295Value2.
    recoveredBlock295Value1
].
    (recoveredValue0) case: (0) do: (recoveredValue1) case: (1) do: (recoveredValue2) case: (2) do: (recoveredValue3) others: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    ^recoveredValue5
! !

