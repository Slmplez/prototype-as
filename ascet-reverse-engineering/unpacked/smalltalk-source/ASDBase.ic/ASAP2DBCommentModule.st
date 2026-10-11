"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004330; bytecode file offset 0x90206c"
!ASAP2DBCommentModule methodsFor: 'recovered'!
nameTable: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200056d8; bytecode file offset 0x90206c"
!ASAP2DBCommentModule methodsFor: 'recovered'!
a2ml: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200556c8; bytecode file offset 0x952a9c"
!ASAP2DBCommentModule methodsFor: 'recovered'!
getCommentObjectFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getCommentObjectFrom: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006fdb0; bytecode file offset 0x96c6ac"
!ASAP2DBCommentModule methodsFor: 'recovered'!
module
    | recoveredValue0 |
    recoveredValue0 := module.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fe64; bytecode file offset 0x96c850"
!ASAP2DBCommentModule methodsFor: 'recovered'!
ifData
    | recoveredValue0 |
    recoveredValue0 := ifData.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200702a8; bytecode file offset 0x96cb7c"
!ASAP2DBCommentModule methodsFor: 'recovered'!
axisDescription
    | recoveredValue0 |
    recoveredValue0 := axisDescription.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073488; bytecode file offset 0x970b34"
!ASAP2DBCommentModule methodsFor: 'recovered'!
a2ml
    ^nil
! !

"ASDBase.ic method 0x20077224; bytecode file offset 0x9757c8"
!ASAP2DBCommentModule methodsFor: 'recovered'!
isSelfDumpAndLoad
    ^true
! !

"ASDBase.ic method 0x200931fc; bytecode file offset 0x98fab4"
!ASAP2DBCommentModule methodsFor: 'recovered'!
longName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := module.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) longName: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c6180; bytecode file offset 0x9c2bec"
!ASAP2DBCommentModule methodsFor: 'recovered'!
module: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    module := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c649c; bytecode file offset 0x9c2dd0"
!ASAP2DBCommentModule methodsFor: 'recovered'!
ifData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ifData := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6880; bytecode file offset 0x9c3164"
!ASAP2DBCommentModule methodsFor: 'recovered'!
axisDescription: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    axisDescription := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fa444; bytecode file offset 0x9f6d20"
!ASAP2DBCommentModule methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := ASAP2DBCommentObject.
    recoveredValue1 := (recoveredValue0) new.
    module := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201485e0; bytecode file offset 0xa44eac"
!ASAP2DBCommentModule methodsFor: 'recovered'!
addSelectedLabels: recoveredArg1 from: recoveredArg2 progressWindow: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) addToCommentModule: (self).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20149fe4; bytecode file offset 0xa468a8"
!ASAP2DBCommentModule methodsFor: 'recovered'!
changeToLookupTable
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) transformBlock.
    recoveredLocal1 := recoveredValue0.
    super changeToLookupTable.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := axisDescription.
    recoveredValue3 := (recoveredValue1) value: (recoveredValue2).
    axisDescription := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2014ddac; bytecode file offset 0xa4a678"
!ASAP2DBCommentModule methodsFor: 'recovered'!
longName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := module.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := module.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) longName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014ddbc; bytecode file offset 0xa4a678"
!ASAP2DBCommentModule methodsFor: 'recovered'!
displayIdentifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := module.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := module.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayIdentifier.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20159ef0; bytecode file offset 0xa567bc"
!ASAP2DBCommentModule methodsFor: 'recovered'!
emWriteObjectOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flat.
    recoveredLocal1 := recoveredValue0.
    flat := nil.
    recoveredValue1 := recoveredArg1.
    super emWriteObjectOn: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    flat := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x20207cd8; bytecode file offset 0xb045b0"
!ASAP2DBCommentModule methodsFor: 'recovered'!
createTempModuleSelectLabels: recoveredArg1 progressWindow: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := ASAP2BaseObject.
    (recoveredValue0) Persistent: (false).
    recoveredValue1 := (self) class.
    recoveredValue2 := (self) name.
    recoveredValue3 := (recoveredValue1) createDefault: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) module.
    recoveredValue6 := (recoveredValue5) copy.
    (recoveredValue4) module: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue7) addSelectedLabels: (recoveredValue8) from: (self) progressWindow: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x20266994; bytecode file offset 0xb63260"
