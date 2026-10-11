"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200008e8; bytecode file offset 0x3cba0"
!EmConfigurationMapRecord methodsFor: 'recovered'!
isVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) versionName.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"lib.ic method 0x20000958; bytecode file offset 0x3cba0"
!EmConfigurationMapRecord methodsFor: 'recovered'!
isEdition
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) versionName.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"lib.ic method 0x2000133c; bytecode file offset 0x3d664"
!EmConfigurationMapRecord methodsFor: 'recovered'!
timeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) timeStampIndex.
    recoveredValue1 := (self) timeStampAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000144c; bytecode file offset 0x3d664"
!EmConfigurationMapRecord methodsFor: 'recovered'!
previousTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) previousIndex.
    recoveredValue1 := (self) timeStampAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20001664; bytecode file offset 0x3d6ac"
!EmConfigurationMapRecord methodsFor: 'recovered'!
manager
    | recoveredValue0 |
    recoveredValue0 := (self) element: (1).
    ^recoveredValue0
! !

"lib.ic method 0x200016b4; bytecode file offset 0x3d6d8"
!EmConfigurationMapRecord methodsFor: 'recovered'!
versionName
    | recoveredValue0 |
    recoveredValue0 := (self) element: (2).
    ^recoveredValue0
! !

"lib.ic method 0x20001e60; bytecode file offset 0x3de9c"
!EmConfigurationMapRecord methodsFor: 'recovered'!
timeStampIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (4).
    ^recoveredValue1
! !

"lib.ic method 0x20001ef0; bytecode file offset 0x3df38"
!EmConfigurationMapRecord methodsFor: 'recovered'!
previousIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (8).
    ^recoveredValue1
! !

"lib.ic method 0x20001f68; bytecode file offset 0x3df98"
!EmConfigurationMapRecord methodsFor: 'recovered'!
beenLoadedIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (12).
    ^recoveredValue1
! !

"lib.ic method 0x20001f8c; bytecode file offset 0x3dfbc"
!EmConfigurationMapRecord methodsFor: 'recovered'!
applicationEditionsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (13).
    ^recoveredValue1
! !

"lib.ic method 0x20002038; bytecode file offset 0x3e05c"
!EmConfigurationMapRecord methodsFor: 'recovered'!
inheritedFieldsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (21).
    ^recoveredValue1
! !

"lib.ic method 0x200020b0; bytecode file offset 0x3e0d4"
!EmConfigurationMapRecord methodsFor: 'recovered'!
localFieldsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (29).
    ^recoveredValue1
! !

"lib.ic method 0x200023d4; bytecode file offset 0x3e42c"
!EmConfigurationMapRecord methodsFor: 'recovered'!
map
    | recoveredValue0 |
    recoveredValue0 := itsMap.
    ^recoveredValue0
! !

"lib.ic method 0x2000272c; bytecode file offset 0x3e754"
!EmConfigurationMapRecord methodsFor: 'recovered'!
defaultPrivilegesLong
    ^0
! !

"lib.ic method 0x200027a0; bytecode file offset 0x3e7d8"
!EmConfigurationMapRecord methodsFor: 'recovered'!
numberOfElements
    ^2
! !

"lib.ic method 0x20003ba8; bytecode file offset 0x3fbfc"
!EmConfigurationMapRecord methodsFor: 'recovered'!
applicationEditions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) applicationEditionsIndex.
    recoveredValue1 := EmDictionaryOfTimeStamps.
    recoveredValue2 := (self) obtainRecordForPartAt: (recoveredValue0) ofType: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20003cbc; bytecode file offset 0x3fce4"
!EmConfigurationMapRecord methodsFor: 'recovered'!
beenLoaded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) beenLoadedIndex.
    recoveredValue1 := (self) byteAt: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) = (1).
    ^recoveredValue2
! !

"lib.ic method 0x200043e0; bytecode file offset 0x40410"
!EmConfigurationMapRecord methodsFor: 'recovered'!
requiredMapsRecord
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) requiredMapsKey.
    recoveredValue2 := EmConfigurationMapLineups.
    recoveredValue3 := (self) inheritedUserFieldAt: (recoveredValue1) ofType: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x2000482c; bytecode file offset 0x40884"
!EmConfigurationMapRecord methodsFor: 'recovered'!
map: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    itsMap := recoveredValue0.
    ^self
