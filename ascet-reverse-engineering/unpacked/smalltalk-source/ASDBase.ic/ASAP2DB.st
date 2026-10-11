"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000370; bytecode file offset 0x8ffcfc"
!ASAP2DB methodsFor: 'recovered'!
sgClass
    ^self
! !

"ASDBase.ic method 0x20002540; bytecode file offset 0x8ffcfc"
!ASAP2DB methodsFor: 'recovered'!
markOnlyReadWriteAllInstVars
    ^self
! !

"ASDBase.ic method 0x20002b10; bytecode file offset 0x8ffcfc"
!ASAP2DB methodsFor: 'recovered'!
asap2Project
    ^self
! !

"ASDBase.ic method 0x20004c48; bytecode file offset 0x90206c"
!ASAP2DB methodsFor: 'recovered'!
sgClassIfUndefined: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200057a8; bytecode file offset 0x90206c"
!ASAP2DB methodsFor: 'recovered'!
projectNamed: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20018458; bytecode file offset 0x92209c"
!ASAP2DB methodsFor: 'recovered'!
visualCallBackImageElement
    ^'ElementsTypeVariableLocal'
! !

"ASDBase.ic method 0x2007c2d4; bytecode file offset 0x97c330"
!ASAP2DB methodsFor: 'recovered'!
isPrimitive
    ^false
! !

"ASDBase.ic method 0x2007ca4c; bytecode file offset 0x97c330"
!ASAP2DB methodsFor: 'recovered'!
hasReferences
    ^false
! !

"ASDBase.ic method 0x2007e9c4; bytecode file offset 0x97c330"
!ASAP2DB methodsFor: 'recovered'!
isSelfDumpAndLoad
    ^false
! !

"ASDBase.ic method 0x200a241c; bytecode file offset 0x99ed48"
!ASAP2DB methodsFor: 'recovered'!
createDeviceLink: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASAP2DeviceLink.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) create: (self) device: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bac64; bytecode file offset 0x9b7560"
!ASAP2DB methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := EsIdentitySet.
    recoveredValue2 := (recoveredValue1) new.
    (self) printOn: (recoveredValue0) recursionSet: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200efc38; bytecode file offset 0x9ec500"
!ASAP2DB methodsFor: 'recovered'!
recursionMessage
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := NlsCatKRN.
    recoveredValue1 := (recoveredValue0) indexedMsg: (36).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := (recoveredValue1) bindWith: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2011fa7c; bytecode file offset 0xa1c340"
!ASAP2DB methodsFor: 'recovered'!
putKeyWordIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) keyWord.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) nextPut: ($ ).
    ^self
! !

"ASDBase.ic method 0x20150b94; bytecode file offset 0xa4d468"
!ASAP2DB methodsFor: 'recovered'!
modified
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) modified: (self).
    recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20201a38; bytecode file offset 0xafe304"