!ASAP2DBCommentModule methodsFor: 'recovered'!
getCommentObjectFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDictionary.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) atOrNil: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20288e0c; bytecode file offset 0xb856f4"
!ASAP2DBCommentModule methodsFor: 'recovered'!
longNameFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) longName.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20288e20; bytecode file offset 0xb856f4"
!ASAP2DBCommentModule methodsFor: 'recovered'!
displayIdentifierFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayIdentifier.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20288e34; bytecode file offset 0xb856f4"
!ASAP2DBCommentModule methodsFor: 'recovered'!
annotationFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) annotation.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b9ac0; bytecode file offset 0xbb63c4"
!ASAP2DBCommentModule methodsFor: 'recovered'!
emWriteWithHeader: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := dbObject.
    recoveredValue1 := (recoveredValue0) istate.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := dbObject.
    (recoveredValue2) istate: (0).
    recoveredValue3 := DBASAP2MethodDecoder.
    recoveredValue4 := (recoveredValue3) createFor: (self).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    (self) emWriteObjectOrLiteralOn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) class.
    recoveredValue9 := (recoveredValue8) blobStart.
    recoveredValue10 := (recoveredValue9) + (1).
    (recoveredValue6) at: (recoveredValue10) put: (254).
    recoveredValue11 := dbObject.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue11) istate: (recoveredValue12).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) class.
    recoveredValue15 := recoveredLocal2.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue14) createFrom: (recoveredValue15) withHeader: (recoveredValue16).
    ^recoveredValue17
! !