! !

"lib.ic method 0x20004bd4; bytecode file offset 0x40c04"
!EmConfigurationMapRecord methodsFor: 'recovered'!
replaceElement: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) replaceElement: (recoveredValue0) with: (recoveredValue1) removeCachedSpace: (true).
    ^self
! !

"lib.ic method 0x20005688; bytecode file offset 0x416bc"
!EmConfigurationMapRecord methodsFor: 'recovered'!
privilegesLong
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) privilegesKey.
    recoveredValue2 := EmConfigurationMapPrivilegesRecord.
    recoveredValue3 := (self) inheritedUserFieldAt: (recoveredValue1) ofType: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) privilegesLong.
    ^recoveredValue4
! !

"lib.ic method 0x20005f38; bytecode file offset 0x41f68"
!EmConfigurationMapRecord methodsFor: 'recovered'!
replaceRequiredMapsWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) noLongerExistsInLibrary.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) requiredMapsKey.
    recoveredValue3 := recoveredArg1.
    (self) inheritedUserFieldAt: (recoveredValue2) putRecord: (recoveredValue3).
    ^self
! !

"lib.ic method 0x20006444; bytecode file offset 0x4247c"
!EmConfigurationMapRecord methodsFor: 'recovered'!
requiredMapsConfigurations
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) requiredMapsKey.
    recoveredValue2 := EmConfigurationMapLineups.
    recoveredValue3 := (self) inheritedUserFieldAt: (recoveredValue1) ofType: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asArray.
    recoveredValue5 := (recoveredValue4) reverse.
    ^recoveredValue5
! !

"lib.ic method 0x20007ccc; bytecode file offset 0x43cfc"
!EmConfigurationMapRecord methodsFor: 'recovered'!
inheritedUserFields
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) cache.
    recoveredValue2 := (self) map.
    recoveredValue3 := [
    self
].
    recoveredValue4 := (recoveredValue1) mapInheritedUserFieldsFor: (recoveredValue2) ifNotCachedUseRecord: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x200085d8; bytecode file offset 0x44610"
!EmConfigurationMapRecord methodsFor: 'recovered'!
movePartsTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super movePartsTo: (recoveredValue0).
    recoveredValue1 := (self) applicationEditionsIndex.
    recoveredValue2 := (self) applicationEditions.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) moveTo: (recoveredValue3).
    (self) at: (recoveredValue1) putFilePointer: (recoveredValue4).
    ^self
! !

"lib.ic method 0x20009ad0; bytecode file offset 0x45afc"
!EmConfigurationMapRecord methodsFor: 'recovered'!
manager: recoveredArg1 ifNot: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    (self) userMustBeManagerTo: (269) noUserError: (268) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) replaceElement: (1) with: (recoveredValue1).
    recoveredValue2 := (self) insert.
    ^recoveredValue2
! !

"lib.ic method 0x20009f44; bytecode file offset 0x45fa4"
!EmConfigurationMapRecord methodsFor: 'recovered'!
mustBeEditionTo: recoveredArg1 withParms: recoveredArg2 ifNot: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
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
            recoveredStack2 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) map.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000d388; bytecode file offset 0x493b8"
!EmConfigurationMapRecord methodsFor: 'recovered'!
beenLoaded: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) beenLoaded.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) beenLoadedIndex.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putByte: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) insert.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000f400; bytecode file offset 0x4b444"
!EmConfigurationMapRecord methodsFor: 'recovered'!
privilegesLong: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) inheritedFieldsIndex.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) class.
    recoveredBlock6Value2 := (recoveredBlock6Value1) privilegesKey.
    recoveredBlock6Value3 := [:recoveredBlock6Block16Arg1 | 
    | recoveredBlock6Block16Value0 recoveredBlock6Block16Value1 recoveredBlock6Block16Value2 recoveredBlock6Block16Value3 recoveredBlock6Block16Value4 |
    recoveredBlock6Block16Value0 := EmConfigurationMapPrivilegesRecord.
    recoveredBlock6Block16Value1 := recoveredArg1.
    recoveredBlock6Block16Value2 := (recoveredBlock6Block16Value0) onLong: (recoveredBlock6Block16Value1).
    recoveredBlock6Block16Value3 := (self) library.
    recoveredBlock6Block16Value4 := (recoveredBlock6Block16Value2) insertInto: (recoveredBlock6Block16Value3).
    recoveredBlock6Block16Value4
].
    recoveredBlock6Value4 := (recoveredBlock6Value0) at: (recoveredBlock6Value2) putPointerFrom: (recoveredBlock6Value3).
    recoveredBlock6Value4
].
    recoveredValue2 := (self) updateDictionaryAt: (recoveredValue0) using: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20010348; bytecode file offset 0x4c38c"