!ASAP2DB methodsFor: 'recovered'!
putLongNameIn: recoveredArg1
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
            recoveredStack2 := $ .
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) longName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := '""'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (ASAP2BaseObject new).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) longName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) quotedString: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20203ee0; bytecode file offset 0xb007b4"
!ASAP2DB methodsFor: 'recovered'!
putOptionsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) options.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) value.
    recoveredBlock6Value2 := Array.
    recoveredBlock6Value3 := recoveredArg1.
    recoveredBlock6Value4 := recoveredBlock6Arg1.
    recoveredBlock6Value5 := (recoveredBlock6Value4) key.
    recoveredBlock6Value6 := (recoveredBlock6Value2) with: (recoveredBlock6Value3) with: (recoveredBlock6Value5).
    recoveredBlock6Value7 := (self) perform: (recoveredBlock6Value1) withArguments: (recoveredBlock6Value6).
    recoveredBlock6Value7
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20210bc0; bytecode file offset 0xb0d4b4"
!ASAP2DB methodsFor: 'recovered'!
print: recoveredArg1 entryName: recoveredArg2 toCommentStream: recoveredArg3
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) keyWord.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := ' '.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := ': '.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20220370; bytecode file offset 0xb1cc40"
!ASAP2DB methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ASAP2BaseObject.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) putBeginIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putKeyWordIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) putParameterIn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) putOptionsIn: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) putEndIn: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (self) putKeyWordIn: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x2029a448; bytecode file offset 0xb96d28"
!ASAP2DB methodsFor: 'recovered'!
isOpenWorkspace
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
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'IsOpenWorkspace'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := ASAP2BaseObject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) asap2ParseSection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := ASAP2BaseObject.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := (recoveredStack4) asap2Inifile.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) readEntry: (recoveredStack2) in: (recoveredStack3) from: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'true'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202b6d3c; bytecode file offset 0xbb3608"
!ASAP2DB methodsFor: 'recovered'!
clearId
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) instSize.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVarAt: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) clearId.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 24] ifFalse: [recoveredLocal1 := nil. recoveredPC := 44]] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20312380; bytecode file offset 0xc0ec4c"
!ASAP2DB methodsFor: 'recovered'!
collectObjectsFlat: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) instSize.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVarAt: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) collectObjectsFlat: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 30] ifFalse: [recoveredLocal1 := nil. recoveredPC := 53]] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20324c68; bytecode file offset 0xc21540"
!ASAP2DB methodsFor: 'recovered'!
putNameIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (Character value: 9).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block280ebfa4Arg1 | 
    | block280ebfa4Value0 block280ebfa4Value1 |
    block280ebfa4Value0 := block280ebfa4Arg1.
    block280ebfa4Value1 := (block280ebfa4Value0) isWhiteSpace.
    block280ebfa4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 |
    recoveredBlock21Value0 := (ASAP2BaseObject new).
    recoveredBlock21Value1 := recoveredArg1.
    recoveredBlock21Value2 := (self) name.
    recoveredBlock21Value3 := (recoveredBlock21Value0) putIn: (recoveredBlock21Value1) quotedString: (recoveredBlock21Value2).
    recoveredBlock21Value3
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 |
    recoveredBlock38Value0 := (ASAP2BaseObject new).
    recoveredBlock38Value1 := recoveredArg1.
    recoveredBlock38Value2 := (self) name.
    recoveredBlock38Value3 := (recoveredBlock38Value0) putIn: (recoveredBlock38Value1) string: (recoveredBlock38Value2).
    recoveredBlock38Value3
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifOne: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053225c; bytecode file offset 0xe2eb68"
!ASAP2DB methodsFor: 'recovered'!
printOn: recoveredArg1 recursionSet: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) recursiveAccessCheck: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) recursionMessage.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 196.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) space.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := ${.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) members.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Local1 recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49Stack5 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := recoveredArg1.
            recoveredBlock49PC := 59.
        ].
        recoveredBlock49Step = 59 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 60.
        ].
        recoveredBlock49Step = 60 ifTrue: [
            recoveredBlock49Stack3 := recoveredBlock49Arg1.
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            (recoveredBlock49Stack2) nextPutAll: (recoveredBlock49Stack3).
            recoveredBlock49Stack2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 66.
        ].
        recoveredBlock49Step = 66 ifTrue: [
            recoveredBlock49Stack3 := $:.
            recoveredBlock49PC := 70.
        ].
        recoveredBlock49Step = 70 ifTrue: [
            (recoveredBlock49Stack2) nextPut: (recoveredBlock49Stack3).
            recoveredBlock49PC := 72.
        ].
        recoveredBlock49Step = 72 ifTrue: [
            (recoveredBlock49Stack1) space.
            recoveredBlock49PC := 74.
        ].
        recoveredBlock49Step = 74 ifTrue: [
            recoveredBlock49Stack1 := [
    | recoveredBlock49Block74Stack0 recoveredBlock49Block74Stack1 recoveredBlock49Block74Stack2 recoveredBlock49Block74Stack3 recoveredBlock49Block74Stack4 recoveredBlock49Block74PC recoveredBlock49Block74Step recoveredBlock49Block74Done recoveredBlock49Block74Result |
    recoveredBlock49Block74Stack0 := self.
    recoveredBlock49Block74PC := 80.
    recoveredBlock49Block74Done := false.
    [recoveredBlock49Block74Done not] whileTrue: [
        recoveredBlock49Block74Step := recoveredBlock49Block74PC.
        recoveredBlock49Block74Step = 80 ifTrue: [
            recoveredBlock49Block74Stack1 := nil.
            recoveredBlock49Block74PC := 81.
        ].
        recoveredBlock49Block74Step = 81 ifTrue: [
            recoveredBlock49Block74Stack2 := recoveredBlock49Arg1.
            recoveredBlock49Block74PC := 84.
        ].
        recoveredBlock49Block74Step = 84 ifTrue: [
            recoveredBlock49Block74Stack3 := 'parent'.
            recoveredBlock49Block74PC := 86.
        ].
        recoveredBlock49Block74Step = 86 ifTrue: [
            recoveredBlock49Block74Stack2 := (recoveredBlock49Block74Stack2) = (recoveredBlock49Block74Stack3).
            recoveredBlock49Block74PC := 87.
        ].
        recoveredBlock49Block74Step = 87 ifTrue: [
            (recoveredBlock49Block74Stack2) ifTrue: [recoveredBlock49Block74PC := 118] ifFalse: [recoveredBlock49Block74PC := 90].
        ].
        recoveredBlock49Block74Step = 90 ifTrue: [
            recoveredBlock49Block74PC := 91.
        ].
        recoveredBlock49Block74Step = 91 ifTrue: [
            recoveredBlock49Block74Stack1 := nil.
            recoveredBlock49Block74PC := 92.
        ].
        recoveredBlock49Block74Step = 92 ifTrue: [
            recoveredBlock49Block74Stack2 := self.
            recoveredBlock49Block74PC := 93.
        ].
        recoveredBlock49Block74Step = 93 ifTrue: [
            recoveredBlock49Block74Stack3 := recoveredBlock49Arg1.
            recoveredBlock49Block74PC := 96.
        ].
        recoveredBlock49Block74Step = 96 ifTrue: [
            recoveredBlock49Block74Stack2 := (recoveredBlock49Block74Stack2) perform: (recoveredBlock49Block74Stack3).
            recoveredBlock49Block74PC := 98.
        ].
        recoveredBlock49Block74Step = 98 ifTrue: [
            recoveredBlock49Block74Stack3 := recoveredBlock49Block74Stack2.
            recoveredBlock49Block74PC := 99.
        ].
        recoveredBlock49Block74Step = 99 ifTrue: [
            recoveredBlock49Local1 := recoveredBlock49Block74Stack3.
            recoveredBlock49Block74PC := 102.
        ].
        recoveredBlock49Block74Step = 102 ifTrue: [
            recoveredBlock49Block74Stack2 := (recoveredBlock49Block74Stack2) isString.
            recoveredBlock49Block74PC := 104.
        ].
        recoveredBlock49Block74Step = 104 ifTrue: [
            (recoveredBlock49Block74Stack2) ifTrue: [recoveredBlock49Block74PC := 108] ifFalse: [recoveredBlock49Block74PC := 118].
        ].
        recoveredBlock49Block74Step = 108 ifTrue: [
            recoveredBlock49Block74PC := 109.
        ].
        recoveredBlock49Block74Step = 109 ifTrue: [
            recoveredBlock49Block74Stack1 := recoveredBlock49Local1.
            recoveredBlock49Block74PC := 112.
        ].
        recoveredBlock49Block74Step = 112 ifTrue: [
            recoveredBlock49Block74Stack1 := (recoveredBlock49Block74Stack1) trimNull.
            recoveredBlock49Block74PC := 114.
        ].
        recoveredBlock49Block74Step = 114 ifTrue: [
            recoveredBlock49Block74Stack2 := recoveredBlock49Block74Stack1.
            recoveredBlock49Block74PC := 115.
        ].
        recoveredBlock49Block74Step = 115 ifTrue: [
            recoveredBlock49Local1 := recoveredBlock49Block74Stack2.
            recoveredBlock49Block74PC := 118.
        ].
        recoveredBlock49Block74Step = 118 ifTrue: [
            recoveredBlock49Block74Result := recoveredBlock49Block74Stack1.
            recoveredBlock49Block74Done := true.
        ].
    ].
    recoveredBlock49Block74Result
].
            recoveredBlock49PC := 119.
        ].
        recoveredBlock49Step = 119 ifTrue: [
            recoveredBlock49Stack2 := ExError.
            recoveredBlock49PC := 121.
        ].
        recoveredBlock49Step = 121 ifTrue: [
            recoveredBlock49Stack3 := [:recoveredBlock49Block121Arg1 | 
    | recoveredBlock49Block121Value0 recoveredBlock49Block121Value1 |
    recoveredBlock49Local1 := 'exception'.
    recoveredBlock49Block121Value0 := recoveredBlock49Block121Arg1.
    recoveredBlock49Block121Value1 := (recoveredBlock49Block121Value0) exitWith: (nil).
    recoveredBlock49Block121Value1
].
            recoveredBlock49PC := 138.
        ].
        recoveredBlock49Step = 138 ifTrue: [
            (recoveredBlock49Stack1) when: (recoveredBlock49Stack2) do: (recoveredBlock49Stack3).
            recoveredBlock49PC := 140.
        ].
        recoveredBlock49Step = 140 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Local1.
            recoveredBlock49PC := 143.
        ].
        recoveredBlock49Step = 143 ifTrue: [
            recoveredBlock49Stack2 := recoveredArg1.
            recoveredBlock49PC := 146.
        ].
        recoveredBlock49Step = 146 ifTrue: [
            recoveredBlock49Stack3 := recoveredArg2.
            recoveredBlock49PC := 149.
        ].
        recoveredBlock49Step = 149 ifTrue: [
            (recoveredBlock49Stack1) printOn: (recoveredBlock49Stack2) recursionSet: (recoveredBlock49Stack3).
            recoveredBlock49PC := 151.
        ].
        recoveredBlock49Step = 151 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Local1.
            recoveredBlock49PC := 154.
        ].
        recoveredBlock49Step = 154 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) isInteger.
            recoveredBlock49PC := 156.
        ].
        recoveredBlock49Step = 156 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 160] ifFalse: [recoveredBlock49PC := 180].
        ].
        recoveredBlock49Step = 160 ifTrue: [
            recoveredBlock49Stack1 := recoveredArg1.
            recoveredBlock49PC := 163.
        ].
        recoveredBlock49Step = 163 ifTrue: [
            recoveredBlock49Stack2 := (Character value: 9).
            recoveredBlock49PC := 166.
        ].
        recoveredBlock49Step = 166 ifTrue: [
            (recoveredBlock49Stack1) nextPut: (recoveredBlock49Stack2).
            recoveredBlock49PC := 168.
        ].
        recoveredBlock49Step = 168 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Local1.
            recoveredBlock49PC := 171.
        ].
        recoveredBlock49Step = 171 ifTrue: [
            recoveredBlock49Stack2 := recoveredArg1.
            recoveredBlock49PC := 174.
        ].
        recoveredBlock49Step = 174 ifTrue: [
            recoveredBlock49Stack3 := 16.
            recoveredBlock49PC := 176.
        ].
        recoveredBlock49Step = 176 ifTrue: [
            recoveredBlock49Stack4 := true.
            recoveredBlock49PC := 177.
        ].
        recoveredBlock49Step = 177 ifTrue: [
            (recoveredBlock49Stack1) printOn: (recoveredBlock49Stack2) base: (recoveredBlock49Stack3) showRadix: (recoveredBlock49Stack4).
            recoveredBlock49PC := 180.
        ].
        recoveredBlock49Step = 180 ifTrue: [
            recoveredBlock49Stack1 := recoveredArg1.
            recoveredBlock49PC := 183.
        ].
        recoveredBlock49Step = 183 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) cr.
            recoveredBlock49PC := 185.
        ].
        recoveredBlock49Step = 185 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := $}.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) recursiveAccessClear: (recoveredStack1).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055adbc; bytecode file offset 0xe576e0"