"ASDBase.ic method 0x203d01a0; bytecode file offset 0xccca6c"
!ASAP2DBCommentModule methodsFor: 'recovered'!
postLoad: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := SortedCollection.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := measurement.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := axisPoint.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := frame.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := ifData.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := SortedCollection.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := ifData.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := group.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := SortedCollection.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := group.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := group.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            group := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) testIndex.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047cd24; bytecode file offset 0xd79654"
!ASAP2DBCommentModule methodsFor: 'recovered'!
annotation: recoveredArg1 for: recoveredArg2 in: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := ASAP2DBCommentObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) annotation: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) annotation: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 recoveredBlock78Value3 recoveredBlock78Value4 recoveredBlock78Value5 |
    recoveredBlock78Value0 := ASAP2DBCommentObject.
    recoveredBlock78Value1 := recoveredArg2.
    recoveredBlock78Value2 := (recoveredBlock78Value0) create: (recoveredBlock78Value1).
    recoveredLocal1 := recoveredBlock78Value2.
    recoveredBlock78Value3 := recoveredLocal1.
    recoveredBlock78Value4 := recoveredArg1.
    (recoveredBlock78Value3) annotation: (recoveredBlock78Value4).
    recoveredBlock78Value5 := recoveredLocal1.
    recoveredBlock78Value5
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 |
    recoveredBlock105Value0 := recoveredBlock105Arg1.
    recoveredBlock105Value1 := recoveredArg1.
    recoveredBlock105Value2 := (recoveredBlock105Value0) annotation: (recoveredBlock105Value1).
    recoveredBlock105Value2
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047cd50; bytecode file offset 0xd79654"
!ASAP2DBCommentModule methodsFor: 'recovered'!
displayIdentifier: recoveredArg1 for: recoveredArg2 in: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := ASAP2DBCommentObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) displayIdentifier: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) displayIdentifier: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 recoveredBlock78Value3 recoveredBlock78Value4 recoveredBlock78Value5 |
    recoveredBlock78Value0 := ASAP2DBCommentObject.
    recoveredBlock78Value1 := recoveredArg2.
    recoveredBlock78Value2 := (recoveredBlock78Value0) create: (recoveredBlock78Value1).
    recoveredLocal1 := recoveredBlock78Value2.
    recoveredBlock78Value3 := recoveredLocal1.
    recoveredBlock78Value4 := recoveredArg1.
    (recoveredBlock78Value3) displayIdentifier: (recoveredBlock78Value4).
    recoveredBlock78Value5 := recoveredLocal1.
    recoveredBlock78Value5
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 |
    recoveredBlock105Value0 := recoveredBlock105Arg1.
    recoveredBlock105Value1 := recoveredArg1.
    recoveredBlock105Value2 := (recoveredBlock105Value0) displayIdentifier: (recoveredBlock105Value1).
    recoveredBlock105Value2
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047cd7c; bytecode file offset 0xd79654"
!ASAP2DBCommentModule methodsFor: 'recovered'!
longName: recoveredArg1 for: recoveredArg2 in: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := ASAP2DBCommentObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) longName: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) longName: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 recoveredBlock78Value3 recoveredBlock78Value4 recoveredBlock78Value5 |
    recoveredBlock78Value0 := ASAP2DBCommentObject.
    recoveredBlock78Value1 := recoveredArg2.
    recoveredBlock78Value2 := (recoveredBlock78Value0) create: (recoveredBlock78Value1).
    recoveredLocal1 := recoveredBlock78Value2.
    recoveredBlock78Value3 := recoveredLocal1.
    recoveredBlock78Value4 := recoveredArg1.
    (recoveredBlock78Value3) longName: (recoveredBlock78Value4).
    recoveredBlock78Value5 := recoveredLocal1.
    recoveredBlock78Value5
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 |
    recoveredBlock105Value0 := recoveredBlock105Arg1.
    recoveredBlock105Value1 := recoveredArg1.
    recoveredBlock105Value2 := (recoveredBlock105Value0) longName: (recoveredBlock105Value1).
    recoveredBlock105Value2
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204dc298; bytecode file offset 0xdd8b74"
!ASAP2DBCommentModule methodsFor: 'recovered'!
longNameFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := function.
    recoveredValue2 := (self) longNameFor: (recoveredValue0) in: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := compuMethod.
    recoveredBlock15Value2 := (self) longNameFor: (recoveredBlock15Value0) in: (recoveredBlock15Value1).
    recoveredBlock15Value3 := recoveredBlock15Value2.
    recoveredLocal1 := recoveredBlock15Value3.
    recoveredBlock15Value4 := [
    | recoveredBlock15Block33Value0 recoveredBlock15Block33Value1 recoveredBlock15Block33Value2 recoveredBlock15Block33Value3 recoveredBlock15Block33Value4 recoveredBlock15Block33Value5 |
    recoveredBlock15Block33Value0 := recoveredArg1.
    recoveredBlock15Block33Value1 := compuTab.
    recoveredBlock15Block33Value2 := (self) longNameFor: (recoveredBlock15Block33Value0) in: (recoveredBlock15Block33Value1).
    recoveredBlock15Block33Value3 := recoveredBlock15Block33Value2.
    recoveredLocal1 := recoveredBlock15Block33Value3.
    recoveredBlock15Block33Value4 := [
    | recoveredBlock15Block33Block51Value0 recoveredBlock15Block33Block51Value1 recoveredBlock15Block33Block51Value2 recoveredBlock15Block33Block51Value3 recoveredBlock15Block33Block51Value4 recoveredBlock15Block33Block51Value5 |
    recoveredBlock15Block33Block51Value0 := recoveredArg1.
    recoveredBlock15Block33Block51Value1 := recordLayout.
    recoveredBlock15Block33Block51Value2 := (self) longNameFor: (recoveredBlock15Block33Block51Value0) in: (recoveredBlock15Block33Block51Value1).
    recoveredBlock15Block33Block51Value3 := recoveredBlock15Block33Block51Value2.
    recoveredLocal1 := recoveredBlock15Block33Block51Value3.
    recoveredBlock15Block33Block51Value4 := [
    | recoveredBlock15Block33Block51Block69Value0 recoveredBlock15Block33Block51Block69Value1 recoveredBlock15Block33Block51Block69Value2 recoveredBlock15Block33Block51Block69Value3 recoveredBlock15Block33Block51Block69Value4 recoveredBlock15Block33Block51Block69Value5 |
    recoveredBlock15Block33Block51Block69Value0 := recoveredArg1.
    recoveredBlock15Block33Block51Block69Value1 := characteristic.
    recoveredBlock15Block33Block51Block69Value2 := (self) longNameFor: (recoveredBlock15Block33Block51Block69Value0) in: (recoveredBlock15Block33Block51Block69Value1).
    recoveredBlock15Block33Block51Block69Value3 := recoveredBlock15Block33Block51Block69Value2.
    recoveredLocal1 := recoveredBlock15Block33Block51Block69Value3.
    recoveredBlock15Block33Block51Block69Value4 := [
    | recoveredBlock15Block33Block51Block69Block87Value0 recoveredBlock15Block33Block51Block69Block87Value1 recoveredBlock15Block33Block51Block69Block87Value2 recoveredBlock15Block33Block51Block69Block87Value3 recoveredBlock15Block33Block51Block69Block87Value4 recoveredBlock15Block33Block51Block69Block87Value5 |
    recoveredBlock15Block33Block51Block69Block87Value0 := recoveredArg1.
    recoveredBlock15Block33Block51Block69Block87Value1 := measurement.
    recoveredBlock15Block33Block51Block69Block87Value2 := (self) longNameFor: (recoveredBlock15Block33Block51Block69Block87Value0) in: (recoveredBlock15Block33Block51Block69Block87Value1).
    recoveredBlock15Block33Block51Block69Block87Value3 := recoveredBlock15Block33Block51Block69Block87Value2.
    recoveredLocal1 := recoveredBlock15Block33Block51Block69Block87Value3.
    recoveredBlock15Block33Block51Block69Block87Value4 := [
    | recoveredBlock15Block33Block51Block69Block87Block105Value0 recoveredBlock15Block33Block51Block69Block87Block105Value1 recoveredBlock15Block33Block51Block69Block87Block105Value2 recoveredBlock15Block33Block51Block69Block87Block105Value3 recoveredBlock15Block33Block51Block69Block87Block105Value4 recoveredBlock15Block33Block51Block69Block87Block105Value5 |
    recoveredBlock15Block33Block51Block69Block87Block105Value0 := recoveredArg1.
    recoveredBlock15Block33Block51Block69Block87Block105Value1 := axisPoint.
    recoveredBlock15Block33Block51Block69Block87Block105Value2 := (self) longNameFor: (recoveredBlock15Block33Block51Block69Block87Block105Value0) in: (recoveredBlock15Block33Block51Block69Block87Block105Value1).
    recoveredBlock15Block33Block51Block69Block87Block105Value3 := recoveredBlock15Block33Block51Block69Block87Block105Value2.
    recoveredLocal1 := recoveredBlock15Block33Block51Block69Block87Block105Value3.
    recoveredBlock15Block33Block51Block69Block87Block105Value4 := [
    | recoveredBlock15Block33Block51Block69Block87Block105Block123Value0 recoveredBlock15Block33Block51Block69Block87Block105Block123Value1 recoveredBlock15Block33Block51Block69Block87Block105Block123Value2 recoveredBlock15Block33Block51Block69Block87Block105Block123Value3 |
    recoveredBlock15Block33Block51Block69Block87Block105Block123Value0 := recoveredArg1.
    recoveredBlock15Block33Block51Block69Block87Block105Block123Value1 := frame.
    recoveredBlock15Block33Block51Block69Block87Block105Block123Value2 := (self) longNameFor: (recoveredBlock15Block33Block51Block69Block87Block105Block123Value0) in: (recoveredBlock15Block33Block51Block69Block87Block105Block123Value1).
    recoveredBlock15Block33Block51Block69Block87Block105Block123Value3 := recoveredBlock15Block33Block51Block69Block87Block105Block123Value2.
    recoveredLocal1 := recoveredBlock15Block33Block51Block69Block87Block105Block123Value3.
    recoveredBlock15Block33Block51Block69Block87Block105Block123Value2
].
    recoveredBlock15Block33Block51Block69Block87Block105Value5 := (recoveredBlock15Block33Block51Block69Block87Block105Value2) ifNil: (recoveredBlock15Block33Block51Block69Block87Block105Value4).
    recoveredBlock15Block33Block51Block69Block87Block105Value5
].
    recoveredBlock15Block33Block51Block69Block87Value5 := (recoveredBlock15Block33Block51Block69Block87Value2) ifNil: (recoveredBlock15Block33Block51Block69Block87Value4).
    recoveredBlock15Block33Block51Block69Block87Value5
].
    recoveredBlock15Block33Block51Block69Value5 := (recoveredBlock15Block33Block51Block69Value2) ifNil: (recoveredBlock15Block33Block51Block69Value4).
    recoveredBlock15Block33Block51Block69Value5
].
    recoveredBlock15Block33Block51Value5 := (recoveredBlock15Block33Block51Value2) ifNil: (recoveredBlock15Block33Block51Value4).
    recoveredBlock15Block33Block51Value5
].
    recoveredBlock15Block33Value5 := (recoveredBlock15Block33Value2) ifNil: (recoveredBlock15Block33Value4).
    recoveredBlock15Block33Value5
].
    recoveredBlock15Value5 := (recoveredBlock15Value2) ifNil: (recoveredBlock15Value4).
    recoveredBlock15Value5
].
    (recoveredValue2) ifNil: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x204dc2a8; bytecode file offset 0xdd8b74"