!EmConfigurationMapRecord methodsFor: 'recovered'!
statusFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) privilegeNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := MxEMc125.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) privilegesLong.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBitSet: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 'maporappmanager'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := 'mapmanager'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20011190; bytecode file offset 0x4d1cc"
!EmConfigurationMapRecord methodsFor: 'recovered'!
editionFor: recoveredArg1 is: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := recoveredArg3.
    (self) mustBeEditionTo: (301) withParms: (recoveredValue2) ifNot: (recoveredValue3).
    recoveredValue4 := (self) applicationEditionsIndex.
    recoveredValue5 := EmDictionaryOfTimeStamps.
    recoveredValue6 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredArg1.
    recoveredBlock25Value2 := recoveredArg2.
    recoveredBlock25Value3 := (recoveredBlock25Value0) at: (recoveredBlock25Value1) put: (recoveredBlock25Value2).
    recoveredBlock25Value3
].
    recoveredValue7 := (self) updateRecordForPartAt: (recoveredValue4) ofType: (recoveredValue5) using: (recoveredValue6).
    ^recoveredValue7
! !

"lib.ic method 0x20011718; bytecode file offset 0x4d75c"
!EmConfigurationMapRecord methodsFor: 'recovered'!
remove: recoveredArg1 ifUnable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) signature.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    (self) mustBeEditionTo: (303) withParms: (recoveredValue3) ifNot: (recoveredValue4).
    recoveredValue5 := (self) applicationEditionsIndex.
    recoveredValue6 := EmDictionaryOfTimeStamps.
    recoveredValue7 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := recoveredArg1.
    recoveredBlock27Value2 := (recoveredBlock27Value1) symbol.
    recoveredBlock27Value3 := (recoveredBlock27Value0) removeKey: (recoveredBlock27Value2).
    recoveredBlock27Value3
].
    recoveredValue8 := (self) updateRecordForPartAt: (recoveredValue5) ofType: (recoveredValue6) using: (recoveredValue7).
    ^recoveredValue8
! !

"lib.ic method 0x20013f5c; bytecode file offset 0x4ff9c"
!EmConfigurationMapRecord methodsFor: 'recovered'!
addExpression: recoveredArg1 ifUnable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    (self) userMustBeManagerTo: (259) noUserError: (258) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) mustBeEditionTo: (296) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) requiredMapsKey.
    recoveredValue4 := EmConfigurationMapLineups.
    recoveredValue5 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := recoveredArg1.
    recoveredBlock37Value2 := (recoveredBlock37Value0) addExpression: (recoveredBlock37Value1).
    recoveredBlock37Value2
].
    recoveredValue6 := (self) updateInheritedUserFieldAt: (recoveredValue3) ofType: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x20013fbc; bytecode file offset 0x4fffc"
!EmConfigurationMapRecord methodsFor: 'recovered'!
deleteExpression: recoveredArg1 ifUnable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    (self) userMustBeManagerTo: (265) noUserError: (264) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) mustBeEditionTo: (299) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) requiredMapsKey.
    recoveredValue4 := EmConfigurationMapLineups.
    recoveredValue5 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := recoveredArg1.
    recoveredBlock37Value2 := (recoveredBlock37Value0) deleteExpression: (recoveredBlock37Value1).
    recoveredBlock37Value2
].
    recoveredValue6 := (self) updateInheritedUserFieldAt: (recoveredValue3) ofType: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x200142e0; bytecode file offset 0x50348"
!EmConfigurationMapRecord methodsFor: 'recovered'!
addRequiredMapsAsFirst: recoveredArg1 for: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg3.
    (self) userMustBeManagerTo: (261) noUserError: (260) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg3.
    (self) mustBeEditionTo: (297) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) requiredMapsKey.
    recoveredValue4 := EmConfigurationMapLineups.
    recoveredValue5 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := recoveredArg1.
    recoveredBlock36Value2 := recoveredArg2.
    recoveredBlock36Value3 := (recoveredBlock36Value0) addRequiredMapsAsFirst: (recoveredBlock36Value1) for: (recoveredBlock36Value2).
    recoveredBlock36Value3
].
    recoveredValue6 := (self) updateInheritedUserFieldAt: (recoveredValue3) ofType: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x20014308; bytecode file offset 0x50348"