!ASAP2DB methodsFor: 'recovered'!
putXMLAttributListOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) referenceAccessors.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := ASAP2BaseObject.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) xmLAttributListTagOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) keyWord.
    (recoveredValue4) nextPutAll: (recoveredValue6).
    recoveredValue7 := (self) class.
    recoveredValue8 := (recoveredValue7) allInstVarNames.
    recoveredValue9 := [:recoveredBlock29Arg1 :recoveredBlock29Arg2 | 
    | recoveredBlock29Local1 recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29Stack4 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := recoveredArg1.
            recoveredBlock29PC := 39.
        ].
        recoveredBlock29Step = 39 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Stack1.
            recoveredBlock29PC := 40.
        ].
        recoveredBlock29Step = 40 ifTrue: [
            (recoveredBlock29Stack2) cr.
            recoveredBlock29PC := 42.
        ].
        recoveredBlock29Step = 42 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 43.
        ].
        recoveredBlock29Step = 43 ifTrue: [
            (recoveredBlock29Stack1) nextPutAll: (recoveredBlock29Stack2).
            recoveredBlock29PC := 45.
        ].
        recoveredBlock29Step = 45 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Arg2.
            recoveredBlock29PC := 46.
        ].
        recoveredBlock29Step = 46 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) instVarAt: (recoveredBlock29Stack1).
            recoveredBlock29PC := 48.
        ].
        recoveredBlock29Step = 48 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Stack0.
            recoveredBlock29PC := 49.
        ].
        recoveredBlock29Step = 49 ifTrue: [
            recoveredBlock29Local1 := recoveredBlock29Stack1.
            recoveredBlock29PC := 50.
        ].
        recoveredBlock29Step = 50 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) isTypeCDATA_SECTION.
            recoveredBlock29PC := 52.
        ].
        recoveredBlock29Step = 52 ifTrue: [
            (recoveredBlock29Stack0) ifTrue: [recoveredBlock29PC := 56] ifFalse: [recoveredBlock29PC := 124].
        ].
        recoveredBlock29Step = 56 ifTrue: [
            recoveredBlock29Stack0 := recoveredArg1.
            recoveredBlock29PC := 59.
        ].
        recoveredBlock29Step = 59 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Stack0.
            recoveredBlock29PC := 60.
        ].
        recoveredBlock29Step = 60 ifTrue: [
            recoveredBlock29Stack2 := (Character value: 9).
            recoveredBlock29PC := 64.
        ].
        recoveredBlock29Step = 64 ifTrue: [
            (recoveredBlock29Stack1) nextPut: (recoveredBlock29Stack2).
            recoveredBlock29Stack1 := recoveredBlock29Stack0.
            recoveredBlock29PC := 67.
        ].
        recoveredBlock29Step = 67 ifTrue: [
            recoveredBlock29Stack2 := $(.
            recoveredBlock29PC := 70.
        ].
        recoveredBlock29Step = 70 ifTrue: [
            (recoveredBlock29Stack1) nextPut: (recoveredBlock29Stack2).
            recoveredBlock29Stack1 := recoveredBlock29Stack0.
            recoveredBlock29PC := 73.
        ].
        recoveredBlock29Step = 73 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local1.
            recoveredBlock29PC := 74.
        ].
        recoveredBlock29Step = 74 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) xmlName.
            recoveredBlock29PC := 76.
        ].
        recoveredBlock29Step = 76 ifTrue: [
            (recoveredBlock29Stack1) nextPutAll: (recoveredBlock29Stack2).
            recoveredBlock29Stack1 := recoveredBlock29Stack0.
            recoveredBlock29PC := 79.
        ].
        recoveredBlock29Step = 79 ifTrue: [
            recoveredBlock29Stack2 := $).
            recoveredBlock29PC := 82.
        ].
        recoveredBlock29Step = 82 ifTrue: [
            (recoveredBlock29Stack1) nextPut: (recoveredBlock29Stack2).
            recoveredBlock29PC := 84.
        ].
        recoveredBlock29Step = 84 ifTrue: [
            recoveredBlock29Stack1 := (Character value: 9).
            recoveredBlock29PC := 88.
        ].
        recoveredBlock29Step = 88 ifTrue: [
            (recoveredBlock29Stack0) nextPut: (recoveredBlock29Stack1).
            recoveredBlock29PC := 90.
        ].
        recoveredBlock29Step = 90 ifTrue: [
            recoveredBlock29Stack0 := ASAP2BaseObject.
            recoveredBlock29PC := 92.
        ].
        recoveredBlock29Step = 92 ifTrue: [
            recoveredBlock29Stack1 := recoveredArg1.
            recoveredBlock29PC := 95.
        ].
        recoveredBlock29Step = 95 ifTrue: [
            (recoveredBlock29Stack0) xmlCDataTagOn: (recoveredBlock29Stack1).
            recoveredBlock29PC := 97.
        ].
        recoveredBlock29Step = 97 ifTrue: [
            recoveredBlock29Stack0 := recoveredArg1.
            recoveredBlock29PC := 100.
        ].
        recoveredBlock29Step = 100 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Stack0.
            recoveredBlock29PC := 101.
        ].
        recoveredBlock29Step = 101 ifTrue: [
            recoveredBlock29Stack2 := $".
            recoveredBlock29PC := 104.
        ].
        recoveredBlock29Step = 104 ifTrue: [
            (recoveredBlock29Stack1) nextPut: (recoveredBlock29Stack2).
            recoveredBlock29Stack1 := recoveredBlock29Stack0.
            recoveredBlock29PC := 107.
        ].
        recoveredBlock29Step = 107 ifTrue: [
            recoveredBlock29Stack2 := self.
            recoveredBlock29PC := 108.
        ].
        recoveredBlock29Step = 108 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Arg2.
            recoveredBlock29PC := 109.
        ].
        recoveredBlock29Step = 109 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) instVarAt: (recoveredBlock29Stack3).
            recoveredBlock29PC := 111.
        ].
        recoveredBlock29Step = 111 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) xmlDefaultValue.
            recoveredBlock29PC := 113.
        ].
        recoveredBlock29Step = 113 ifTrue: [
            (recoveredBlock29Stack1) nextPutAll: (recoveredBlock29Stack2).
            recoveredBlock29PC := 115.
        ].
        recoveredBlock29Step = 115 ifTrue: [
            recoveredBlock29Stack1 := $".
            recoveredBlock29PC := 118.
        ].
        recoveredBlock29Step = 118 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) nextPut: (recoveredBlock29Stack1).
            recoveredBlock29PC := 120.
        ].
        recoveredBlock29Step = 120 ifTrue: [
            recoveredBlock29PC := 225.
        ].
        recoveredBlock29Step = 124 ifTrue: [
            recoveredBlock29Stack0 := recoveredArg1.
            recoveredBlock29PC := 127.
        ].
        recoveredBlock29Step = 127 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Stack0.
            recoveredBlock29PC := 128.
        ].
        recoveredBlock29Step = 128 ifTrue: [
            recoveredBlock29Stack2 := $..
            recoveredBlock29PC := 132.
        ].
        recoveredBlock29Step = 132 ifTrue: [
            (recoveredBlock29Stack1) nextPut: (recoveredBlock29Stack2).
            recoveredBlock29Stack1 := recoveredBlock29Stack0.
            recoveredBlock29PC := 135.
        ].
        recoveredBlock29Step = 135 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 136.
        ].
        recoveredBlock29Step = 136 ifTrue: [
            (recoveredBlock29Stack1) nextPutAll: (recoveredBlock29Stack2).
            recoveredBlock29PC := 138.
        ].
        recoveredBlock29Step = 138 ifTrue: [
            recoveredBlock29Stack1 := '_ref		'.
            recoveredBlock29PC := 140.
        ].
        recoveredBlock29Step = 140 ifTrue: [
            (recoveredBlock29Stack0) nextPutAll: (recoveredBlock29Stack1).
            recoveredBlock29PC := 142.
        ].
        recoveredBlock29Step = 142 ifTrue: [
            recoveredBlock29Stack0 := recoveredLocal1.
            recoveredBlock29PC := 145.
        ].
        recoveredBlock29Step = 145 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Arg1.
            recoveredBlock29PC := 146.
        ].
        recoveredBlock29Step = 146 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) asSymbol.
            recoveredBlock29PC := 148.
        ].
        recoveredBlock29Step = 148 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) includes: (recoveredBlock29Stack1).
            recoveredBlock29PC := 150.
        ].
        recoveredBlock29Step = 150 ifTrue: [
            (recoveredBlock29Stack0) ifTrue: [recoveredBlock29PC := 154] ifFalse: [recoveredBlock29PC := 161].
        ].
        recoveredBlock29Step = 154 ifTrue: [
            recoveredBlock29Stack0 := ASAP2BaseObject.
            recoveredBlock29PC := 156.
        ].
        recoveredBlock29Step = 156 ifTrue: [
            recoveredBlock29Stack1 := recoveredArg1.
            recoveredBlock29PC := 159.
        ].
        recoveredBlock29Step = 159 ifTrue: [
            (recoveredBlock29Stack0) xmlEntityOn: (recoveredBlock29Stack1).
            recoveredBlock29PC := 161.
        ].
        recoveredBlock29Step = 161 ifTrue: [
            recoveredBlock29Stack0 := recoveredBlock29Local1.
            recoveredBlock29PC := 162.
        ].
        recoveredBlock29Step = 162 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) isASAP2.
            recoveredBlock29PC := 164.
        ].
        recoveredBlock29Step = 164 ifTrue: [
            (recoveredBlock29Stack0) ifTrue: [recoveredBlock29PC := 168] ifFalse: [recoveredBlock29PC := 211].
        ].
        recoveredBlock29Step = 168 ifTrue: [
            recoveredBlock29Stack0 := self.
            recoveredBlock29PC := 169.
        ].
        recoveredBlock29Step = 169 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) class.
            recoveredBlock29PC := 170.
        ].
        recoveredBlock29Step = 170 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) options.
            recoveredBlock29PC := 172.
        ].
        recoveredBlock29Step = 172 ifTrue: [
            recoveredBlock29Stack1 := [:block28110188Arg1 | 
    | block28110188Value0 block28110188Value1 |
    block28110188Value0 := block28110188Arg1.
    block28110188Value1 := (block28110188Value0) key.
    block28110188Value1
].
            recoveredBlock29PC := 174.
        ].
        recoveredBlock29Step = 174 ifTrue: [
            recoveredBlock29PC := 182.
        ].
        recoveredBlock29Step = 182 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) collect: (recoveredBlock29Stack1).
            recoveredBlock29PC := 184.
        ].
        recoveredBlock29Step = 184 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local1.
            recoveredBlock29PC := 185.
        ].
        recoveredBlock29Step = 185 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) class.
            recoveredBlock29PC := 186.
        ].
        recoveredBlock29Step = 186 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) keyWord.
            recoveredBlock29PC := 188.
        ].
        recoveredBlock29Step = 188 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) includes: (recoveredBlock29Stack1).
            recoveredBlock29PC := 190.
        ].
        recoveredBlock29Step = 190 ifTrue: [
            (recoveredBlock29Stack0) ifTrue: [recoveredBlock29PC := 194] ifFalse: [recoveredBlock29PC := 204].
        ].
        recoveredBlock29Step = 194 ifTrue: [
            recoveredBlock29Stack0 := ASAP2BaseObject.
            recoveredBlock29PC := 196.
        ].
        recoveredBlock29Step = 196 ifTrue: [
            recoveredBlock29Stack1 := recoveredArg1.
            recoveredBlock29PC := 199.
        ].
        recoveredBlock29Step = 199 ifTrue: [
            (recoveredBlock29Stack0) xmlImpliedOn: (recoveredBlock29Stack1).
            recoveredBlock29PC := 201.
        ].
        recoveredBlock29Step = 201 ifTrue: [
            recoveredBlock29PC := 211.
        ].
        recoveredBlock29Step = 204 ifTrue: [
            recoveredBlock29Stack0 := ASAP2BaseObject.
            recoveredBlock29PC := 206.
        ].
        recoveredBlock29Step = 206 ifTrue: [
            recoveredBlock29Stack1 := recoveredArg1.
            recoveredBlock29PC := 209.
        ].
        recoveredBlock29Step = 209 ifTrue: [
            (recoveredBlock29Stack0) xmlRequiredOn: (recoveredBlock29Stack1).
            recoveredBlock29PC := 211.
        ].
        recoveredBlock29Step = 211 ifTrue: [
            recoveredBlock29Stack0 := nil.
            recoveredBlock29PC := 212.
        ].
        recoveredBlock29Step = 212 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Local1.
            recoveredBlock29PC := 213.
        ].
        recoveredBlock29Step = 213 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) isCollection.
            recoveredBlock29PC := 215.
        ].
        recoveredBlock29Step = 215 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 218] ifFalse: [recoveredBlock29PC := 225].
        ].
        recoveredBlock29Step = 218 ifTrue: [
            recoveredBlock29PC := 219.
        ].
        recoveredBlock29Step = 219 ifTrue: [
            recoveredBlock29Stack0 := recoveredBlock29Local1.
            recoveredBlock29PC := 220.
        ].
        recoveredBlock29Step = 220 ifTrue: [
            recoveredBlock29Stack1 := recoveredArg1.
            recoveredBlock29PC := 223.
        ].
        recoveredBlock29Step = 223 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) putXMLCollectionAttributListOn: (recoveredBlock29Stack1).
            recoveredBlock29PC := 225.
        ].
        recoveredBlock29Step = 225 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack0.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
    (recoveredValue8) doWithIndex: (recoveredValue9).
    ^self
! !