!ASAP2DBCommentModule methodsFor: 'recovered'!
displayIdentifierFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := function.
    recoveredValue2 := (self) displayIdentifierFor: (recoveredValue0) in: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := compuMethod.
    recoveredBlock15Value2 := (self) displayIdentifierFor: (recoveredBlock15Value0) in: (recoveredBlock15Value1).
    recoveredBlock15Value3 := recoveredBlock15Value2.
    recoveredLocal1 := recoveredBlock15Value3.
    recoveredBlock15Value4 := [
    | recoveredBlock15Block33Value0 recoveredBlock15Block33Value1 recoveredBlock15Block33Value2 recoveredBlock15Block33Value3 recoveredBlock15Block33Value4 recoveredBlock15Block33Value5 |
    recoveredBlock15Block33Value0 := recoveredArg1.
    recoveredBlock15Block33Value1 := compuTab.
    recoveredBlock15Block33Value2 := (self) displayIdentifierFor: (recoveredBlock15Block33Value0) in: (recoveredBlock15Block33Value1).
    recoveredBlock15Block33Value3 := recoveredBlock15Block33Value2.
    recoveredLocal1 := recoveredBlock15Block33Value3.
    recoveredBlock15Block33Value4 := [
    | recoveredBlock15Block33Block51Value0 recoveredBlock15Block33Block51Value1 recoveredBlock15Block33Block51Value2 recoveredBlock15Block33Block51Value3 recoveredBlock15Block33Block51Value4 recoveredBlock15Block33Block51Value5 |
    recoveredBlock15Block33Block51Value0 := recoveredArg1.
    recoveredBlock15Block33Block51Value1 := recordLayout.
    recoveredBlock15Block33Block51Value2 := (self) displayIdentifierFor: (recoveredBlock15Block33Block51Value0) in: (recoveredBlock15Block33Block51Value1).
    recoveredBlock15Block33Block51Value3 := recoveredBlock15Block33Block51Value2.
    recoveredLocal1 := recoveredBlock15Block33Block51Value3.
    recoveredBlock15Block33Block51Value4 := [
    | recoveredBlock15Block33Block51Block69Value0 recoveredBlock15Block33Block51Block69Value1 recoveredBlock15Block33Block51Block69Value2 recoveredBlock15Block33Block51Block69Value3 recoveredBlock15Block33Block51Block69Value4 recoveredBlock15Block33Block51Block69Value5 |
    recoveredBlock15Block33Block51Block69Value0 := recoveredArg1.
    recoveredBlock15Block33Block51Block69Value1 := characteristic.
    recoveredBlock15Block33Block51Block69Value2 := (self) displayIdentifierFor: (recoveredBlock15Block33Block51Block69Value0) in: (recoveredBlock15Block33Block51Block69Value1).
    recoveredBlock15Block33Block51Block69Value3 := recoveredBlock15Block33Block51Block69Value2.
    recoveredLocal1 := recoveredBlock15Block33Block51Block69Value3.
    recoveredBlock15Block33Block51Block69Value4 := [
    | recoveredBlock15Block33Block51Block69Block87Value0 recoveredBlock15Block33Block51Block69Block87Value1 recoveredBlock15Block33Block51Block69Block87Value2 recoveredBlock15Block33Block51Block69Block87Value3 recoveredBlock15Block33Block51Block69Block87Value4 recoveredBlock15Block33Block51Block69Block87Value5 |
    recoveredBlock15Block33Block51Block69Block87Value0 := recoveredArg1.
    recoveredBlock15Block33Block51Block69Block87Value1 := measurement.
    recoveredBlock15Block33Block51Block69Block87Value2 := (self) displayIdentifierFor: (recoveredBlock15Block33Block51Block69Block87Value0) in: (recoveredBlock15Block33Block51Block69Block87Value1).
    recoveredBlock15Block33Block51Block69Block87Value3 := recoveredBlock15Block33Block51Block69Block87Value2.
    recoveredLocal1 := recoveredBlock15Block33Block51Block69Block87Value3.
    recoveredBlock15Block33Block51Block69Block87Value4 := [
    | recoveredBlock15Block33Block51Block69Block87Block105Value0 recoveredBlock15Block33Block51Block69Block87Block105Value1 recoveredBlock15Block33Block51Block69Block87Block105Value2 recoveredBlock15Block33Block51Block69Block87Block105Value3 recoveredBlock15Block33Block51Block69Block87Block105Value4 recoveredBlock15Block33Block51Block69Block87Block105Value5 |
    recoveredBlock15Block33Block51Block69Block87Block105Value0 := recoveredArg1.
    recoveredBlock15Block33Block51Block69Block87Block105Value1 := axisPoint.
    recoveredBlock15Block33Block51Block69Block87Block105Value2 := (self) displayIdentifierFor: (recoveredBlock15Block33Block51Block69Block87Block105Value0) in: (recoveredBlock15Block33Block51Block69Block87Block105Value1).
    recoveredBlock15Block33Block51Block69Block87Block105Value3 := recoveredBlock15Block33Block51Block69Block87Block105Value2.
    recoveredLocal1 := recoveredBlock15Block33Block51Block69Block87Block105Value3.
    recoveredBlock15Block33Block51Block69Block87Block105Value4 := [
    | recoveredBlock15Block33Block51Block69Block87Block105Block123Value0 recoveredBlock15Block33Block51Block69Block87Block105Block123Value1 recoveredBlock15Block33Block51Block69Block87Block105Block123Value2 recoveredBlock15Block33Block51Block69Block87Block105Block123Value3 |
    recoveredBlock15Block33Block51Block69Block87Block105Block123Value0 := recoveredArg1.
    recoveredBlock15Block33Block51Block69Block87Block105Block123Value1 := frame.
    recoveredBlock15Block33Block51Block69Block87Block105Block123Value2 := (self) displayIdentifierFor: (recoveredBlock15Block33Block51Block69Block87Block105Block123Value0) in: (recoveredBlock15Block33Block51Block69Block87Block105Block123Value1).
    recoveredBlock15Block33Block51Block69Block87Block105Block123Value3 := recoveredBlock15Block33Block51Block69Block87Block105Block123Value2.
    recoveredLocal1 := recoveredBlock15Block33Block51Block69Block87Block105Block123Value3.
    recoveredBlock15Block33Block51Block69Block87Block105Block123Value2
].
    recoveredBlock15Block33Block51Block69Block87Block105Value5 := (recoveredBlock15Block33Block51Block69Block87Block105Value2) ifNil: (recoveredBlock15Block33Block51Block69Block87Block105Value4).
    recoveredBlock15Block33Block51Block69Block87Block105Value5
].
    recoveredBlock15Block33Block51Block69Block87Value5 := (recoveredBlock15Block33Block51Block69Block87Value2) ifNil: (recoveredBlock15Block33Block51Block69Block87Value4).
    recoveredBlock15Block33Block51Block69Block87Value5
].
    recoveredBlock15Block33Block51Block69Value5 := (recoveredBlock15Block33Block51Block69Value2) ifNil: (recoveredBlock15Block33Block51Block69Value4).
    recoveredBlock15Block33Block51Block69Value5
].
    recoveredBlock15Block33Block51Value5 := (recoveredBlock15Block33Block51Value2) ifNil: (recoveredBlock15Block33Block51Value4).
    recoveredBlock15Block33Block51Value5
].
    recoveredBlock15Block33Value5 := (recoveredBlock15Block33Value2) ifNil: (recoveredBlock15Block33Value4).
    recoveredBlock15Block33Value5
].
    recoveredBlock15Value5 := (recoveredBlock15Value2) ifNil: (recoveredBlock15Value4).
    recoveredBlock15Value5
].
    (recoveredValue2) ifNil: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x204dc2b8; bytecode file offset 0xdd8b74"