!EmConfigurationMapRecord methodsFor: 'recovered'!
addRequiredMapsAsLast: recoveredArg1 for: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg3.
    (self) userMustBeManagerTo: (261) noUserError: (260) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg3.
    (self) mustBeEditionTo: (297) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) requiredMapsKey.
    recoveredValue4 := EmConfigurationMapLineups.
    recoveredValue5 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := recoveredArg1.
    recoveredBlock36Value2 := recoveredArg2.
    recoveredBlock36Value3 := (recoveredBlock36Value0) addRequiredMapsAsLast: (recoveredBlock36Value1) for: (recoveredBlock36Value2).
    recoveredBlock36Value3
].
    recoveredValue6 := (self) updateInheritedUserFieldAt: (recoveredValue3) ofType: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x20014368; bytecode file offset 0x503a8"
!EmConfigurationMapRecord methodsFor: 'recovered'!
deleteRequiredMaps: recoveredArg1 for: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg3.
    (self) userMustBeManagerTo: (267) noUserError: (266) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg3.
    (self) mustBeEditionTo: (300) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) requiredMapsKey.
    recoveredValue4 := EmConfigurationMapLineups.
    recoveredValue5 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := recoveredArg1.
    recoveredBlock36Value2 := recoveredArg2.
    recoveredBlock36Value3 := (recoveredBlock36Value0) deleteRequiredMaps: (recoveredBlock36Value1) for: (recoveredBlock36Value2).
    recoveredBlock36Value3
].
    recoveredValue6 := (self) updateInheritedUserFieldAt: (recoveredValue3) ofType: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x200143c8; bytecode file offset 0x50430"
!EmConfigurationMapRecord methodsFor: 'recovered'!
moveRequiredMapsToFirst: recoveredArg1 for: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg3.
    (self) userMustBeManagerTo: (271) noUserError: (270) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg3.
    (self) mustBeEditionTo: (302) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) requiredMapsKey.
    recoveredValue4 := EmConfigurationMapLineups.
    recoveredValue5 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := recoveredArg1.
    recoveredBlock36Value2 := recoveredArg2.
    recoveredBlock36Value3 := (recoveredBlock36Value0) addRequiredMapsAsFirst: (recoveredBlock36Value1) for: (recoveredBlock36Value2).
    recoveredBlock36Value3
].
    recoveredValue6 := (self) updateInheritedUserFieldAt: (recoveredValue3) ofType: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x200143f0; bytecode file offset 0x50430"
!EmConfigurationMapRecord methodsFor: 'recovered'!
moveRequiredMapsToLast: recoveredArg1 for: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg3.
    (self) userMustBeManagerTo: (271) noUserError: (270) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg3.
    (self) mustBeEditionTo: (302) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) requiredMapsKey.
    recoveredValue4 := EmConfigurationMapLineups.
    recoveredValue5 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := recoveredArg1.
    recoveredBlock36Value2 := recoveredArg2.
    recoveredBlock36Value3 := (recoveredBlock36Value0) addRequiredMapsAsLast: (recoveredBlock36Value1) for: (recoveredBlock36Value2).
    recoveredBlock36Value3
].
    recoveredValue6 := (self) updateInheritedUserFieldAt: (recoveredValue3) ofType: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x20014da0; bytecode file offset 0x50de8"
