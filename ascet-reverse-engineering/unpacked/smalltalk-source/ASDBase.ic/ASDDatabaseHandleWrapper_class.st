"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003e428; bytecode file offset 0x93bf94"
!ASDDatabaseHandleWrapper class methodsFor: 'recovered'!
createFirstVersionIdKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDCodeContainerHandle.
    recoveredValue1 := (recoveredValue0) createFirstVersionIdKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007dd14; bytecode file offset 0x97c330"
!ASDDatabaseHandleWrapper class methodsFor: 'recovered'!
isAbstract
    ^false
! !

"ASDBase.ic method 0x20081668; bytecode file offset 0x97e234"
!ASDDatabaseHandleWrapper class methodsFor: 'recovered'!
createByteArrayProjectKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDCodeContainerHandle.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createByteArrayProjectKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200dd26c; bytecode file offset 0x9d9b78"
!ASDDatabaseHandleWrapper class methodsFor: 'recovered'!
createByteArrayPrimaryKey: recoveredArg1 targetKey: recoveredArg2 codeGenPath: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASDCodeContainerHandle.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) createByteArrayPrimaryKey: (recoveredValue1) targetKey: (recoveredValue2) codeGenPath: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201121fc; bytecode file offset 0xa0eabc"
!ASDDatabaseHandleWrapper class methodsFor: 'recovered'!
hashKey: recoveredArg1 secondaryKey: recoveredArg2 projectKey: recoveredArg3 targetKey: recoveredArg4 codeGenPath: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg4.
    recoveredValue2 := recoveredArg5.
    recoveredValue3 := (self) createByteArrayPrimaryKey: (recoveredValue0) targetKey: (recoveredValue1) codeGenPath: (recoveredValue2).
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (self) createByteArrayProjectKey: (recoveredValue4).
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2043d740; bytecode file offset 0xd3a00c"
!ASDDatabaseHandleWrapper class methodsFor: 'recovered'!
lookupPrimaryKey: recoveredArg1 secondaryKey: recoveredArg2 projectKey: recoveredArg3 targetKey: recoveredArg4 codeGenPath: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := (self) hashKey: (recoveredValue0) secondaryKey: (recoveredValue1) projectKey: (recoveredValue2) targetKey: (recoveredValue3) codeGenPath: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 |
    recoveredBlock29Value0 := recoveredArg1.
    recoveredBlock29Value1 := recoveredArg2.
    recoveredBlock29Value2 := recoveredArg3.
    recoveredBlock29Value3 := recoveredArg4.
    recoveredBlock29Value4 := recoveredArg5.
    recoveredBlock29Value5 := (self) lookupHandlePrimaryKey: (recoveredBlock29Value0) secondaryKey: (recoveredBlock29Value1) projectKey: (recoveredBlock29Value2) targetKey: (recoveredBlock29Value3) codeGenPath: (recoveredBlock29Value4).
    ^recoveredBlock29Value5
].
    recoveredValue8 := (self) codeStorageAt: (recoveredValue6) ifAbsent: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 recoveredBlock63Value4 |
    recoveredBlock63Value0 := recoveredBlock63Arg1.
    recoveredBlock63Value1 := (recoveredBlock63Value0) dbHandle.
    recoveredBlock63Value2 := (recoveredBlock63Value1) secondaryKey.
    recoveredBlock63Value3 := recoveredArg2.
    recoveredBlock63Value4 := (recoveredBlock63Value2) = (recoveredBlock63Value3).
    recoveredBlock63Value4
].
    recoveredValue11 := [
    | recoveredBlock79Value0 recoveredBlock79Value1 recoveredBlock79Value2 recoveredBlock79Value3 recoveredBlock79Value4 recoveredBlock79Value5 |
    recoveredBlock79Value0 := recoveredArg1.
    recoveredBlock79Value1 := recoveredArg2.
    recoveredBlock79Value2 := recoveredArg3.
    recoveredBlock79Value3 := recoveredArg4.
    recoveredBlock79Value4 := recoveredArg5.
    recoveredBlock79Value5 := (self) lookupHandlePrimaryKey: (recoveredBlock79Value0) secondaryKey: (recoveredBlock79Value1) projectKey: (recoveredBlock79Value2) targetKey: (recoveredBlock79Value3) codeGenPath: (recoveredBlock79Value4).
    ^recoveredBlock79Value5
].
    recoveredValue12 := (recoveredValue9) detect: (recoveredValue10) ifNone: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x204845f8; bytecode file offset 0xd80eec"
!ASDDatabaseHandleWrapper class methodsFor: 'recovered'!
createForPrimaryKey: recoveredArg1 secondaryKey: recoveredArg2 projectKey: recoveredArg3 targetKey: recoveredArg4 codeGenPath: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDCodeContainerHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) createByteArrayProjectKey: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) createByteArrayPrimaryKey: (recoveredStack4) targetKey: (recoveredStack5) codeGenPath: (recoveredStack6).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) initializeRBDBObject: (recoveredStack2) className: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) createFirstVersionIdKey.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) firstVersionId: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) secondaryKey: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) commitWithoutCacheWrite.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbHandle: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) hashKey: (recoveredStack1) secondaryKey: (recoveredStack2) projectKey: (recoveredStack3) targetKey: (recoveredStack4) codeGenPath: (recoveredStack5).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock96Value0 recoveredBlock96Value1 recoveredBlock96Value2 recoveredBlock96Value3 |
    recoveredBlock96Value0 := recoveredLocal2.
    recoveredBlock96Value1 := OrderedCollection.
    recoveredBlock96Value2 := (recoveredBlock96Value1) new.
    recoveredBlock96Value3 := (self) codeStorageAt: (recoveredBlock96Value0) put: (recoveredBlock96Value2).
    recoveredBlock96Value3
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeStorageAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20524a1c; bytecode file offset 0xe21334"
!ASDDatabaseHandleWrapper class methodsFor: 'recovered'!
lookupHandlePrimaryKey: recoveredArg1 secondaryKey: recoveredArg2 projectKey: recoveredArg3 targetKey: recoveredArg4 codeGenPath: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_88975'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg5.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) createByteArrayPrimaryKey: (recoveredStack2) targetKey: (recoveredStack3) codeGenPath: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) createByteArrayProjectKey: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) queriesExactForClassName: (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 'DBSearchNameIsString'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) isString.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 |
    recoveredBlock64Value0 := recoveredLocal6.
    recoveredBlock64Value1 := recoveredBlock64Arg1.
    recoveredBlock64Value2 := (recoveredBlock64Value1) searchDatabase.
    recoveredBlock64Value3 := (recoveredBlock64Value0) addAll: (recoveredBlock64Value2).
    recoveredBlock64Value3
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'DBSearchNameIsString'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 |
    recoveredBlock90Value0 := recoveredBlock90Arg1.
    recoveredBlock90Value1 := (recoveredBlock90Value0) secondaryKey.
    recoveredBlock90Value2 := recoveredArg2.
    recoveredBlock90Value3 := (recoveredBlock90Value1) = (recoveredBlock90Value2).
    recoveredBlock90Value3
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 133] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := [:block2810c750Arg1 | 
    nil
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) dbHandle: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) hashKey: (recoveredStack1) secondaryKey: (recoveredStack2) projectKey: (recoveredStack3) targetKey: (recoveredStack4) codeGenPath: (recoveredStack5).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) codeStorageAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