!ASAP2DBCommentModule methodsFor: 'recovered'!
annotationFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := function.
    recoveredValue2 := (self) annotationFor: (recoveredValue0) in: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := compuMethod.
    recoveredBlock15Value2 := (self) annotationFor: (recoveredBlock15Value0) in: (recoveredBlock15Value1).
    recoveredBlock15Value3 := recoveredBlock15Value2.
    recoveredLocal1 := recoveredBlock15Value3.
    recoveredBlock15Value4 := [
    | recoveredBlock15Block33Value0 recoveredBlock15Block33Value1 recoveredBlock15Block33Value2 recoveredBlock15Block33Value3 recoveredBlock15Block33Value4 recoveredBlock15Block33Value5 |
    recoveredBlock15Block33Value0 := recoveredArg1.
    recoveredBlock15Block33Value1 := compuTab.
    recoveredBlock15Block33Value2 := (self) annotationFor: (recoveredBlock15Block33Value0) in: (recoveredBlock15Block33Value1).
    recoveredBlock15Block33Value3 := recoveredBlock15Block33Value2.
    recoveredLocal1 := recoveredBlock15Block33Value3.
    recoveredBlock15Block33Value4 := [
    | recoveredBlock15Block33Block51Value0 recoveredBlock15Block33Block51Value1 recoveredBlock15Block33Block51Value2 recoveredBlock15Block33Block51Value3 recoveredBlock15Block33Block51Value4 recoveredBlock15Block33Block51Value5 |
    recoveredBlock15Block33Block51Value0 := recoveredArg1.
    recoveredBlock15Block33Block51Value1 := recordLayout.
    recoveredBlock15Block33Block51Value2 := (self) annotationFor: (recoveredBlock15Block33Block51Value0) in: (recoveredBlock15Block33Block51Value1).
    recoveredBlock15Block33Block51Value3 := recoveredBlock15Block33Block51Value2.
    recoveredLocal1 := recoveredBlock15Block33Block51Value3.
    recoveredBlock15Block33Block51Value4 := [
    | recoveredBlock15Block33Block51Block69Value0 recoveredBlock15Block33Block51Block69Value1 recoveredBlock15Block33Block51Block69Value2 recoveredBlock15Block33Block51Block69Value3 recoveredBlock15Block33Block51Block69Value4 recoveredBlock15Block33Block51Block69Value5 |
    recoveredBlock15Block33Block51Block69Value0 := recoveredArg1.
    recoveredBlock15Block33Block51Block69Value1 := characteristic.
    recoveredBlock15Block33Block51Block69Value2 := (self) annotationFor: (recoveredBlock15Block33Block51Block69Value0) in: (recoveredBlock15Block33Block51Block69Value1).
    recoveredBlock15Block33Block51Block69Value3 := recoveredBlock15Block33Block51Block69Value2.
    recoveredLocal1 := recoveredBlock15Block33Block51Block69Value3.
    recoveredBlock15Block33Block51Block69Value4 := [
    | recoveredBlock15Block33Block51Block69Block87Value0 recoveredBlock15Block33Block51Block69Block87Value1 recoveredBlock15Block33Block51Block69Block87Value2 recoveredBlock15Block33Block51Block69Block87Value3 recoveredBlock15Block33Block51Block69Block87Value4 recoveredBlock15Block33Block51Block69Block87Value5 |
    recoveredBlock15Block33Block51Block69Block87Value0 := recoveredArg1.
    recoveredBlock15Block33Block51Block69Block87Value1 := measurement.
    recoveredBlock15Block33Block51Block69Block87Value2 := (self) annotationFor: (recoveredBlock15Block33Block51Block69Block87Value0) in: (recoveredBlock15Block33Block51Block69Block87Value1).
    recoveredBlock15Block33Block51Block69Block87Value3 := recoveredBlock15Block33Block51Block69Block87Value2.
    recoveredLocal1 := recoveredBlock15Block33Block51Block69Block87Value3.
    recoveredBlock15Block33Block51Block69Block87Value4 := [
    | recoveredBlock15Block33Block51Block69Block87Block105Value0 recoveredBlock15Block33Block51Block69Block87Block105Value1 recoveredBlock15Block33Block51Block69Block87Block105Value2 recoveredBlock15Block33Block51Block69Block87Block105Value3 recoveredBlock15Block33Block51Block69Block87Block105Value4 recoveredBlock15Block33Block51Block69Block87Block105Value5 |
    recoveredBlock15Block33Block51Block69Block87Block105Value0 := recoveredArg1.
    recoveredBlock15Block33Block51Block69Block87Block105Value1 := axisPoint.
    recoveredBlock15Block33Block51Block69Block87Block105Value2 := (self) annotationFor: (recoveredBlock15Block33Block51Block69Block87Block105Value0) in: (recoveredBlock15Block33Block51Block69Block87Block105Value1).
    recoveredBlock15Block33Block51Block69Block87Block105Value3 := recoveredBlock15Block33Block51Block69Block87Block105Value2.
    recoveredLocal1 := recoveredBlock15Block33Block51Block69Block87Block105Value3.
    recoveredBlock15Block33Block51Block69Block87Block105Value4 := [
    | recoveredBlock15Block33Block51Block69Block87Block105Block123Value0 recoveredBlock15Block33Block51Block69Block87Block105Block123Value1 recoveredBlock15Block33Block51Block69Block87Block105Block123Value2 recoveredBlock15Block33Block51Block69Block87Block105Block123Value3 |
    recoveredBlock15Block33Block51Block69Block87Block105Block123Value0 := recoveredArg1.
    recoveredBlock15Block33Block51Block69Block87Block105Block123Value1 := frame.
    recoveredBlock15Block33Block51Block69Block87Block105Block123Value2 := (self) annotationFor: (recoveredBlock15Block33Block51Block69Block87Block105Block123Value0) in: (recoveredBlock15Block33Block51Block69Block87Block105Block123Value1).
    recoveredBlock15Block33Block51Block69Block87Block105Block123Value3 := recoveredBlock15Block33Block51Block69Block87Block105Block123Value2.
    recoveredLocal1 := recoveredBlock15Block33Block51Block69Block87Block105Block123Value3.
    recoveredBlock15Block33Block51Block69Block87Block105Block123Value2
].
    recoveredBlock15Block33Block51Block69Block87Block105Value5 := (recoveredBlock15Block33Block51Block69Block87Block105Value2) ifNil: (recoveredBlock15Block33Block51Block69Block87Block105Value4).
    recoveredBlock15Block33Block51Block69Block87Block105Value5
].
    recoveredBlock15Block33Block51Block69Block87Value5 := (recoveredBlock15Block33Block51Block69Block87Value2) ifNil: (recoveredBlock15Block33Block51Block69Block87Value4).
    recoveredBlock15Block33Block51Block69Block87Value5
].
    recoveredBlock15Block33Block51Block69Value5 := (recoveredBlock15Block33Block51Block69Value2) ifNil: (recoveredBlock15Block33Block51Block69Value4).
    recoveredBlock15Block33Block51Block69Value5
].
    recoveredBlock15Block33Block51Value5 := (recoveredBlock15Block33Block51Value2) ifNil: (recoveredBlock15Block33Block51Value4).
    recoveredBlock15Block33Block51Value5
].
    recoveredBlock15Block33Value5 := (recoveredBlock15Block33Value2) ifNil: (recoveredBlock15Block33Value4).
    recoveredBlock15Block33Value5
].
    recoveredBlock15Value5 := (recoveredBlock15Value2) ifNil: (recoveredBlock15Value4).
    recoveredBlock15Value5
].
    (recoveredValue2) ifNil: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