!EmConfigurationMapRecord methodsFor: 'recovered'!
updateRecordForPartAt: recoveredArg1 ofType: recoveredArg2 using: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointerAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) updating: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) applicationEditionsIndex.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) renewApplicationEditions: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) filePointer.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) filePointer.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) replacePointerAt: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200150a4; bytecode file offset 0x510f0"
!EmConfigurationMapRecord methodsFor: 'recovered'!
versionName: recoveredArg1 ifUnable: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsByteCharacters.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 191.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := (recoveredStack5) map.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := (recoveredStack5) signature.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) stopAndReport: (recoveredStack2) withParms: (recoveredStack3) exitUsing: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 277.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 276.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) userMustBeManagerTo: (recoveredStack1) noUserError: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 305.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) mustBeEditionTo: (recoveredStack1) withParms: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) replaceElement: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) insert.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20015204; bytecode file offset 0x51244"
!EmConfigurationMapRecord methodsFor: 'recovered'!
copyExpression: recoveredArg1 toCreate: recoveredArg2 ifUnable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg3.
    (self) userMustBeManagerTo: (263) noUserError: (262) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg3.
    (self) mustBeEditionTo: (298) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) requiredMapsKey.
    recoveredValue4 := EmConfigurationMapLineups.
    recoveredValue5 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := recoveredArg1.
    recoveredBlock37Value2 := recoveredArg2.
    recoveredBlock37Value3 := (recoveredBlock37Value0) copyExpression: (recoveredBlock37Value1) toCreate: (recoveredBlock37Value2).
    recoveredBlock37Value3
].
    recoveredValue6 := (self) updateInheritedUserFieldAt: (recoveredValue3) ofType: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x200159a8; bytecode file offset 0x519e8"
!EmConfigurationMapRecord methodsFor: 'recovered'!
addRequiredMaps: recoveredArg1 after: recoveredArg2 for: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg4.
    (self) userMustBeManagerTo: (261) noUserError: (260) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg4.
    (self) mustBeEditionTo: (297) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) requiredMapsKey.
    recoveredValue4 := EmConfigurationMapLineups.
    recoveredValue5 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := recoveredArg1.
    recoveredBlock36Value2 := recoveredArg2.
    recoveredBlock36Value3 := recoveredArg3.
    recoveredBlock36Value4 := (recoveredBlock36Value0) addRequiredMaps: (recoveredBlock36Value1) after: (recoveredBlock36Value2) for: (recoveredBlock36Value3).
    recoveredBlock36Value4
].
    recoveredValue6 := (self) updateInheritedUserFieldAt: (recoveredValue3) ofType: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x20015a0c; bytecode file offset 0x51a4c"
!EmConfigurationMapRecord methodsFor: 'recovered'!
replaceRequiredMap: recoveredArg1 with: recoveredArg2 for: recoveredArg3 ifUnable: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg4.
    (self) userMustBeManagerTo: (275) noUserError: (274) ifNot: (recoveredValue0).
    recoveredValue1 := recoveredArg4.
    (self) mustBeEditionTo: (304) withParms: (#()) ifNot: (recoveredValue1).
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) requiredMapsKey.
    recoveredValue4 := EmConfigurationMapLineups.
    recoveredValue5 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := recoveredArg1.
    recoveredBlock36Value2 := recoveredArg2.
    recoveredBlock36Value3 := recoveredArg3.
    recoveredBlock36Value4 := (recoveredBlock36Value0) replaceRequiredMap: (recoveredBlock36Value1) with: (recoveredBlock36Value2) for: (recoveredBlock36Value3).
    recoveredBlock36Value4
].
    recoveredValue6 := (self) updateInheritedUserFieldAt: (recoveredValue3) ofType: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x20016230; bytecode file offset 0x52278"
!EmConfigurationMapRecord methodsFor: 'recovered'!
userMustBeManagerTo: recoveredArg1 noUserError: recoveredArg2 ifNot: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentID.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := #().
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) stopAndReport: (recoveredStack2) withParms: (recoveredStack3) exitUsing: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) map.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20016880; bytecode file offset 0x528d0"
!EmConfigurationMapRecord methodsFor: 'recovered'!
statusFor: recoveredArg1 is: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) privilegeNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
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
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := MxEMc125.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := 4294967295.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitShift: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) privilegesLong.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := 'mapmanager'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) setBit: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) privilegesLong: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20016e70; bytecode file offset 0x52ecc"
!EmConfigurationMapRecord methodsFor: 'recovered'!
updateDictionaryAt: recoveredArg1 using: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointerAt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := EmDiskDictionary.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) updating: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) inheritedFieldsIndex.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) map.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) renewMapInheritedUserFields: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) filePointer.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) filePointer.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := (recoveredStack4) statusBits.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) statusBits: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) filePointer: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) replacePointerAt: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200199b8; bytecode file offset 0x55a14"
!EmConfigurationMapRecord methodsFor: 'recovered'!
mergeWith: recoveredArg1 mapping: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsInLibrary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := super mergeWith: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) manager.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) replaceElement: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := MxEMc149.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) manager.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) logConsoleError: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 'Supervisor'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) replaceElement: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) movePartsTo: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) library.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) insertInto: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001a6c4; bytecode file offset 0x56714"
!EmConfigurationMapRecord methodsFor: 'recovered'!
privilegesDictionary
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) privilegeNames.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) privilegesLong.
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := Dictionary.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue4) size.
    recoveredValue6 := (recoveredValue3) new: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29Stack4 recoveredBlock29Stack5 recoveredBlock29Stack6 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal2.
            recoveredBlock29PC := 39.
        ].
        recoveredBlock29Step = 39 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 40.
        ].
        recoveredBlock29Step = 40 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) indexOf: (recoveredBlock29Stack2).
            recoveredBlock29PC := 42.
        ].
        recoveredBlock29Step = 42 ifTrue: [
            recoveredLocal4 := recoveredBlock29Stack1.
            recoveredBlock29PC := 45.
        ].
        recoveredBlock29Step = 45 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal1.
            recoveredBlock29PC := 48.
        ].
        recoveredBlock29Step = 48 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 49.
        ].
        recoveredBlock29Step = 49 ifTrue: [
            recoveredBlock29Stack3 := recoveredLocal3.
            recoveredBlock29PC := 52.
        ].
        recoveredBlock29Step = 52 ifTrue: [
            recoveredBlock29Stack4 := recoveredLocal4.
            recoveredBlock29PC := 55.
        ].
        recoveredBlock29Step = 55 ifTrue: [
            recoveredBlock29Stack5 := 2.
            recoveredBlock29PC := 57.
        ].
        recoveredBlock29Step = 57 ifTrue: [
            recoveredBlock29Stack4 := (recoveredBlock29Stack4) * (recoveredBlock29Stack5).
            recoveredBlock29PC := 58.
        ].
        recoveredBlock29Step = 58 ifTrue: [
            recoveredBlock29Stack3 := (recoveredBlock29Stack3) isBitSet: (recoveredBlock29Stack4).
            recoveredBlock29PC := 60.
        ].
        recoveredBlock29Step = 60 ifTrue: [
            (recoveredBlock29Stack3) ifTrue: [recoveredBlock29PC := 64] ifFalse: [recoveredBlock29PC := 70].
        ].
        recoveredBlock29Step = 64 ifTrue: [
            recoveredBlock29Stack3 := 'maporappmanager'.
            recoveredBlock29PC := 66.
        ].
        recoveredBlock29Step = 66 ifTrue: [
            recoveredBlock29PC := 72.
        ].
        recoveredBlock29Step = 70 ifTrue: [
            recoveredBlock29Stack3 := 'mapmanager'.
            recoveredBlock29PC := 72.
        ].
        recoveredBlock29Step = 72 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) at: (recoveredBlock29Stack2) put: (recoveredBlock29Stack3).
            recoveredBlock29PC := 74.
        ].
        recoveredBlock29Step = 74 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"lib.ic method 0x20024284; bytecode file offset 0x60330"
!EmConfigurationMapRecord methodsFor: 'recovered'!
newEditionAt: recoveredArg1 using: recoveredArg2 ifUnable: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 273.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 272.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) userMustBeManagerTo: (recoveredStack1) noUserError: (recoveredStack2) ifNot: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamp.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUndefined.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) map.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) stopAndReport: (recoveredStack1) withParms: (recoveredStack2) exitUsing: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) previousIndex.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) timeStamp.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) putTimeStamp: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) timeStampIndex.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) putTimeStamp: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) beenLoadedIndex.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) putByte: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) applicationEditionsIndex.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := EmDictionaryOfTimeStamps.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack5 := (recoveredStack5) library.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) createFor: (recoveredStack4) in: (recoveredStack5).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) putFilePointer: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) localFieldsIndex.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := EmLibraryPointer.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) void.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) putFilePointer: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := EmUser.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) currentID.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) replaceElement: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) replaceElement: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) inheritedUserFields.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 127] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) inheritedFieldsIndex.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) insert.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGateway.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := TimeStamp.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) resultAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) map.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) timeStamp: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) primManager: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

