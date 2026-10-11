"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200191fc; bytecode file offset 0x92209c"
!CTreeDLL class methodsFor: 'recovered'!
errorFileName
    ^'cterrmsg'
! !

"ASDBase.ic method 0x2004fad0; bytecode file offset 0x94d048"
!CTreeDLL class methodsFor: 'recovered'!
fileName
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2008776c; bytecode file offset 0x9840b8"
!CTreeDLL class methodsFor: 'recovered'!
create
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200efd10; bytecode file offset 0x9ec5cc"
!CTreeDLL class methodsFor: 'recovered'!
removeDLL
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CTreeLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CTreeLibrary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) removeDLL.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20104e7c; bytecode file offset 0xa01748"
!CTreeDLL class methodsFor: 'recovered'!
closeDLL
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformLibrary.
    recoveredValue1 := (self) fileName.
    recoveredValue2 := (recoveredValue0) logicalName: (recoveredValue1).
    (recoveredValue2) close.
    recoveredValue3 := CTStructure.
    (recoveredValue3) cleanupOSMemory.
    ^self
! !

"ASDBase.ic method 0x2011420c; bytecode file offset 0xa10b28"
!CTreeDLL class methodsFor: 'recovered'!
getOptions2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := EsPoolDictionary.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) at: ('CTreeConstants') ifAbsentPut: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20114228; bytecode file offset 0xa10b28"
!CTreeDLL class methodsFor: 'recovered'!
getOptions
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := EsPoolDictionary.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) at: ('CTreeOptions') put: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20114244; bytecode file offset 0xa10b28"
!CTreeDLL class methodsFor: 'recovered'!
getConstants
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := EsPoolDictionary.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) at: ('CTreeConstants') ifAbsentPut: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20114260; bytecode file offset 0xa10b28"
!CTreeDLL class methodsFor: 'recovered'!
getErrorConstants
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := EsPoolDictionary.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) at: ('CTreeConstants') ifAbsentPut: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201f84fc; bytecode file offset 0xaf4dd4"
!CTreeDLL class methodsFor: 'recovered'!
closeResourceDLL
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSHmodule.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) errorFileName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPSZ.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getModuleHandle: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNull.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) freeLibrary.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := PlatformLibrary.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) errorFileName.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicalName: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20251594; bytecode file offset 0xb4de70"
!CTreeDLL class methodsFor: 'recovered'!
savePoolsToFile
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) objectDumper30RBClass.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := CfsFileDescriptor.
    (recoveredValue2) remove: ('CTConst.swp').
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := CTreeOptions.
    recoveredValue5 := (recoveredValue3) totalSizeBeforeUnload: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := CTreeOptions.
    (recoveredValue6) unload: (recoveredValue7) intoFile: ('CTConst.swp').
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := CTreeConstants.
    recoveredValue10 := recoveredLocal2.
    (recoveredValue8) unload: (recoveredValue9) intoFile: ('CTConst.swp') atOffset: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x2029a14c; bytecode file offset 0xb96a28"
!CTreeDLL class methodsFor: 'recovered'!
getPerformConstants
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CTreeConstants'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block280e3568Value0 block280e3568Value1 |
    block280e3568Value0 := EsPoolDictionary.
    block280e3568Value1 := (block280e3568Value0) new.
    block280e3568Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 'PERFORM_ON'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 'PERFORM_OFF'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'PERFORM_DUMP'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e4724; bytecode file offset 0xbe1004"
!CTreeDLL class methodsFor: 'recovered'!
getDODAConstants
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CTreeConstants'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block280e7564Value0 block280e7564Value1 |
    block280e7564Value0 := EsPoolDictionary.
    block280e7564Value1 := (block280e7564Value0) new.
    block280e7564Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 'SCHEMA_MAP'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 'SCHEMA_NAMES'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 'SCHEMA_MAPandNAMES'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'SCHEMA_DODA'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20354058; bytecode file offset 0xc5093c"
!CTreeDLL class methodsFor: 'recovered'!
getCapacityConstants
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CTreeConstants'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block280ef6a0Value0 block280ef6a0Value1 |
    block280ef6a0Value0 := EsPoolDictionary.
    block280ef6a0Value1 := (block280ef6a0Value0) new.
    block280ef6a0Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 'BFRSIZ'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := 2048.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 'DATABUFS'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := 100.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := 'MAXLEN'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := 255.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 'RESNAME_LEN'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := 64.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 'MAXVFIL'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 500.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b8d2c; bytecode file offset 0xcb5624"
!CTreeDLL class methodsFor: 'recovered'!
loadPoolsFromFile
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectLoader30RBClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'CTConst.swp'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadFromFile: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'CTConst.swp'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) filePosition.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadFromFile: (recoveredStack1) atOffset: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'CTreeOptions'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [
    | block280f6114Value0 block280f6114Value1 |
    block280f6114Value0 := EsPoolDictionary.
    block280f6114Value1 := (block280f6114Value0) new.
    block280f6114Value1
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'CTreeConstants'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := [
    | block280f6138Value0 block280f6138Value1 |
    block280f6138Value0 := EsPoolDictionary.
    block280f6138Value1 := (block280f6138Value0) new.
    block280f6138Value1
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c9dfc; bytecode file offset 0xdc6700"
!CTreeDLL class methodsFor: 'recovered'!
createLoadedCode
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('loaded').
    (recoveredValue2) cr.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) nextPutAll: ('| pool |').
    (recoveredValue4) cr.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) nextPutAll: ('pool := Smalltalk at: #CTreeOptions ifAbsentPut: [EsPoolDictionary new .]. ').
    (recoveredValue6) cr.
    recoveredValue8 := CTreeOptions.
    recoveredValue9 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 recoveredBlock44Value6 recoveredBlock44Value7 recoveredBlock44Value8 recoveredBlock44Value9 recoveredBlock44Value10 recoveredBlock44Value11 recoveredBlock44Value12 |
    recoveredBlock44Value0 := recoveredLocal1.
    recoveredBlock44Value1 := recoveredBlock44Arg1.
    recoveredBlock44Value2 := (recoveredBlock44Value1) key.
    recoveredBlock44Value3 := (recoveredBlock44Value2) printString.
    recoveredBlock44Value4 := ('pool at: ') , (recoveredBlock44Value3).
    recoveredBlock44Value5 := (recoveredBlock44Value4) , (' put: ').
    recoveredBlock44Value6 := recoveredBlock44Arg1.
    recoveredBlock44Value7 := (recoveredBlock44Value6) value.
    recoveredBlock44Value8 := (recoveredBlock44Value7) printString.
    recoveredBlock44Value9 := (recoveredBlock44Value5) , (recoveredBlock44Value8).
    recoveredBlock44Value10 := (recoveredBlock44Value9) , (' . ').
    (recoveredBlock44Value0) nextPutAll: (recoveredBlock44Value10).
    recoveredBlock44Value11 := recoveredLocal1.
    recoveredBlock44Value12 := (recoveredBlock44Value11) cr.
    recoveredBlock44Value12
].
    (recoveredValue8) associationsDo: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    (recoveredValue10) cr.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPutAll: ('pool := Smalltalk at: #CTreeConstants ifAbsentPut: [EsPoolDictionary new .]. ').
    (recoveredValue11) cr.
    recoveredValue13 := CTreeConstants.
    recoveredValue14 := [:recoveredBlock104Arg1 | 
    | recoveredBlock104Value0 recoveredBlock104Value1 recoveredBlock104Value2 recoveredBlock104Value3 recoveredBlock104Value4 recoveredBlock104Value5 recoveredBlock104Value6 recoveredBlock104Value7 recoveredBlock104Value8 recoveredBlock104Value9 recoveredBlock104Value10 recoveredBlock104Value11 recoveredBlock104Value12 |
    recoveredBlock104Value0 := recoveredLocal1.
    recoveredBlock104Value1 := recoveredBlock104Arg1.
    recoveredBlock104Value2 := (recoveredBlock104Value1) key.
    recoveredBlock104Value3 := (recoveredBlock104Value2) printString.
    recoveredBlock104Value4 := ('pool at: ') , (recoveredBlock104Value3).
    recoveredBlock104Value5 := (recoveredBlock104Value4) , (' put: ').
    recoveredBlock104Value6 := recoveredBlock104Arg1.
    recoveredBlock104Value7 := (recoveredBlock104Value6) value.
    recoveredBlock104Value8 := (recoveredBlock104Value7) printString.
    recoveredBlock104Value9 := (recoveredBlock104Value5) , (recoveredBlock104Value8).
    recoveredBlock104Value10 := (recoveredBlock104Value9) , (' . ').
    (recoveredBlock104Value0) nextPutAll: (recoveredBlock104Value10).
    recoveredBlock104Value11 := recoveredLocal1.
    recoveredBlock104Value12 := (recoveredBlock104Value11) cr.
    recoveredBlock104Value12
].
    (recoveredValue13) associationsDo: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) contents.
    ^recoveredValue16
! !

"ASDBase.ic method 0x20504b40; bytecode file offset 0xe0146c"
!CTreeDLL class methodsFor: 'recovered'!
getBatchConstants
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CTreeConstants'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block2810a9c8Value0 block2810a9c8Value1 |
    block2810a9c8Value0 := EsPoolDictionary.
    block2810a9c8Value1 := (block2810a9c8Value0) new.
    block2810a9c8Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 'BAT_CAN'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 'BAT_COMPLETE'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := 8192.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := 'BAT_OPC_RESV'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := 7.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := 'BAT_INS'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := 6.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 'BAT_UPD'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := 'BAT_DEL'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := 'BAT_GET'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := 'BAT_GKEY'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := 256.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := 'BAT_KEYS'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := 1024.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := 'BAT_LOK_RED'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := 2048.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := 'BAT_LOK_WRT'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := 4096.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := 'BAT_NXT'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := 'BAT_PKEY'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := 'BAT_RESV1'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := 8.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := 'BAT_RET_REC'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := 32.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := 'BAT_RET_KEY'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := 128.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := 'BAT_RET_POS'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack4 := 64.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := 'BAT_FLTR'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := 16384.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := 'BAT_LOK_KEEP'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack4 := 32768.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := 'BAT_RPOS'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack4 := 512.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := 'BAT_VERIFY'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206cb434; bytecode file offset 0xfc9504"
!CTreeDLL class methodsFor: 'recovered'!
loaded
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CTreeOptions'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block28133a5cValue0 block28133a5cValue1 |
    block28133a5cValue0 := EsPoolDictionary.
    block28133a5cValue1 := (block28133a5cValue0) new.
    block28133a5cValue1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'PercD'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'NoUnifm'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'CtsIsam'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'Ctsuper'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'Ctbound'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 'Ctpascalst'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'Parmfile'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 'Prototype'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'Cticontext'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'Resource'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'Ctnoglobals'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 'Tranproc'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'Ctmaxfil'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := 75.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'NoTranproc'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := 'Varlkeys'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 'Ctloclib'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := 'Ctbatch'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 'Notforce'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := 'Ctcliside'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := 'Fputfget'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := 'LowHigh'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := 'Varldata'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := 'Rtree'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := 'NoBound'.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := 'CTreeConstants'.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := [
    | block28133a80Value0 block28133a80Value1 |
    block28133a80Value0 := EsPoolDictionary.
    block28133a80Value1 := (block28133a80Value0) new.
    block28133a80Value1
].
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 'OpsStateOn'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := 'ClnClose'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := 'SblfErr'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := 513.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := 'Idz'.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := 'SecFileword'.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := 'CfgcheckpointIdle'.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := 81.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := 'MskAlt'.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := '~altSeq'.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := 'Difimage'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack3 := 15.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := 'ResUnavl'.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := 'CIPFASE'.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack2 := 'Uregseg'.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := 'CtddCnt'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := 'CoRegular'.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := 'CfglogSpace'.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := 9.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := 'Ctfilefailure'.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := 'Uvschseg'.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack3 := 15.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := 'BegmsgOffset'.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack2 := 'TrdLogon'.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := 1024.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := 'Exs'.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := 'Virtual'.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack2 := 'CfgdiskioModel'.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := 'USERPRF_LOCLIB'.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack2 := 'MAXVFIL'.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack3 := 500.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := 'CtStrlng'.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack2 := 'VflgErr'.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack3 := 158.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack2 := 'Ctdiagnosecompare'.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := 'KminErr'.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack2 := 'CT_INT2U'.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack3 := 40.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack2 := 'TrnDnode'.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack2 := 'MredErr'.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack3 := 548.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack2 := 'Ctclntside'.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := 'Ctdelsiz'.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack3 := '2048)'.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack2 := 'Bldadd'.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack2 := 'ShRstfil'.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack3 := 25.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack2 := 'IredErr'.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack3 := 114.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack2 := 'FnMaskVrlen'.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack3 := 1024.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack2 := 'IdnlErr'.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack3 := 194.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack2 := 'CfgpreimageFile'.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack2 := 'Wxl'.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack3 := 9.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack2 := 'CfgtaskerLoop'.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack3 := 49.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack2 := 'Comitran'.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack2 := 'Recpad'.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack2 := 'CfgpageSize'.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack2 := 'OpsAdmopn'.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack3 := 512.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack2 := 'Indxmid'.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack3 := 61.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack2 := 'SdelErr'.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack3 := 416.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack2 := 'Exz'.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack2 := 'DODA_PCID'.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack2 := 'Extern'.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack3 := 'Extern'.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack2 := 'QredErr'.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack3 := 93.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack2 := 'PndgErr'.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack3 := 94.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack2 := 'IksrErr'.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack3 := 182.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack2 := 'Nsc'.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack2 := 'SmonErr'.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack3 := 560.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack2 := 'FreeTran'.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack2 := 'Idxonly'.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack2 := 'CtrtFwrite'.
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack3 := 'Fwrite'.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack2 := 'CfgopenFcbs'.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack3 := 204.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack2 := 'OpsAutoisamTrn'.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack3 := 262144.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack2 := 'Rcl4Err'.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack3 := 573.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack2 := 'Indxlst'.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack3 := 63.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack2 := 'Rcl2Err'.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack3 := 571.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredStack2 := 'CtddEnd'.
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack2 := 'WpfNopass'.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack3 := 131072.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack2 := 'DlTdlt'.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack2 := 'CtInt4u'.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredStack2 := 'OpsClientTrm'.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredStack3 := 8192.
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredStack2 := 'SystErr'.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack3 := 155.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            recoveredStack2 := 'Ctfwrt'.
            recoveredPC := 788.
        ].
        recoveredStep = 788 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack2 := 'Nodupkey'.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack3 := '''\0'''.
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack2 := 'CtlkmdRsv'.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack2 := 'CtmirrorSepstr'.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack3 := '"|"'.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 820.
        ].
        recoveredStep = 820 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            recoveredStack2 := 'Dsz'.
            recoveredPC := 824.
        ].
        recoveredStep = 824 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 828.
        ].
        recoveredStep = 828 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            recoveredStack2 := 'ClnSplnod'.
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredStack2 := 'CtFpstring'.
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 844.
        ].
        recoveredStep = 844 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            recoveredStack2 := 'CtmaxMonitor'.
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 852.
        ].
        recoveredStep = 852 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            recoveredStack2 := 'Swtcuri'.
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 862.
        ].
        recoveredStep = 862 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack2 := 'Ctdivs'.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack3 := '0)'.
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredStack2 := 'Keypad'.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack3 := 14.
            recoveredPC := 878.
        ].
        recoveredStep = 878 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            recoveredStack2 := 'CtddSup'.
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 888.
        ].
        recoveredStep = 888 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            recoveredStack2 := 'BAT_RET_POS'.
            recoveredPC := 892.
        ].
        recoveredStep = 892 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 899.
        ].
        recoveredStep = 899 ifTrue: [
            recoveredStack2 := 'Autosave'.
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            recoveredStack3 := 8192.
            recoveredPC := 906.
        ].
        recoveredStep = 906 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 908.
        ].
        recoveredStep = 908 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            recoveredStack2 := 'ClnStrip'.
            recoveredPC := 912.
        ].
        recoveredStep = 912 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 914.
        ].
        recoveredStep = 914 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 916.
        ].
        recoveredStep = 916 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 917.
        ].
        recoveredStep = 917 ifTrue: [
            recoveredStack2 := 'Fast'.
            recoveredPC := 920.
        ].
        recoveredStep = 920 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 922.
        ].
        recoveredStep = 922 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 924.
        ].
        recoveredStep = 924 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 925.
        ].
        recoveredStep = 925 ifTrue: [
            recoveredStack2 := 'Rs2typ'.
            recoveredPC := 928.
        ].
        recoveredStep = 928 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 930.
        ].
        recoveredStep = 930 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            recoveredStack2 := 'AbnmErr'.
            recoveredPC := 936.
        ].
        recoveredStep = 936 ifTrue: [
            recoveredStack3 := 139.
            recoveredPC := 940.
        ].
        recoveredStep = 940 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 942.
        ].
        recoveredStep = 942 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            recoveredStack2 := 'DlSrch'.
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 948.
        ].
        recoveredStep = 948 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 950.
        ].
        recoveredStep = 950 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 951.
        ].
        recoveredStep = 951 ifTrue: [
            recoveredStack2 := 'CommitSwap'.
            recoveredPC := 954.
        ].
        recoveredStep = 954 ifTrue: [
            recoveredStack3 := 16384.
            recoveredPC := 958.
        ].
        recoveredStep = 958 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            recoveredStack2 := 'DEFERCP'.
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredStack3 := 4096.
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 971.
        ].
        recoveredStep = 971 ifTrue: [
            recoveredStack2 := 'Maxlen'.
            recoveredPC := 974.
        ].
        recoveredStep = 974 ifTrue: [
            recoveredStack3 := 255.
            recoveredPC := 978.
        ].
        recoveredStep = 978 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 981.
        ].
        recoveredStep = 981 ifTrue: [
            recoveredStack2 := 'Delupdt'.
            recoveredPC := 984.
        ].
        recoveredStep = 984 ifTrue: [
            recoveredStack3 := 2048.
            recoveredPC := 988.
        ].
        recoveredStep = 988 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 990.
        ].
        recoveredStep = 990 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 991.
        ].
        recoveredStep = 991 ifTrue: [
            recoveredStack2 := 'Ctsegpos'.
            recoveredPC := 994.
        ].
        recoveredStep = 994 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 996.
        ].
        recoveredStep = 996 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 998.
        ].
        recoveredStep = 998 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            recoveredStack2 := 'RredErr'.
            recoveredPC := 1002.
        ].
        recoveredStep = 1002 ifTrue: [
            recoveredStack3 := 407.
            recoveredPC := 1006.
        ].
        recoveredStep = 1006 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1008.
        ].
        recoveredStep = 1008 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1009.
        ].
        recoveredStep = 1009 ifTrue: [
            recoveredStack2 := 'Ctghatsn'.
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 1014.
        ].
        recoveredStep = 1014 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1016.
        ].
        recoveredStep = 1016 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1017.
        ].
        recoveredStep = 1017 ifTrue: [
            recoveredStack2 := 'CtpathSep'.
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            recoveredStack3 := '''?'''.
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1026.
        ].
        recoveredStep = 1026 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1027.
        ].
        recoveredStep = 1027 ifTrue: [
            recoveredStack2 := 'Wxh'.
            recoveredPC := 1030.
        ].
        recoveredStep = 1030 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 1032.
        ].
        recoveredStep = 1032 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1035.
        ].
        recoveredStep = 1035 ifTrue: [
            recoveredStack2 := 'Pdz'.
            recoveredPC := 1038.
        ].
        recoveredStep = 1038 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 1040.
        ].
        recoveredStep = 1040 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1042.
        ].
        recoveredStep = 1042 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1043.
        ].
        recoveredStep = 1043 ifTrue: [
            recoveredStack2 := 'Indxadd'.
            recoveredPC := 1046.
        ].
        recoveredStep = 1046 ifTrue: [
            recoveredStack3 := 42.
            recoveredPC := 1048.
        ].
        recoveredStep = 1048 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1050.
        ].
        recoveredStep = 1050 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1051.
        ].
        recoveredStep = 1051 ifTrue: [
            recoveredStack2 := 'DODA_NAME'.
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1058.
        ].
        recoveredStep = 1058 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1059.
        ].
        recoveredStep = 1059 ifTrue: [
            recoveredStack2 := 'SCHEMA_MAP'.
            recoveredPC := 1062.
        ].
        recoveredStep = 1062 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1066.
        ].
        recoveredStep = 1066 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1067.
        ].
        recoveredStep = 1067 ifTrue: [
            recoveredStack2 := 'Tmpkey'.
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 1072.
        ].
        recoveredStep = 1072 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1074.
        ].
        recoveredStep = 1074 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1075.
        ].
        recoveredStep = 1075 ifTrue: [
            recoveredStack2 := 'BatKeys'.
            recoveredPC := 1078.
        ].
        recoveredStep = 1078 ifTrue: [
            recoveredStack3 := 1024.
            recoveredPC := 1082.
        ].
        recoveredStep = 1082 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1084.
        ].
        recoveredStep = 1084 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1085.
        ].
        recoveredStep = 1085 ifTrue: [
            recoveredStack2 := 'Altseqbyt'.
            recoveredPC := 1088.
        ].
        recoveredStep = 1088 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 1090.
        ].
        recoveredStep = 1090 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1092.
        ].
        recoveredStep = 1092 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1093.
        ].
        recoveredStep = 1093 ifTrue: [
            recoveredStack2 := 'CfgforceLogidx'.
            recoveredPC := 1096.
        ].
        recoveredStep = 1096 ifTrue: [
            recoveredStack3 := 83.
            recoveredPC := 1100.
        ].
        recoveredStep = 1100 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1103.
        ].
        recoveredStep = 1103 ifTrue: [
            recoveredStack2 := 'Ctthrdret'.
            recoveredPC := 1106.
        ].
        recoveredStep = 1106 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 1108.
        ].
        recoveredStep = 1108 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1111.
        ].
        recoveredStep = 1111 ifTrue: [
            recoveredStack2 := 'Hys'.
            recoveredPC := 1114.
        ].
        recoveredStep = 1114 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            recoveredStack2 := 'DefNatlng2'.
            recoveredPC := 1122.
        ].
        recoveredStep = 1122 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 1124.
        ].
        recoveredStep = 1124 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1126.
        ].
        recoveredStep = 1126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1127.
        ].
        recoveredStep = 1127 ifTrue: [
            recoveredStack2 := 'SchemaMapandnames'.
            recoveredPC := 1130.
        ].
        recoveredStep = 1130 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 1132.
        ].
        recoveredStep = 1132 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1134.
        ].
        recoveredStep = 1134 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1135.
        ].
        recoveredStep = 1135 ifTrue: [
            recoveredStack2 := 'Ctuwrt'.
            recoveredPC := 1138.
        ].
        recoveredStep = 1138 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 1140.
        ].
        recoveredStep = 1140 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1142.
        ].
        recoveredStep = 1142 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1143.
        ].
        recoveredStep = 1143 ifTrue: [
            recoveredStack2 := 'Shared'.
            recoveredPC := 1146.
        ].
        recoveredStep = 1146 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 1148.
        ].
        recoveredStep = 1148 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1150.
        ].
        recoveredStep = 1150 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1151.
        ].
        recoveredStep = 1151 ifTrue: [
            recoveredStack2 := 'Rs3typ'.
            recoveredPC := 1154.
        ].
        recoveredStep = 1154 ifTrue: [
            recoveredStack3 := 19.
            recoveredPC := 1156.
        ].
        recoveredStep = 1156 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1158.
        ].
        recoveredStep = 1158 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1159.
        ].
        recoveredStep = 1159 ifTrue: [
            recoveredStack2 := 'Wait'.
            recoveredPC := 1162.
        ].
        recoveredStep = 1162 ifTrue: [
            recoveredStack3 := '-1l'.
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1168.
        ].
        recoveredStep = 1168 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1169.
        ].
        recoveredStep = 1169 ifTrue: [
            recoveredStack2 := 'AltSeq'.
            recoveredPC := 1172.
        ].
        recoveredStep = 1172 ifTrue: [
            recoveredStack3 := '''\20'''.
            recoveredPC := 1176.
        ].
        recoveredStep = 1176 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1178.
        ].
        recoveredStep = 1178 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1179.
        ].
        recoveredStep = 1179 ifTrue: [
            recoveredStack2 := 'Rs1typ'.
            recoveredPC := 1182.
        ].
        recoveredStep = 1182 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 1184.
        ].
        recoveredStep = 1184 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1186.
        ].
        recoveredStep = 1186 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1187.
        ].
        recoveredStep = 1187 ifTrue: [
            recoveredStack2 := 'Sgnseg'.
            recoveredPC := 1190.
        ].
        recoveredStep = 1190 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 1192.
        ].
        recoveredStep = 1192 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1194.
        ].
        recoveredStep = 1194 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1195.
        ].
        recoveredStep = 1195 ifTrue: [
            recoveredStack2 := 'Rdl'.
            recoveredPC := 1198.
        ].
        recoveredStep = 1198 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 1200.
        ].
        recoveredStep = 1200 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1202.
        ].
        recoveredStep = 1202 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1203.
        ].
        recoveredStep = 1203 ifTrue: [
            recoveredStack2 := 'ZdrnErr'.
            recoveredPC := 1206.
        ].
        recoveredStep = 1206 ifTrue: [
            recoveredStack3 := 28.
            recoveredPC := 1208.
        ].
        recoveredStep = 1208 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1210.
        ].
        recoveredStep = 1210 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1211.
        ].
        recoveredStep = 1211 ifTrue: [
            recoveredStack2 := 'Sso'.
            recoveredPC := 1214.
        ].
        recoveredStep = 1214 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 1216.
        ].
        recoveredStep = 1216 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1218.
        ].
        recoveredStep = 1218 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1219.
        ].
        recoveredStep = 1219 ifTrue: [
            recoveredStack2 := 'Pctrecpt'.
            recoveredPC := 1222.
        ].
        recoveredStep = 1222 ifTrue: [
            recoveredStack3 := 'Plong'.
            recoveredPC := 1226.
        ].
        recoveredStep = 1226 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1228.
        ].
        recoveredStep = 1228 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1229.
        ].
        recoveredStep = 1229 ifTrue: [
            recoveredStack2 := '	VLENGTH'.
            recoveredPC := 1232.
        ].
        recoveredStep = 1232 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 1234.
        ].
        recoveredStep = 1234 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1236.
        ].
        recoveredStep = 1236 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1237.
        ].
        recoveredStep = 1237 ifTrue: [
            recoveredStack2 := 'Trntim'.
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 1242.
        ].
        recoveredStep = 1242 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1244.
        ].
        recoveredStep = 1244 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1245.
        ].
        recoveredStep = 1245 ifTrue: [
            recoveredStack2 := 'Ssc'.
            recoveredPC := 1248.
        ].
        recoveredStep = 1248 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 1250.
        ].
        recoveredStep = 1250 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1252.
        ].
        recoveredStep = 1252 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1253.
        ].
        recoveredStep = 1253 ifTrue: [
            recoveredStack2 := 'Cfgcompatibility'.
            recoveredPC := 1256.
        ].
        recoveredStep = 1256 ifTrue: [
            recoveredStack3 := 65.
            recoveredPC := 1260.
        ].
        recoveredStep = 1260 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1262.
        ].
        recoveredStep = 1262 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1263.
        ].
        recoveredStep = 1263 ifTrue: [
            recoveredStack2 := 'OpsSerialUpd'.
            recoveredPC := 1266.
        ].
        recoveredStep = 1266 ifTrue: [
            recoveredStack3 := 524288.
            recoveredPC := 1270.
        ].
        recoveredStep = 1270 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1272.
        ].
        recoveredStep = 1272 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1273.
        ].
        recoveredStep = 1273 ifTrue: [
            recoveredStack2 := 'DefpErr'.
            recoveredPC := 1276.
        ].
        recoveredStep = 1276 ifTrue: [
            recoveredStack3 := 448.
            recoveredPC := 1280.
        ].
        recoveredStep = 1280 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1282.
        ].
        recoveredStep = 1282 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1283.
        ].
        recoveredStep = 1283 ifTrue: [
            recoveredStack2 := 'SCHEMA_MAPandNAMES'.
            recoveredPC := 1286.
        ].
        recoveredStep = 1286 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 1288.
        ].
        recoveredStep = 1288 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1290.
        ].
        recoveredStep = 1290 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1291.
        ].
        recoveredStep = 1291 ifTrue: [
            recoveredStack2 := 'Pkeylen'.
            recoveredPC := 1294.
        ].
        recoveredStep = 1294 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 1296.
        ].
        recoveredStep = 1296 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1298.
        ].
        recoveredStep = 1298 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1299.
        ].
        recoveredStep = 1299 ifTrue: [
            recoveredStack2 := 'HoneErr'.
            recoveredPC := 1302.
        ].
        recoveredStep = 1302 ifTrue: [
            recoveredStack3 := 613.
            recoveredPC := 1306.
        ].
        recoveredStep = 1306 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1308.
        ].
        recoveredStep = 1308 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1309.
        ].
        recoveredStep = 1309 ifTrue: [
            recoveredStack2 := 'CfgtotMemory'.
            recoveredPC := 1312.
        ].
        recoveredStep = 1312 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 1314.
        ].
        recoveredStep = 1314 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1316.
        ].
        recoveredStep = 1316 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1317.
        ].
        recoveredStep = 1317 ifTrue: [
            recoveredStack2 := '	VIRTUAL'.
            recoveredPC := 1320.
        ].
        recoveredStep = 1320 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 1322.
        ].
        recoveredStep = 1322 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1324.
        ].
        recoveredStep = 1324 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1325.
        ].
        recoveredStep = 1325 ifTrue: [
            recoveredStack2 := 'SeekErr'.
            recoveredPC := 1328.
        ].
        recoveredStep = 1328 ifTrue: [
            recoveredStack3 := 35.
            recoveredPC := 1330.
        ].
        recoveredStep = 1330 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1332.
        ].
        recoveredStep = 1332 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1333.
        ].
        recoveredStep = 1333 ifTrue: [
            recoveredStack2 := 'FverErr'.
            recoveredPC := 1336.
        ].
        recoveredStep = 1336 ifTrue: [
            recoveredStack3 := 43.
            recoveredPC := 1338.
        ].
        recoveredStep = 1338 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1340.
        ].
        recoveredStep = 1340 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1341.
        ].
        recoveredStep = 1341 ifTrue: [
            recoveredStack2 := 'SHADOW'.
            recoveredPC := 1344.
        ].
        recoveredStep = 1344 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 1346.
        ].
        recoveredStep = 1346 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1348.
        ].
        recoveredStep = 1348 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1349.
        ].
        recoveredStep = 1349 ifTrue: [
            recoveredStack2 := 'Bufrlock'.
            recoveredPC := 1352.
        ].
        recoveredStep = 1352 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 1354.
        ].
        recoveredStep = 1354 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1356.
        ].
        recoveredStep = 1356 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1357.
        ].
        recoveredStep = 1357 ifTrue: [
            recoveredStack2 := 'IlopErr'.
            recoveredPC := 1360.
        ].
        recoveredStep = 1360 ifTrue: [
            recoveredStack3 := 511.
            recoveredPC := 1364.
        ].
        recoveredStep = 1364 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1366.
        ].
        recoveredStep = 1366 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1367.
        ].
        recoveredStep = 1367 ifTrue: [
            recoveredStack2 := 'DlDltr'.
            recoveredPC := 1370.
        ].
        recoveredStep = 1370 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 1372.
        ].
        recoveredStep = 1372 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1374.
        ].
        recoveredStep = 1374 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1375.
        ].
        recoveredStep = 1375 ifTrue: [
            recoveredStack2 := 'SdatErr'.
            recoveredPC := 1378.
        ].
        recoveredStep = 1378 ifTrue: [
            recoveredStack3 := 445.
            recoveredPC := 1382.
        ].
        recoveredStep = 1382 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1384.
        ].
        recoveredStep = 1384 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1385.
        ].
        recoveredStep = 1385 ifTrue: [
            recoveredStack2 := 'ResName'.
            recoveredPC := 1388.
        ].
        recoveredStep = 1388 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 1390.
        ].
        recoveredStep = 1390 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1392.
        ].
        recoveredStep = 1392 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1393.
        ].
        recoveredStep = 1393 ifTrue: [
            recoveredStack2 := 'CfgrecoverSkipclean'.
            recoveredPC := 1396.
        ].
        recoveredStep = 1396 ifTrue: [
            recoveredStack3 := 78.
            recoveredPC := 1400.
        ].
        recoveredStep = 1400 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1402.
        ].
        recoveredStep = 1402 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1403.
        ].
        recoveredStep = 1403 ifTrue: [
            recoveredStack2 := 'Cthistdata'.
            recoveredPC := 1406.
        ].
        recoveredStep = 1406 ifTrue: [
            recoveredStack3 := 4096.
            recoveredPC := 1410.
        ].
        recoveredStep = 1410 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1412.
        ].
        recoveredStep = 1412 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1413.
        ].
        recoveredStep = 1413 ifTrue: [
            recoveredStack2 := 'Ctdoda'.
            recoveredPC := 1416.
        ].
        recoveredStep = 1416 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 1418.
        ].
        recoveredStep = 1418 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1420.
        ].
        recoveredStep = 1420 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1421.
        ].
        recoveredStep = 1421 ifTrue: [
            recoveredStack2 := 'CtF4string'.
            recoveredPC := 1424.
        ].
        recoveredStep = 1424 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 1426.
        ].
        recoveredStep = 1426 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1428.
        ].
        recoveredStep = 1428 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1429.
        ].
        recoveredStep = 1429 ifTrue: [
            recoveredStack2 := 'DefNatlng3'.
            recoveredPC := 1432.
        ].
        recoveredStep = 1432 ifTrue: [
            recoveredStack3 := 11.
            recoveredPC := 1434.
        ].
        recoveredStep = 1434 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1436.
        ].
        recoveredStep = 1436 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1437.
        ].
        recoveredStep = 1437 ifTrue: [
            recoveredStack2 := 'Void'.
            recoveredPC := 1440.
        ].
        recoveredStep = 1440 ifTrue: [
            recoveredStack3 := 'Void'.
            recoveredPC := 1444.
        ].
        recoveredStep = 1444 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1446.
        ].
        recoveredStep = 1446 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1447.
        ].
        recoveredStep = 1447 ifTrue: [
            recoveredStack2 := 'TrnAabrt'.
            recoveredPC := 1450.
        ].
        recoveredStep = 1450 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 1452.
        ].
        recoveredStep = 1452 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1454.
        ].
        recoveredStep = 1454 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1455.
        ].
        recoveredStep = 1455 ifTrue: [
            recoveredStack2 := 'SnmcErr'.
            recoveredPC := 1458.
        ].
        recoveredStep = 1458 ifTrue: [
            recoveredStack3 := 166.
            recoveredPC := 1462.
        ].
        recoveredStep = 1462 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1464.
        ].
        recoveredStep = 1464 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1465.
        ].
        recoveredStep = 1465 ifTrue: [
            recoveredStack2 := 'DefMaskXtdprm'.
            recoveredPC := 1468.
        ].
        recoveredStep = 1468 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 1470.
        ].
        recoveredStep = 1470 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1472.
        ].
        recoveredStep = 1472 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1473.
        ].
        recoveredStep = 1473 ifTrue: [
            recoveredStack2 := 'PreaErr'.
            recoveredPC := 1476.
        ].
        recoveredStep = 1476 ifTrue: [
            recoveredStack3 := 555.
            recoveredPC := 1480.
        ].
        recoveredStep = 1480 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1482.
        ].
        recoveredStep = 1482 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1483.
        ].
        recoveredStep = 1483 ifTrue: [
            recoveredStack2 := 'Uschseg'.
            recoveredPC := 1486.
        ].
        recoveredStep = 1486 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 1488.
        ].
        recoveredStep = 1488 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1490.
        ].
        recoveredStep = 1490 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1491.
        ].
        recoveredStep = 1491 ifTrue: [
            recoveredStack2 := 'DODA_TRANSACTION'.
            recoveredPC := 1494.
        ].
        recoveredStep = 1494 ifTrue: [
            recoveredStack3 := 11.
            recoveredPC := 1496.
        ].
        recoveredStep = 1496 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1498.
        ].
        recoveredStep = 1498 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1499.
        ].
        recoveredStep = 1499 ifTrue: [
            recoveredStack2 := 'KdelErr'.
            recoveredPC := 1502.
        ].
        recoveredStep = 1502 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 1504.
        ].
        recoveredStep = 1504 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1506.
        ].
        recoveredStep = 1506 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1507.
        ].
        recoveredStep = 1507 ifTrue: [
            recoveredStack2 := 'GpfAll'.
            recoveredPC := 1510.
        ].
        recoveredStep = 1510 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 1512.
        ].
        recoveredStep = 1512 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1514.
        ].
        recoveredStep = 1514 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1515.
        ].
        recoveredStep = 1515 ifTrue: [
            recoveredStack2 := 'Trnlog'.
            recoveredPC := 1518.
        ].
        recoveredStep = 1518 ifTrue: [
            recoveredStack3 := 48.
            recoveredPC := 1520.
        ].
        recoveredStep = 1520 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1522.
        ].
        recoveredStep = 1522 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1523.
        ].
        recoveredStep = 1523 ifTrue: [
            recoveredStack2 := 'Dupleaf'.
            recoveredPC := 1526.
        ].
        recoveredStep = 1526 ifTrue: [
            recoveredStack3 := '''\0'''.
            recoveredPC := 1530.
        ].
        recoveredStep = 1530 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1532.
        ].
        recoveredStep = 1532 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1533.
        ].
        recoveredStep = 1533 ifTrue: [
            recoveredStack2 := 'RfckErr'.
            recoveredPC := 1536.
        ].
        recoveredStep = 1536 ifTrue: [
            recoveredStack3 := 510.
            recoveredPC := 1540.
        ].
        recoveredStep = 1540 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1542.
        ].
        recoveredStep = 1542 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1543.
        ].
        recoveredStep = 1543 ifTrue: [
            recoveredStack2 := 'Shrinkq'.
            recoveredPC := 1546.
        ].
        recoveredStep = 1546 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 1548.
        ].
        recoveredStep = 1548 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1550.
        ].
        recoveredStep = 1550 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1551.
        ].
        recoveredStep = 1551 ifTrue: [
            recoveredStack2 := 'CfgcommProtocol'.
            recoveredPC := 1554.
        ].
        recoveredStep = 1554 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 1556.
        ].
        recoveredStep = 1556 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1558.
        ].
        recoveredStep = 1558 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1559.
        ].
        recoveredStep = 1559 ifTrue: [
            recoveredStack2 := 'Cthistnode'.
            recoveredPC := 1562.
        ].
        recoveredStep = 1562 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 1564.
        ].
        recoveredStep = 1564 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1566.
        ].
        recoveredStep = 1566 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1567.
        ].
        recoveredStep = 1567 ifTrue: [
            recoveredStack2 := 'CtlkRsvBlk'.
            recoveredPC := 1570.
        ].
        recoveredStep = 1570 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 1572.
        ].
        recoveredStep = 1572 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1574.
        ].
        recoveredStep = 1574 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1575.
        ].
        recoveredStep = 1575 ifTrue: [
            recoveredStack2 := 'SschErr'.
            recoveredPC := 1578.
        ].
        recoveredStep = 1578 ifTrue: [
            recoveredStack3 := 433.
            recoveredPC := 1582.
        ].
        recoveredStep = 1582 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1584.
        ].
        recoveredStep = 1584 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1585.
        ].
        recoveredStep = 1585 ifTrue: [
            recoveredStack2 := 'MdltErr'.
            recoveredPC := 1588.
        ].
        recoveredStep = 1588 ifTrue: [
            recoveredStack3 := 545.
            recoveredPC := 1592.
        ].
        recoveredStep = 1592 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1594.
        ].
        recoveredStep = 1594 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1595.
        ].
        recoveredStep = 1595 ifTrue: [
            recoveredStack2 := 'DlopErr'.
            recoveredPC := 1598.
        ].
        recoveredStep = 1598 ifTrue: [
            recoveredStack3 := 512.
            recoveredPC := 1602.
        ].
        recoveredStep = 1602 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1604.
        ].
        recoveredStep = 1604 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1605.
        ].
        recoveredStep = 1605 ifTrue: [
            recoveredStack2 := 'Bakmod'.
            recoveredPC := 1608.
        ].
        recoveredStep = 1608 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 1610.
        ].
        recoveredStep = 1610 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1612.
        ].
        recoveredStep = 1612 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1613.
        ].
        recoveredStep = 1613 ifTrue: [
            recoveredStack2 := 'USCHSEG'.
            recoveredPC := 1616.
        ].
        recoveredStep = 1616 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 1618.
        ].
        recoveredStep = 1618 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1620.
        ].
        recoveredStep = 1620 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1621.
        ].
        recoveredStep = 1621 ifTrue: [
            recoveredStack2 := 'CtCharu'.
            recoveredPC := 1624.
        ].
        recoveredStep = 1624 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 1626.
        ].
        recoveredStep = 1626 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1628.
        ].
        recoveredStep = 1628 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1629.
        ].
        recoveredStep = 1629 ifTrue: [
            recoveredStack2 := 'C254'.
            recoveredPC := 1632.
        ].
        recoveredStep = 1632 ifTrue: [
            recoveredStack3 := '-'.
            recoveredPC := 1636.
        ].
        recoveredStep = 1636 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1638.
        ].
        recoveredStep = 1638 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1639.
        ].
        recoveredStep = 1639 ifTrue: [
            recoveredStack2 := 'OpfAll'.
            recoveredPC := 1642.
        ].
        recoveredStep = 1642 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 1644.
        ].
        recoveredStep = 1644 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1646.
        ].
        recoveredStep = 1646 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1647.
        ].
        recoveredStep = 1647 ifTrue: [
            recoveredStack2 := 'Vschseg'.
            recoveredPC := 1650.
        ].
        recoveredStep = 1650 ifTrue: [
            recoveredStack3 := 14.
            recoveredPC := 1652.
        ].
        recoveredStep = 1652 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1654.
        ].
        recoveredStep = 1654 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1655.
        ].
        recoveredStep = 1655 ifTrue: [
            recoveredStack2 := 'BAT_NXT'.
            recoveredPC := 1658.
        ].
        recoveredStep = 1658 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 1660.
        ].
        recoveredStep = 1660 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1662.
        ].
        recoveredStep = 1662 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1663.
        ].
        recoveredStep = 1663 ifTrue: [
            recoveredStack2 := 'DdrnErr'.
            recoveredPC := 1666.
        ].
        recoveredStep = 1666 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 1668.
        ].
        recoveredStep = 1668 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1670.
        ].
        recoveredStep = 1670 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1671.
        ].
        recoveredStep = 1671 ifTrue: [
            recoveredStack2 := 'Savectree'.
            recoveredPC := 1674.
        ].
        recoveredStep = 1674 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 1676.
        ].
        recoveredStep = 1676 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1678.
        ].
        recoveredStep = 1678 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1679.
        ].
        recoveredStep = 1679 ifTrue: [
            recoveredStack2 := 'Lstfld'.
            recoveredPC := 1682.
        ].
        recoveredStep = 1682 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 1684.
        ].
        recoveredStep = 1684 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1686.
        ].
        recoveredStep = 1686 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1687.
        ].
        recoveredStep = 1687 ifTrue: [
            recoveredStack2 := 'CtrtFread'.
            recoveredPC := 1690.
        ].
        recoveredStep = 1690 ifTrue: [
            recoveredStack3 := 'Fread'.
            recoveredPC := 1694.
        ].
        recoveredStep = 1694 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1696.
        ].
        recoveredStep = 1696 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1697.
        ].
        recoveredStep = 1697 ifTrue: [
            recoveredStack2 := 'Cfgmirrors'.
            recoveredPC := 1700.
        ].
        recoveredStep = 1700 ifTrue: [
            recoveredStack3 := 63.
            recoveredPC := 1702.
        ].
        recoveredStep = 1702 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1704.
        ].
        recoveredStep = 1704 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1705.
        ].
        recoveredStep = 1705 ifTrue: [
            recoveredStack2 := 'VSCHSEG'.
            recoveredPC := 1708.
        ].
        recoveredStep = 1708 ifTrue: [
            recoveredStack3 := 14.
            recoveredPC := 1710.
        ].
        recoveredStep = 1710 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1712.
        ].
        recoveredStep = 1712 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1713.
        ].
        recoveredStep = 1713 ifTrue: [
            recoveredStack2 := 'CfglogEvenMirror'.
            recoveredPC := 1716.
        ].
        recoveredStep = 1716 ifTrue: [
            recoveredStack3 := 56.
            recoveredPC := 1718.
        ].
        recoveredStep = 1718 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1720.
        ].
        recoveredStep = 1720 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1721.
        ].
        recoveredStep = 1721 ifTrue: [
            recoveredStack2 := 'CtgnUnd'.
            recoveredPC := 1724.
        ].
        recoveredStep = 1724 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 1726.
        ].
        recoveredStep = 1726 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1728.
        ].
        recoveredStep = 1728 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1729.
        ].
        recoveredStep = 1729 ifTrue: [
            recoveredStack2 := 'BatIns'.
            recoveredPC := 1732.
        ].
        recoveredStep = 1732 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 1734.
        ].
        recoveredStep = 1734 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1736.
        ].
        recoveredStep = 1736 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1737.
        ].
        recoveredStep = 1737 ifTrue: [
            recoveredStack2 := 'ColPrefix'.
            recoveredPC := 1740.
        ].
        recoveredStep = 1740 ifTrue: [
            recoveredStack3 := '''\4'''.
            recoveredPC := 1744.
        ].
        recoveredStep = 1744 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1746.
        ].
        recoveredStep = 1746 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1747.
        ].
        recoveredStep = 1747 ifTrue: [
            recoveredStack2 := 'Ctfixed'.
            recoveredPC := 1750.
        ].
        recoveredStep = 1750 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 1752.
        ].
        recoveredStep = 1752 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1754.
        ].
        recoveredStep = 1754 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1755.
        ].
        recoveredStep = 1755 ifTrue: [
            recoveredStack2 := 'Ctalignhdr'.
            recoveredPC := 1758.
        ].
        recoveredStep = 1758 ifTrue: [
            recoveredStack3 := 17.
            recoveredPC := 1760.
        ].
        recoveredStep = 1760 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1762.
        ].
        recoveredStep = 1762 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1763.
        ].
        recoveredStep = 1763 ifTrue: [
            recoveredStack2 := 'Free'.
            recoveredPC := 1766.
        ].
        recoveredStep = 1766 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 1768.
        ].
        recoveredStep = 1768 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1770.
        ].
        recoveredStep = 1770 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1771.
        ].
        recoveredStep = 1771 ifTrue: [
            recoveredStack2 := 'IdriErr'.
            recoveredPC := 1774.
        ].
        recoveredStep = 1774 ifTrue: [
            recoveredStack3 := 106.
            recoveredPC := 1778.
        ].
        recoveredStep = 1778 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1780.
        ].
        recoveredStep = 1780 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1781.
        ].
        recoveredStep = 1781 ifTrue: [
            recoveredStack2 := 'RestrsvBlk'.
            recoveredPC := 1784.
        ].
        recoveredStep = 1784 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 1786.
        ].
        recoveredStep = 1786 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1788.
        ].
        recoveredStep = 1788 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1789.
        ].
        recoveredStep = 1789 ifTrue: [
            recoveredStack2 := 'CtChar'.
            recoveredPC := 1792.
        ].
        recoveredStep = 1792 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 1794.
        ].
        recoveredStep = 1794 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1796.
        ].
        recoveredStep = 1796 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1797.
        ].
        recoveredStep = 1797 ifTrue: [
            recoveredStack2 := 'WpfAll'.
            recoveredPC := 1800.
        ].
        recoveredStep = 1800 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 1802.
        ].
        recoveredStep = 1802 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1804.
        ].
        recoveredStep = 1804 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1805.
        ].
        recoveredStep = 1805 ifTrue: [
            recoveredStack2 := 'NschErr'.
            recoveredPC := 1808.
        ].
        recoveredStep = 1808 ifTrue: [
            recoveredStack3 := 199.
            recoveredPC := 1812.
        ].
        recoveredStep = 1812 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1814.
        ].
        recoveredStep = 1814 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1815.
        ].
        recoveredStep = 1815 ifTrue: [
            recoveredStack2 := 'Lokhbins'.
            recoveredPC := 1818.
        ].
        recoveredStep = 1818 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 1820.
        ].
        recoveredStep = 1820 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1822.
        ].
        recoveredStep = 1822 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1823.
        ].
        recoveredStep = 1823 ifTrue: [
            recoveredStack2 := 'Updated'.
            recoveredPC := 1826.
        ].
        recoveredStep = 1826 ifTrue: [
            recoveredStack3 := 'C255'.
            recoveredPC := 1830.
        ].
        recoveredStep = 1830 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1832.
        ].
        recoveredStep = 1832 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1833.
        ].
        recoveredStep = 1833 ifTrue: [
            recoveredStack2 := 'LkepErr'.
            recoveredPC := 1836.
        ].
        recoveredStep = 1836 ifTrue: [
            recoveredStack3 := 409.
            recoveredPC := 1840.
        ].
        recoveredStep = 1840 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1842.
        ].
        recoveredStep = 1842 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1843.
        ].
        recoveredStep = 1843 ifTrue: [
            recoveredStack2 := 'Cfg9074Monitor'.
            recoveredPC := 1846.
        ].
        recoveredStep = 1846 ifTrue: [
            recoveredStack3 := 52.
            recoveredPC := 1848.
        ].
        recoveredStep = 1848 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1850.
        ].
        recoveredStep = 1850 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1851.
        ].
        recoveredStep = 1851 ifTrue: [
            recoveredStack2 := 'IdruErr'.
            recoveredPC := 1854.
        ].
        recoveredStep = 1854 ifTrue: [
            recoveredStack3 := 183.
            recoveredPC := 1858.
        ].
        recoveredStep = 1858 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1860.
        ].
        recoveredStep = 1860 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1861.
        ].
        recoveredStep = 1861 ifTrue: [
            recoveredStack2 := 'Dtbtyp'.
            recoveredPC := 1864.
        ].
        recoveredStep = 1864 ifTrue: [
            recoveredStack3 := 21.
            recoveredPC := 1866.
        ].
        recoveredStep = 1866 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1868.
        ].
        recoveredStep = 1868 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1869.
        ].
        recoveredStep = 1869 ifTrue: [
            recoveredStack2 := 'VbszErr'.
            recoveredPC := 1872.
        ].
        recoveredStep = 1872 ifTrue: [
            recoveredStack3 := 153.
            recoveredPC := 1876.
        ].
        recoveredStep = 1876 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1878.
        ].
        recoveredStep = 1878 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1879.
        ].
        recoveredStep = 1879 ifTrue: [
            recoveredStack2 := 'GpfRead'.
            recoveredPC := 1882.
        ].
        recoveredStep = 1882 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 1886.
        ].
        recoveredStep = 1886 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1888.
        ].
        recoveredStep = 1888 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1889.
        ].
        recoveredStep = 1889 ifTrue: [
            recoveredStack2 := 'CT_INT4'.
            recoveredPC := 1892.
        ].
        recoveredStep = 1892 ifTrue: [
            recoveredStack3 := 48.
            recoveredPC := 1894.
        ].
        recoveredStep = 1894 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1896.
        ].
        recoveredStep = 1896 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1897.
        ].
        recoveredStep = 1897 ifTrue: [
            recoveredStack2 := 'EnableBlk'.
            recoveredPC := 1900.
        ].
        recoveredStep = 1900 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 1902.
        ].
        recoveredStep = 1902 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1904.
        ].
        recoveredStep = 1904 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1905.
        ].
        recoveredStep = 1905 ifTrue: [
            recoveredStack2 := 'DltpErr'.
            recoveredPC := 1908.
        ].
        recoveredStep = 1908 ifTrue: [
            recoveredStack3 := 56.
            recoveredPC := 1910.
        ].
        recoveredStep = 1910 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1912.
        ].
        recoveredStep = 1912 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1913.
        ].
        recoveredStep = 1913 ifTrue: [
            recoveredStack2 := 'KmatErr'.
            recoveredPC := 1916.
        ].
        recoveredStep = 1916 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 1918.
        ].
        recoveredStep = 1918 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1920.
        ].
        recoveredStep = 1920 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1921.
        ].
        recoveredStep = 1921 ifTrue: [
            recoveredStack2 := 'Mirrst'.
            recoveredPC := 1924.
        ].
        recoveredStep = 1924 ifTrue: [
            recoveredStack3 := 17.
            recoveredPC := 1926.
        ].
        recoveredStep = 1926 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1928.
        ].
        recoveredStep = 1928 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1929.
        ].
        recoveredStep = 1929 ifTrue: [
            recoveredStack2 := 'Rcl7Err'.
            recoveredPC := 1932.
        ].
        recoveredStep = 1932 ifTrue: [
            recoveredStack3 := 576.
            recoveredPC := 1936.
        ].
        recoveredStep = 1936 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1938.
        ].
        recoveredStep = 1938 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1939.
        ].
        recoveredStep = 1939 ifTrue: [
            recoveredStack2 := 'LcipErr'.
            recoveredPC := 1942.
        ].
        recoveredStep = 1942 ifTrue: [
            recoveredStack3 := 412.
            recoveredPC := 1946.
        ].
        recoveredStep = 1946 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1948.
        ].
        recoveredStep = 1948 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1949.
        ].
        recoveredStep = 1949 ifTrue: [
            recoveredStack2 := 'Ctqueue'.
            recoveredPC := 1952.
        ].
        recoveredStep = 1952 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 1954.
        ].
        recoveredStep = 1954 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1956.
        ].
        recoveredStep = 1956 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1957.
        ].
        recoveredStep = 1957 ifTrue: [
            recoveredStack2 := 'CtWldcrd'.
            recoveredPC := 1960.
        ].
        recoveredStep = 1960 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 1964.
        ].
        recoveredStep = 1964 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1966.
        ].
        recoveredStep = 1966 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1967.
        ].
        recoveredStep = 1967 ifTrue: [
            recoveredStack2 := 'Rcl6Err'.
            recoveredPC := 1970.
        ].
        recoveredStep = 1970 ifTrue: [
            recoveredStack3 := 575.
            recoveredPC := 1974.
        ].
        recoveredStep = 1974 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1976.
        ].
        recoveredStep = 1976 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1977.
        ].
        recoveredStep = 1977 ifTrue: [
            recoveredStack2 := 'Maxcommp'.
            recoveredPC := 1980.
        ].
        recoveredStep = 1980 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 1982.
        ].
        recoveredStep = 1982 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1984.
        ].
        recoveredStep = 1984 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1985.
        ].
        recoveredStep = 1985 ifTrue: [
            recoveredStack2 := 'CtTime'.
            recoveredPC := 1988.
        ].
        recoveredStep = 1988 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 1990.
        ].
        recoveredStep = 1990 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1992.
        ].
        recoveredStep = 1992 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1993.
        ].
        recoveredStep = 1993 ifTrue: [
            recoveredStack2 := 'IjnlErr'.
            recoveredPC := 1996.
        ].
        recoveredStep = 1996 ifTrue: [
            recoveredStack3 := 191.
            recoveredPC := 2000.
        ].
        recoveredStep = 2000 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2002.
        ].
        recoveredStep = 2002 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2003.
        ].
        recoveredStep = 2003 ifTrue: [
            recoveredStack2 := 'WpfRead'.
            recoveredPC := 2006.
        ].
        recoveredStep = 2006 ifTrue: [
            recoveredStack3 := 2048.
            recoveredPC := 2010.
        ].
        recoveredStep = 2010 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2012.
        ].
        recoveredStep = 2012 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2013.
        ].
        recoveredStep = 2013 ifTrue: [
            recoveredStack2 := 'CtStrflt'.
            recoveredPC := 2016.
        ].
        recoveredStep = 2016 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 2020.
        ].
        recoveredStep = 2020 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2022.
        ].
        recoveredStep = 2022 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2023.
        ].
        recoveredStep = 2023 ifTrue: [
            recoveredStack2 := 'Reset'.
            recoveredPC := 2026.
        ].
        recoveredStep = 2026 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 2028.
        ].
        recoveredStep = 2028 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2030.
        ].
        recoveredStep = 2030 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2031.
        ].
        recoveredStep = 2031 ifTrue: [
            recoveredStack2 := 'UserprfNdata'.
            recoveredPC := 2034.
        ].
        recoveredStep = 2034 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 2036.
        ].
        recoveredStep = 2036 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2038.
        ].
        recoveredStep = 2038 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2039.
        ].
        recoveredStep = 2039 ifTrue: [
            recoveredStack2 := 'CfgopenFiles'.
            recoveredPC := 2042.
        ].
        recoveredStep = 2042 ifTrue: [
            recoveredStack3 := 203.
            recoveredPC := 2046.
        ].
        recoveredStep = 2046 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2048.
        ].
        recoveredStep = 2048 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2049.
        ].
        recoveredStep = 2049 ifTrue: [
            recoveredStack2 := 'IdmuErr'.
            recoveredPC := 2052.
        ].
        recoveredStep = 2052 ifTrue: [
            recoveredStack3 := 195.
            recoveredPC := 2056.
        ].
        recoveredStep = 2056 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2058.
        ].
        recoveredStep = 2058 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2059.
        ].
        recoveredStep = 2059 ifTrue: [
            recoveredStack2 := 'GpfNone'.
            recoveredPC := 2062.
        ].
        recoveredStep = 2062 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 2064.
        ].
        recoveredStep = 2064 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2066.
        ].
        recoveredStep = 2066 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2067.
        ].
        recoveredStep = 2067 ifTrue: [
            recoveredStack2 := 'MaxName'.
            recoveredPC := 2070.
        ].
        recoveredStep = 2070 ifTrue: [
            recoveredStack3 := 255.
            recoveredPC := 2074.
        ].
        recoveredStep = 2074 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2076.
        ].
        recoveredStep = 2076 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2077.
        ].
        recoveredStep = 2077 ifTrue: [
            recoveredStack2 := 'AlignmentTim'.
            recoveredPC := 2080.
        ].
        recoveredStep = 2080 ifTrue: [
            recoveredStack3 := ',m3)'.
            recoveredPC := 2084.
        ].
        recoveredStep = 2084 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2086.
        ].
        recoveredStep = 2086 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2087.
        ].
        recoveredStep = 2087 ifTrue: [
            recoveredStack2 := 'FcresSql'.
            recoveredPC := 2090.
        ].
        recoveredStep = 2090 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 2092.
        ].
        recoveredStep = 2092 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2094.
        ].
        recoveredStep = 2094 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2095.
        ].
        recoveredStep = 2095 ifTrue: [
            recoveredStack2 := 'WpfNone'.
            recoveredPC := 2098.
        ].
        recoveredStep = 2098 ifTrue: [
            recoveredStack3 := 1024.
            recoveredPC := 2102.
        ].
        recoveredStep = 2102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2104.
        ].
        recoveredStep = 2104 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2105.
        ].
        recoveredStep = 2105 ifTrue: [
            recoveredStack2 := 'Ctbyteorder'.
            recoveredPC := 2108.
        ].
        recoveredStep = 2108 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 2110.
        ].
        recoveredStep = 2110 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2112.
        ].
        recoveredStep = 2112 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2113.
        ].
        recoveredStep = 2113 ifTrue: [
            recoveredStack2 := 'Ctdiagnosethddmp'.
            recoveredPC := 2116.
        ].
        recoveredStep = 2116 ifTrue: [
            recoveredStack3 := 1024.
            recoveredPC := 2120.
        ].
        recoveredStep = 2120 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2122.
        ].
        recoveredStep = 2122 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2123.
        ].
        recoveredStep = 2123 ifTrue: [
            recoveredStack2 := 'OpsLockonBlk'.
            recoveredPC := 2126.
        ].
        recoveredStep = 2126 ifTrue: [
            recoveredStack3 := 'OpsOnceBlk)'.
            recoveredPC := 2130.
        ].
        recoveredStep = 2130 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2132.
        ].
        recoveredStep = 2132 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2133.
        ].
        recoveredStep = 2133 ifTrue: [
            recoveredStack2 := 'Dupnonl'.
            recoveredPC := 2136.
        ].
        recoveredStep = 2136 ifTrue: [
            recoveredStack3 := '''\3'''.
            recoveredPC := 2140.
        ].
        recoveredStep = 2140 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2142.
        ].
        recoveredStep = 2142 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2143.
        ].
        recoveredStep = 2143 ifTrue: [
            recoveredStack2 := 'Ctsizet'.
            recoveredPC := 2146.
        ].
        recoveredStep = 2146 ifTrue: [
            recoveredStack3 := 'SizeT'.
            recoveredPC := 2150.
        ].
        recoveredStep = 2150 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2152.
        ].
        recoveredStep = 2152 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2153.
        ].
        recoveredStep = 2153 ifTrue: [
            recoveredStack2 := 'DefDtree2'.
            recoveredPC := 2156.
        ].
        recoveredStep = 2156 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 2158.
        ].
        recoveredStep = 2158 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2160.
        ].
        recoveredStep = 2160 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2161.
        ].
        recoveredStep = 2161 ifTrue: [
            recoveredStack2 := 'QmrtErr'.
            recoveredPC := 2164.
        ].
        recoveredStep = 2164 ifTrue: [
            recoveredStack3 := 92.
            recoveredPC := 2168.
        ].
        recoveredStep = 2168 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2170.
        ].
        recoveredStep = 2170 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2171.
        ].
        recoveredStep = 2171 ifTrue: [
            recoveredStack2 := 'Fltseg'.
            recoveredPC := 2174.
        ].
        recoveredStep = 2174 ifTrue: [
            recoveredStack3 := 9.
            recoveredPC := 2176.
        ].
        recoveredStep = 2176 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2178.
        ].
        recoveredStep = 2178 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2179.
        ].
        recoveredStep = 2179 ifTrue: [
            recoveredStack2 := 'Cfg9477Monitor'.
            recoveredPC := 2182.
        ].
        recoveredStep = 2182 ifTrue: [
            recoveredStack3 := 53.
            recoveredPC := 2184.
        ].
        recoveredStep = 2184 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2186.
        ].
        recoveredStep = 2186 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2187.
        ].
        recoveredStep = 2187 ifTrue: [
            recoveredStack2 := 'CtTimes'.
            recoveredPC := 2190.
        ].
        recoveredStep = 2190 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 2192.
        ].
        recoveredStep = 2192 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2194.
        ].
        recoveredStep = 2194 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2195.
        ].
        recoveredStep = 2195 ifTrue: [
            recoveredStack2 := 'AmstErr'.
            recoveredPC := 2198.
        ].
        recoveredStep = 2198 ifTrue: [
            recoveredStack3 := 136.
            recoveredPC := 2202.
        ].
        recoveredStep = 2202 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2204.
        ].
        recoveredStep = 2204 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2205.
        ].
        recoveredStep = 2205 ifTrue: [
            recoveredStack2 := 'FcrpErr'.
            recoveredPC := 2208.
        ].
        recoveredStep = 2208 ifTrue: [
            recoveredStack3 := 14.
            recoveredPC := 2210.
        ].
        recoveredStep = 2210 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2212.
        ].
        recoveredStep = 2212 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2213.
        ].
        recoveredStep = 2213 ifTrue: [
            recoveredStack2 := 'CfgparmfileFormat'.
            recoveredPC := 2216.
        ].
        recoveredStep = 2216 ifTrue: [
            recoveredStack3 := 145.
            recoveredPC := 2220.
        ].
        recoveredStep = 2220 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2222.
        ].
        recoveredStep = 2222 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2223.
        ].
        recoveredStep = 2223 ifTrue: [
            recoveredStack2 := 'InixErr'.
            recoveredPC := 2226.
        ].
        recoveredStep = 2226 ifTrue: [
            recoveredStack3 := 124.
            recoveredPC := 2230.
        ].
        recoveredStep = 2230 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2232.
        ].
        recoveredStep = 2232 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2233.
        ].
        recoveredStep = 2233 ifTrue: [
            recoveredStack2 := 'UserprfSql'.
            recoveredPC := 2236.
        ].
        recoveredStep = 2236 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 2238.
        ].
        recoveredStep = 2238 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2240.
        ].
        recoveredStep = 2240 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2241.
        ].
        recoveredStep = 2241 ifTrue: [
            recoveredStack2 := 'SdltErr'.
            recoveredPC := 2244.
        ].
        recoveredStep = 2244 ifTrue: [
            recoveredStack3 := 459.
            recoveredPC := 2248.
        ].
        recoveredStep = 2248 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2250.
        ].
        recoveredStep = 2250 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2251.
        ].
        recoveredStep = 2251 ifTrue: [
            recoveredStack2 := 'SGNSEG'.
            recoveredPC := 2254.
        ].
        recoveredStep = 2254 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 2256.
        ].
        recoveredStep = 2256 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2258.
        ].
        recoveredStep = 2258 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2259.
        ].
        recoveredStep = 2259 ifTrue: [
            recoveredStack2 := 'Usrlstsiz'.
            recoveredPC := 2262.
        ].
        recoveredStep = 2262 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 2266.
        ].
        recoveredStep = 2266 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2268.
        ].
        recoveredStep = 2268 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2269.
        ].
        recoveredStep = 2269 ifTrue: [
            recoveredStack2 := 'CT_INT2'.
            recoveredPC := 2272.
        ].
        recoveredStep = 2272 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 2274.
        ].
        recoveredStep = 2274 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2276.
        ].
        recoveredStep = 2276 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2277.
        ].
        recoveredStep = 2277 ifTrue: [
            recoveredStack2 := 'CqueErr'.
            recoveredPC := 2280.
        ].
        recoveredStep = 2280 ifTrue: [
            recoveredStack3 := 514.
            recoveredPC := 2284.
        ].
        recoveredStep = 2284 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2286.
        ].
        recoveredStep = 2286 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2287.
        ].
        recoveredStep = 2287 ifTrue: [
            recoveredStack2 := 'AlignmentBcd'.
            recoveredPC := 2290.
        ].
        recoveredStep = 2290 ifTrue: [
            recoveredStack3 := ',m3)'.
            recoveredPC := 2294.
        ].
        recoveredStep = 2294 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2296.
        ].
        recoveredStep = 2296 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2297.
        ].
        recoveredStep = 2297 ifTrue: [
            recoveredStack2 := 'Nonexclusive'.
            recoveredPC := 2300.
        ].
        recoveredStep = 2300 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 2302.
        ].
        recoveredStep = 2302 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2304.
        ].
        recoveredStep = 2304 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2305.
        ].
        recoveredStep = 2305 ifTrue: [
            recoveredStack2 := 'CHECKREAD'.
            recoveredPC := 2308.
        ].
        recoveredStep = 2308 ifTrue: [
            recoveredStack3 := 1024.
            recoveredPC := 2312.
        ].
        recoveredStep = 2312 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2314.
        ].
        recoveredStep = 2314 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2315.
        ].
        recoveredStep = 2315 ifTrue: [
            recoveredStack2 := 'Logon'.
            recoveredPC := 2318.
        ].
        recoveredStep = 2318 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 2320.
        ].
        recoveredStep = 2320 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2322.
        ].
        recoveredStep = 2322 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2323.
        ].
        recoveredStep = 2323 ifTrue: [
            recoveredStack2 := 'Restred'.
            recoveredPC := 2326.
        ].
        recoveredStep = 2326 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 2328.
        ].
        recoveredStep = 2328 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2330.
        ].
        recoveredStep = 2330 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2331.
        ].
        recoveredStep = 2331 ifTrue: [
            recoveredStack2 := 'OpsMemorySwp'.
            recoveredPC := 2334.
        ].
        recoveredStep = 2334 ifTrue: [
            recoveredStack3 := 1048576.
            recoveredPC := 2338.
        ].
        recoveredStep = 2338 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2340.
        ].
        recoveredStep = 2340 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2341.
        ].
        recoveredStep = 2341 ifTrue: [
            recoveredStack2 := 'OsrlErr'.
            recoveredPC := 2344.
        ].
        recoveredStep = 2344 ifTrue: [
            recoveredStack3 := 44.
            recoveredPC := 2346.
        ].
        recoveredStep = 2346 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2348.
        ].
        recoveredStep = 2348 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2349.
        ].
        recoveredStep = 2349 ifTrue: [
            recoveredStack2 := 'Relkey'.
            recoveredPC := 2352.
        ].
        recoveredStep = 2352 ifTrue: [
            recoveredStack3 := 18.
            recoveredPC := 2354.
        ].
        recoveredStep = 2354 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2356.
        ].
        recoveredStep = 2356 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2357.
        ].
        recoveredStep = 2357 ifTrue: [
            recoveredStack2 := 'OconErr'.
            recoveredPC := 2360.
        ].
        recoveredStep = 2360 ifTrue: [
            recoveredStack3 := 591.
            recoveredPC := 2364.
        ].
        recoveredStep = 2364 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2366.
        ].
        recoveredStep = 2366 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2367.
        ].
        recoveredStep = 2367 ifTrue: [
            recoveredStack2 := 'OpsOnceLok'.
            recoveredPC := 2370.
        ].
        recoveredStep = 2370 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 2372.
        ].
        recoveredStep = 2372 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2374.
        ].
        recoveredStep = 2374 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2375.
        ].
        recoveredStep = 2375 ifTrue: [
            recoveredStack2 := 'BticErr'.
            recoveredPC := 2378.
        ].
        recoveredStep = 2378 ifTrue: [
            recoveredStack3 := 423.
            recoveredPC := 2382.
        ].
        recoveredStep = 2382 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2384.
        ].
        recoveredStep = 2384 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2385.
        ].
        recoveredStep = 2385 ifTrue: [
            recoveredStack2 := 'CfgrecoverDetails'.
            recoveredPC := 2388.
        ].
        recoveredStep = 2388 ifTrue: [
            recoveredStack3 := 76.
            recoveredPC := 2392.
        ].
        recoveredStep = 2392 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2394.
        ].
        recoveredStep = 2394 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2395.
        ].
        recoveredStep = 2395 ifTrue: [
            recoveredStack2 := 'Ctwrite'.
            recoveredPC := 2398.
        ].
        recoveredStep = 2398 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 2400.
        ].
        recoveredStep = 2400 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2402.
        ].
        recoveredStep = 2402 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2403.
        ].
        recoveredStep = 2403 ifTrue: [
            recoveredStack2 := 'ResLock'.
            recoveredPC := 2406.
        ].
        recoveredStep = 2406 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 2408.
        ].
        recoveredStep = 2408 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2410.
        ].
        recoveredStep = 2410 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2411.
        ].
        recoveredStep = 2411 ifTrue: [
            recoveredStack2 := 'Ctmaxusers'.
            recoveredPC := 2414.
        ].
        recoveredStep = 2414 ifTrue: [
            recoveredStack3 := 500.
            recoveredPC := 2418.
        ].
        recoveredStep = 2418 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2420.
        ].
        recoveredStep = 2420 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2421.
        ].
        recoveredStep = 2421 ifTrue: [
            recoveredStack2 := 'EconErr'.
            recoveredPC := 2424.
        ].
        recoveredStep = 2424 ifTrue: [
            recoveredStack3 := 592.
            recoveredPC := 2428.
        ].
        recoveredStep = 2428 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2430.
        ].
        recoveredStep = 2430 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2431.
        ].
        recoveredStep = 2431 ifTrue: [
            recoveredStack2 := 'OpfNone'.
            recoveredPC := 2434.
        ].
        recoveredStep = 2434 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 2436.
        ].
        recoveredStep = 2436 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2438.
        ].
        recoveredStep = 2438 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2439.
        ].
        recoveredStep = 2439 ifTrue: [
            recoveredStack2 := 'BAT_LOK_RED'.
            recoveredPC := 2442.
        ].
        recoveredStep = 2442 ifTrue: [
            recoveredStack3 := 2048.
            recoveredPC := 2446.
        ].
        recoveredStep = 2446 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2448.
        ].
        recoveredStep = 2448 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2449.
        ].
        recoveredStep = 2449 ifTrue: [
            recoveredStack2 := 'Nond'.
            recoveredPC := 2452.
        ].
        recoveredStep = 2452 ifTrue: [
            recoveredStack3 := 'No'.
            recoveredPC := 2456.
        ].
        recoveredStep = 2456 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2458.
        ].
        recoveredStep = 2458 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2459.
        ].
        recoveredStep = 2459 ifTrue: [
            recoveredStack2 := 'CtddDrt'.
            recoveredPC := 2462.
        ].
        recoveredStep = 2462 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 2464.
        ].
        recoveredStep = 2464 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2466.
        ].
        recoveredStep = 2466 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2467.
        ].
        recoveredStep = 2467 ifTrue: [
            recoveredStack2 := 'CfguserFiles'.
            recoveredPC := 2470.
        ].
        recoveredStep = 2470 ifTrue: [
            recoveredStack3 := 205.
            recoveredPC := 2474.
        ].
        recoveredStep = 2474 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2476.
        ].
        recoveredStep = 2476 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2477.
        ].
        recoveredStep = 2477 ifTrue: [
            recoveredStack2 := 'BtrqErr'.
            recoveredPC := 2480.
        ].
        recoveredStep = 2480 ifTrue: [
            recoveredStack3 := 430.
            recoveredPC := 2484.
        ].
        recoveredStep = 2484 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2486.
        ].
        recoveredStep = 2486 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2487.
        ].
        recoveredStep = 2487 ifTrue: [
            recoveredStack2 := 'AskyErr'.
            recoveredPC := 2490.
        ].
        recoveredStep = 2490 ifTrue: [
            recoveredStack3 := 133.
            recoveredPC := 2494.
        ].
        recoveredStep = 2494 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2496.
        ].
        recoveredStep = 2496 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2497.
        ].
        recoveredStep = 2497 ifTrue: [
            recoveredStack2 := 'CtddPre'.
            recoveredPC := 2500.
        ].
        recoveredStep = 2500 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 2502.
        ].
        recoveredStep = 2502 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2504.
        ].
        recoveredStep = 2504 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2505.
        ].
        recoveredStep = 2505 ifTrue: [
            recoveredStack2 := 'OpfRead'.
            recoveredPC := 2508.
        ].
        recoveredStep = 2508 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 2510.
        ].
        recoveredStep = 2510 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2512.
        ].
        recoveredStep = 2512 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2513.
        ].
        recoveredStep = 2513 ifTrue: [
            recoveredStack2 := 'OpsLockMon'.
            recoveredPC := 2516.
        ].
        recoveredStep = 2516 ifTrue: [
            recoveredStack3 := 65536.
            recoveredPC := 2520.
        ].
        recoveredStep = 2520 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2522.
        ].
        recoveredStep = 2522 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2523.
        ].
        recoveredStep = 2523 ifTrue: [
            recoveredStack2 := 'CfgusrMemory'.
            recoveredPC := 2526.
        ].
        recoveredStep = 2526 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 2528.
        ].
        recoveredStep = 2528 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2530.
        ].
        recoveredStep = 2530 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2531.
        ].
        recoveredStep = 2531 ifTrue: [
            recoveredStack2 := 'IsalErr'.
            recoveredPC := 2534.
        ].
        recoveredStep = 2534 ifTrue: [
            recoveredStack3 := 185.
            recoveredPC := 2538.
        ].
        recoveredStep = 2538 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2540.
        ].
        recoveredStep = 2540 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2541.
        ].
        recoveredStep = 2541 ifTrue: [
            recoveredStack2 := 'Databufferhits'.
            recoveredPC := 2544.
        ].
        recoveredStep = 2544 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 2546.
        ].
        recoveredStep = 2546 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2548.
        ].
        recoveredStep = 2548 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2549.
        ].
        recoveredStep = 2549 ifTrue: [
            recoveredStack2 := 'FcmpErr'.
            recoveredPC := 2552.
        ].
        recoveredStep = 2552 ifTrue: [
            recoveredStack3 := 15.
            recoveredPC := 2554.
        ].
        recoveredStep = 2554 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2556.
        ].
        recoveredStep = 2556 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2557.
        ].
        recoveredStep = 2557 ifTrue: [
            recoveredStack2 := 'OpsOnceBlk'.
            recoveredPC := 2560.
        ].
        recoveredStep = 2560 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 2562.
        ].
        recoveredStep = 2562 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2564.
        ].
        recoveredStep = 2564 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2565.
        ].
        recoveredStep = 2565 ifTrue: [
            recoveredStack2 := 'Altseg'.
            recoveredPC := 2568.
        ].
        recoveredStep = 2568 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 2570.
        ].
        recoveredStep = 2570 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2572.
        ].
        recoveredStep = 2572 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2573.
        ].
        recoveredStep = 2573 ifTrue: [
            recoveredStack2 := 'SinaErr'.
            recoveredPC := 2576.
        ].
        recoveredStep = 2576 ifTrue: [
            recoveredStack3 := 161.
            recoveredPC := 2580.
        ].
        recoveredStep = 2580 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2582.
        ].
        recoveredStep = 2582 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2583.
        ].
        recoveredStep = 2583 ifTrue: [
            recoveredStack2 := 'StidErr'.
            recoveredPC := 2586.
        ].
        recoveredStep = 2586 ifTrue: [
            recoveredStack3 := 522.
            recoveredPC := 2590.
        ].
        recoveredStep = 2590 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2592.
        ].
        recoveredStep = 2592 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2593.
        ].
        recoveredStep = 2593 ifTrue: [
            recoveredStack2 := 'Local'.
            recoveredPC := 2596.
        ].
        recoveredStep = 2596 ifTrue: [
            recoveredStack3 := 'Static'.
            recoveredPC := 2600.
        ].
        recoveredStep = 2600 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2602.
        ].
        recoveredStep = 2602 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2603.
        ].
        recoveredStep = 2603 ifTrue: [
            recoveredStack2 := 'Ctdiagnoseleak'.
            recoveredPC := 2606.
        ].
        recoveredStep = 2606 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 2608.
        ].
        recoveredStep = 2608 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2610.
        ].
        recoveredStep = 2610 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2611.
        ].
        recoveredStep = 2611 ifTrue: [
            recoveredStack2 := 'Ctexport'.
            recoveredPC := 2614.
        ].
        recoveredStep = 2614 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 2616.
        ].
        recoveredStep = 2616 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2618.
        ].
        recoveredStep = 2618 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2619.
        ].
        recoveredStep = 2619 ifTrue: [
            recoveredStack2 := 'Ctread'.
            recoveredPC := 2622.
        ].
        recoveredStep = 2622 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 2624.
        ].
        recoveredStep = 2624 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2626.
        ].
        recoveredStep = 2626 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2627.
        ].
        recoveredStep = 2627 ifTrue: [
            recoveredStack2 := 'ResNext'.
            recoveredPC := 2630.
        ].
        recoveredStep = 2630 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 2634.
        ].
        recoveredStep = 2634 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2636.
        ].
        recoveredStep = 2636 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2637.
        ].
        recoveredStep = 2637 ifTrue: [
            recoveredStack2 := 'OpfWrite'.
            recoveredPC := 2640.
        ].
        recoveredStep = 2640 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 2642.
        ].
        recoveredStep = 2642 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2644.
        ].
        recoveredStep = 2644 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2645.
        ].
        recoveredStep = 2645 ifTrue: [
            recoveredStack2 := 'Fnlocsrv'.
            recoveredPC := 2648.
        ].
        recoveredStep = 2648 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 2650.
        ].
        recoveredStep = 2650 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2652.
        ].
        recoveredStep = 2652 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2653.
        ].
        recoveredStep = 2653 ifTrue: [
            recoveredStack2 := 'Ctlistblk'.
            recoveredPC := 2656.
        ].
        recoveredStep = 2656 ifTrue: [
            recoveredStack3 := 2048.
            recoveredPC := 2660.
        ].
        recoveredStep = 2660 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2662.
        ].
        recoveredStep = 2662 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2663.
        ].
        recoveredStep = 2663 ifTrue: [
            recoveredStack2 := 'SnamErr'.
            recoveredPC := 2666.
        ].
        recoveredStep = 2666 ifTrue: [
            recoveredStack3 := 418.
            recoveredPC := 2670.
        ].
        recoveredStep = 2670 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2672.
        ].
        recoveredStep = 2672 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2673.
        ].
        recoveredStep = 2673 ifTrue: [
            recoveredStack2 := 'DadmErr'.
            recoveredPC := 2676.
        ].
        recoveredStep = 2676 ifTrue: [
            recoveredStack3 := 449.
            recoveredPC := 2680.
        ].
        recoveredStep = 2680 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2682.
        ].
        recoveredStep = 2682 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2683.
        ].
        recoveredStep = 2683 ifTrue: [
            recoveredStack2 := 'Ctctyp'.
            recoveredPC := 2686.
        ].
        recoveredStep = 2686 ifTrue: [
            recoveredStack3 := 17.
            recoveredPC := 2688.
        ].
        recoveredStep = 2688 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2690.
        ].
        recoveredStep = 2690 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2691.
        ].
        recoveredStep = 2691 ifTrue: [
            recoveredStack2 := 'UREGSEG'.
            recoveredPC := 2694.
        ].
        recoveredStep = 2694 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 2696.
        ].
        recoveredStep = 2696 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2698.
        ].
        recoveredStep = 2698 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2699.
        ].
        recoveredStep = 2699 ifTrue: [
            recoveredStack2 := 'CfgtranHighMark'.
            recoveredPC := 2702.
        ].
        recoveredStep = 2702 ifTrue: [
            recoveredStack3 := 85.
            recoveredPC := 2706.
        ].
        recoveredStep = 2706 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2708.
        ].
        recoveredStep = 2708 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2709.
        ].
        recoveredStep = 2709 ifTrue: [
            recoveredStack2 := 'HsizErr'.
            recoveredPC := 2712.
        ].
        recoveredStep = 2712 ifTrue: [
            recoveredStack3 := 620.
            recoveredPC := 2716.
        ].
        recoveredStep = 2716 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2718.
        ].
        recoveredStep = 2718 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2719.
        ].
        recoveredStep = 2719 ifTrue: [
            recoveredStack2 := 'SmstErr'.
            recoveredPC := 2722.
        ].
        recoveredStep = 2722 ifTrue: [
            recoveredStack3 := 176.
            recoveredPC := 2726.
        ].
        recoveredStep = 2726 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2728.
        ].
        recoveredStep = 2728 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2729.
        ].
        recoveredStep = 2729 ifTrue: [
            recoveredStack2 := 'Cfgcommit'.
            recoveredPC := 2732.
        ].
        recoveredStep = 2732 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 2734.
        ].
        recoveredStep = 2734 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2736.
        ].
        recoveredStep = 2736 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2737.
        ].
        recoveredStep = 2737 ifTrue: [
            recoveredStack2 := 'Chkpntq'.
            recoveredPC := 2740.
        ].
        recoveredStep = 2740 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 2742.
        ].
        recoveredStep = 2742 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2744.
        ].
        recoveredStep = 2744 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2745.
        ].
        recoveredStep = 2745 ifTrue: [
            recoveredStack2 := 'BAT_FLTR'.
            recoveredPC := 2748.
        ].
        recoveredStep = 2748 ifTrue: [
            recoveredStack3 := 16384.
            recoveredPC := 2752.
        ].
        recoveredStep = 2752 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2754.
        ].
        recoveredStep = 2754 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2755.
        ].
        recoveredStep = 2755 ifTrue: [
            recoveredStack2 := 'Savenv'.
            recoveredPC := 2758.
        ].
        recoveredStep = 2758 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 2762.
        ].
        recoveredStep = 2762 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2764.
        ].
        recoveredStep = 2764 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2765.
        ].
        recoveredStep = 2765 ifTrue: [
            recoveredStack2 := 'OpsServer'.
            recoveredPC := 2768.
        ].
        recoveredStep = 2768 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 2770.
        ].
        recoveredStep = 2770 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2772.
        ].
        recoveredStep = 2772 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2773.
        ].
        recoveredStep = 2773 ifTrue: [
            recoveredStack2 := 'Ctreadp'.
            recoveredPC := 2776.
        ].
        recoveredStep = 2776 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 2778.
        ].
        recoveredStep = 2778 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2780.
        ].
        recoveredStep = 2780 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2781.
        ].
        recoveredStep = 2781 ifTrue: [
            recoveredStack2 := 'Cthistnext'.
            recoveredPC := 2784.
        ].
        recoveredStep = 2784 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 2786.
        ].
        recoveredStep = 2786 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2788.
        ].
        recoveredStep = 2788 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2789.
        ].
        recoveredStep = 2789 ifTrue: [
            recoveredStack2 := 'KsizErr'.
            recoveredPC := 2792.
        ].
        recoveredStep = 2792 ifTrue: [
            recoveredStack3 := 40.
            recoveredPC := 2794.
        ].
        recoveredStep = 2794 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2796.
        ].
        recoveredStep = 2796 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2797.
        ].
        recoveredStep = 2797 ifTrue: [
            recoveredStack2 := 'Shadow'.
            recoveredPC := 2800.
        ].
        recoveredStep = 2800 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 2802.
        ].
        recoveredStep = 2802 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2804.
        ].
        recoveredStep = 2804 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2805.
        ].
        recoveredStep = 2805 ifTrue: [
            recoveredStack2 := 'RedLock'.
            recoveredPC := 2808.
        ].
        recoveredStep = 2808 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 2810.
        ].
        recoveredStep = 2810 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2812.
        ].
        recoveredStep = 2812 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2813.
        ].
        recoveredStep = 2813 ifTrue: [
            recoveredStack2 := 'Cthistlog'.
            recoveredPC := 2816.
        ].
        recoveredStep = 2816 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 2818.
        ].
        recoveredStep = 2818 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2820.
        ].
        recoveredStep = 2820 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2821.
        ].
        recoveredStep = 2821 ifTrue: [
            recoveredStack2 := 'Grpnam'.
            recoveredPC := 2824.
        ].
        recoveredStep = 2824 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 2826.
        ].
        recoveredStep = 2826 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2828.
        ].
        recoveredStep = 2828 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2829.
        ].
        recoveredStep = 2829 ifTrue: [
            recoveredStack2 := 'BtadErr'.
            recoveredPC := 2832.
        ].
        recoveredStep = 2832 ifTrue: [
            recoveredStack3 := 424.
            recoveredPC := 2836.
        ].
        recoveredStep = 2836 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2838.
        ].
        recoveredStep = 2838 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2839.
        ].
        recoveredStep = 2839 ifTrue: [
            recoveredStack2 := 'KopnErr'.
            recoveredPC := 2842.
        ].
        recoveredStep = 2842 ifTrue: [
            recoveredStack3 := 18.
            recoveredPC := 2844.
        ].
        recoveredStep = 2844 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2846.
        ].
        recoveredStep = 2846 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2847.
        ].
        recoveredStep = 2847 ifTrue: [
            recoveredStack2 := 'Nbrbyteswritten'.
            recoveredPC := 2850.
        ].
        recoveredStep = 2850 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 2852.
        ].
        recoveredStep = 2852 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2854.
        ].
        recoveredStep = 2854 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2855.
        ].
        recoveredStep = 2855 ifTrue: [
            recoveredStack2 := 'CfglockMonitor'.
            recoveredPC := 2858.
        ].
        recoveredStep = 2858 ifTrue: [
            recoveredStack3 := 71.
            recoveredPC := 2862.
        ].
        recoveredStep = 2862 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2864.
        ].
        recoveredStep = 2864 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2865.
        ].
        recoveredStep = 2865 ifTrue: [
            recoveredStack2 := 'Cfgnoglobals'.
            recoveredPC := 2868.
        ].
        recoveredStep = 2868 ifTrue: [
            recoveredStack3 := 140.
            recoveredPC := 2872.
        ].
        recoveredStep = 2872 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2874.
        ].
        recoveredStep = 2874 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2875.
        ].
        recoveredStep = 2875 ifTrue: [
            recoveredStack2 := 'ClnRtry'.
            recoveredPC := 2878.
        ].
        recoveredStep = 2878 ifTrue: [
            recoveredStack3 := '-1'.
            recoveredPC := 2882.
        ].
        recoveredStep = 2882 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2884.
        ].
        recoveredStep = 2884 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2885.
        ].
        recoveredStep = 2885 ifTrue: [
            recoveredStack2 := 'CtrtMonitor'.
            recoveredPC := 2888.
        ].
        recoveredStep = 2888 ifTrue: [
            recoveredStack3 := 'CtrtPrintf'.
            recoveredPC := 2892.
        ].
        recoveredStep = 2892 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2894.
        ].
        recoveredStep = 2894 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2895.
        ].
        recoveredStep = 2895 ifTrue: [
            recoveredStack2 := 'Cthistpos'.
            recoveredPC := 2898.
        ].
        recoveredStep = 2898 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 2902.
        ].
        recoveredStep = 2902 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2904.
        ].
        recoveredStep = 2904 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2905.
        ].
        recoveredStep = 2905 ifTrue: [
            recoveredStack2 := 'CT_FSTRING'.
            recoveredPC := 2908.
        ].
        recoveredStep = 2908 ifTrue: [
            recoveredStack3 := 144.
            recoveredPC := 2912.
        ].
        recoveredStep = 2912 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2914.
        ].
        recoveredStep = 2914 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2915.
        ].
        recoveredStep = 2915 ifTrue: [
            recoveredStack2 := 'BFRSIZ'.
            recoveredPC := 2918.
        ].
        recoveredStep = 2918 ifTrue: [
            recoveredStack3 := 2048.
            recoveredPC := 2922.
        ].
        recoveredStep = 2922 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2924.
        ].
        recoveredStep = 2924 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2925.
        ].
        recoveredStep = 2925 ifTrue: [
            recoveredStack2 := 'DelflgErr'.
            recoveredPC := 2928.
        ].
        recoveredStep = 2928 ifTrue: [
            recoveredStack3 := 31.
            recoveredPC := 2930.
        ].
        recoveredStep = 2930 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2932.
        ].
        recoveredStep = 2932 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2933.
        ].
        recoveredStep = 2933 ifTrue: [
            recoveredStack2 := 'LagrErr'.
            recoveredPC := 2936.
        ].
        recoveredStep = 2936 ifTrue: [
            recoveredStack3 := 431.
            recoveredPC := 2940.
        ].
        recoveredStep = 2940 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2942.
        ].
        recoveredStep = 2942 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2943.
        ].
        recoveredStep = 2943 ifTrue: [
            recoveredStack2 := 'DefDtree1'.
            recoveredPC := 2946.
        ].
        recoveredStep = 2946 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 2948.
        ].
        recoveredStep = 2948 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2950.
        ].
        recoveredStep = 2950 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2951.
        ].
        recoveredStep = 2951 ifTrue: [
            recoveredStack2 := 'SCHSCH'.
            recoveredPC := 2954.
        ].
        recoveredStep = 2954 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 2956.
        ].
        recoveredStep = 2956 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2958.
        ].
        recoveredStep = 2958 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2959.
        ].
        recoveredStep = 2959 ifTrue: [
            recoveredStack2 := 'Cthlflavor'.
            recoveredPC := 2962.
        ].
        recoveredStep = 2962 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 2964.
        ].
        recoveredStep = 2964 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2966.
        ].
        recoveredStep = 2966 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2967.
        ].
        recoveredStep = 2967 ifTrue: [
            recoveredStack2 := 'Owner'.
            recoveredPC := 2970.
        ].
        recoveredStep = 2970 ifTrue: [
            recoveredStack3 := 'Ctowner()'.
            recoveredPC := 2974.
        ].
        recoveredStep = 2974 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2976.
        ].
        recoveredStep = 2976 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2977.
        ].
        recoveredStep = 2977 ifTrue: [
            recoveredStack2 := 'BtmdErr'.
            recoveredPC := 2980.
        ].
        recoveredStep = 2980 ifTrue: [
            recoveredStack3 := 98.
            recoveredPC := 2984.
        ].
        recoveredStep = 2984 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2986.
        ].
        recoveredStep = 2986 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2987.
        ].
        recoveredStep = 2987 ifTrue: [
            recoveredStack2 := 'BtbzErr'.
            recoveredPC := 2990.
        ].
        recoveredStep = 2990 ifTrue: [
            recoveredStack3 := 429.
            recoveredPC := 2994.
        ].
        recoveredStep = 2994 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 2996.
        ].
        recoveredStep = 2996 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2997.
        ].
        recoveredStep = 2997 ifTrue: [
            recoveredStack2 := 'CtregularLogon'.
            recoveredPC := 3000.
        ].
        recoveredStep = 3000 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 3002.
        ].
        recoveredStep = 3002 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3004.
        ].
        recoveredStep = 3004 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3005.
        ].
        recoveredStep = 3005 ifTrue: [
            recoveredStack2 := 'DefDtree3'.
            recoveredPC := 3008.
        ].
        recoveredStep = 3008 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 3010.
        ].
        recoveredStep = 3010 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3012.
        ].
        recoveredStep = 3012 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3013.
        ].
        recoveredStep = 3013 ifTrue: [
            recoveredStack2 := 'UsqlErr'.
            recoveredPC := 3016.
        ].
        recoveredStep = 3016 ifTrue: [
            recoveredStack3 := 505.
            recoveredPC := 3020.
        ].
        recoveredStep = 3020 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3022.
        ].
        recoveredStep = 3022 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3023.
        ].
        recoveredStep = 3023 ifTrue: [
            recoveredStack2 := 'Maxsrlpos'.
            recoveredPC := 3026.
        ].
        recoveredStep = 3026 ifTrue: [
            recoveredStack3 := 65535.
            recoveredPC := 3030.
        ].
        recoveredStep = 3030 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3032.
        ].
        recoveredStep = 3032 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3033.
        ].
        recoveredStep = 3033 ifTrue: [
            recoveredStack2 := 'SskyErr'.
            recoveredPC := 3036.
        ].
        recoveredStep = 3036 ifTrue: [
            recoveredStack3 := 173.
            recoveredPC := 3040.
        ].
        recoveredStep = 3040 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3042.
        ].
        recoveredStep = 3042 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3043.
        ].
        recoveredStep = 3043 ifTrue: [
            recoveredStack2 := 'CfgtaskerSleep'.
            recoveredPC := 3046.
        ].
        recoveredStep = 3046 ifTrue: [
            recoveredStack3 := 35.
            recoveredPC := 3048.
        ].
        recoveredStep = 3048 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3050.
        ].
        recoveredStep = 3050 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3051.
        ].
        recoveredStep = 3051 ifTrue: [
            recoveredStack2 := 'CfgmemoryMonitor'.
            recoveredPC := 3054.
        ].
        recoveredStep = 3054 ifTrue: [
            recoveredStack3 := 37.
            recoveredPC := 3056.
        ].
        recoveredStep = 3056 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3058.
        ].
        recoveredStep = 3058 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3059.
        ].
        recoveredStep = 3059 ifTrue: [
            recoveredStack2 := 'Ctcfglmt'.
            recoveredPC := 3062.
        ].
        recoveredStep = 3062 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 3066.
        ].
        recoveredStep = 3066 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3068.
        ].
        recoveredStep = 3068 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3069.
        ].
        recoveredStep = 3069 ifTrue: [
            recoveredStack2 := 'Indxerr'.
            recoveredPC := 3072.
        ].
        recoveredStep = 3072 ifTrue: [
            recoveredStack3 := 62.
            recoveredPC := 3074.
        ].
        recoveredStep = 3074 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3076.
        ].
        recoveredStep = 3076 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3077.
        ].
        recoveredStep = 3077 ifTrue: [
            recoveredStack2 := 'IjerErr'.
            recoveredPC := 3080.
        ].
        recoveredStep = 3080 ifTrue: [
            recoveredStack3 := 190.
            recoveredPC := 3084.
        ].
        recoveredStep = 3084 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3086.
        ].
        recoveredStep = 3086 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3087.
        ].
        recoveredStep = 3087 ifTrue: [
            recoveredStack2 := 'Ctsrvr'.
            recoveredPC := 3090.
        ].
        recoveredStep = 3090 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 3092.
        ].
        recoveredStep = 3092 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3094.
        ].
        recoveredStep = 3094 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3095.
        ].
        recoveredStep = 3095 ifTrue: [
            recoveredStack2 := 'CtrtFseek'.
            recoveredPC := 3098.
        ].
        recoveredStep = 3098 ifTrue: [
            recoveredStack3 := 'Fseek'.
            recoveredPC := 3102.
        ].
        recoveredStep = 3102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3104.
        ].
        recoveredStep = 3104 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3105.
        ].
        recoveredStep = 3105 ifTrue: [
            recoveredStack2 := 'Cthistdelt'.
            recoveredPC := 3108.
        ].
        recoveredStep = 3108 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 3112.
        ].
        recoveredStep = 3112 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3114.
        ].
        recoveredStep = 3114 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3115.
        ].
        recoveredStep = 3115 ifTrue: [
            recoveredStack2 := 'IjskErr'.
            recoveredPC := 3118.
        ].
        recoveredStep = 3118 ifTrue: [
            recoveredStack3 := 189.
            recoveredPC := 3122.
        ].
        recoveredStep = 3122 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3124.
        ].
        recoveredStep = 3124 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3125.
        ].
        recoveredStep = 3125 ifTrue: [
            recoveredStack2 := 'Ctprefnc'.
            recoveredPC := 3128.
        ].
        recoveredStep = 3128 ifTrue: [
            recoveredStack3 := 'CtWinInst'.
            recoveredPC := 3132.
        ].
        recoveredStep = 3132 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3134.
        ].
        recoveredStep = 3134 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3135.
        ].
        recoveredStep = 3135 ifTrue: [
            recoveredStack2 := 'Dtctyp'.
            recoveredPC := 3138.
        ].
        recoveredStep = 3138 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 3140.
        ].
        recoveredStep = 3140 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3142.
        ].
        recoveredStep = 3142 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3143.
        ].
        recoveredStep = 3143 ifTrue: [
            recoveredStack2 := 'Cfgfuture1'.
            recoveredPC := 3146.
        ].
        recoveredStep = 3146 ifTrue: [
            recoveredStack3 := 133.
            recoveredPC := 3150.
        ].
        recoveredStep = 3150 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3152.
        ].
        recoveredStep = 3152 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3153.
        ].
        recoveredStep = 3153 ifTrue: [
            recoveredStack2 := 'Cfglast'.
            recoveredPC := 3156.
        ].
        recoveredStep = 3156 ifTrue: [
            recoveredStack3 := 88.
            recoveredPC := 3160.
        ].
        recoveredStep = 3160 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3162.
        ].
        recoveredStep = 3162 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3163.
        ].
        recoveredStep = 3163 ifTrue: [
            recoveredStack2 := 'DsizErr'.
            recoveredPC := 3166.
        ].
        recoveredStep = 3166 ifTrue: [
            recoveredStack3 := 443.
            recoveredPC := 3170.
        ].
        recoveredStep = 3170 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3172.
        ].
        recoveredStep = 3172 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3173.
        ].
        recoveredStep = 3173 ifTrue: [
            recoveredStack2 := 'CtregDefId'.
            recoveredPC := 3176.
        ].
        recoveredStep = 3176 ifTrue: [
            recoveredStack3 := '"ctregDefId"'.
            recoveredPC := 3180.
        ].
        recoveredStep = 3180 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3182.
        ].
        recoveredStep = 3182 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3183.
        ].
        recoveredStep = 3183 ifTrue: [
            recoveredStack2 := 'Ugfname'.
            recoveredPC := 3186.
        ].
        recoveredStep = 3186 ifTrue: [
            recoveredStack3 := '"faircom.fcs"'.
            recoveredPC := 3190.
        ].
        recoveredStep = 3190 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3192.
        ].
        recoveredStep = 3192 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3193.
        ].
        recoveredStep = 3193 ifTrue: [
            recoveredStack2 := 'DopnErr'.
            recoveredPC := 3196.
        ].
        recoveredStep = 3196 ifTrue: [
            recoveredStack3 := 19.
            recoveredPC := 3198.
        ].
        recoveredStep = 3198 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3200.
        ].
        recoveredStep = 3200 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3201.
        ].
        recoveredStep = 3201 ifTrue: [
            recoveredStack2 := 'BownErr'.
            recoveredPC := 3204.
        ].
        recoveredStep = 3204 ifTrue: [
            recoveredStack3 := 447.
            recoveredPC := 3208.
        ].
        recoveredStep = 3208 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3210.
        ].
        recoveredStep = 3210 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3211.
        ].
        recoveredStep = 3211 ifTrue: [
            recoveredStack2 := 'MopnErr'.
            recoveredPC := 3214.
        ].
        recoveredStep = 3214 ifTrue: [
            recoveredStack3 := 543.
            recoveredPC := 3218.
        ].
        recoveredStep = 3218 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3220.
        ].
        recoveredStep = 3220 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3221.
        ].
        recoveredStep = 3221 ifTrue: [
            recoveredStack2 := 'WpfWrite'.
            recoveredPC := 3224.
        ].
        recoveredStep = 3224 ifTrue: [
            recoveredStack3 := 4096.
            recoveredPC := 3228.
        ].
        recoveredStep = 3228 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3230.
        ].
        recoveredStep = 3230 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3231.
        ].
        recoveredStep = 3231 ifTrue: [
            recoveredStack2 := 'CthdErr'.
            recoveredPC := 3234.
        ].
        recoveredStep = 3234 ifTrue: [
            recoveredStack3 := 600.
            recoveredPC := 3238.
        ].
        recoveredStep = 3238 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3240.
        ].
        recoveredStep = 3240 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3241.
        ].
        recoveredStep = 3241 ifTrue: [
            recoveredStack2 := 'NsqlErr'.
            recoveredPC := 3244.
        ].
        recoveredStep = 3244 ifTrue: [
            recoveredStack3 := 504.
            recoveredPC := 3248.
        ].
        recoveredStep = 3248 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3250.
        ].
        recoveredStep = 3250 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3251.
        ].
        recoveredStep = 3251 ifTrue: [
            recoveredStack2 := 'CtddFrc'.
            recoveredPC := 3254.
        ].
        recoveredStep = 3254 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 3258.
        ].
        recoveredStep = 3258 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3260.
        ].
        recoveredStep = 3260 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3261.
        ].
        recoveredStep = 3261 ifTrue: [
            recoveredStack2 := 'FcnfCod'.
            recoveredPC := 3264.
        ].
        recoveredStep = 3264 ifTrue: [
            recoveredStack3 := '-8'.
            recoveredPC := 3268.
        ].
        recoveredStep = 3268 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3270.
        ].
        recoveredStep = 3270 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3271.
        ].
        recoveredStep = 3271 ifTrue: [
            recoveredStack2 := 'DefMaskIfil2'.
            recoveredPC := 3274.
        ].
        recoveredStep = 3274 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 3276.
        ].
        recoveredStep = 3276 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3278.
        ].
        recoveredStep = 3278 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3279.
        ].
        recoveredStep = 3279 ifTrue: [
            recoveredStack2 := 'Autotrn'.
            recoveredPC := 3282.
        ].
        recoveredStep = 3282 ifTrue: [
            recoveredStack3 := 512.
            recoveredPC := 3286.
        ].
        recoveredStep = 3286 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3288.
        ].
        recoveredStep = 3288 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3289.
        ].
        recoveredStep = 3289 ifTrue: [
            recoveredStack2 := 'FiddErr'.
            recoveredPC := 3292.
        ].
        recoveredStep = 3292 ifTrue: [
            recoveredStack3 := 499.
            recoveredPC := 3296.
        ].
        recoveredStep = 3296 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3298.
        ].
        recoveredStep = 3298 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3299.
        ].
        recoveredStep = 3299 ifTrue: [
            recoveredStack2 := 'Databufs'.
            recoveredPC := 3302.
        ].
        recoveredStep = 3302 ifTrue: [
            recoveredStack3 := 100.
            recoveredPC := 3306.
        ].
        recoveredStep = 3306 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3308.
        ].
        recoveredStep = 3308 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3309.
        ].
        recoveredStep = 3309 ifTrue: [
            recoveredStack2 := 'Segmsk'.
            recoveredPC := 3312.
        ].
        recoveredStep = 3312 ifTrue: [
            recoveredStack3 := 271.
            recoveredPC := 3316.
        ].
        recoveredStep = 3316 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3318.
        ].
        recoveredStep = 3318 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3319.
        ].
        recoveredStep = 3319 ifTrue: [
            recoveredStack2 := 'Hdrsiz'.
            recoveredPC := 3322.
        ].
        recoveredStep = 3322 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 3326.
        ].
        recoveredStep = 3326 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3328.
        ].
        recoveredStep = 3328 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3329.
        ].
        recoveredStep = 3329 ifTrue: [
            recoveredStack2 := 'FnMaskLogon'.
            recoveredPC := 3332.
        ].
        recoveredStep = 3332 ifTrue: [
            recoveredStack3 := 4096.
            recoveredPC := 3336.
        ].
        recoveredStep = 3336 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3338.
        ].
        recoveredStep = 3338 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3339.
        ].
        recoveredStep = 3339 ifTrue: [
            recoveredStack2 := 'FnMask'.
            recoveredPC := 3342.
        ].
        recoveredStep = 3342 ifTrue: [
            recoveredStack3 := 255.
            recoveredPC := 3346.
        ].
        recoveredStep = 3346 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3348.
        ].
        recoveredStep = 3348 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3349.
        ].
        recoveredStep = 3349 ifTrue: [
            recoveredStack2 := 'doda_state'.
            recoveredPC := 3352.
        ].
        recoveredStep = 3352 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 3354.
        ].
        recoveredStep = 3354 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3356.
        ].
        recoveredStep = 3356 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3357.
        ].
        recoveredStep = 3357 ifTrue: [
            recoveredStack2 := 'Varldata'.
            recoveredPC := 3359.
        ].
        recoveredStep = 3359 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 3361.
        ].
        recoveredStep = 3361 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3363.
        ].
        recoveredStep = 3363 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3364.
        ].
        recoveredStep = 3364 ifTrue: [
            recoveredStack2 := 'Numanchor'.
            recoveredPC := 3368.
        ].
        recoveredStep = 3368 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 3370.
        ].
        recoveredStep = 3370 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3372.
        ].
        recoveredStep = 3372 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3373.
        ].
        recoveredStep = 3373 ifTrue: [
            recoveredStack2 := 'NqueErr'.
            recoveredPC := 3376.
        ].
        recoveredStep = 3376 ifTrue: [
            recoveredStack3 := 90.
            recoveredPC := 3380.
        ].
        recoveredStep = 3380 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3382.
        ].
        recoveredStep = 3382 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3383.
        ].
        recoveredStep = 3383 ifTrue: [
            recoveredStack2 := 'OpsOmitcp'.
            recoveredPC := 3386.
        ].
        recoveredStep = 3386 ifTrue: [
            recoveredStack3 := 1024.
            recoveredPC := 3390.
        ].
        recoveredStep = 3390 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3392.
        ].
        recoveredStep = 3392 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3393.
        ].
        recoveredStep = 3393 ifTrue: [
            recoveredStack2 := 'PerformDump'.
            recoveredPC := 3396.
        ].
        recoveredStep = 3396 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 3398.
        ].
        recoveredStep = 3398 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3400.
        ].
        recoveredStep = 3400 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3401.
        ].
        recoveredStep = 3401 ifTrue: [
            recoveredStack2 := 'ImkyErr'.
            recoveredPC := 3404.
        ].
        recoveredStep = 3404 ifTrue: [
            recoveredStack3 := 108.
            recoveredPC := 3408.
        ].
        recoveredStep = 3408 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3410.
        ].
        recoveredStep = 3410 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3411.
        ].
        recoveredStep = 3411 ifTrue: [
            recoveredStack2 := 'Ctfrcsng'.
            recoveredPC := 3414.
        ].
        recoveredStep = 3414 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 3416.
        ].
        recoveredStep = 3416 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3418.
        ].
        recoveredStep = 3418 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3419.
        ].
        recoveredStep = 3419 ifTrue: [
            recoveredStack2 := 'CfgdnodeQlength'.
            recoveredPC := 3422.
        ].
        recoveredStep = 3422 ifTrue: [
            recoveredStack3 := 195.
            recoveredPC := 3426.
        ].
        recoveredStep = 3426 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3428.
        ].
        recoveredStep = 3428 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3429.
        ].
        recoveredStep = 3429 ifTrue: [
            recoveredStack2 := 'GpfWrite'.
            recoveredPC := 3432.
        ].
        recoveredStep = 3432 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 3436.
        ].
        recoveredStep = 3436 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3438.
        ].
        recoveredStep = 3438 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3439.
        ].
        recoveredStep = 3439 ifTrue: [
            recoveredStack2 := 'AbdrErr'.
            recoveredPC := 3442.
        ].
        recoveredStep = 3442 ifTrue: [
            recoveredStack3 := 126.
            recoveredPC := 3446.
        ].
        recoveredStep = 3446 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3448.
        ].
        recoveredStep = 3448 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3449.
        ].
        recoveredStep = 3449 ifTrue: [
            recoveredStack2 := 'No'.
            recoveredPC := 3452.
        ].
        recoveredStep = 3452 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 3454.
        ].
        recoveredStep = 3454 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3456.
        ].
        recoveredStep = 3456 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3457.
        ].
        recoveredStep = 3457 ifTrue: [
            recoveredStack2 := 'NconErr'.
            recoveredPC := 3460.
        ].
        recoveredStep = 3460 ifTrue: [
            recoveredStack3 := 590.
            recoveredPC := 3464.
        ].
        recoveredStep = 3464 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3466.
        ].
        recoveredStep = 3466 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3467.
        ].
        recoveredStep = 3467 ifTrue: [
            recoveredStack2 := 'CfgtaskerSp'.
            recoveredPC := 3470.
        ].
        recoveredStep = 3470 ifTrue: [
            recoveredStack3 := 39.
            recoveredPC := 3472.
        ].
        recoveredStep = 3472 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3474.
        ].
        recoveredStep = 3474 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3475.
        ].
        recoveredStep = 3475 ifTrue: [
            recoveredStack2 := 'UVARSEG'.
            recoveredPC := 3478.
        ].
        recoveredStep = 3478 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 3480.
        ].
        recoveredStep = 3480 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3482.
        ].
        recoveredStep = 3482 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3483.
        ].
        recoveredStep = 3483 ifTrue: [
            recoveredStack2 := 'ResSrvr'.
            recoveredPC := 3486.
        ].
        recoveredStep = 3486 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 3490.
        ].
        recoveredStep = 3490 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3492.
        ].
        recoveredStep = 3492 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3493.
        ].
        recoveredStep = 3493 ifTrue: [
            recoveredStack2 := 'FullErr'.
            recoveredPC := 3496.
        ].
        recoveredStep = 3496 ifTrue: [
            recoveredStack3 := 39.
            recoveredPC := 3498.
        ].
        recoveredStep = 3498 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3500.
        ].
        recoveredStep = 3500 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3501.
        ].
        recoveredStep = 3501 ifTrue: [
            recoveredStack2 := 'CtmirrorSepchr'.
            recoveredPC := 3504.
        ].
        recoveredStep = 3504 ifTrue: [
            recoveredStack3 := '''|'''.
            recoveredPC := 3508.
        ].
        recoveredStep = 3508 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3510.
        ].
        recoveredStep = 3510 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3511.
        ].
        recoveredStep = 3511 ifTrue: [
            recoveredStack2 := 'DadrErr'.
            recoveredPC := 3514.
        ].
        recoveredStep = 3514 ifTrue: [
            recoveredStack3 := 437.
            recoveredPC := 3518.
        ].
        recoveredStep = 3518 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3520.
        ].
        recoveredStep = 3520 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3521.
        ].
        recoveredStep = 3521 ifTrue: [
            recoveredStack2 := 'BAT_UPD'.
            recoveredPC := 3524.
        ].
        recoveredStep = 3524 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 3526.
        ].
        recoveredStep = 3526 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3528.
        ].
        recoveredStep = 3528 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3529.
        ].
        recoveredStep = 3529 ifTrue: [
            recoveredStack2 := 'DnumErr'.
            recoveredPC := 3532.
        ].
        recoveredStep = 3532 ifTrue: [
            recoveredStack3 := 436.
            recoveredPC := 3536.
        ].
        recoveredStep = 3536 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3538.
        ].
        recoveredStep = 3538 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3539.
        ].
        recoveredStep = 3539 ifTrue: [
            recoveredStack2 := 'Fwdmod'.
            recoveredPC := 3542.
        ].
        recoveredStep = 3542 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 3544.
        ].
        recoveredStep = 3544 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3546.
        ].
        recoveredStep = 3546 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3547.
        ].
        recoveredStep = 3547 ifTrue: [
            recoveredStack2 := 'CfgstartOddMirror'.
            recoveredPC := 3550.
        ].
        recoveredStep = 3550 ifTrue: [
            recoveredStack3 := 59.
            recoveredPC := 3552.
        ].
        recoveredStep = 3552 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3554.
        ].
        recoveredStep = 3554 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3555.
        ].
        recoveredStep = 3555 ifTrue: [
            recoveredStack2 := 'Lhdrword'.
            recoveredPC := 3558.
        ].
        recoveredStep = 3558 ifTrue: [
            recoveredStack3 := 21.
            recoveredPC := 3560.
        ].
        recoveredStep = 3560 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3562.
        ].
        recoveredStep = 3562 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3563.
        ].
        recoveredStep = 3563 ifTrue: [
            recoveredStack2 := 'RvhdErr'.
            recoveredPC := 3566.
        ].
        recoveredStep = 3566 ifTrue: [
            recoveredStack3 := 123.
            recoveredPC := 3570.
        ].
        recoveredStep = 3570 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3572.
        ].
        recoveredStep = 3572 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3573.
        ].
        recoveredStep = 3573 ifTrue: [
            recoveredStack2 := 'TrdSql'.
            recoveredPC := 3576.
        ].
        recoveredStep = 3576 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 3578.
        ].
        recoveredStep = 3578 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3580.
        ].
        recoveredStep = 3580 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3581.
        ].
        recoveredStep = 3581 ifTrue: [
            recoveredStack2 := 'Cterrch'.
            recoveredPC := 3584.
        ].
        recoveredStep = 3584 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 3586.
        ].
        recoveredStep = 3586 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3588.
        ].
        recoveredStep = 3588 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3589.
        ].
        recoveredStep = 3589 ifTrue: [
            recoveredStack2 := 'Cthistkey'.
            recoveredPC := 3592.
        ].
        recoveredStep = 3592 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 3596.
        ].
        recoveredStep = 3596 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3598.
        ].
        recoveredStep = 3598 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3599.
        ].
        recoveredStep = 3599 ifTrue: [
            recoveredStack2 := 'CfgmemoryHigh'.
            recoveredPC := 3602.
        ].
        recoveredStep = 3602 ifTrue: [
            recoveredStack3 := 193.
            recoveredPC := 3606.
        ].
        recoveredStep = 3606 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3608.
        ].
        recoveredStep = 3608 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3609.
        ].
        recoveredStep = 3609 ifTrue: [
            recoveredStack2 := 'BatGkey'.
            recoveredPC := 3612.
        ].
        recoveredStep = 3612 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 3616.
        ].
        recoveredStep = 3616 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3618.
        ].
        recoveredStep = 3618 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3619.
        ].
        recoveredStep = 3619 ifTrue: [
            recoveredStack2 := 'Trnnum'.
            recoveredPC := 3622.
        ].
        recoveredStep = 3622 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 3624.
        ].
        recoveredStep = 3624 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3626.
        ].
        recoveredStep = 3626 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3627.
        ].
        recoveredStep = 3627 ifTrue: [
            recoveredStack2 := 'FnumErr'.
            recoveredPC := 3630.
        ].
        recoveredStep = 3630 ifTrue: [
            recoveredStack3 := 22.
            recoveredPC := 3632.
        ].
        recoveredStep = 3632 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3634.
        ].
        recoveredStep = 3634 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3635.
        ].
        recoveredStep = 3635 ifTrue: [
            recoveredStack2 := 'Abntran'.
            recoveredPC := 3638.
        ].
        recoveredStep = 3638 ifTrue: [
            recoveredStack3 := 40.
            recoveredPC := 3640.
        ].
        recoveredStep = 3640 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3642.
        ].
        recoveredStep = 3642 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3643.
        ].
        recoveredStep = 3643 ifTrue: [
            recoveredStack2 := 'PENDERR'.
            recoveredPC := 3646.
        ].
        recoveredStep = 3646 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 3650.
        ].
        recoveredStep = 3650 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3652.
        ].
        recoveredStep = 3652 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3653.
        ].
        recoveredStep = 3653 ifTrue: [
            recoveredStack2 := 'DODA_DELETEFLAG'.
            recoveredPC := 3656.
        ].
        recoveredStep = 3656 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 3658.
        ].
        recoveredStep = 3658 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3660.
        ].
        recoveredStep = 3660 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3661.
        ].
        recoveredStep = 3661 ifTrue: [
            recoveredStack2 := 'Ctsrvrside'.
            recoveredPC := 3664.
        ].
        recoveredStep = 3664 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 3666.
        ].
        recoveredStep = 3666 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3668.
        ].
        recoveredStep = 3668 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3669.
        ].
        recoveredStep = 3669 ifTrue: [
            recoveredStack2 := 'CfgsqlSuperfiles'.
            recoveredPC := 3672.
        ].
        recoveredStep = 3672 ifTrue: [
            recoveredStack3 := 21.
            recoveredPC := 3674.
        ].
        recoveredStep = 3674 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3676.
        ].
        recoveredStep = 3676 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3677.
        ].
        recoveredStep = 3677 ifTrue: [
            recoveredStack2 := 'BAT_PKEY'.
            recoveredPC := 3680.
        ].
        recoveredStep = 3680 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 3682.
        ].
        recoveredStep = 3682 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3684.
        ].
        recoveredStep = 3684 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3685.
        ].
        recoveredStep = 3685 ifTrue: [
            recoveredStack2 := 'Chkpnt'.
            recoveredPC := 3688.
        ].
        recoveredStep = 3688 ifTrue: [
            recoveredStack3 := 26.
            recoveredPC := 3690.
        ].
        recoveredStep = 3690 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3692.
        ].
        recoveredStep = 3692 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3693.
        ].
        recoveredStep = 3693 ifTrue: [
            recoveredStack2 := 'Altseqsiz'.
            recoveredPC := 3696.
        ].
        recoveredStep = 3696 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 3700.
        ].
        recoveredStep = 3700 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3702.
        ].
        recoveredStep = 3702 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3703.
        ].
        recoveredStep = 3703 ifTrue: [
            recoveredStack2 := 'CfgnodeqSearch'.
            recoveredPC := 3706.
        ].
        recoveredStep = 3706 ifTrue: [
            recoveredStack3 := 46.
            recoveredPC := 3708.
        ].
        recoveredStep = 3708 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3710.
        ].
        recoveredStep = 3710 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3711.
        ].
        recoveredStep = 3711 ifTrue: [
            recoveredStack2 := 'TrnAflag'.
            recoveredPC := 3714.
        ].
        recoveredStep = 3714 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 3716.
        ].
        recoveredStep = 3716 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3718.
        ].
        recoveredStep = 3718 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3719.
        ].
        recoveredStep = 3719 ifTrue: [
            recoveredStack2 := 'Global'.
            recoveredPC := 3722.
        ].
        recoveredStep = 3722 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 3724.
        ].
        recoveredStep = 3724 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3726.
        ].
        recoveredStep = 3726 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3727.
        ].
        recoveredStep = 3727 ifTrue: [
            recoveredStack2 := 'FcresCidx'.
            recoveredPC := 3730.
        ].
        recoveredStep = 3730 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 3732.
        ].
        recoveredStep = 3732 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3734.
        ].
        recoveredStep = 3734 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3735.
        ].
        recoveredStep = 3735 ifTrue: [
            recoveredStack2 := 'CfgrecoverMemlog'.
            recoveredPC := 3738.
        ].
        recoveredStep = 3738 ifTrue: [
            recoveredStack3 := 75.
            recoveredPC := 3742.
        ].
        recoveredStep = 3742 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3744.
        ].
        recoveredStep = 3744 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3745.
        ].
        recoveredStep = 3745 ifTrue: [
            recoveredStack2 := 'BAT_GKEY'.
            recoveredPC := 3748.
        ].
        recoveredStep = 3748 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 3752.
        ].
        recoveredStep = 3752 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3754.
        ].
        recoveredStep = 3754 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3755.
        ].
        recoveredStep = 3755 ifTrue: [
            recoveredStack2 := 'CfgsortMemory'.
            recoveredPC := 3758.
        ].
        recoveredStep = 3758 ifTrue: [
            recoveredStack3 := 23.
            recoveredPC := 3760.
        ].
        recoveredStep = 3760 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3762.
        ].
        recoveredStep = 3762 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3763.
        ].
        recoveredStep = 3763 ifTrue: [
            recoveredStack2 := 'SprmErr'.
            recoveredPC := 3766.
        ].
        recoveredStep = 3766 ifTrue: [
            recoveredStack3 := 11.
            recoveredPC := 3768.
        ].
        recoveredStep = 3768 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3770.
        ].
        recoveredStep = 3770 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3771.
        ].
        recoveredStep = 3771 ifTrue: [
            recoveredStack2 := 'MaxKeySeg'.
            recoveredPC := 3774.
        ].
        recoveredStep = 3774 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 3776.
        ].
        recoveredStep = 3776 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3778.
        ].
        recoveredStep = 3778 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3779.
        ].
        recoveredStep = 3779 ifTrue: [
            recoveredStack2 := 'LopnErr'.
            recoveredPC := 3782.
        ].
        recoveredStep = 3782 ifTrue: [
            recoveredStack3 := 96.
            recoveredPC := 3786.
        ].
        recoveredStep = 3786 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3788.
        ].
        recoveredStep = 3788 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3789.
        ].
        recoveredStep = 3789 ifTrue: [
            recoveredStack2 := 'Mustfrce'.
            recoveredPC := 3792.
        ].
        recoveredStep = 3792 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 3794.
        ].
        recoveredStep = 3794 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3796.
        ].
        recoveredStep = 3796 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3797.
        ].
        recoveredStep = 3797 ifTrue: [
            recoveredStack2 := 'Srlseg'.
            recoveredPC := 3800.
        ].
        recoveredStep = 3800 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 3802.
        ].
        recoveredStep = 3802 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3804.
        ].
        recoveredStep = 3804 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3805.
        ].
        recoveredStep = 3805 ifTrue: [
            recoveredStack2 := 'Firstran'.
            recoveredPC := 3808.
        ].
        recoveredStep = 3808 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 3810.
        ].
        recoveredStep = 3810 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3812.
        ].
        recoveredStep = 3812 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3813.
        ].
        recoveredStep = 3813 ifTrue: [
            recoveredStack2 := 'OpsServerSht'.
            recoveredPC := 3816.
        ].
        recoveredStep = 3816 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 3818.
        ].
        recoveredStep = 3818 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3820.
        ].
        recoveredStep = 3820 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3821.
        ].
        recoveredStep = 3821 ifTrue: [
            recoveredStack2 := 'Noexitreplacement'.
            recoveredPC := 3824.
        ].
        recoveredStep = 3824 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 3826.
        ].
        recoveredStep = 3826 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3828.
        ].
        recoveredStep = 3828 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3829.
        ].
        recoveredStep = 3829 ifTrue: [
            recoveredStack2 := 'Mxu2'.
            recoveredPC := 3832.
        ].
        recoveredStep = 3832 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 3836.
        ].
        recoveredStep = 3836 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3838.
        ].
        recoveredStep = 3838 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3839.
        ].
        recoveredStep = 3839 ifTrue: [
            recoveredStack2 := 'Logoff'.
            recoveredPC := 3842.
        ].
        recoveredStep = 3842 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 3844.
        ].
        recoveredStep = 3844 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3846.
        ].
        recoveredStep = 3846 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3847.
        ].
        recoveredStep = 3847 ifTrue: [
            recoveredStack2 := 'MAXLEN'.
            recoveredPC := 3850.
        ].
        recoveredStep = 3850 ifTrue: [
            recoveredStack3 := 255.
            recoveredPC := 3854.
        ].
        recoveredStep = 3854 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3856.
        ].
        recoveredStep = 3856 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3857.
        ].
        recoveredStep = 3857 ifTrue: [
            recoveredStack2 := 'Permsk'.
            recoveredPC := 3860.
        ].
        recoveredStep = 3860 ifTrue: [
            recoveredStack3 := 19.
            recoveredPC := 3862.
        ].
        recoveredStep = 3862 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3864.
        ].
        recoveredStep = 3864 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3865.
        ].
        recoveredStep = 3865 ifTrue: [
            recoveredStack2 := 'Cfgvarlkeys'.
            recoveredPC := 3868.
        ].
        recoveredStep = 3868 ifTrue: [
            recoveredStack3 := 135.
            recoveredPC := 3872.
        ].
        recoveredStep = 3872 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3874.
        ].
        recoveredStep = 3874 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3875.
        ].
        recoveredStep = 3875 ifTrue: [
            recoveredStack2 := 'Ctlhflavor'.
            recoveredPC := 3878.
        ].
        recoveredStep = 3878 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 3880.
        ].
        recoveredStep = 3880 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3882.
        ].
        recoveredStep = 3882 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3883.
        ].
        recoveredStep = 3883 ifTrue: [
            recoveredStack2 := 'CfgnodeqMonitor'.
            recoveredPC := 3886.
        ].
        recoveredStep = 3886 ifTrue: [
            recoveredStack3 := 43.
            recoveredPC := 3888.
        ].
        recoveredStep = 3888 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3890.
        ].
        recoveredStep = 3890 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3891.
        ].
        recoveredStep = 3891 ifTrue: [
            recoveredStack2 := 'Padding'.
            recoveredPC := 3894.
        ].
        recoveredStep = 3894 ifTrue: [
            recoveredStack3 := ''''.
            recoveredPC := 3898.
        ].
        recoveredStep = 3898 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3900.
        ].
        recoveredStep = 3900 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3901.
        ].
        recoveredStep = 3901 ifTrue: [
            recoveredStack2 := 'Gettrannum'.
            recoveredPC := 3904.
        ].
        recoveredStep = 3904 ifTrue: [
            recoveredStack3 := 50.
            recoveredPC := 3906.
        ].
        recoveredStep = 3906 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3908.
        ].
        recoveredStep = 3908 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3909.
        ].
        recoveredStep = 3909 ifTrue: [
            recoveredStack2 := 'doda_application'.
            recoveredPC := 3912.
        ].
        recoveredStep = 3912 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 3914.
        ].
        recoveredStep = 3914 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3916.
        ].
        recoveredStep = 3916 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3917.
        ].
        recoveredStep = 3917 ifTrue: [
            recoveredStack2 := 'GpfDelete'.
            recoveredPC := 3920.
        ].
        recoveredStep = 3920 ifTrue: [
            recoveredStack3 := 512.
            recoveredPC := 3924.
        ].
        recoveredStep = 3924 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3926.
        ].
        recoveredStep = 3926 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3927.
        ].
        recoveredStep = 3927 ifTrue: [
            recoveredStack2 := 'ShWrite'.
            recoveredPC := 3930.
        ].
        recoveredStep = 3930 ifTrue: [
            recoveredStack3 := 37.
            recoveredPC := 3932.
        ].
        recoveredStep = 3932 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3934.
        ].
        recoveredStep = 3934 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3935.
        ].
        recoveredStep = 3935 ifTrue: [
            recoveredStack2 := 'Ctblkrqs'.
            recoveredPC := 3938.
        ].
        recoveredStep = 3938 ifTrue: [
            recoveredStack3 := 'Ctsemrqs'.
            recoveredPC := 3942.
        ].
        recoveredStep = 3942 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3944.
        ].
        recoveredStep = 3944 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3945.
        ].
        recoveredStep = 3945 ifTrue: [
            recoveredStack2 := 'CfgctstatusSize'.
            recoveredPC := 3948.
        ].
        recoveredStep = 3948 ifTrue: [
            recoveredStack3 := 87.
            recoveredPC := 3952.
        ].
        recoveredStep = 3952 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3954.
        ].
        recoveredStep = 3954 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3955.
        ].
        recoveredStep = 3955 ifTrue: [
            recoveredStack2 := 'TrdSbld'.
            recoveredPC := 3958.
        ].
        recoveredStep = 3958 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 3960.
        ].
        recoveredStep = 3960 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3962.
        ].
        recoveredStep = 3962 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3963.
        ].
        recoveredStep = 3963 ifTrue: [
            recoveredStack2 := 'FnBaseLong'.
            recoveredPC := 3966.
        ].
        recoveredStep = 3966 ifTrue: [
            recoveredStack3 := 150.
            recoveredPC := 3970.
        ].
        recoveredStep = 3970 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3972.
        ].
        recoveredStep = 3972 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3973.
        ].
        recoveredStep = 3973 ifTrue: [
            recoveredStack2 := 'Rcvmod'.
            recoveredPC := 3976.
        ].
        recoveredStep = 3976 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 3978.
        ].
        recoveredStep = 3978 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3980.
        ].
        recoveredStep = 3980 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3981.
        ].
        recoveredStep = 3981 ifTrue: [
            recoveredStack2 := 'None'.
            recoveredPC := 3984.
        ].
        recoveredStep = 3984 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 3986.
        ].
        recoveredStep = 3986 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3988.
        ].
        recoveredStep = 3988 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3989.
        ].
        recoveredStep = 3989 ifTrue: [
            recoveredStack2 := 'MaxUgrup'.
            recoveredPC := 3992.
        ].
        recoveredStep = 3992 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 3996.
        ].
        recoveredStep = 3996 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 3998.
        ].
        recoveredStep = 3998 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 3999.
        ].
        recoveredStep = 3999 ifTrue: [
            recoveredStack2 := 'Ctcompat5000'.
            recoveredPC := 4002.
        ].
        recoveredStep = 4002 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 4004.
        ].
        recoveredStep = 4004 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4006.
        ].
        recoveredStep = 4006 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4007.
        ].
        recoveredStep = 4007 ifTrue: [
            recoveredStack2 := 'Lclnt'.
            recoveredPC := 4010.
        ].
        recoveredStep = 4010 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 4012.
        ].
        recoveredStep = 4012 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4014.
        ].
        recoveredStep = 4014 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4015.
        ].
        recoveredStep = 4015 ifTrue: [
            recoveredStack2 := 'ShndErr'.
            recoveredPC := 4018.
        ].
        recoveredStep = 4018 ifTrue: [
            recoveredStack3 := 143.
            recoveredPC := 4022.
        ].
        recoveredStep = 4022 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4024.
        ].
        recoveredStep = 4024 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4025.
        ].
        recoveredStep = 4025 ifTrue: [
            recoveredStack2 := 'CfgusrMemRule'.
            recoveredPC := 4028.
        ].
        recoveredStep = 4028 ifTrue: [
            recoveredStack3 := 27.
            recoveredPC := 4030.
        ].
        recoveredStep = 4030 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4032.
        ].
        recoveredStep = 4032 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4033.
        ].
        recoveredStep = 4033 ifTrue: [
            recoveredStack2 := 'OpsFunctionMon'.
            recoveredPC := 4036.
        ].
        recoveredStep = 4036 ifTrue: [
            recoveredStack3 := 32768.
            recoveredPC := 4040.
        ].
        recoveredStep = 4040 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4042.
        ].
        recoveredStep = 4042 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4043.
        ].
        recoveredStep = 4043 ifTrue: [
            recoveredStack2 := 'RestredBlk'.
            recoveredPC := 4046.
        ].
        recoveredStep = 4046 ifTrue: [
            recoveredStack3 := 14.
            recoveredPC := 4048.
        ].
        recoveredStep = 4048 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4050.
        ].
        recoveredStep = 4050 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4051.
        ].
        recoveredStep = 4051 ifTrue: [
            recoveredStack2 := 'CtddDef'.
            recoveredPC := 4054.
        ].
        recoveredStep = 4054 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 4056.
        ].
        recoveredStep = 4056 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4058.
        ].
        recoveredStep = 4058 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4059.
        ].
        recoveredStep = 4059 ifTrue: [
            recoveredStack2 := 'SchemaNames'.
            recoveredPC := 4062.
        ].
        recoveredStep = 4062 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 4064.
        ].
        recoveredStep = 4064 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4066.
        ].
        recoveredStep = 4066 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4067.
        ].
        recoveredStep = 4067 ifTrue: [
            recoveredStack2 := 'PiUnit'.
            recoveredPC := 4070.
        ].
        recoveredStep = 4070 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 4072.
        ].
        recoveredStep = 4072 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4074.
        ].
        recoveredStep = 4074 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4075.
        ].
        recoveredStep = 4075 ifTrue: [
            recoveredStack2 := 'DavlErr'.
            recoveredPC := 4078.
        ].
        recoveredStep = 4078 ifTrue: [
            recoveredStack3 := 442.
            recoveredPC := 4082.
        ].
        recoveredStep = 4082 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4084.
        ].
        recoveredStep = 4084 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4085.
        ].
        recoveredStep = 4085 ifTrue: [
            recoveredStack2 := 'Rdytran'.
            recoveredPC := 4088.
        ].
        recoveredStep = 4088 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 4090.
        ].
        recoveredStep = 4090 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4092.
        ].
        recoveredStep = 4092 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4093.
        ].
        recoveredStep = 4093 ifTrue: [
            recoveredStack2 := 'CfglogOddMirror'.
            recoveredPC := 4096.
        ].
        recoveredStep = 4096 ifTrue: [
            recoveredStack3 := 57.
            recoveredPC := 4098.
        ].
        recoveredStep = 4098 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4100.
        ].
        recoveredStep = 4100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4101.
        ].
        recoveredStep = 4101 ifTrue: [
            recoveredStack2 := 'CfgphysicalFiles'.
            recoveredPC := 4104.
        ].
        recoveredStep = 4104 ifTrue: [
            recoveredStack3 := 202.
            recoveredPC := 4108.
        ].
        recoveredStep = 4108 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4110.
        ].
        recoveredStep = 4110 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4111.
        ].
        recoveredStep = 4111 ifTrue: [
            recoveredStack2 := 'Noleaf'.
            recoveredPC := 4114.
        ].
        recoveredStep = 4114 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 4116.
        ].
        recoveredStep = 4116 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4118.
        ].
        recoveredStep = 4118 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4119.
        ].
        recoveredStep = 4119 ifTrue: [
            recoveredStack2 := 'BatLokKeep'.
            recoveredPC := 4122.
        ].
        recoveredStep = 4122 ifTrue: [
            recoveredStack3 := 32768.
            recoveredPC := 4126.
        ].
        recoveredStep = 4126 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4128.
        ].
        recoveredStep = 4128 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4129.
        ].
        recoveredStep = 4129 ifTrue: [
            recoveredStack2 := 'Ctupf'.
            recoveredPC := 4132.
        ].
        recoveredStep = 4132 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 4134.
        ].
        recoveredStep = 4134 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4136.
        ].
        recoveredStep = 4136 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4137.
        ].
        recoveredStep = 4137 ifTrue: [
            recoveredStack2 := 'IrbfErr'.
            recoveredPC := 4140.
        ].
        recoveredStep = 4140 ifTrue: [
            recoveredStack3 := 187.
            recoveredPC := 4144.
        ].
        recoveredStep = 4144 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4146.
        ].
        recoveredStep = 4146 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4147.
        ].
        recoveredStep = 4147 ifTrue: [
            recoveredStack2 := 'ItbfErr'.
            recoveredPC := 4150.
        ].
        recoveredStep = 4150 ifTrue: [
            recoveredStack3 := 188.
            recoveredPC := 4154.
        ].
        recoveredStep = 4154 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4156.
        ].
        recoveredStep = 4156 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4157.
        ].
        recoveredStep = 4157 ifTrue: [
            recoveredStack2 := 'Pfast'.
            recoveredPC := 4160.
        ].
        recoveredStep = 4160 ifTrue: [
            recoveredStack3 := 'Register'.
            recoveredPC := 4164.
        ].
        recoveredStep = 4164 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4166.
        ].
        recoveredStep = 4166 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4167.
        ].
        recoveredStep = 4167 ifTrue: [
            recoveredStack2 := 'CfgpreimageHash'.
            recoveredPC := 4170.
        ].
        recoveredStep = 4170 ifTrue: [
            recoveredStack3 := 25.
            recoveredPC := 4172.
        ].
        recoveredStep = 4172 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4174.
        ].
        recoveredStep = 4174 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4175.
        ].
        recoveredStep = 4175 ifTrue: [
            recoveredStack2 := 'HactErr'.
            recoveredPC := 4178.
        ].
        recoveredStep = 4178 ifTrue: [
            recoveredStack3 := 616.
            recoveredPC := 4182.
        ].
        recoveredStep = 4182 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4184.
        ].
        recoveredStep = 4184 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4185.
        ].
        recoveredStep = 4185 ifTrue: [
            recoveredStack2 := 'Abrtran'.
            recoveredPC := 4188.
        ].
        recoveredStep = 4188 ifTrue: [
            recoveredStack3 := 9.
            recoveredPC := 4190.
        ].
        recoveredStep = 4190 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4192.
        ].
        recoveredStep = 4192 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4193.
        ].
        recoveredStep = 4193 ifTrue: [
            recoveredStack2 := 'UserprfMemabs'.
            recoveredPC := 4196.
        ].
        recoveredStep = 4196 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 4198.
        ].
        recoveredStep = 4198 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4200.
        ].
        recoveredStep = 4200 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4201.
        ].
        recoveredStep = 4201 ifTrue: [
            recoveredStack2 := 'SsidErr'.
            recoveredPC := 4204.
        ].
        recoveredStep = 4204 ifTrue: [
            recoveredStack3 := 174.
            recoveredPC := 4208.
        ].
        recoveredStep = 4208 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4210.
        ].
        recoveredStep = 4210 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4211.
        ].
        recoveredStep = 4211 ifTrue: [
            recoveredStack2 := 'Cipfase'.
            recoveredPC := 4214.
        ].
        recoveredStep = 4214 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 4216.
        ].
        recoveredStep = 4216 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4218.
        ].
        recoveredStep = 4218 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4219.
        ].
        recoveredStep = 4219 ifTrue: [
            recoveredStack2 := 'WpfDelete'.
            recoveredPC := 4222.
        ].
        recoveredStep = 4222 ifTrue: [
            recoveredStack3 := 16384.
            recoveredPC := 4226.
        ].
        recoveredStep = 4226 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4228.
        ].
        recoveredStep = 4228 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4229.
        ].
        recoveredStep = 4229 ifTrue: [
            recoveredStack2 := 'LextErr'.
            recoveredPC := 4232.
        ].
        recoveredStep = 4232 ifTrue: [
            recoveredStack3 := 152.
            recoveredPC := 4236.
        ].
        recoveredStep = 4236 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4238.
        ].
        recoveredStep = 4238 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4239.
        ].
        recoveredStep = 4239 ifTrue: [
            recoveredStack2 := 'LkBlock'.
            recoveredPC := 4242.
        ].
        recoveredStep = 4242 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 4244.
        ].
        recoveredStep = 4244 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4246.
        ].
        recoveredStep = 4246 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4247.
        ].
        recoveredStep = 4247 ifTrue: [
            recoveredStack2 := 'Ctsortbuf'.
            recoveredPC := 4250.
        ].
        recoveredStep = 4250 ifTrue: [
            recoveredStack3 := 16000.
            recoveredPC := 4254.
        ].
        recoveredStep = 4254 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4256.
        ].
        recoveredStep = 4256 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4257.
        ].
        recoveredStep = 4257 ifTrue: [
            recoveredStack2 := 'BtflErr'.
            recoveredPC := 4260.
        ].
        recoveredStep = 4260 ifTrue: [
            recoveredStack3 := 421.
            recoveredPC := 4264.
        ].
        recoveredStep = 4264 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4266.
        ].
        recoveredStep = 4266 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4267.
        ].
        recoveredStep = 4267 ifTrue: [
            recoveredStack2 := 'FcresScrt'.
            recoveredPC := 4270.
        ].
        recoveredStep = 4270 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 4272.
        ].
        recoveredStep = 4272 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4274.
        ].
        recoveredStep = 4274 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4275.
        ].
        recoveredStep = 4275 ifTrue: [
            recoveredStack2 := 'Maxfil'.
            recoveredPC := 4278.
        ].
        recoveredStep = 4278 ifTrue: [
            recoveredStack3 := 50.
            recoveredPC := 4280.
        ].
        recoveredStep = 4280 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4282.
        ].
        recoveredStep = 4282 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4283.
        ].
        recoveredStep = 4283 ifTrue: [
            recoveredStack2 := 'CfgchkpntQlength'.
            recoveredPC := 4286.
        ].
        recoveredStep = 4286 ifTrue: [
            recoveredStack3 := 196.
            recoveredPC := 4290.
        ].
        recoveredStep = 4290 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4292.
        ].
        recoveredStep = 4292 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4293.
        ].
        recoveredStep = 4293 ifTrue: [
            recoveredStack2 := 'Fldelm'.
            recoveredPC := 4296.
        ].
        recoveredStep = 4296 ifTrue: [
            recoveredStack3 := 15.
            recoveredPC := 4298.
        ].
        recoveredStep = 4298 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4300.
        ].
        recoveredStep = 4300 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4301.
        ].
        recoveredStep = 4301 ifTrue: [
            recoveredStack2 := 'Suspend'.
            recoveredPC := 4304.
        ].
        recoveredStep = 4304 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 4306.
        ].
        recoveredStep = 4306 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4308.
        ].
        recoveredStep = 4308 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4309.
        ].
        recoveredStep = 4309 ifTrue: [
            recoveredStack2 := 'CfglocalDirectory'.
            recoveredPC := 4312.
        ].
        recoveredStep = 4312 ifTrue: [
            recoveredStack3 := 15.
            recoveredPC := 4314.
        ].
        recoveredStep = 4314 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4316.
        ].
        recoveredStep = 4316 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4317.
        ].
        recoveredStep = 4317 ifTrue: [
            recoveredStack2 := 'CfgbufrMemory'.
            recoveredPC := 4320.
        ].
        recoveredStep = 4320 ifTrue: [
            recoveredStack3 := 24.
            recoveredPC := 4322.
        ].
        recoveredStep = 4322 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4324.
        ].
        recoveredStep = 4324 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4325.
        ].
        recoveredStep = 4325 ifTrue: [
            recoveredStack2 := 'TshdErr'.
            recoveredPC := 4328.
        ].
        recoveredStep = 4328 ifTrue: [
            recoveredStack3 := 72.
            recoveredPC := 4332.
        ].
        recoveredStep = 4332 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4334.
        ].
        recoveredStep = 4334 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4335.
        ].
        recoveredStep = 4335 ifTrue: [
            recoveredStack2 := 'Trnbeglk'.
            recoveredPC := 4338.
        ].
        recoveredStep = 4338 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 4340.
        ].
        recoveredStep = 4340 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4342.
        ].
        recoveredStep = 4342 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4343.
        ].
        recoveredStep = 4343 ifTrue: [
            recoveredStack2 := 'HentErr'.
            recoveredPC := 4346.
        ].
        recoveredStep = 4346 ifTrue: [
            recoveredStack3 := 618.
            recoveredPC := 4350.
        ].
        recoveredStep = 4350 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4352.
        ].
        recoveredStep = 4352 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4353.
        ].
        recoveredStep = 4353 ifTrue: [
            recoveredStack2 := 'YOURSEG2'.
            recoveredPC := 4356.
        ].
        recoveredStep = 4356 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 4358.
        ].
        recoveredStep = 4358 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4360.
        ].
        recoveredStep = 4360 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4361.
        ].
        recoveredStep = 4361 ifTrue: [
            recoveredStack2 := 'CfgstartEvenMirror'.
            recoveredPC := 4364.
        ].
        recoveredStep = 4364 ifTrue: [
            recoveredStack3 := 58.
            recoveredPC := 4366.
        ].
        recoveredStep = 4366 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4368.
        ].
        recoveredStep = 4368 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4369.
        ].
        recoveredStep = 4369 ifTrue: [
            recoveredStack2 := 'SqlconnectErr'.
            recoveredPC := 4372.
        ].
        recoveredStep = 4372 ifTrue: [
            recoveredStack3 := 501.
            recoveredPC := 4376.
        ].
        recoveredStep = 4376 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4378.
        ].
        recoveredStep = 4378 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4379.
        ].
        recoveredStep = 4379 ifTrue: [
            recoveredStack2 := 'CtnlErr'.
            recoveredPC := 4382.
        ].
        recoveredStep = 4382 ifTrue: [
            recoveredStack3 := 61.
            recoveredPC := 4384.
        ].
        recoveredStep = 4384 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4386.
        ].
        recoveredStep = 4386 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4387.
        ].
        recoveredStep = 4387 ifTrue: [
            recoveredStack2 := 'Logidx'.
            recoveredPC := 4390.
        ].
        recoveredStep = 4390 ifTrue: [
            recoveredStack3 := 32768.
            recoveredPC := 4394.
        ].
        recoveredStep = 4394 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4396.
        ].
        recoveredStep = 4396 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4397.
        ].
        recoveredStep = 4397 ifTrue: [
            recoveredStack2 := 'OpfDelete'.
            recoveredPC := 4400.
        ].
        recoveredStep = 4400 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 4402.
        ].
        recoveredStep = 4402 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4404.
        ].
        recoveredStep = 4404 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4405.
        ].
        recoveredStep = 4405 ifTrue: [
            recoveredStack2 := 'Cfgresource'.
            recoveredPC := 4408.
        ].
        recoveredStep = 4408 ifTrue: [
            recoveredStack3 := 130.
            recoveredPC := 4412.
        ].
        recoveredStep = 4412 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4414.
        ].
        recoveredStep = 4414 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4415.
        ].
        recoveredStep = 4415 ifTrue: [
            recoveredStack2 := 'Datlog'.
            recoveredPC := 4418.
        ].
        recoveredStep = 4418 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 4420.
        ].
        recoveredStep = 4420 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4422.
        ].
        recoveredStep = 4422 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4423.
        ].
        recoveredStep = 4423 ifTrue: [
            recoveredStack2 := 'Cfgdump'.
            recoveredPC := 4426.
        ].
        recoveredStep = 4426 ifTrue: [
            recoveredStack3 := 17.
            recoveredPC := 4428.
        ].
        recoveredStep = 4428 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4430.
        ].
        recoveredStep = 4430 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4431.
        ].
        recoveredStep = 4431 ifTrue: [
            recoveredStack2 := 'SusrErr'.
            recoveredPC := 4434.
        ].
        recoveredStep = 4434 ifTrue: [
            recoveredStack3 := 97.
            recoveredPC := 4438.
        ].
        recoveredStep = 4438 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4440.
        ].
        recoveredStep = 4440 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4441.
        ].
        recoveredStep = 4441 ifTrue: [
            recoveredStack2 := 'Logonu'.
            recoveredPC := 4444.
        ].
        recoveredStep = 4444 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 4446.
        ].
        recoveredStep = 4446 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4448.
        ].
        recoveredStep = 4448 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4449.
        ].
        recoveredStep = 4449 ifTrue: [
            recoveredStack2 := 'Parm3'.
            recoveredPC := 4452.
        ].
        recoveredStep = 4452 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 4454.
        ].
        recoveredStep = 4454 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4456.
        ].
        recoveredStep = 4456 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4457.
        ].
        recoveredStep = 4457 ifTrue: [
            recoveredStack2 := 'SysmonOff'.
            recoveredPC := 4460.
        ].
        recoveredStep = 4460 ifTrue: [
            recoveredStack3 := 99.
            recoveredPC := 4464.
        ].
        recoveredStep = 4464 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4466.
        ].
        recoveredStep = 4466 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4467.
        ].
        recoveredStep = 4467 ifTrue: [
            recoveredStack2 := 'Keymem'.
            recoveredPC := 4470.
        ].
        recoveredStep = 4470 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 4472.
        ].
        recoveredStep = 4472 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4474.
        ].
        recoveredStep = 4474 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4475.
        ].
        recoveredStep = 4475 ifTrue: [
            recoveredStack2 := 'Parm4'.
            recoveredPC := 4478.
        ].
        recoveredStep = 4478 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 4480.
        ].
        recoveredStep = 4480 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4482.
        ].
        recoveredStep = 4482 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4483.
        ].
        recoveredStep = 4483 ifTrue: [
            recoveredStack2 := 'Ct4string'.
            recoveredPC := 4486.
        ].
        recoveredStep = 4486 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 4490.
        ].
        recoveredStep = 4490 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4492.
        ].
        recoveredStep = 4492 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4493.
        ].
        recoveredStep = 4493 ifTrue: [
            recoveredStack2 := 'Shdhbins'.
            recoveredPC := 4496.
        ].
        recoveredStep = 4496 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 4500.
        ].
        recoveredStep = 4500 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4502.
        ].
        recoveredStep = 4502 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4503.
        ].
        recoveredStep = 4503 ifTrue: [
            recoveredStack2 := 'DefIfil'.
            recoveredPC := 4506.
        ].
        recoveredStep = 4506 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 4508.
        ].
        recoveredStep = 4508 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4510.
        ].
        recoveredStep = 4510 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4511.
        ].
        recoveredStep = 4511 ifTrue: [
            recoveredStack2 := 'Admopen'.
            recoveredPC := 4514.
        ].
        recoveredStep = 4514 ifTrue: [
            recoveredStack3 := 4096.
            recoveredPC := 4518.
        ].
        recoveredStep = 4518 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4520.
        ].
        recoveredStep = 4520 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4521.
        ].
        recoveredStep = 4521 ifTrue: [
            recoveredStack2 := 'Cfgparmfile'.
            recoveredPC := 4524.
        ].
        recoveredStep = 4524 ifTrue: [
            recoveredStack3 := 136.
            recoveredPC := 4528.
        ].
        recoveredStep = 4528 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4530.
        ].
        recoveredStep = 4530 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4531.
        ].
        recoveredStep = 4531 ifTrue: [
            recoveredStack2 := 'CtString'.
            recoveredPC := 4534.
        ].
        recoveredStep = 4534 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 4538.
        ].
        recoveredStep = 4538 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4540.
        ].
        recoveredStep = 4540 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4541.
        ].
        recoveredStep = 4541 ifTrue: [
            recoveredStack2 := 'Restore'.
            recoveredPC := 4544.
        ].
        recoveredStep = 4544 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 4546.
        ].
        recoveredStep = 4546 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4548.
        ].
        recoveredStep = 4548 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4549.
        ].
        recoveredStep = 4549 ifTrue: [
            recoveredStack2 := 'ImemErr'.
            recoveredPC := 4552.
        ].
        recoveredStep = 4552 ifTrue: [
            recoveredStack3 := 197.
            recoveredPC := 4556.
        ].
        recoveredStep = 4556 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4558.
        ].
        recoveredStep = 4558 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4559.
        ].
        recoveredStep = 4559 ifTrue: [
            recoveredStack2 := 'CtFstring'.
            recoveredPC := 4562.
        ].
        recoveredStep = 4562 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 4564.
        ].
        recoveredStep = 4564 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4566.
        ].
        recoveredStep = 4566 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4567.
        ].
        recoveredStep = 4567 ifTrue: [
            recoveredStack2 := 'Cthistfrwd'.
            recoveredPC := 4570.
        ].
        recoveredStep = 4570 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 4572.
        ].
        recoveredStep = 4572 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4574.
        ].
        recoveredStep = 4574 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4575.
        ].
        recoveredStep = 4575 ifTrue: [
            recoveredStack2 := 'Varseg'.
            recoveredPC := 4578.
        ].
        recoveredStep = 4578 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 4580.
        ].
        recoveredStep = 4580 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4582.
        ].
        recoveredStep = 4582 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4583.
        ].
        recoveredStep = 4583 ifTrue: [
            recoveredStack2 := 'Supadd'.
            recoveredPC := 4586.
        ].
        recoveredStep = 4586 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 4588.
        ].
        recoveredStep = 4588 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4590.
        ].
        recoveredStep = 4590 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4591.
        ].
        recoveredStep = 4591 ifTrue: [
            recoveredStack2 := 'MusrErr'.
            recoveredPC := 4594.
        ].
        recoveredStep = 4594 ifTrue: [
            recoveredStack3 := 84.
            recoveredPC := 4598.
        ].
        recoveredStep = 4598 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4600.
        ].
        recoveredStep = 4600 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4601.
        ].
        recoveredStep = 4601 ifTrue: [
            recoveredStack2 := 'Faircoms'.
            recoveredPC := 4604.
        ].
        recoveredStep = 4604 ifTrue: [
            recoveredStack3 := '"faircoms"'.
            recoveredPC := 4608.
        ].
        recoveredStep = 4608 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4610.
        ].
        recoveredStep = 4610 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4611.
        ].
        recoveredStep = 4611 ifTrue: [
            recoveredStack2 := 'AsidErr'.
            recoveredPC := 4614.
        ].
        recoveredStep = 4614 ifTrue: [
            recoveredStack3 := 134.
            recoveredPC := 4618.
        ].
        recoveredStep = 4618 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4620.
        ].
        recoveredStep = 4620 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4621.
        ].
        recoveredStep = 4621 ifTrue: [
            recoveredStack2 := 'Bfrsiz'.
            recoveredPC := 4624.
        ].
        recoveredStep = 4624 ifTrue: [
            recoveredStack3 := 2048.
            recoveredPC := 4628.
        ].
        recoveredStep = 4628 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4630.
        ].
        recoveredStep = 4630 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4631.
        ].
        recoveredStep = 4631 ifTrue: [
            recoveredStack2 := 'CfglogEven'.
            recoveredPC := 4634.
        ].
        recoveredStep = 4634 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 4636.
        ].
        recoveredStep = 4636 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4638.
        ].
        recoveredStep = 4638 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4639.
        ].
        recoveredStep = 4639 ifTrue: [
            recoveredStack2 := 'QmemErr'.
            recoveredPC := 4642.
        ].
        recoveredStep = 4642 ifTrue: [
            recoveredStack3 := 144.
            recoveredPC := 4646.
        ].
        recoveredStep = 4646 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4648.
        ].
        recoveredStep = 4648 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4649.
        ].
        recoveredStep = 4649 ifTrue: [
            recoveredStack2 := 'DSCSEG'.
            recoveredPC := 4652.
        ].
        recoveredStep = 4652 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 4654.
        ].
        recoveredStep = 4654 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4656.
        ].
        recoveredStep = 4656 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4657.
        ].
        recoveredStep = 4657 ifTrue: [
            recoveredStack2 := 'Shortwait'.
            recoveredPC := 4660.
        ].
        recoveredStep = 4660 ifTrue: [
            recoveredStack3 := '1l'.
            recoveredPC := 4664.
        ].
        recoveredStep = 4664 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4666.
        ].
        recoveredStep = 4666 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4667.
        ].
        recoveredStep = 4667 ifTrue: [
            recoveredStack2 := 'DISABLERES'.
            recoveredPC := 4670.
        ].
        recoveredStep = 4670 ifTrue: [
            recoveredStack3 := 2048.
            recoveredPC := 4674.
        ].
        recoveredStep = 4674 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4676.
        ].
        recoveredStep = 4676 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4677.
        ].
        recoveredStep = 4677 ifTrue: [
            recoveredStack2 := 'ClnChkact'.
            recoveredPC := 4680.
        ].
        recoveredStep = 4680 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 4682.
        ].
        recoveredStep = 4682 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4684.
        ].
        recoveredStep = 4684 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4685.
        ].
        recoveredStep = 4685 ifTrue: [
            recoveredStack2 := 'Ctloclib'.
            recoveredPC := 4687.
        ].
        recoveredStep = 4687 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 4689.
        ].
        recoveredStep = 4689 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4691.
        ].
        recoveredStep = 4691 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4692.
        ].
        recoveredStep = 4692 ifTrue: [
            recoveredStack2 := 'AUTOSAVE'.
            recoveredPC := 4696.
        ].
        recoveredStep = 4696 ifTrue: [
            recoveredStack3 := 8192.
            recoveredPC := 4700.
        ].
        recoveredStep = 4700 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4702.
        ].
        recoveredStep = 4702 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4703.
        ].
        recoveredStep = 4703 ifTrue: [
            recoveredStack2 := 'Idxnam'.
            recoveredPC := 4706.
        ].
        recoveredStep = 4706 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 4708.
        ].
        recoveredStep = 4708 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4710.
        ].
        recoveredStep = 4710 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4711.
        ].
        recoveredStep = 4711 ifTrue: [
            recoveredStack2 := 'Cthisttran'.
            recoveredPC := 4714.
        ].
        recoveredStep = 4714 ifTrue: [
            recoveredStack3 := 512.
            recoveredPC := 4718.
        ].
        recoveredStep = 4718 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4720.
        ].
        recoveredStep = 4720 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4721.
        ].
        recoveredStep = 4721 ifTrue: [
            recoveredStack2 := 'Ctmemswp'.
            recoveredPC := 4724.
        ].
        recoveredStep = 4724 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 4726.
        ].
        recoveredStep = 4726 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4728.
        ].
        recoveredStep = 4728 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4729.
        ].
        recoveredStep = 4729 ifTrue: [
            recoveredStack2 := 'Exclusive'.
            recoveredPC := 4732.
        ].
        recoveredStep = 4732 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 4734.
        ].
        recoveredStep = 4734 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4736.
        ].
        recoveredStep = 4736 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4737.
        ].
        recoveredStep = 4737 ifTrue: [
            recoveredStack2 := 'Ct2string'.
            recoveredPC := 4740.
        ].
        recoveredStep = 4740 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 4744.
        ].
        recoveredStep = 4744 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4746.
        ].
        recoveredStep = 4746 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4747.
        ].
        recoveredStep = 4747 ifTrue: [
            recoveredStack2 := 'TusrErr'.
            recoveredPC := 4750.
        ].
        recoveredStep = 4750 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 4752.
        ].
        recoveredStep = 4752 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4754.
        ].
        recoveredStep = 4754 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4755.
        ].
        recoveredStep = 4755 ifTrue: [
            recoveredStack2 := 'Ctcompatspcmgt'.
            recoveredPC := 4758.
        ].
        recoveredStep = 4758 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 4760.
        ].
        recoveredStep = 4760 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4762.
        ].
        recoveredStep = 4762 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4763.
        ].
        recoveredStep = 4763 ifTrue: [
            recoveredStack2 := 'IpndErr'.
            recoveredPC := 4766.
        ].
        recoveredStep = 4766 ifTrue: [
            recoveredStack3 := 112.
            recoveredPC := 4770.
        ].
        recoveredStep = 4770 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4772.
        ].
        recoveredStep = 4772 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4773.
        ].
        recoveredStep = 4773 ifTrue: [
            recoveredStack2 := 'IinmErr'.
            recoveredPC := 4776.
        ].
        recoveredStep = 4776 ifTrue: [
            recoveredStack3 := 467.
            recoveredPC := 4780.
        ].
        recoveredStep = 4780 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4782.
        ].
        recoveredStep = 4782 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4783.
        ].
        recoveredStep = 4783 ifTrue: [
            recoveredStack2 := 'Prdrpeat'.
            recoveredPC := 4786.
        ].
        recoveredStep = 4786 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 4788.
        ].
        recoveredStep = 4788 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4790.
        ].
        recoveredStep = 4790 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4791.
        ].
        recoveredStep = 4791 ifTrue: [
            recoveredStack2 := 'SrioErr'.
            recoveredPC := 4794.
        ].
        recoveredStep = 4794 ifTrue: [
            recoveredStack3 := 507.
            recoveredPC := 4798.
        ].
        recoveredStep = 4798 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4800.
        ].
        recoveredStep = 4800 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4801.
        ].
        recoveredStep = 4801 ifTrue: [
            recoveredStack2 := 'CoCreate'.
            recoveredPC := 4804.
        ].
        recoveredStep = 4804 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 4806.
        ].
        recoveredStep = 4806 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4808.
        ].
        recoveredStep = 4808 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4809.
        ].
        recoveredStep = 4809 ifTrue: [
            recoveredStack2 := 'CtkeepOut'.
            recoveredPC := 4812.
        ].
        recoveredStep = 4812 ifTrue: [
            recoveredStack3 := 41.
            recoveredPC := 4814.
        ].
        recoveredStep = 4814 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4816.
        ].
        recoveredStep = 4816 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4817.
        ].
        recoveredStep = 4817 ifTrue: [
            recoveredStack2 := 'CtPstring'.
            recoveredPC := 4820.
        ].
        recoveredStep = 4820 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 4824.
        ].
        recoveredStep = 4824 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4826.
        ].
        recoveredStep = 4826 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4827.
        ].
        recoveredStep = 4827 ifTrue: [
            recoveredStack2 := 'LpwdErr'.
            recoveredPC := 4830.
        ].
        recoveredStep = 4830 ifTrue: [
            recoveredStack3 := 451.
            recoveredPC := 4834.
        ].
        recoveredStep = 4834 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4836.
        ].
        recoveredStep = 4836 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4837.
        ].
        recoveredStep = 4837 ifTrue: [
            recoveredStack2 := 'Cfgtranproc'.
            recoveredPC := 4840.
        ].
        recoveredStep = 4840 ifTrue: [
            recoveredStack3 := 129.
            recoveredPC := 4844.
        ].
        recoveredStep = 4844 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4846.
        ].
        recoveredStep = 4846 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4847.
        ].
        recoveredStep = 4847 ifTrue: [
            recoveredStack2 := 'SYSMON_OFF'.
            recoveredPC := 4850.
        ].
        recoveredStep = 4850 ifTrue: [
            recoveredStack3 := 99.
            recoveredPC := 4854.
        ].
        recoveredStep = 4854 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4856.
        ].
        recoveredStep = 4856 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4857.
        ].
        recoveredStep = 4857 ifTrue: [
            recoveredStack2 := 'IiniErr'.
            recoveredPC := 4860.
        ].
        recoveredStep = 4860 ifTrue: [
            recoveredStack3 := 465.
            recoveredPC := 4864.
        ].
        recoveredStep = 4864 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4866.
        ].
        recoveredStep = 4866 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4867.
        ].
        recoveredStep = 4867 ifTrue: [
            recoveredStack2 := 'Dupchanel'.
            recoveredPC := 4870.
        ].
        recoveredStep = 4870 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 4874.
        ].
        recoveredStep = 4874 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4876.
        ].
        recoveredStep = 4876 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4877.
        ].
        recoveredStep = 4877 ifTrue: [
            recoveredStack2 := 'BAT_OPC_RESV'.
            recoveredPC := 4880.
        ].
        recoveredStep = 4880 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 4882.
        ].
        recoveredStep = 4882 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4884.
        ].
        recoveredStep = 4884 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4885.
        ].
        recoveredStep = 4885 ifTrue: [
            recoveredStack2 := 'Ctcompatlogon'.
            recoveredPC := 4888.
        ].
        recoveredStep = 4888 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 4890.
        ].
        recoveredStep = 4890 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4892.
        ].
        recoveredStep = 4892 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4893.
        ].
        recoveredStep = 4893 ifTrue: [
            recoveredStack2 := 'UserprfPthtmp'.
            recoveredPC := 4896.
        ].
        recoveredStep = 4896 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 4900.
        ].
        recoveredStep = 4900 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4902.
        ].
        recoveredStep = 4902 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4903.
        ].
        recoveredStep = 4903 ifTrue: [
            recoveredStack2 := 'CfgwordOrder'.
            recoveredPC := 4906.
        ].
        recoveredStep = 4906 ifTrue: [
            recoveredStack3 := 144.
            recoveredPC := 4910.
        ].
        recoveredStep = 4910 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4912.
        ].
        recoveredStep = 4912 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4913.
        ].
        recoveredStep = 4913 ifTrue: [
            recoveredStack2 := 'Cfgansi'.
            recoveredPC := 4916.
        ].
        recoveredStep = 4916 ifTrue: [
            recoveredStack3 := 148.
            recoveredPC := 4920.
        ].
        recoveredStep = 4920 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4922.
        ].
        recoveredStep = 4922 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4923.
        ].
        recoveredStep = 4923 ifTrue: [
            recoveredStack2 := 'Ctdiagnosespcmgt'.
            recoveredPC := 4926.
        ].
        recoveredStep = 4926 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 4930.
        ].
        recoveredStep = 4930 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4932.
        ].
        recoveredStep = 4932 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4933.
        ].
        recoveredStep = 4933 ifTrue: [
            recoveredStack2 := 'Ldelkey'.
            recoveredPC := 4936.
        ].
        recoveredStep = 4936 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 4938.
        ].
        recoveredStep = 4938 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4940.
        ].
        recoveredStep = 4940 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4941.
        ].
        recoveredStep = 4941 ifTrue: [
            recoveredStack2 := 'CtmaxKeySeg'.
            recoveredPC := 4944.
        ].
        recoveredStep = 4944 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 4946.
        ].
        recoveredStep = 4946 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4948.
        ].
        recoveredStep = 4948 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4949.
        ].
        recoveredStep = 4949 ifTrue: [
            recoveredStack2 := 'LmemErr'.
            recoveredPC := 4952.
        ].
        recoveredStep = 4952 ifTrue: [
            recoveredStack3 := 88.
            recoveredPC := 4956.
        ].
        recoveredStep = 4956 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4958.
        ].
        recoveredStep = 4958 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4959.
        ].
        recoveredStep = 4959 ifTrue: [
            recoveredStack2 := 'TpndErr'.
            recoveredPC := 4962.
        ].
        recoveredStep = 4962 ifTrue: [
            recoveredStack3 := 420.
            recoveredPC := 4966.
        ].
        recoveredStep = 4966 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4968.
        ].
        recoveredStep = 4968 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4969.
        ].
        recoveredStep = 4969 ifTrue: [
            recoveredStack2 := 'LwrtErr'.
            recoveredPC := 4972.
        ].
        recoveredStep = 4972 ifTrue: [
            recoveredStack3 := 541.
            recoveredPC := 4976.
        ].
        recoveredStep = 4976 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4978.
        ].
        recoveredStep = 4978 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4979.
        ].
        recoveredStep = 4979 ifTrue: [
            recoveredStack2 := 'Notreuse'.
            recoveredPC := 4982.
        ].
        recoveredStep = 4982 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 4984.
        ].
        recoveredStep = 4984 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4986.
        ].
        recoveredStep = 4986 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4987.
        ].
        recoveredStep = 4987 ifTrue: [
            recoveredStack2 := 'EXCLUSIVE'.
            recoveredPC := 4990.
        ].
        recoveredStep = 4990 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 4992.
        ].
        recoveredStep = 4992 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 4994.
        ].
        recoveredStep = 4994 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 4995.
        ].
        recoveredStep = 4995 ifTrue: [
            recoveredStack2 := 'UserprfLoclib'.
            recoveredPC := 4998.
        ].
        recoveredStep = 4998 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 5002.
        ].
        recoveredStep = 5002 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5004.
        ].
        recoveredStep = 5004 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5005.
        ].
        recoveredStep = 5005 ifTrue: [
            recoveredStack2 := 'DmemErr'.
            recoveredPC := 5008.
        ].
        recoveredStep = 5008 ifTrue: [
            recoveredStack3 := 441.
            recoveredPC := 5012.
        ].
        recoveredStep = 5012 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5014.
        ].
        recoveredStep = 5014 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5015.
        ].
        recoveredStep = 5015 ifTrue: [
            recoveredStack2 := 'Parm7'.
            recoveredPC := 5018.
        ].
        recoveredStep = 5018 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 5020.
        ].
        recoveredStep = 5020 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5022.
        ].
        recoveredStep = 5022 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5023.
        ].
        recoveredStep = 5023 ifTrue: [
            recoveredStack2 := 'Keep'.
            recoveredPC := 5026.
        ].
        recoveredStep = 5026 ifTrue: [
            recoveredStack3 := 9.
            recoveredPC := 5028.
        ].
        recoveredStep = 5028 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5030.
        ].
        recoveredStep = 5030 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5031.
        ].
        recoveredStep = 5031 ifTrue: [
            recoveredStack2 := 'RmemErr'.
            recoveredPC := 5034.
        ].
        recoveredStep = 5034 ifTrue: [
            recoveredStack3 := 65.
            recoveredPC := 5038.
        ].
        recoveredStep = 5038 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5040.
        ].
        recoveredStep = 5040 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5041.
        ].
        recoveredStep = 5041 ifTrue: [
            recoveredStack2 := 'Fairsqls'.
            recoveredPC := 5044.
        ].
        recoveredStep = 5044 ifTrue: [
            recoveredStack3 := '"sql.fcs"'.
            recoveredPC := 5048.
        ].
        recoveredStep = 5048 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5050.
        ].
        recoveredStep = 5050 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5051.
        ].
        recoveredStep = 5051 ifTrue: [
            recoveredStack2 := 'OpsMirrorNoswitch'.
            recoveredPC := 5054.
        ].
        recoveredStep = 5054 ifTrue: [
            recoveredStack3 := 4096.
            recoveredPC := 5058.
        ].
        recoveredStep = 5058 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5060.
        ].
        recoveredStep = 5060 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5061.
        ].
        recoveredStep = 5061 ifTrue: [
            recoveredStack2 := 'Cil'.
            recoveredPC := 5064.
        ].
        recoveredStep = 5064 ifTrue: [
            recoveredStack3 := 'Pending'.
            recoveredPC := 5068.
        ].
        recoveredStep = 5068 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5070.
        ].
        recoveredStep = 5070 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5071.
        ].
        recoveredStep = 5071 ifTrue: [
            recoveredStack2 := 'ItmlErr'.
            recoveredPC := 5074.
        ].
        recoveredStep = 5074 ifTrue: [
            recoveredStack3 := 196.
            recoveredPC := 5078.
        ].
        recoveredStep = 5078 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5080.
        ].
        recoveredStep = 5080 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5081.
        ].
        recoveredStep = 5081 ifTrue: [
            recoveredStack2 := 'BatVerify'.
            recoveredPC := 5084.
        ].
        recoveredStep = 5084 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 5086.
        ].
        recoveredStep = 5086 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5088.
        ].
        recoveredStep = 5088 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5089.
        ].
        recoveredStep = 5089 ifTrue: [
            recoveredStack2 := '	Dsz'.
            recoveredPC := 5092.
        ].
        recoveredStep = 5092 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 5096.
        ].
        recoveredStep = 5096 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5098.
        ].
        recoveredStep = 5098 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5099.
        ].
        recoveredStep = 5099 ifTrue: [
            recoveredStack2 := '	PERMANENT'.
            recoveredPC := 5102.
        ].
        recoveredStep = 5102 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 5104.
        ].
        recoveredStep = 5104 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5106.
        ].
        recoveredStep = 5106 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5107.
        ].
        recoveredStep = 5107 ifTrue: [
            recoveredStack2 := 'Logrstfil'.
            recoveredPC := 5110.
        ].
        recoveredStep = 5110 ifTrue: [
            recoveredStack3 := 25.
            recoveredPC := 5112.
        ].
        recoveredStep = 5112 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5114.
        ].
        recoveredStep = 5114 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5115.
        ].
        recoveredStep = 5115 ifTrue: [
            recoveredStack2 := 'CiniErr'.
            recoveredPC := 5118.
        ].
        recoveredStep = 5118 ifTrue: [
            recoveredStack3 := 597.
            recoveredPC := 5122.
        ].
        recoveredStep = 5122 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5124.
        ].
        recoveredStep = 5124 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5125.
        ].
        recoveredStep = 5125 ifTrue: [
            recoveredStack2 := 'CwrtErr'.
            recoveredPC := 5128.
        ].
        recoveredStep = 5128 ifTrue: [
            recoveredStack3 := 557.
            recoveredPC := 5132.
        ].
        recoveredStep = 5132 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5134.
        ].
        recoveredStep = 5134 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5135.
        ].
        recoveredStep = 5135 ifTrue: [
            recoveredStack2 := 'AUTOTRN'.
            recoveredPC := 5138.
        ].
        recoveredStep = 5138 ifTrue: [
            recoveredStack3 := 512.
            recoveredPC := 5142.
        ].
        recoveredStep = 5142 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5144.
        ].
        recoveredStep = 5144 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5145.
        ].
        recoveredStep = 5145 ifTrue: [
            recoveredStack2 := 'QwrtErr'.
            recoveredPC := 5148.
        ].
        recoveredStep = 5148 ifTrue: [
            recoveredStack3 := 91.
            recoveredPC := 5152.
        ].
        recoveredStep = 5152 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5154.
        ].
        recoveredStep = 5154 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5155.
        ].
        recoveredStep = 5155 ifTrue: [
            recoveredStack2 := 'Ctopt2h'.
            recoveredPC := 5158.
        ].
        recoveredStep = 5158 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 5160.
        ].
        recoveredStep = 5160 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5162.
        ].
        recoveredStep = 5162 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5163.
        ].
        recoveredStep = 5163 ifTrue: [
            recoveredStack2 := 'Monitorq0'.
            recoveredPC := 5166.
        ].
        recoveredStep = 5166 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 5168.
        ].
        recoveredStep = 5168 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5170.
        ].
        recoveredStep = 5170 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5171.
        ].
        recoveredStep = 5171 ifTrue: [
            recoveredStack2 := 'Parm2'.
            recoveredPC := 5174.
        ].
        recoveredStep = 5174 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 5176.
        ].
        recoveredStep = 5176 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5178.
        ].
        recoveredStep = 5178 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5179.
        ].
        recoveredStep = 5179 ifTrue: [
            recoveredStack2 := 'NotOpFid'.
            recoveredPC := 5182.
        ].
        recoveredStep = 5182 ifTrue: [
            recoveredStack3 := '-4'.
            recoveredPC := 5186.
        ].
        recoveredStep = 5186 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5188.
        ].
        recoveredStep = 5188 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5189.
        ].
        recoveredStep = 5189 ifTrue: [
            recoveredStack2 := 'CtgnAdd'.
            recoveredPC := 5192.
        ].
        recoveredStep = 5192 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 5194.
        ].
        recoveredStep = 5194 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5196.
        ].
        recoveredStep = 5196 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5197.
        ].
        recoveredStep = 5197 ifTrue: [
            recoveredStack2 := 'Admin'.
            recoveredPC := 5200.
        ].
        recoveredStep = 5200 ifTrue: [
            recoveredStack3 := '"admin"'.
            recoveredPC := 5204.
        ].
        recoveredStep = 5204 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5206.
        ].
        recoveredStep = 5206 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5207.
        ].
        recoveredStep = 5207 ifTrue: [
            recoveredStack2 := 'Ctpreimage'.
            recoveredPC := 5210.
        ].
        recoveredStep = 5210 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 5212.
        ].
        recoveredStep = 5212 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5214.
        ].
        recoveredStep = 5214 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5215.
        ].
        recoveredStep = 5215 ifTrue: [
            recoveredStack2 := 'ShNlink'.
            recoveredPC := 5218.
        ].
        recoveredStep = 5218 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 5220.
        ].
        recoveredStep = 5220 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5222.
        ].
        recoveredStep = 5222 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5223.
        ].
        recoveredStep = 5223 ifTrue: [
            recoveredStack2 := 'OpsStateRet'.
            recoveredPC := 5226.
        ].
        recoveredStep = 5226 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 5228.
        ].
        recoveredStep = 5228 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5230.
        ].
        recoveredStep = 5230 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5231.
        ].
        recoveredStep = 5231 ifTrue: [
            recoveredStack2 := 'Cfgcomments'.
            recoveredPC := 5234.
        ].
        recoveredStep = 5234 ifTrue: [
            recoveredStack3 := 62.
            recoveredPC := 5236.
        ].
        recoveredStep = 5236 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5238.
        ].
        recoveredStep = 5238 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5239.
        ].
        recoveredStep = 5239 ifTrue: [
            recoveredStack2 := 'Parm6'.
            recoveredPC := 5242.
        ].
        recoveredStep = 5242 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 5244.
        ].
        recoveredStep = 5244 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5246.
        ].
        recoveredStep = 5246 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5247.
        ].
        recoveredStep = 5247 ifTrue: [
            recoveredStack2 := 'OpsStateSet'.
            recoveredPC := 5250.
        ].
        recoveredStep = 5250 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 5252.
        ].
        recoveredStep = 5252 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5254.
        ].
        recoveredStep = 5254 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5255.
        ].
        recoveredStep = 5255 ifTrue: [
            recoveredStack2 := 'Parm5'.
            recoveredPC := 5258.
        ].
        recoveredStep = 5258 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 5260.
        ].
        recoveredStep = 5260 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5262.
        ].
        recoveredStep = 5262 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5263.
        ].
        recoveredStep = 5263 ifTrue: [
            recoveredStack2 := 'TmemErr'.
            recoveredPC := 5266.
        ].
        recoveredStep = 5266 ifTrue: [
            recoveredStack3 := 89.
            recoveredPC := 5270.
        ].
        recoveredStep = 5270 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5272.
        ].
        recoveredStep = 5272 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5273.
        ].
        recoveredStep = 5273 ifTrue: [
            recoveredStack2 := 'CttrnFiles'.
            recoveredPC := 5276.
        ].
        recoveredStep = 5276 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 5278.
        ].
        recoveredStep = 5278 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5280.
        ].
        recoveredStep = 5280 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5281.
        ].
        recoveredStep = 5281 ifTrue: [
            recoveredStack2 := 'Ctnoglobals'.
            recoveredPC := 5283.
        ].
        recoveredStep = 5283 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 5285.
        ].
        recoveredStep = 5285 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5287.
        ].
        recoveredStep = 5287 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5288.
        ].
        recoveredStep = 5288 ifTrue: [
            recoveredStack2 := 'ShBegtran'.
            recoveredPC := 5292.
        ].
        recoveredStep = 5292 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 5294.
        ].
        recoveredStep = 5294 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5296.
        ].
        recoveredStep = 5296 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5297.
        ].
        recoveredStep = 5297 ifTrue: [
            recoveredStack2 := 'Intseg'.
            recoveredPC := 5300.
        ].
        recoveredStep = 5300 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 5302.
        ].
        recoveredStep = 5302 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5304.
        ].
        recoveredStep = 5304 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5305.
        ].
        recoveredStep = 5305 ifTrue: [
            recoveredStack2 := 'MwrtErr'.
            recoveredPC := 5308.
        ].
        recoveredStep = 5308 ifTrue: [
            recoveredStack3 := 546.
            recoveredPC := 5312.
        ].
        recoveredStep = 5312 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5314.
        ].
        recoveredStep = 5314 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5315.
        ].
        recoveredStep = 5315 ifTrue: [
            recoveredStack2 := 'BatUpd'.
            recoveredPC := 5318.
        ].
        recoveredStep = 5318 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 5320.
        ].
        recoveredStep = 5320 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5322.
        ].
        recoveredStep = 5322 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5323.
        ].
        recoveredStep = 5323 ifTrue: [
            recoveredStack2 := 'Bufrlocknd'.
            recoveredPC := 5326.
        ].
        recoveredStep = 5326 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 5328.
        ].
        recoveredStep = 5328 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5330.
        ].
        recoveredStep = 5330 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5331.
        ].
        recoveredStep = 5331 ifTrue: [
            recoveredStack2 := 'Ctconv'.
            recoveredPC := 5334.
        ].
        recoveredStep = 5334 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 5336.
        ].
        recoveredStep = 5336 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5338.
        ].
        recoveredStep = 5338 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5339.
        ].
        recoveredStep = 5339 ifTrue: [
            recoveredStack2 := 'Ctwasyn'.
            recoveredPC := 5342.
        ].
        recoveredStep = 5342 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 5344.
        ].
        recoveredStep = 5344 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5346.
        ].
        recoveredStep = 5346 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5347.
        ].
        recoveredStep = 5347 ifTrue: [
            recoveredStack2 := 'Ctrblindx'.
            recoveredPC := 5350.
        ].
        recoveredStep = 5350 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 5352.
        ].
        recoveredStep = 5352 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5354.
        ].
        recoveredStep = 5354 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5355.
        ].
        recoveredStep = 5355 ifTrue: [
            recoveredStack2 := 'VrtoErr'.
            recoveredPC := 5358.
        ].
        recoveredStep = 5358 ifTrue: [
            recoveredStack3 := 38.
            recoveredPC := 5360.
        ].
        recoveredStep = 5360 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5362.
        ].
        recoveredStep = 5362 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5363.
        ].
        recoveredStep = 5363 ifTrue: [
            recoveredStack2 := 'Tfrmkey'.
            recoveredPC := 5366.
        ].
        recoveredStep = 5366 ifTrue: [
            recoveredStack3 := 'Tfrmkey'.
            recoveredPC := 5370.
        ].
        recoveredStep = 5370 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5372.
        ].
        recoveredStep = 5372 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5373.
        ].
        recoveredStep = 5373 ifTrue: [
            recoveredStack2 := 'CfgserverDirectory'.
            recoveredPC := 5376.
        ].
        recoveredStep = 5376 ifTrue: [
            recoveredStack3 := 14.
            recoveredPC := 5378.
        ].
        recoveredStep = 5378 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5380.
        ].
        recoveredStep = 5380 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5381.
        ].
        recoveredStep = 5381 ifTrue: [
            recoveredStack2 := 'SchemaMap'.
            recoveredPC := 5384.
        ].
        recoveredStep = 5384 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 5386.
        ].
        recoveredStep = 5386 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5388.
        ].
        recoveredStep = 5388 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5389.
        ].
        recoveredStep = 5389 ifTrue: [
            recoveredStack2 := 'FmemErr'.
            recoveredPC := 5392.
        ].
        recoveredStep = 5392 ifTrue: [
            recoveredStack3 := 435.
            recoveredPC := 5396.
        ].
        recoveredStep = 5396 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5398.
        ].
        recoveredStep = 5398 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5399.
        ].
        recoveredStep = 5399 ifTrue: [
            recoveredStack2 := 'IismErr'.
            recoveredPC := 5402.
        ].
        recoveredStep = 5402 ifTrue: [
            recoveredStack3 := 464.
            recoveredPC := 5406.
        ].
        recoveredStep = 5406 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5408.
        ].
        recoveredStep = 5408 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5409.
        ].
        recoveredStep = 5409 ifTrue: [
            recoveredStack2 := 'USERPRF_NTKEY'.
            recoveredPC := 5412.
        ].
        recoveredStep = 5412 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 5413.
        ].
        recoveredStep = 5413 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5415.
        ].
        recoveredStep = 5415 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5416.
        ].
        recoveredStep = 5416 ifTrue: [
            recoveredStack2 := 'CfgsuppressLogFlush'.
            recoveredPC := 5420.
        ].
        recoveredStep = 5420 ifTrue: [
            recoveredStack3 := 73.
            recoveredPC := 5424.
        ].
        recoveredStep = 5424 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5426.
        ].
        recoveredStep = 5426 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5427.
        ].
        recoveredStep = 5427 ifTrue: [
            recoveredStack2 := 'OpsPermanent'.
            recoveredPC := 5430.
        ].
        recoveredStep = 5430 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 5432.
        ].
        recoveredStep = 5432 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5434.
        ].
        recoveredStep = 5434 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5435.
        ].
        recoveredStep = 5435 ifTrue: [
            recoveredStack2 := 'CHECKLOCK'.
            recoveredPC := 5438.
        ].
        recoveredStep = 5438 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 5442.
        ].
        recoveredStep = 5442 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5444.
        ].
        recoveredStep = 5444 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5445.
        ].
        recoveredStep = 5445 ifTrue: [
            recoveredStack2 := 'CfgstartOdd'.
            recoveredPC := 5448.
        ].
        recoveredStep = 5448 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 5450.
        ].
        recoveredStep = 5450 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5452.
        ].
        recoveredStep = 5452 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5453.
        ].
        recoveredStep = 5453 ifTrue: [
            recoveredStack2 := 'KmemErr'.
            recoveredPC := 5456.
        ].
        recoveredStep = 5456 ifTrue: [
            recoveredStack3 := 23.
            recoveredPC := 5458.
        ].
        recoveredStep = 5458 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5460.
        ].
        recoveredStep = 5460 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5461.
        ].
        recoveredStep = 5461 ifTrue: [
            recoveredStack2 := 'MaxDatKey'.
            recoveredPC := 5464.
        ].
        recoveredStep = 5464 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 5466.
        ].
        recoveredStep = 5466 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5468.
        ].
        recoveredStep = 5468 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5469.
        ].
        recoveredStep = 5469 ifTrue: [
            recoveredStack2 := 'CfglogOdd'.
            recoveredPC := 5472.
        ].
        recoveredStep = 5472 ifTrue: [
            recoveredStack3 := 11.
            recoveredPC := 5474.
        ].
        recoveredStep = 5474 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5476.
        ].
        recoveredStep = 5476 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5477.
        ].
        recoveredStep = 5477 ifTrue: [
            recoveredStack2 := 'HmemErr'.
            recoveredPC := 5480.
        ].
        recoveredStep = 5480 ifTrue: [
            recoveredStack3 := 623.
            recoveredPC := 5484.
        ].
        recoveredStep = 5484 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5486.
        ].
        recoveredStep = 5486 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5487.
        ].
        recoveredStep = 5487 ifTrue: [
            recoveredStack2 := 'Shdsrch'.
            recoveredPC := 5490.
        ].
        recoveredStep = 5490 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 5494.
        ].
        recoveredStep = 5494 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5496.
        ].
        recoveredStep = 5496 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5497.
        ].
        recoveredStep = 5497 ifTrue: [
            recoveredStack2 := 'Ilktyp'.
            recoveredPC := 5500.
        ].
        recoveredStep = 5500 ifTrue: [
            recoveredStack3 := 11.
            recoveredPC := 5502.
        ].
        recoveredStep = 5502 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5504.
        ].
        recoveredStep = 5504 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5505.
        ].
        recoveredStep = 5505 ifTrue: [
            recoveredStack2 := 'Endseg'.
            recoveredPC := 5508.
        ].
        recoveredStep = 5508 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 5512.
        ].
        recoveredStep = 5512 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5514.
        ].
        recoveredStep = 5514 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5515.
        ].
        recoveredStep = 5515 ifTrue: [
            recoveredStack2 := 'Fnsysabs'.
            recoveredPC := 5518.
        ].
        recoveredStep = 5518 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 5520.
        ].
        recoveredStep = 5520 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5522.
        ].
        recoveredStep = 5522 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5523.
        ].
        recoveredStep = 5523 ifTrue: [
            recoveredStack2 := 'CmemErr'.
            recoveredPC := 5526.
        ].
        recoveredStep = 5526 ifTrue: [
            recoveredStack3 := 602.
            recoveredPC := 5530.
        ].
        recoveredStep = 5530 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5532.
        ].
        recoveredStep = 5532 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5533.
        ].
        recoveredStep = 5533 ifTrue: [
            recoveredStack2 := 'CT_FPSTRING'.
            recoveredPC := 5536.
        ].
        recoveredStep = 5536 ifTrue: [
            recoveredStack3 := 152.
            recoveredPC := 5540.
        ].
        recoveredStep = 5540 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5542.
        ].
        recoveredStep = 5542 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5543.
        ].
        recoveredStep = 5543 ifTrue: [
            recoveredStack2 := 'Cthistr'.
            recoveredPC := 5546.
        ].
        recoveredStep = 5546 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 5548.
        ].
        recoveredStep = 5548 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5550.
        ].
        recoveredStep = 5550 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5551.
        ].
        recoveredStep = 5551 ifTrue: [
            recoveredStack2 := 'Ctlocfh'.
            recoveredPC := 5554.
        ].
        recoveredStep = 5554 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 5556.
        ].
        recoveredStep = 5556 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5558.
        ].
        recoveredStep = 5558 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5559.
        ].
        recoveredStep = 5559 ifTrue: [
            recoveredStack2 := 'COMMIT_SWAP'.
            recoveredPC := 5562.
        ].
        recoveredStep = 5562 ifTrue: [
            recoveredStack3 := 16384.
            recoveredPC := 5566.
        ].
        recoveredStep = 5566 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5568.
        ].
        recoveredStep = 5568 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5569.
        ].
        recoveredStep = 5569 ifTrue: [
            recoveredStack2 := 'FnMaskOutput'.
            recoveredPC := 5572.
        ].
        recoveredStep = 5572 ifTrue: [
            recoveredStack3 := 2048.
            recoveredPC := 5576.
        ].
        recoveredStep = 5576 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5578.
        ].
        recoveredStep = 5578 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5579.
        ].
        recoveredStep = 5579 ifTrue: [
            recoveredStack2 := 'SkeyErr'.
            recoveredPC := 5582.
        ].
        recoveredStep = 5582 ifTrue: [
            recoveredStack3 := 118.
            recoveredPC := 5586.
        ].
        recoveredStep = 5586 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5588.
        ].
        recoveredStep = 5588 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5589.
        ].
        recoveredStep = 5589 ifTrue: [
            recoveredStack2 := 'Numchanel'.
            recoveredPC := 5592.
        ].
        recoveredStep = 5592 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 5594.
        ].
        recoveredStep = 5594 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5596.
        ].
        recoveredStep = 5596 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5597.
        ].
        recoveredStep = 5597 ifTrue: [
            recoveredStack2 := 'BjmpErr'.
            recoveredPC := 5600.
        ].
        recoveredStep = 5600 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 5602.
        ].
        recoveredStep = 5602 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5604.
        ].
        recoveredStep = 5604 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5605.
        ].
        recoveredStep = 5605 ifTrue: [
            recoveredStack2 := 'SinmErr'.
            recoveredPC := 5608.
        ].
        recoveredStep = 5608 ifTrue: [
            recoveredStack3 := 178.
            recoveredPC := 5612.
        ].
        recoveredStep = 5612 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5614.
        ].
        recoveredStep = 5614 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5615.
        ].
        recoveredStep = 5615 ifTrue: [
            recoveredStack2 := 'FieldDelim'.
            recoveredPC := 5618.
        ].
        recoveredStep = 5618 ifTrue: [
            recoveredStack3 := '''\0'''.
            recoveredPC := 5622.
        ].
        recoveredStep = 5622 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5624.
        ].
        recoveredStep = 5624 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5625.
        ].
        recoveredStep = 5625 ifTrue: [
            recoveredStack2 := 'Waitnodebug'.
            recoveredPC := 5628.
        ].
        recoveredStep = 5628 ifTrue: [
            recoveredStack3 := '-2'.
            recoveredPC := 5632.
        ].
        recoveredStep = 5632 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5634.
        ].
        recoveredStep = 5634 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5635.
        ].
        recoveredStep = 5635 ifTrue: [
            recoveredStack2 := 'BatOpcResv'.
            recoveredPC := 5638.
        ].
        recoveredStep = 5638 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 5640.
        ].
        recoveredStep = 5640 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5642.
        ].
        recoveredStep = 5642 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5643.
        ].
        recoveredStep = 5643 ifTrue: [
            recoveredStack2 := 'PwrtErr'.
            recoveredPC := 5646.
        ].
        recoveredStep = 5646 ifTrue: [
            recoveredStack3 := 556.
            recoveredPC := 5650.
        ].
        recoveredStep = 5650 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5652.
        ].
        recoveredStep = 5652 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5653.
        ].
        recoveredStep = 5653 ifTrue: [
            recoveredStack2 := 'CtEfloat'.
            recoveredPC := 5656.
        ].
        recoveredStep = 5656 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 5658.
        ].
        recoveredStep = 5658 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5660.
        ].
        recoveredStep = 5660 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5661.
        ].
        recoveredStep = 5661 ifTrue: [
            recoveredStack2 := 'SpwdErr'.
            recoveredPC := 5664.
        ].
        recoveredStep = 5664 ifTrue: [
            recoveredStack3 := 457.
            recoveredPC := 5668.
        ].
        recoveredStep = 5668 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5670.
        ].
        recoveredStep = 5670 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5671.
        ].
        recoveredStep = 5671 ifTrue: [
            recoveredStack2 := 'ResnameLen'.
            recoveredPC := 5674.
        ].
        recoveredStep = 5674 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 5678.
        ].
        recoveredStep = 5678 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5680.
        ].
        recoveredStep = 5680 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5681.
        ].
        recoveredStep = 5681 ifTrue: [
            recoveredStack2 := 'ShAddky'.
            recoveredPC := 5684.
        ].
        recoveredStep = 5684 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 5686.
        ].
        recoveredStep = 5686 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5688.
        ].
        recoveredStep = 5688 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5689.
        ].
        recoveredStep = 5689 ifTrue: [
            recoveredStack2 := 'DadvErr'.
            recoveredPC := 5692.
        ].
        recoveredStep = 5692 ifTrue: [
            recoveredStack3 := 57.
            recoveredPC := 5694.
        ].
        recoveredStep = 5694 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5696.
        ].
        recoveredStep = 5696 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5697.
        ].
        recoveredStep = 5697 ifTrue: [
            recoveredStack2 := 'ConvertNul'.
            recoveredPC := 5700.
        ].
        recoveredStep = 5700 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 5702.
        ].
        recoveredStep = 5702 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5704.
        ].
        recoveredStep = 5704 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5705.
        ].
        recoveredStep = 5705 ifTrue: [
            recoveredStack2 := 'SwrtErr'.
            recoveredPC := 5708.
        ].
        recoveredStep = 5708 ifTrue: [
            recoveredStack3 := 458.
            recoveredPC := 5712.
        ].
        recoveredStep = 5712 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5714.
        ].
        recoveredStep = 5714 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5715.
        ].
        recoveredStep = 5715 ifTrue: [
            recoveredStack2 := 'FnBaseVrlen'.
            recoveredPC := 5718.
        ].
        recoveredStep = 5718 ifTrue: [
            recoveredStack3 := 180.
            recoveredPC := 5722.
        ].
        recoveredStep = 5722 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5724.
        ].
        recoveredStep = 5724 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5725.
        ].
        recoveredStep = 5725 ifTrue: [
            recoveredStack2 := 'Tnames'.
            recoveredPC := 5728.
        ].
        recoveredStep = 5728 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 5730.
        ].
        recoveredStep = 5730 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5732.
        ].
        recoveredStep = 5732 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5733.
        ].
        recoveredStep = 5733 ifTrue: [
            recoveredStack2 := 'AmqzErr'.
            recoveredPC := 5736.
        ].
        recoveredStep = 5736 ifTrue: [
            recoveredStack3 := 137.
            recoveredPC := 5740.
        ].
        recoveredStep = 5740 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5742.
        ].
        recoveredStep = 5742 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5743.
        ].
        recoveredStep = 5743 ifTrue: [
            recoveredStack2 := 'SperErr'.
            recoveredPC := 5746.
        ].
        recoveredStep = 5746 ifTrue: [
            recoveredStack3 := 461.
            recoveredPC := 5750.
        ].
        recoveredStep = 5750 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5752.
        ].
        recoveredStep = 5752 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5753.
        ].
        recoveredStep = 5753 ifTrue: [
            recoveredStack2 := 'IkrsErr'.
            recoveredPC := 5756.
        ].
        recoveredStep = 5756 ifTrue: [
            recoveredStack3 := 109.
            recoveredPC := 5760.
        ].
        recoveredStep = 5760 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5762.
        ].
        recoveredStep = 5762 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5763.
        ].
        recoveredStep = 5763 ifTrue: [
            recoveredStack2 := 'Rcl5Err'.
            recoveredPC := 5766.
        ].
        recoveredStep = 5766 ifTrue: [
            recoveredStack3 := 574.
            recoveredPC := 5770.
        ].
        recoveredStep = 5770 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5772.
        ].
        recoveredStep = 5772 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5773.
        ].
        recoveredStep = 5773 ifTrue: [
            recoveredStack2 := 'SUPERFILE'.
            recoveredPC := 5776.
        ].
        recoveredStep = 5776 ifTrue: [
            recoveredStack3 := 512.
            recoveredPC := 5780.
        ].
        recoveredStep = 5780 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5782.
        ].
        recoveredStep = 5782 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5783.
        ].
        recoveredStep = 5783 ifTrue: [
            recoveredStack2 := 'FnMaskOutret'.
            recoveredPC := 5786.
        ].
        recoveredStep = 5786 ifTrue: [
            recoveredStack3 := 16384.
            recoveredPC := 5790.
        ].
        recoveredStep = 5790 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5792.
        ].
        recoveredStep = 5792 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5793.
        ].
        recoveredStep = 5793 ifTrue: [
            recoveredStack2 := 'NoFlush'.
            recoveredPC := 5796.
        ].
        recoveredStep = 5796 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 5798.
        ].
        recoveredStep = 5798 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5800.
        ].
        recoveredStep = 5800 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5801.
        ].
        recoveredStep = 5801 ifTrue: [
            recoveredStack2 := 'CfgfunctionMonitor'.
            recoveredPC := 5804.
        ].
        recoveredStep = 5804 ifTrue: [
            recoveredStack3 := 48.
            recoveredPC := 5806.
        ].
        recoveredStep = 5806 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5808.
        ].
        recoveredStep = 5808 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5809.
        ].
        recoveredStep = 5809 ifTrue: [
            recoveredStack2 := 'CtNumstr'.
            recoveredPC := 5812.
        ].
        recoveredStep = 5812 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 5816.
        ].
        recoveredStep = 5816 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5818.
        ].
        recoveredStep = 5818 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5819.
        ].
        recoveredStep = 5819 ifTrue: [
            recoveredStack2 := 'CT_F2STRING'.
            recoveredPC := 5822.
        ].
        recoveredStep = 5822 ifTrue: [
            recoveredStack3 := 160.
            recoveredPC := 5826.
        ].
        recoveredStep = 5826 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5828.
        ].
        recoveredStep = 5828 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5829.
        ].
        recoveredStep = 5829 ifTrue: [
            recoveredStack2 := 'CtSubstr'.
            recoveredPC := 5832.
        ].
        recoveredStep = 5832 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 5836.
        ].
        recoveredStep = 5836 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5838.
        ].
        recoveredStep = 5838 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5839.
        ].
        recoveredStep = 5839 ifTrue: [
            recoveredStack2 := 'CT_F4STRING'.
            recoveredPC := 5842.
        ].
        recoveredStep = 5842 ifTrue: [
            recoveredStack3 := 168.
            recoveredPC := 5846.
        ].
        recoveredStep = 5846 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5848.
        ].
        recoveredStep = 5848 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5849.
        ].
        recoveredStep = 5849 ifTrue: [
            recoveredStack2 := 'SktyErr'.
            recoveredPC := 5852.
        ].
        recoveredStep = 5852 ifTrue: [
            recoveredStack3 := 119.
            recoveredPC := 5856.
        ].
        recoveredStep = 5856 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5858.
        ].
        recoveredStep = 5858 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5859.
        ].
        recoveredStep = 5859 ifTrue: [
            recoveredStack2 := 'Ctnoglosize'.
            recoveredPC := 5862.
        ].
        recoveredStep = 5862 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 5864.
        ].
        recoveredStep = 5864 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5866.
        ].
        recoveredStep = 5866 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5867.
        ].
        recoveredStep = 5867 ifTrue: [
            recoveredStack2 := 'BiflErr'.
            recoveredPC := 5870.
        ].
        recoveredStep = 5870 ifTrue: [
            recoveredStack3 := 198.
            recoveredPC := 5874.
        ].
        recoveredStep = 5874 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5876.
        ].
        recoveredStep = 5876 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5877.
        ].
        recoveredStep = 5877 ifTrue: [
            recoveredStack2 := 'MbrSuper'.
            recoveredPC := 5880.
        ].
        recoveredStep = 5880 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 5882.
        ].
        recoveredStep = 5882 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5884.
        ].
        recoveredStep = 5884 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5885.
        ].
        recoveredStep = 5885 ifTrue: [
            recoveredStack2 := 'LockTest'.
            recoveredPC := 5888.
        ].
        recoveredStep = 5888 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 5890.
        ].
        recoveredStep = 5890 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5892.
        ].
        recoveredStep = 5892 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5893.
        ].
        recoveredStep = 5893 ifTrue: [
            recoveredStack2 := 'CtSfloat'.
            recoveredPC := 5896.
        ].
        recoveredStep = 5896 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 5898.
        ].
        recoveredStep = 5898 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5900.
        ].
        recoveredStep = 5900 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5901.
        ].
        recoveredStep = 5901 ifTrue: [
            recoveredStack2 := 'Ctclient'.
            recoveredPC := 5904.
        ].
        recoveredStep = 5904 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 5906.
        ].
        recoveredStep = 5906 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5908.
        ].
        recoveredStep = 5908 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5909.
        ].
        recoveredStep = 5909 ifTrue: [
            recoveredStack2 := 'NoRtree'.
            recoveredPC := 5912.
        ].
        recoveredStep = 5912 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 5914.
        ].
        recoveredStep = 5914 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5916.
        ].
        recoveredStep = 5916 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5917.
        ].
        recoveredStep = 5917 ifTrue: [
            recoveredStack2 := 'AfnmErr'.
            recoveredPC := 5920.
        ].
        recoveredStep = 5920 ifTrue: [
            recoveredStack3 := 130.
            recoveredPC := 5924.
        ].
        recoveredStep = 5924 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5926.
        ].
        recoveredStep = 5926 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5927.
        ].
        recoveredStep = 5927 ifTrue: [
            recoveredStack2 := 'CtDfloat'.
            recoveredPC := 5930.
        ].
        recoveredStep = 5930 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 5932.
        ].
        recoveredStep = 5932 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5934.
        ].
        recoveredStep = 5934 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5935.
        ].
        recoveredStep = 5935 ifTrue: [
            recoveredStack2 := 'NgioErr'.
            recoveredPC := 5938.
        ].
        recoveredStep = 5938 ifTrue: [
            recoveredStack3 := 469.
            recoveredPC := 5942.
        ].
        recoveredStep = 5942 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5944.
        ].
        recoveredStep = 5944 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5945.
        ].
        recoveredStep = 5945 ifTrue: [
            recoveredStack2 := 'UserprfSavenv'.
            recoveredPC := 5948.
        ].
        recoveredStep = 5948 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 5950.
        ].
        recoveredStep = 5950 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5952.
        ].
        recoveredStep = 5952 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5953.
        ].
        recoveredStep = 5953 ifTrue: [
            recoveredStack2 := 'Ctbadopn'.
            recoveredPC := 5956.
        ].
        recoveredStep = 5956 ifTrue: [
            recoveredStack3 := '''\122'''.
            recoveredPC := 5960.
        ].
        recoveredStep = 5960 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5962.
        ].
        recoveredStep = 5962 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5963.
        ].
        recoveredStep = 5963 ifTrue: [
            recoveredStack2 := 'SmqzErr'.
            recoveredPC := 5966.
        ].
        recoveredStep = 5966 ifTrue: [
            recoveredStack3 := 177.
            recoveredPC := 5970.
        ].
        recoveredStep = 5970 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5972.
        ].
        recoveredStep = 5972 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5973.
        ].
        recoveredStep = 5973 ifTrue: [
            recoveredStack2 := 'Vreshdrinc'.
            recoveredPC := 5976.
        ].
        recoveredStep = 5976 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 5978.
        ].
        recoveredStep = 5978 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5980.
        ].
        recoveredStep = 5980 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5981.
        ].
        recoveredStep = 5981 ifTrue: [
            recoveredStack2 := 'Cthistinfo'.
            recoveredPC := 5984.
        ].
        recoveredStep = 5984 ifTrue: [
            recoveredStack3 := 32768.
            recoveredPC := 5988.
        ].
        recoveredStep = 5988 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 5990.
        ].
        recoveredStep = 5990 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 5991.
        ].
        recoveredStep = 5991 ifTrue: [
            recoveredStack2 := 'UserprfCodcnv'.
            recoveredPC := 5994.
        ].
        recoveredStep = 5994 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 5998.
        ].
        recoveredStep = 5998 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6000.
        ].
        recoveredStep = 6000 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6001.
        ].
        recoveredStep = 6001 ifTrue: [
            recoveredStack2 := 'Yourseg1'.
            recoveredPC := 6004.
        ].
        recoveredStep = 6004 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 6006.
        ].
        recoveredStep = 6006 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6008.
        ].
        recoveredStep = 6008 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6009.
        ].
        recoveredStep = 6009 ifTrue: [
            recoveredStack2 := 'UndDif'.
            recoveredPC := 6012.
        ].
        recoveredStep = 6012 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 6014.
        ].
        recoveredStep = 6014 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6016.
        ].
        recoveredStep = 6016 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6017.
        ].
        recoveredStep = 6017 ifTrue: [
            recoveredStack2 := 'CtddFil'.
            recoveredPC := 6020.
        ].
        recoveredStep = 6020 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 6022.
        ].
        recoveredStep = 6022 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6024.
        ].
        recoveredStep = 6024 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6025.
        ].
        recoveredStep = 6025 ifTrue: [
            recoveredStack2 := 'CfgtransactionFlush'.
            recoveredPC := 6028.
        ].
        recoveredStep = 6028 ifTrue: [
            recoveredStack3 := 69.
            recoveredPC := 6032.
        ].
        recoveredStep = 6032 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6034.
        ].
        recoveredStep = 6034 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6035.
        ].
        recoveredStep = 6035 ifTrue: [
            recoveredStack2 := 'Admusers'.
            recoveredPC := 6038.
        ].
        recoveredStep = 6038 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 6040.
        ].
        recoveredStep = 6040 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6042.
        ].
        recoveredStep = 6042 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6043.
        ].
        recoveredStep = 6043 ifTrue: [
            recoveredStack2 := 'CfglockHash'.
            recoveredPC := 6046.
        ].
        recoveredStep = 6046 ifTrue: [
            recoveredStack3 := 26.
            recoveredPC := 6048.
        ].
        recoveredStep = 6048 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6050.
        ].
        recoveredStep = 6050 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6051.
        ].
        recoveredStep = 6051 ifTrue: [
            recoveredStack2 := 'Complete'.
            recoveredPC := 6054.
        ].
        recoveredStep = 6054 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 6056.
        ].
        recoveredStep = 6056 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6058.
        ].
        recoveredStep = 6058 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6059.
        ].
        recoveredStep = 6059 ifTrue: [
            recoveredStack2 := 'CtArray'.
            recoveredPC := 6062.
        ].
        recoveredStep = 6062 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 6064.
        ].
        recoveredStep = 6064 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6066.
        ].
        recoveredStep = 6066 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6067.
        ].
        recoveredStep = 6067 ifTrue: [
            recoveredStack2 := 'ConvertIn'.
            recoveredPC := 6070.
        ].
        recoveredStep = 6070 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 6072.
        ].
        recoveredStep = 6072 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6074.
        ].
        recoveredStep = 6074 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6075.
        ].
        recoveredStep = 6075 ifTrue: [
            recoveredStack2 := 'CheckDelay'.
            recoveredPC := 6078.
        ].
        recoveredStep = 6078 ifTrue: [
            recoveredStack3 := 50.
            recoveredPC := 6080.
        ].
        recoveredStep = 6080 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6082.
        ].
        recoveredStep = 6082 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6083.
        ].
        recoveredStep = 6083 ifTrue: [
            recoveredStack2 := 'Schseg'.
            recoveredPC := 6086.
        ].
        recoveredStep = 6086 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 6088.
        ].
        recoveredStep = 6088 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6090.
        ].
        recoveredStep = 6090 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6091.
        ].
        recoveredStep = 6091 ifTrue: [
            recoveredStack2 := 'Abttyp'.
            recoveredPC := 6094.
        ].
        recoveredStep = 6094 ifTrue: [
            recoveredStack3 := 14.
            recoveredPC := 6096.
        ].
        recoveredStep = 6096 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6098.
        ].
        recoveredStep = 6098 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6099.
        ].
        recoveredStep = 6099 ifTrue: [
            recoveredStack2 := 'Twofase'.
            recoveredPC := 6102.
        ].
        recoveredStep = 6102 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 6106.
        ].
        recoveredStep = 6106 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6108.
        ].
        recoveredStep = 6108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6109.
        ].
        recoveredStep = 6109 ifTrue: [
            recoveredStack2 := 'Logextfil'.
            recoveredPC := 6112.
        ].
        recoveredStep = 6112 ifTrue: [
            recoveredStack3 := 18.
            recoveredPC := 6114.
        ].
        recoveredStep = 6114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6116.
        ].
        recoveredStep = 6116 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6117.
        ].
        recoveredStep = 6117 ifTrue: [
            recoveredStack2 := 'CtddSkp'.
            recoveredPC := 6120.
        ].
        recoveredStep = 6120 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 6124.
        ].
        recoveredStep = 6124 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6126.
        ].
        recoveredStep = 6126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6127.
        ].
        recoveredStep = 6127 ifTrue: [
            recoveredStack2 := 'CtV65'.
            recoveredPC := 6130.
        ].
        recoveredStep = 6130 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 6132.
        ].
        recoveredStep = 6132 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6134.
        ].
        recoveredStep = 6134 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6135.
        ].
        recoveredStep = 6135 ifTrue: [
            recoveredStack2 := 'CfgdatMemory'.
            recoveredPC := 6138.
        ].
        recoveredStep = 6138 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 6140.
        ].
        recoveredStep = 6140 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6142.
        ].
        recoveredStep = 6142 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6143.
        ].
        recoveredStep = 6143 ifTrue: [
            recoveredStack2 := 'OPENCRPT'.
            recoveredPC := 6146.
        ].
        recoveredStep = 6146 ifTrue: [
            recoveredStack3 := 16384.
            recoveredPC := 6150.
        ].
        recoveredStep = 6150 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6152.
        ].
        recoveredStep = 6152 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6153.
        ].
        recoveredStep = 6153 ifTrue: [
            recoveredStack2 := 'CtreuseSema'.
            recoveredPC := 6156.
        ].
        recoveredStep = 6156 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 6158.
        ].
        recoveredStep = 6158 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6160.
        ].
        recoveredStep = 6160 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6161.
        ].
        recoveredStep = 6161 ifTrue: [
            recoveredStack2 := 'GexsErr'.
            recoveredPC := 6164.
        ].
        recoveredStep = 6164 ifTrue: [
            recoveredStack3 := 518.
            recoveredPC := 6168.
        ].
        recoveredStep = 6168 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6170.
        ].
        recoveredStep = 6170 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6171.
        ].
        recoveredStep = 6171 ifTrue: [
            recoveredStack2 := 'ShHdrcp'.
            recoveredPC := 6174.
        ].
        recoveredStep = 6174 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 6176.
        ].
        recoveredStep = 6176 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6178.
        ].
        recoveredStep = 6178 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6179.
        ].
        recoveredStep = 6179 ifTrue: [
            recoveredStack2 := 'Llogin'.
            recoveredPC := 6182.
        ].
        recoveredStep = 6182 ifTrue: [
            recoveredStack3 := 31.
            recoveredPC := 6184.
        ].
        recoveredStep = 6184 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6186.
        ].
        recoveredStep = 6186 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6187.
        ].
        recoveredStep = 6187 ifTrue: [
            recoveredStack2 := 'IidtErr'.
            recoveredPC := 6190.
        ].
        recoveredStep = 6190 ifTrue: [
            recoveredStack3 := 466.
            recoveredPC := 6194.
        ].
        recoveredStep = 6194 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6196.
        ].
        recoveredStep = 6196 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6197.
        ].
        recoveredStep = 6197 ifTrue: [
            recoveredStack2 := 'TrdCommp'.
            recoveredPC := 6200.
        ].
        recoveredStep = 6200 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 6202.
        ].
        recoveredStep = 6202 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6204.
        ].
        recoveredStep = 6204 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6205.
        ].
        recoveredStep = 6205 ifTrue: [
            recoveredStack2 := 'LKSTATE'.
            recoveredPC := 6208.
        ].
        recoveredStep = 6208 ifTrue: [
            recoveredStack3 := 1024.
            recoveredPC := 6212.
        ].
        recoveredStep = 6212 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6214.
        ].
        recoveredStep = 6214 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6215.
        ].
        recoveredStep = 6215 ifTrue: [
            recoveredStack2 := 'OutputOffset'.
            recoveredPC := 6218.
        ].
        recoveredStep = 6218 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 6222.
        ].
        recoveredStep = 6222 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6224.
        ].
        recoveredStep = 6224 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6225.
        ].
        recoveredStep = 6225 ifTrue: [
            recoveredStack2 := 'Frsadd'.
            recoveredPC := 6228.
        ].
        recoveredStep = 6228 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 6230.
        ].
        recoveredStep = 6230 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6232.
        ].
        recoveredStep = 6232 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6233.
        ].
        recoveredStep = 6233 ifTrue: [
            recoveredStack2 := 'ShVlink'.
            recoveredPC := 6236.
        ].
        recoveredStep = 6236 ifTrue: [
            recoveredStack3 := 11.
            recoveredPC := 6238.
        ].
        recoveredStep = 6238 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6240.
        ].
        recoveredStep = 6240 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6241.
        ].
        recoveredStep = 6241 ifTrue: [
            recoveredStack2 := 'IintErr'.
            recoveredPC := 6244.
        ].
        recoveredStep = 6244 ifTrue: [
            recoveredStack3 := 125.
            recoveredPC := 6248.
        ].
        recoveredStep = 6248 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6250.
        ].
        recoveredStep = 6250 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6251.
        ].
        recoveredStep = 6251 ifTrue: [
            recoveredStack2 := 'TrnAdata'.
            recoveredPC := 6254.
        ].
        recoveredStep = 6254 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 6256.
        ].
        recoveredStep = 6256 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6258.
        ].
        recoveredStep = 6258 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6259.
        ].
        recoveredStep = 6259 ifTrue: [
            recoveredStack2 := 'HlVer'.
            recoveredPC := 6262.
        ].
        recoveredStep = 6262 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 6264.
        ].
        recoveredStep = 6264 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6266.
        ].
        recoveredStep = 6266 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6267.
        ].
        recoveredStep = 6267 ifTrue: [
            recoveredStack2 := 'Nodextfil'.
            recoveredPC := 6270.
        ].
        recoveredStep = 6270 ifTrue: [
            recoveredStack3 := 19.
            recoveredPC := 6272.
        ].
        recoveredStep = 6272 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6274.
        ].
        recoveredStep = 6274 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6275.
        ].
        recoveredStep = 6275 ifTrue: [
            recoveredStack2 := 'ShInvld'.
            recoveredPC := 6278.
        ].
        recoveredStep = 6278 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 6280.
        ].
        recoveredStep = 6280 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6282.
        ].
        recoveredStep = 6282 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6283.
        ].
        recoveredStep = 6283 ifTrue: [
            recoveredStack2 := 'PREIMG'.
            recoveredPC := 6286.
        ].
        recoveredStep = 6286 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 6288.
        ].
        recoveredStep = 6288 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6290.
        ].
        recoveredStep = 6290 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6291.
        ].
        recoveredStep = 6291 ifTrue: [
            recoveredStack2 := 'CtV6'.
            recoveredPC := 6294.
        ].
        recoveredStep = 6294 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 6298.
        ].
        recoveredStep = 6298 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6300.
        ].
        recoveredStep = 6300 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6301.
        ].
        recoveredStep = 6301 ifTrue: [
            recoveredStack2 := 'Llognode'.
            recoveredPC := 6304.
        ].
        recoveredStep = 6304 ifTrue: [
            recoveredStack3 := 50.
            recoveredPC := 6306.
        ].
        recoveredStep = 6306 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6308.
        ].
        recoveredStep = 6308 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6309.
        ].
        recoveredStep = 6309 ifTrue: [
            recoveredStack2 := 'ReadrecBlk'.
            recoveredPC := 6312.
        ].
        recoveredStep = 6312 ifTrue: [
            recoveredStack3 := 11.
            recoveredPC := 6314.
        ].
        recoveredStep = 6314 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6316.
        ].
        recoveredStep = 6316 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6317.
        ].
        recoveredStep = 6317 ifTrue: [
            recoveredStack2 := 'BAT_LOK_KEEP'.
            recoveredPC := 6320.
        ].
        recoveredStep = 6320 ifTrue: [
            recoveredStack3 := 32768.
            recoveredPC := 6324.
        ].
        recoveredStep = 6324 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6326.
        ].
        recoveredStep = 6326 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6327.
        ].
        recoveredStep = 6327 ifTrue: [
            recoveredStack2 := 'MAX_NAME'.
            recoveredPC := 6330.
        ].
        recoveredStep = 6330 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 6331.
        ].
        recoveredStep = 6331 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6333.
        ].
        recoveredStep = 6333 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6334.
        ].
        recoveredStep = 6334 ifTrue: [
            recoveredStack2 := 'Cfgprototype'.
            recoveredPC := 6338.
        ].
        recoveredStep = 6338 ifTrue: [
            recoveredStack3 := 141.
            recoveredPC := 6342.
        ].
        recoveredStep = 6342 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6344.
        ].
        recoveredStep = 6344 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6345.
        ].
        recoveredStep = 6345 ifTrue: [
            recoveredStack2 := 'Lpabyte'.
            recoveredPC := 6348.
        ].
        recoveredStep = 6348 ifTrue: [
            recoveredStack3 := 41.
            recoveredPC := 6350.
        ].
        recoveredStep = 6350 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6352.
        ].
        recoveredStep = 6352 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6353.
        ].
        recoveredStep = 6353 ifTrue: [
            recoveredStack2 := 'BkeyErr'.
            recoveredPC := 6356.
        ].
        recoveredStep = 6356 ifTrue: [
            recoveredStack3 := 80.
            recoveredPC := 6360.
        ].
        recoveredStep = 6360 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6362.
        ].
        recoveredStep = 6362 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6363.
        ].
        recoveredStep = 6363 ifTrue: [
            recoveredStack2 := 'IginErr'.
            recoveredPC := 6366.
        ].
        recoveredStep = 6366 ifTrue: [
            recoveredStack3 := 103.
            recoveredPC := 6370.
        ].
        recoveredStep = 6370 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6372.
        ].
        recoveredStep = 6372 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6373.
        ].
        recoveredStep = 6373 ifTrue: [
            recoveredStack2 := 'RxclErr'.
            recoveredPC := 6376.
        ].
        recoveredStep = 6376 ifTrue: [
            recoveredStack3 := 402.
            recoveredPC := 6380.
        ].
        recoveredStep = 6380 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6382.
        ].
        recoveredStep = 6382 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6383.
        ].
        recoveredStep = 6383 ifTrue: [
            recoveredStack2 := 'SqlRequestError'.
            recoveredPC := 6386.
        ].
        recoveredStep = 6386 ifTrue: [
            recoveredStack3 := 502.
            recoveredPC := 6390.
        ].
        recoveredStep = 6390 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6392.
        ].
        recoveredStep = 6392 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6393.
        ].
        recoveredStep = 6393 ifTrue: [
            recoveredStack2 := 'SqlInvalidContinue'.
            recoveredPC := 6396.
        ].
        recoveredStep = 6396 ifTrue: [
            recoveredStack3 := 503.
            recoveredPC := 6400.
        ].
        recoveredStep = 6400 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6402.
        ].
        recoveredStep = 6402 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6403.
        ].
        recoveredStep = 6403 ifTrue: [
            recoveredStack2 := 'Freshdrinc'.
            recoveredPC := 6406.
        ].
        recoveredStep = 6406 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 6408.
        ].
        recoveredStep = 6408 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6410.
        ].
        recoveredStep = 6410 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6411.
        ].
        recoveredStep = 6411 ifTrue: [
            recoveredStack2 := 'Cfglogidx'.
            recoveredPC := 6414.
        ].
        recoveredStep = 6414 ifTrue: [
            recoveredStack3 := 151.
            recoveredPC := 6418.
        ].
        recoveredStep = 6418 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6420.
        ].
        recoveredStep = 6420 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6421.
        ].
        recoveredStep = 6421 ifTrue: [
            recoveredStack2 := 'Permflag'.
            recoveredPC := 6424.
        ].
        recoveredStep = 6424 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 6426.
        ].
        recoveredStep = 6426 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6428.
        ].
        recoveredStep = 6428 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6429.
        ].
        recoveredStep = 6429 ifTrue: [
            recoveredStack2 := 'UserprfCustom'.
            recoveredPC := 6432.
        ].
        recoveredStep = 6432 ifTrue: [
            recoveredStack3 := 1024.
            recoveredPC := 6436.
        ].
        recoveredStep = 6436 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6438.
        ].
        recoveredStep = 6438 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6439.
        ].
        recoveredStep = 6439 ifTrue: [
            recoveredStack2 := 'Indexbufferhits'.
            recoveredPC := 6442.
        ].
        recoveredStep = 6442 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 6444.
        ].
        recoveredStep = 6444 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6446.
        ].
        recoveredStep = 6446 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6447.
        ].
        recoveredStep = 6447 ifTrue: [
            recoveredStack2 := 'CfgcheckpointFlush'.
            recoveredPC := 6450.
        ].
        recoveredStep = 6450 ifTrue: [
            recoveredStack3 := 70.
            recoveredPC := 6454.
        ].
        recoveredStep = 6454 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6456.
        ].
        recoveredStep = 6456 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6457.
        ].
        recoveredStep = 6457 ifTrue: [
            recoveredStack2 := 'Endlog'.
            recoveredPC := 6460.
        ].
        recoveredStep = 6460 ifTrue: [
            recoveredStack3 := 34.
            recoveredPC := 6462.
        ].
        recoveredStep = 6462 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6464.
        ].
        recoveredStep = 6464 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6465.
        ].
        recoveredStep = 6465 ifTrue: [
            recoveredStack2 := 'Ctdiagnosetlog'.
            recoveredPC := 6468.
        ].
        recoveredStep = 6468 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 6470.
        ].
        recoveredStep = 6470 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6472.
        ].
        recoveredStep = 6472 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6473.
        ].
        recoveredStep = 6473 ifTrue: [
            recoveredStack2 := 'OpsMirrorTrm'.
            recoveredPC := 6476.
        ].
        recoveredStep = 6476 ifTrue: [
            recoveredStack3 := 16384.
            recoveredPC := 6480.
        ].
        recoveredStep = 6480 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6482.
        ].
        recoveredStep = 6482 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6483.
        ].
        recoveredStep = 6483 ifTrue: [
            recoveredStack2 := 'DODA_PCFIRSTVERSION'.
            recoveredPC := 6486.
        ].
        recoveredStep = 6486 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 6488.
        ].
        recoveredStep = 6488 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6490.
        ].
        recoveredStep = 6490 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6491.
        ].
        recoveredStep = 6491 ifTrue: [
            recoveredStack2 := 'DefSql2'.
            recoveredPC := 6494.
        ].
        recoveredStep = 6494 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 6496.
        ].
        recoveredStep = 6496 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6498.
        ].
        recoveredStep = 6498 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6499.
        ].
        recoveredStep = 6499 ifTrue: [
            recoveredStack2 := 'SacsErr'.
            recoveredPC := 6502.
        ].
        recoveredStep = 6502 ifTrue: [
            recoveredStack3 := 456.
            recoveredPC := 6506.
        ].
        recoveredStep = 6506 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6508.
        ].
        recoveredStep = 6508 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6509.
        ].
        recoveredStep = 6509 ifTrue: [
            recoveredStack2 := 'QietErr'.
            recoveredPC := 6512.
        ].
        recoveredStep = 6512 ifTrue: [
            recoveredStack3 := 87.
            recoveredPC := 6516.
        ].
        recoveredStep = 6516 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6518.
        ].
        recoveredStep = 6518 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6519.
        ].
        recoveredStep = 6519 ifTrue: [
            recoveredStack2 := 'CfgrequestDelay'.
            recoveredPC := 6522.
        ].
        recoveredStep = 6522 ifTrue: [
            recoveredStack3 := 50.
            recoveredPC := 6524.
        ].
        recoveredStep = 6524 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6526.
        ].
        recoveredStep = 6526 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6527.
        ].
        recoveredStep = 6527 ifTrue: [
            recoveredStack2 := 'BatComplete'.
            recoveredPC := 6530.
        ].
        recoveredStep = 6530 ifTrue: [
            recoveredStack3 := 8192.
            recoveredPC := 6534.
        ].
        recoveredStep = 6534 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6536.
        ].
        recoveredStep = 6536 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6537.
        ].
        recoveredStep = 6537 ifTrue: [
            recoveredStack2 := 'IundErr'.
            recoveredPC := 6540.
        ].
        recoveredStep = 6540 ifTrue: [
            recoveredStack3 := 105.
            recoveredPC := 6544.
        ].
        recoveredStep = 6544 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6546.
        ].
        recoveredStep = 6546 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6547.
        ].
        recoveredStep = 6547 ifTrue: [
            recoveredStack2 := 'ShutErr'.
            recoveredPC := 6550.
        ].
        recoveredStep = 6550 ifTrue: [
            recoveredStack3 := 150.
            recoveredPC := 6554.
        ].
        recoveredStep = 6554 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6556.
        ].
        recoveredStep = 6556 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6557.
        ].
        recoveredStep = 6557 ifTrue: [
            recoveredStack2 := 'OiflErr'.
            recoveredPC := 6560.
        ].
        recoveredStep = 6560 ifTrue: [
            recoveredStack3 := 515.
            recoveredPC := 6564.
        ].
        recoveredStep = 6564 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6566.
        ].
        recoveredStep = 6566 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6567.
        ].
        recoveredStep = 6567 ifTrue: [
            recoveredStack2 := 'AlignmentComp'.
            recoveredPC := 6570.
        ].
        recoveredStep = 6570 ifTrue: [
            recoveredStack3 := '-'.
            recoveredPC := 6574.
        ].
        recoveredStep = 6574 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6576.
        ].
        recoveredStep = 6576 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6577.
        ].
        recoveredStep = 6577 ifTrue: [
            recoveredStack2 := 'NotOpTry'.
            recoveredPC := 6580.
        ].
        recoveredStep = 6580 ifTrue: [
            recoveredStack3 := '-5'.
            recoveredPC := 6584.
        ].
        recoveredStep = 6584 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6586.
        ].
        recoveredStep = 6586 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6587.
        ].
        recoveredStep = 6587 ifTrue: [
            recoveredStack2 := 'ClnAbtnod'.
            recoveredPC := 6590.
        ].
        recoveredStep = 6590 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 6592.
        ].
        recoveredStep = 6592 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6594.
        ].
        recoveredStep = 6594 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6595.
        ].
        recoveredStep = 6595 ifTrue: [
            recoveredStack2 := 'BAT_KEYS'.
            recoveredPC := 6598.
        ].
        recoveredStep = 6598 ifTrue: [
            recoveredStack3 := 1024.
            recoveredPC := 6602.
        ].
        recoveredStep = 6602 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6604.
        ].
        recoveredStep = 6604 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6605.
        ].
        recoveredStep = 6605 ifTrue: [
            recoveredStack2 := 'Yes'.
            recoveredPC := 6608.
        ].
        recoveredStep = 6608 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 6610.
        ].
        recoveredStep = 6610 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6612.
        ].
        recoveredStep = 6612 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6613.
        ].
        recoveredStep = 6613 ifTrue: [
            recoveredStack2 := 'Dbgtreeno'.
            recoveredPC := 6616.
        ].
        recoveredStep = 6616 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 6618.
        ].
        recoveredStep = 6618 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6620.
        ].
        recoveredStep = 6620 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6621.
        ].
        recoveredStep = 6621 ifTrue: [
            recoveredStack2 := 'CtV60'.
            recoveredPC := 6624.
        ].
        recoveredStep = 6624 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 6626.
        ].
        recoveredStep = 6626 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6628.
        ].
        recoveredStep = 6628 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6629.
        ].
        recoveredStep = 6629 ifTrue: [
            recoveredStack2 := 'Lsrvr'.
            recoveredPC := 6632.
        ].
        recoveredStep = 6632 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 6634.
        ].
        recoveredStep = 6634 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6636.
        ].
        recoveredStep = 6636 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6637.
        ].
        recoveredStep = 6637 ifTrue: [
            recoveredStack2 := 'Stz'.
            recoveredPC := 6640.
        ].
        recoveredStep = 6640 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 6644.
        ].
        recoveredStep = 6644 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6646.
        ].
        recoveredStep = 6646 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6647.
        ].
        recoveredStep = 6647 ifTrue: [
            recoveredStack2 := 'Stopsrvr'.
            recoveredPC := 6650.
        ].
        recoveredStep = 6650 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 6652.
        ].
        recoveredStep = 6652 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6654.
        ].
        recoveredStep = 6654 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6655.
        ].
        recoveredStep = 6655 ifTrue: [
            recoveredStack2 := 'IdxClose'.
            recoveredPC := 6658.
        ].
        recoveredStep = 6658 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 6660.
        ].
        recoveredStep = 6660 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6662.
        ].
        recoveredStep = 6662 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6663.
        ].
        recoveredStep = 6663 ifTrue: [
            recoveredStack2 := 'CfgadminMirror'.
            recoveredPC := 6666.
        ].
        recoveredStep = 6666 ifTrue: [
            recoveredStack3 := 60.
            recoveredPC := 6668.
        ].
        recoveredStep = 6668 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6670.
        ].
        recoveredStep = 6670 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6671.
        ].
        recoveredStep = 6671 ifTrue: [
            recoveredStack2 := 'Ctsernumhdr'.
            recoveredPC := 6674.
        ].
        recoveredStep = 6674 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 6676.
        ].
        recoveredStep = 6676 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6678.
        ].
        recoveredStep = 6678 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6679.
        ].
        recoveredStep = 6679 ifTrue: [
            recoveredStack2 := 'Mirrord'.
            recoveredPC := 6682.
        ].
        recoveredStep = 6682 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 6684.
        ].
        recoveredStep = 6684 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6686.
        ].
        recoveredStep = 6686 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6687.
        ].
        recoveredStep = 6687 ifTrue: [
            recoveredStack2 := 'Nsci'.
            recoveredPC := 6690.
        ].
        recoveredStep = 6690 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 6692.
        ].
        recoveredStep = 6692 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6694.
        ].
        recoveredStep = 6694 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6695.
        ].
        recoveredStep = 6695 ifTrue: [
            recoveredStack2 := 'Ownnam'.
            recoveredPC := 6698.
        ].
        recoveredStep = 6698 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 6700.
        ].
        recoveredStep = 6700 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6702.
        ].
        recoveredStep = 6702 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6703.
        ].
        recoveredStep = 6703 ifTrue: [
            recoveredStack2 := 'Bcdseg'.
            recoveredPC := 6706.
        ].
        recoveredStep = 6706 ifTrue: [
            recoveredStack3 := 11.
            recoveredPC := 6708.
        ].
        recoveredStep = 6708 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6710.
        ].
        recoveredStep = 6710 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6711.
        ].
        recoveredStep = 6711 ifTrue: [
            recoveredStack2 := 'Dscseg'.
            recoveredPC := 6714.
        ].
        recoveredStep = 6714 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 6716.
        ].
        recoveredStep = 6716 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6718.
        ].
        recoveredStep = 6718 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6719.
        ].
        recoveredStep = 6719 ifTrue: [
            recoveredStack2 := 'SHARED'.
            recoveredPC := 6722.
        ].
        recoveredStep = 6722 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 6724.
        ].
        recoveredStep = 6724 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6726.
        ].
        recoveredStep = 6726 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6727.
        ].
        recoveredStep = 6727 ifTrue: [
            recoveredStack2 := 'HstrErr'.
            recoveredPC := 6730.
        ].
        recoveredStep = 6730 ifTrue: [
            recoveredStack3 := 612.
            recoveredPC := 6734.
        ].
        recoveredStep = 6734 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6736.
        ].
        recoveredStep = 6736 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6737.
        ].
        recoveredStep = 6737 ifTrue: [
            recoveredStack2 := 'MstLock'.
            recoveredPC := 6740.
        ].
        recoveredStep = 6740 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 6742.
        ].
        recoveredStep = 6742 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6744.
        ].
        recoveredStep = 6744 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6745.
        ].
        recoveredStep = 6745 ifTrue: [
            recoveredStack2 := 'Ctreevarlst'.
            recoveredPC := 6748.
        ].
        recoveredStep = 6748 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 6750.
        ].
        recoveredStep = 6750 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6752.
        ].
        recoveredStep = 6752 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6753.
        ].
        recoveredStep = 6753 ifTrue: [
            recoveredStack2 := 'LuidErr'.
            recoveredPC := 6756.
        ].
        recoveredStep = 6756 ifTrue: [
            recoveredStack3 := 450.
            recoveredPC := 6760.
        ].
        recoveredStep = 6760 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6762.
        ].
        recoveredStep = 6762 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6763.
        ].
        recoveredStep = 6763 ifTrue: [
            recoveredStack2 := 'Chknul'.
            recoveredPC := 6766.
        ].
        recoveredStep = 6766 ifTrue: [
            recoveredStack3 := '''\1'''.
            recoveredPC := 6770.
        ].
        recoveredStep = 6770 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6772.
        ].
        recoveredStep = 6772 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6773.
        ].
        recoveredStep = 6773 ifTrue: [
            recoveredStack2 := 'Ctdtypes'.
            recoveredPC := 6776.
        ].
        recoveredStep = 6776 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 6778.
        ].
        recoveredStep = 6778 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6780.
        ].
        recoveredStep = 6780 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6781.
        ].
        recoveredStep = 6781 ifTrue: [
            recoveredStack2 := 'Ctdiagnoseqlog'.
            recoveredPC := 6784.
        ].
        recoveredStep = 6784 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 6786.
        ].
        recoveredStep = 6786 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6788.
        ].
        recoveredStep = 6788 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6789.
        ].
        recoveredStep = 6789 ifTrue: [
            recoveredStack2 := 'Newlink'.
            recoveredPC := 6792.
        ].
        recoveredStep = 6792 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 6794.
        ].
        recoveredStep = 6794 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6796.
        ].
        recoveredStep = 6796 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6797.
        ].
        recoveredStep = 6797 ifTrue: [
            recoveredStack2 := 'Secsiz'.
            recoveredPC := 6800.
        ].
        recoveredStep = 6800 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 6804.
        ].
        recoveredStep = 6804 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6806.
        ].
        recoveredStep = 6806 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6807.
        ].
        recoveredStep = 6807 ifTrue: [
            recoveredStack2 := 'Ctmemsig'.
            recoveredPC := 6810.
        ].
        recoveredStep = 6810 ifTrue: [
            recoveredStack3 := 17285.
            recoveredPC := 6814.
        ].
        recoveredStep = 6814 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6816.
        ].
        recoveredStep = 6816 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6817.
        ].
        recoveredStep = 6817 ifTrue: [
            recoveredStack2 := 'Ctdiagnosellog'.
            recoveredPC := 6820.
        ].
        recoveredStep = 6820 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 6822.
        ].
        recoveredStep = 6822 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6824.
        ].
        recoveredStep = 6824 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6825.
        ].
        recoveredStep = 6825 ifTrue: [
            recoveredStack2 := 'Maxmemb'.
            recoveredPC := 6828.
        ].
        recoveredStep = 6828 ifTrue: [
            recoveredStack3 := 31.
            recoveredPC := 6830.
        ].
        recoveredStep = 6830 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6832.
        ].
        recoveredStep = 6832 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6833.
        ].
        recoveredStep = 6833 ifTrue: [
            recoveredStack2 := 'Rsvseg'.
            recoveredPC := 6836.
        ].
        recoveredStep = 6836 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 6840.
        ].
        recoveredStep = 6840 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6842.
        ].
        recoveredStep = 6842 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6843.
        ].
        recoveredStep = 6843 ifTrue: [
            recoveredStack2 := 'REGSEG'.
            recoveredPC := 6846.
        ].
        recoveredStep = 6846 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 6848.
        ].
        recoveredStep = 6848 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6850.
        ].
        recoveredStep = 6850 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6851.
        ].
        recoveredStep = 6851 ifTrue: [
            recoveredStack2 := 'SgonErr'.
            recoveredPC := 6854.
        ].
        recoveredStep = 6854 ifTrue: [
            recoveredStack3 := 162.
            recoveredPC := 6858.
        ].
        recoveredStep = 6858 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6860.
        ].
        recoveredStep = 6860 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6861.
        ].
        recoveredStep = 6861 ifTrue: [
            recoveredStack2 := 'FreeFile'.
            recoveredPC := 6864.
        ].
        recoveredStep = 6864 ifTrue: [
            recoveredStack3 := 18.
            recoveredPC := 6866.
        ].
        recoveredStep = 6866 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6868.
        ].
        recoveredStep = 6868 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6869.
        ].
        recoveredStep = 6869 ifTrue: [
            recoveredStack2 := 'FnMaskNfchk'.
            recoveredPC := 6872.
        ].
        recoveredStep = 6872 ifTrue: [
            recoveredStack3 := 8192.
            recoveredPC := 6876.
        ].
        recoveredStep = 6876 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6878.
        ].
        recoveredStep = 6878 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6879.
        ].
        recoveredStep = 6879 ifTrue: [
            recoveredStack2 := 'SecFilemask'.
            recoveredPC := 6882.
        ].
        recoveredStep = 6882 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 6884.
        ].
        recoveredStep = 6884 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6886.
        ].
        recoveredStep = 6886 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6887.
        ].
        recoveredStep = 6887 ifTrue: [
            recoveredStack2 := 'Keylen'.
            recoveredPC := 6890.
        ].
        recoveredStep = 6890 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 6892.
        ].
        recoveredStep = 6892 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6894.
        ].
        recoveredStep = 6894 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6895.
        ].
        recoveredStep = 6895 ifTrue: [
            recoveredStack2 := 'Cfgctbatch'.
            recoveredPC := 6898.
        ].
        recoveredStep = 6898 ifTrue: [
            recoveredStack3 := 131.
            recoveredPC := 6902.
        ].
        recoveredStep = 6902 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6904.
        ].
        recoveredStep = 6904 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6905.
        ].
        recoveredStep = 6905 ifTrue: [
            recoveredStack2 := 'CfgmemoryUsage'.
            recoveredPC := 6908.
        ].
        recoveredStep = 6908 ifTrue: [
            recoveredStack3 := 192.
            recoveredPC := 6912.
        ].
        recoveredStep = 6912 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6914.
        ].
        recoveredStep = 6914 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6915.
        ].
        recoveredStep = 6915 ifTrue: [
            recoveredStack2 := 'FacsErr'.
            recoveredPC := 6918.
        ].
        recoveredStep = 6918 ifTrue: [
            recoveredStack3 := 26.
            recoveredPC := 6920.
        ].
        recoveredStep = 6920 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6922.
        ].
        recoveredStep = 6922 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6923.
        ].
        recoveredStep = 6923 ifTrue: [
            recoveredStack2 := 'SamsErr'.
            recoveredPC := 6926.
        ].
        recoveredStep = 6926 ifTrue: [
            recoveredStack3 := 175.
            recoveredPC := 6930.
        ].
        recoveredStep = 6930 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6932.
        ].
        recoveredStep = 6932 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6933.
        ].
        recoveredStep = 6933 ifTrue: [
            recoveredStack2 := 'DefSql1'.
            recoveredPC := 6936.
        ].
        recoveredStep = 6936 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 6938.
        ].
        recoveredStep = 6938 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6940.
        ].
        recoveredStep = 6940 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6941.
        ].
        recoveredStep = 6941 ifTrue: [
            recoveredStack2 := 'TexsErr'.
            recoveredPC := 6944.
        ].
        recoveredStep = 6944 ifTrue: [
            recoveredStack3 := 70.
            recoveredPC := 6948.
        ].
        recoveredStep = 6948 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6950.
        ].
        recoveredStep = 6950 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6951.
        ].
        recoveredStep = 6951 ifTrue: [
            recoveredStack2 := 'BAT_RPOS'.
            recoveredPC := 6954.
        ].
        recoveredStep = 6954 ifTrue: [
            recoveredStack3 := 512.
            recoveredPC := 6958.
        ].
        recoveredStep = 6958 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6960.
        ].
        recoveredStep = 6960 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6961.
        ].
        recoveredStep = 6961 ifTrue: [
            recoveredStack2 := 'Dplist'.
            recoveredPC := 6964.
        ].
        recoveredStep = 6964 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 6966.
        ].
        recoveredStep = 6966 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6968.
        ].
        recoveredStep = 6968 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6969.
        ].
        recoveredStep = 6969 ifTrue: [
            recoveredStack2 := 'UVSCHSEG'.
            recoveredPC := 6972.
        ].
        recoveredStep = 6972 ifTrue: [
            recoveredStack3 := 15.
            recoveredPC := 6974.
        ].
        recoveredStep = 6974 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6976.
        ].
        recoveredStep = 6976 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6977.
        ].
        recoveredStep = 6977 ifTrue: [
            recoveredStack2 := 'NintErr'.
            recoveredPC := 6980.
        ].
        recoveredStep = 6980 ifTrue: [
            recoveredStack3 := 129.
            recoveredPC := 6984.
        ].
        recoveredStep = 6984 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6986.
        ].
        recoveredStep = 6986 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6987.
        ].
        recoveredStep = 6987 ifTrue: [
            recoveredStack2 := 'doda_referenceState'.
            recoveredPC := 6990.
        ].
        recoveredStep = 6990 ifTrue: [
            recoveredStack3 := 9.
            recoveredPC := 6992.
        ].
        recoveredStep = 6992 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 6994.
        ].
        recoveredStep = 6994 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 6995.
        ].
        recoveredStep = 6995 ifTrue: [
            recoveredStack2 := 'OpsUnlockAdd'.
            recoveredPC := 6998.
        ].
        recoveredStep = 6998 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 7000.
        ].
        recoveredStep = 7000 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7002.
        ].
        recoveredStep = 7002 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7003.
        ].
        recoveredStep = 7003 ifTrue: [
            recoveredStack2 := 'CfgsqlTables'.
            recoveredPC := 7006.
        ].
        recoveredStep = 7006 ifTrue: [
            recoveredStack3 := 18.
            recoveredPC := 7008.
        ].
        recoveredStep = 7008 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7010.
        ].
        recoveredStep = 7010 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7011.
        ].
        recoveredStep = 7011 ifTrue: [
            recoveredStack2 := 'Cttstamphdr'.
            recoveredPC := 7014.
        ].
        recoveredStep = 7014 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 7016.
        ].
        recoveredStep = 7016 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7018.
        ].
        recoveredStep = 7018 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7019.
        ].
        recoveredStep = 7019 ifTrue: [
            recoveredStack2 := 'RserErr'.
            recoveredPC := 7022.
        ].
        recoveredStep = 7022 ifTrue: [
            recoveredStack3 := 63.
            recoveredPC := 7024.
        ].
        recoveredStep = 7024 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7026.
        ].
        recoveredStep = 7026 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7027.
        ].
        recoveredStep = 7027 ifTrue: [
            recoveredStack2 := 'DefSql3'.
            recoveredPC := 7030.
        ].
        recoveredStep = 7030 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 7032.
        ].
        recoveredStep = 7032 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7034.
        ].
        recoveredStep = 7034 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7035.
        ].
        recoveredStep = 7035 ifTrue: [
            recoveredStack2 := 'Regular'.
            recoveredPC := 7038.
        ].
        recoveredStep = 7038 ifTrue: [
            recoveredStack3 := '''\1'''.
            recoveredPC := 7042.
        ].
        recoveredStep = 7042 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7044.
        ].
        recoveredStep = 7044 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7045.
        ].
        recoveredStep = 7045 ifTrue: [
            recoveredStack2 := 'Battyp'.
            recoveredPC := 7048.
        ].
        recoveredStep = 7048 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 7050.
        ].
        recoveredStep = 7050 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7052.
        ].
        recoveredStep = 7052 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7053.
        ].
        recoveredStep = 7053 ifTrue: [
            recoveredStack2 := 'Cmpmsk'.
            recoveredPC := 7056.
        ].
        recoveredStep = 7056 ifTrue: [
            recoveredStack3 := 255.
            recoveredPC := 7060.
        ].
        recoveredStep = 7060 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7062.
        ].
        recoveredStep = 7062 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7063.
        ].
        recoveredStep = 7063 ifTrue: [
            recoveredStack2 := 'TracErr'.
            recoveredPC := 7066.
        ].
        recoveredStep = 7066 ifTrue: [
            recoveredStack3 := 74.
            recoveredPC := 7070.
        ].
        recoveredStep = 7070 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7072.
        ].
        recoveredStep = 7072 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7073.
        ].
        recoveredStep = 7073 ifTrue: [
            recoveredStack2 := 'Dulist'.
            recoveredPC := 7076.
        ].
        recoveredStep = 7076 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 7078.
        ].
        recoveredStep = 7078 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7080.
        ].
        recoveredStep = 7080 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7081.
        ].
        recoveredStep = 7081 ifTrue: [
            recoveredStack2 := 'Ctxtnd'.
            recoveredPC := 7084.
        ].
        recoveredStep = 7084 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 7086.
        ].
        recoveredStep = 7086 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7088.
        ].
        recoveredStep = 7088 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7089.
        ].
        recoveredStep = 7089 ifTrue: [
            recoveredStack2 := 'Undtran'.
            recoveredPC := 7092.
        ].
        recoveredStep = 7092 ifTrue: [
            recoveredStack3 := 22.
            recoveredPC := 7094.
        ].
        recoveredStep = 7094 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7096.
        ].
        recoveredStep = 7096 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7097.
        ].
        recoveredStep = 7097 ifTrue: [
            recoveredStack2 := 'FintErr'.
            recoveredPC := 7100.
        ].
        recoveredStep = 7100 ifTrue: [
            recoveredStack3 := 47.
            recoveredPC := 7102.
        ].
        recoveredStep = 7102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7104.
        ].
        recoveredStep = 7104 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7105.
        ].
        recoveredStep = 7105 ifTrue: [
            recoveredStack2 := 'Residsize'.
            recoveredPC := 7108.
        ].
        recoveredStep = 7108 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 7110.
        ].
        recoveredStep = 7110 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7112.
        ].
        recoveredStep = 7112 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7113.
        ].
        recoveredStep = 7113 ifTrue: [
            recoveredStack2 := 'CfgdeadlockMonitor'.
            recoveredPC := 7116.
        ].
        recoveredStep = 7116 ifTrue: [
            recoveredStack3 := 42.
            recoveredPC := 7118.
        ].
        recoveredStep = 7118 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7120.
        ].
        recoveredStep = 7120 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7121.
        ].
        recoveredStep = 7121 ifTrue: [
            recoveredStack2 := 'RedfErr'.
            recoveredPC := 7124.
        ].
        recoveredStep = 7124 ifTrue: [
            recoveredStack3 := 54.
            recoveredPC := 7126.
        ].
        recoveredStep = 7126 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7128.
        ].
        recoveredStep = 7128 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7129.
        ].
        recoveredStep = 7129 ifTrue: [
            recoveredStack2 := 'IitrErr'.
            recoveredPC := 7132.
        ].
        recoveredStep = 7132 ifTrue: [
            recoveredStack3 := 468.
            recoveredPC := 7136.
        ].
        recoveredStep = 7136 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7138.
        ].
        recoveredStep = 7138 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7139.
        ].
        recoveredStep = 7139 ifTrue: [
            recoveredStack2 := 'Opencrpt'.
            recoveredPC := 7142.
        ].
        recoveredStep = 7142 ifTrue: [
            recoveredStack3 := 16384.
            recoveredPC := 7146.
        ].
        recoveredStep = 7146 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7148.
        ].
        recoveredStep = 7148 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7149.
        ].
        recoveredStep = 7149 ifTrue: [
            recoveredStack2 := 'RdupErr'.
            recoveredPC := 7152.
        ].
        recoveredStep = 7152 ifTrue: [
            recoveredStack3 := 405.
            recoveredPC := 7156.
        ].
        recoveredStep = 7156 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7158.
        ].
        recoveredStep = 7158 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7159.
        ].
        recoveredStep = 7159 ifTrue: [
            recoveredStack2 := 'TbadErr'.
            recoveredPC := 7162.
        ].
        recoveredStep = 7162 ifTrue: [
            recoveredStack3 := 76.
            recoveredPC := 7166.
        ].
        recoveredStep = 7166 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7168.
        ].
        recoveredStep = 7168 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7169.
        ].
        recoveredStep = 7169 ifTrue: [
            recoveredStack2 := 'MhdrErr'.
            recoveredPC := 7172.
        ].
        recoveredStep = 7172 ifTrue: [
            recoveredStack3 := 549.
            recoveredPC := 7176.
        ].
        recoveredStep = 7176 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7178.
        ].
        recoveredStep = 7178 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7179.
        ].
        recoveredStep = 7179 ifTrue: [
            recoveredStack2 := 'Reclen'.
            recoveredPC := 7182.
        ].
        recoveredStep = 7182 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 7184.
        ].
        recoveredStep = 7184 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7186.
        ].
        recoveredStep = 7186 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7187.
        ].
        recoveredStep = 7187 ifTrue: [
            recoveredStack2 := 'DefMaskSpcmgt'.
            recoveredPC := 7190.
        ].
        recoveredStep = 7190 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 7192.
        ].
        recoveredStep = 7192 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7194.
        ].
        recoveredStep = 7194 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7195.
        ].
        recoveredStep = 7195 ifTrue: [
            recoveredStack2 := 'Ctdatext'.
            recoveredPC := 7198.
        ].
        recoveredStep = 7198 ifTrue: [
            recoveredStack3 := '".dat"'.
            recoveredPC := 7202.
        ].
        recoveredStep = 7202 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7204.
        ].
        recoveredStep = 7204 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7205.
        ].
        recoveredStep = 7205 ifTrue: [
            recoveredStack2 := 'ShImage'.
            recoveredPC := 7208.
        ].
        recoveredStep = 7208 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 7210.
        ].
        recoveredStep = 7210 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7212.
        ].
        recoveredStep = 7212 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7213.
        ].
        recoveredStep = 7213 ifTrue: [
            recoveredStack2 := 'Status'.
            recoveredPC := 7216.
        ].
        recoveredStep = 7216 ifTrue: [
            recoveredStack3 := 18.
            recoveredPC := 7218.
        ].
        recoveredStep = 7218 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7220.
        ].
        recoveredStep = 7220 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7221.
        ].
        recoveredStep = 7221 ifTrue: [
            recoveredStack2 := 'DlAddr'.
            recoveredPC := 7224.
        ].
        recoveredStep = 7224 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 7226.
        ].
        recoveredStep = 7226 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7228.
        ].
        recoveredStep = 7228 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7229.
        ].
        recoveredStep = 7229 ifTrue: [
            recoveredStack2 := 'IeofErr'.
            recoveredPC := 7232.
        ].
        recoveredStep = 7232 ifTrue: [
            recoveredStack3 := 519.
            recoveredPC := 7236.
        ].
        recoveredStep = 7236 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7238.
        ].
        recoveredStep = 7238 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7239.
        ].
        recoveredStep = 7239 ifTrue: [
            recoveredStack2 := 'Llogoff'.
            recoveredPC := 7242.
        ].
        recoveredStep = 7242 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 7244.
        ].
        recoveredStep = 7244 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7246.
        ].
        recoveredStep = 7246 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7247.
        ].
        recoveredStep = 7247 ifTrue: [
            recoveredStack2 := 'InodErr'.
            recoveredPC := 7250.
        ].
        recoveredStep = 7250 ifTrue: [
            recoveredStack3 := 102.
            recoveredPC := 7254.
        ].
        recoveredStep = 7254 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7256.
        ].
        recoveredStep = 7256 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7257.
        ].
        recoveredStep = 7257 ifTrue: [
            recoveredStack2 := 'Ssci'.
            recoveredPC := 7260.
        ].
        recoveredStep = 7260 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 7262.
        ].
        recoveredStep = 7262 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7264.
        ].
        recoveredStep = 7264 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7265.
        ].
        recoveredStep = 7265 ifTrue: [
            recoveredStack2 := 'TrnAnode'.
            recoveredPC := 7268.
        ].
        recoveredStep = 7268 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 7270.
        ].
        recoveredStep = 7270 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7272.
        ].
        recoveredStep = 7272 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7273.
        ].
        recoveredStep = 7273 ifTrue: [
            recoveredStack2 := 'Beg2fase'.
            recoveredPC := 7276.
        ].
        recoveredStep = 7276 ifTrue: [
            recoveredStack3 := 23.
            recoveredPC := 7278.
        ].
        recoveredStep = 7278 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7280.
        ].
        recoveredStep = 7280 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7281.
        ].
        recoveredStep = 7281 ifTrue: [
            recoveredStack2 := 'ClnGetnod'.
            recoveredPC := 7284.
        ].
        recoveredStep = 7284 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 7286.
        ].
        recoveredStep = 7286 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7288.
        ].
        recoveredStep = 7288 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7289.
        ].
        recoveredStep = 7289 ifTrue: [
            recoveredStack2 := 'DefNumber'.
            recoveredPC := 7292.
        ].
        recoveredStep = 7292 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 7294.
        ].
        recoveredStep = 7294 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7296.
        ].
        recoveredStep = 7296 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7297.
        ].
        recoveredStep = 7297 ifTrue: [
            recoveredStack2 := 'CfgctsIsam'.
            recoveredPC := 7300.
        ].
        recoveredStep = 7300 ifTrue: [
            recoveredStack3 := 138.
            recoveredPC := 7304.
        ].
        recoveredStep = 7304 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7306.
        ].
        recoveredStep = 7306 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7307.
        ].
        recoveredStep = 7307 ifTrue: [
            recoveredStack2 := 'DATABUFS'.
            recoveredPC := 7310.
        ].
        recoveredStep = 7310 ifTrue: [
            recoveredStack3 := 100.
            recoveredPC := 7314.
        ].
        recoveredStep = 7314 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7316.
        ].
        recoveredStep = 7316 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7317.
        ].
        recoveredStep = 7317 ifTrue: [
            recoveredStack2 := 'KfrcErr'.
            recoveredPC := 7320.
        ].
        recoveredStep = 7320 ifTrue: [
            recoveredStack3 := 60.
            recoveredPC := 7322.
        ].
        recoveredStep = 7322 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7324.
        ].
        recoveredStep = 7324 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7325.
        ].
        recoveredStep = 7325 ifTrue: [
            recoveredStack2 := 'RenfErr'.
            recoveredPC := 7328.
        ].
        recoveredStep = 7328 ifTrue: [
            recoveredStack3 := 67.
            recoveredPC := 7332.
        ].
        recoveredStep = 7332 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7334.
        ].
        recoveredStep = 7334 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7335.
        ].
        recoveredStep = 7335 ifTrue: [
            recoveredStack2 := 'KlodErr'.
            recoveredPC := 7338.
        ].
        recoveredStep = 7338 ifTrue: [
            recoveredStack3 := 58.
            recoveredPC := 7340.
        ].
        recoveredStep = 7340 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7342.
        ].
        recoveredStep = 7342 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7343.
        ].
        recoveredStep = 7343 ifTrue: [
            recoveredStack2 := 'Ctabsmem'.
            recoveredPC := 7346.
        ].
        recoveredStep = 7346 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 7348.
        ].
        recoveredStep = 7348 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7350.
        ].
        recoveredStep = 7350 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7351.
        ].
        recoveredStep = 7351 ifTrue: [
            recoveredStack2 := 'Logfil'.
            recoveredPC := 7354.
        ].
        recoveredStep = 7354 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 7356.
        ].
        recoveredStep = 7356 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7358.
        ].
        recoveredStep = 7358 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7359.
        ].
        recoveredStep = 7359 ifTrue: [
            recoveredStack2 := 'Nowait'.
            recoveredPC := 7362.
        ].
        recoveredStep = 7362 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 7364.
        ].
        recoveredStep = 7364 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7366.
        ].
        recoveredStep = 7366 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7367.
        ].
        recoveredStep = 7367 ifTrue: [
            recoveredStack2 := 'Newimage'.
            recoveredPC := 7370.
        ].
        recoveredStep = 7370 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 7372.
        ].
        recoveredStep = 7372 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7374.
        ].
        recoveredStep = 7374 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7375.
        ].
        recoveredStep = 7375 ifTrue: [
            recoveredStack2 := 'CT_2STRING'.
            recoveredPC := 7378.
        ].
        recoveredStep = 7378 ifTrue: [
            recoveredStack3 := 162.
            recoveredPC := 7382.
        ].
        recoveredStep = 7382 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7384.
        ].
        recoveredStep = 7384 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7385.
        ].
        recoveredStep = 7385 ifTrue: [
            recoveredStack2 := 'Trnhbins'.
            recoveredPC := 7388.
        ].
        recoveredStep = 7388 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 7392.
        ].
        recoveredStep = 7392 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7394.
        ].
        recoveredStep = 7394 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7395.
        ].
        recoveredStep = 7395 ifTrue: [
            recoveredStack2 := 'LupdErr'.
            recoveredPC := 7398.
        ].
        recoveredStep = 7398 ifTrue: [
            recoveredStack3 := 85.
            recoveredPC := 7402.
        ].
        recoveredStep = 7402 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7404.
        ].
        recoveredStep = 7404 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7405.
        ].
        recoveredStep = 7405 ifTrue: [
            recoveredStack2 := 'ZrecErr'.
            recoveredPC := 7408.
        ].
        recoveredStep = 7408 ifTrue: [
            recoveredStack3 := 29.
            recoveredPC := 7410.
        ].
        recoveredStep = 7410 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7412.
        ].
        recoveredStep = 7412 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7413.
        ].
        recoveredStep = 7413 ifTrue: [
            recoveredStack2 := 'Penderr'.
            recoveredPC := 7416.
        ].
        recoveredStep = 7416 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 7420.
        ].
        recoveredStep = 7420 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7422.
        ].
        recoveredStep = 7422 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7423.
        ].
        recoveredStep = 7423 ifTrue: [
            recoveredStack2 := 'IkriErr'.
            recoveredPC := 7426.
        ].
        recoveredStep = 7426 ifTrue: [
            recoveredStack3 := 111.
            recoveredPC := 7430.
        ].
        recoveredStep = 7430 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7432.
        ].
        recoveredStep = 7432 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7433.
        ].
        recoveredStep = 7433 ifTrue: [
            recoveredStack2 := 'CtgnDel'.
            recoveredPC := 7436.
        ].
        recoveredStep = 7436 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 7438.
        ].
        recoveredStep = 7438 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7440.
        ].
        recoveredStep = 7440 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7441.
        ].
        recoveredStep = 7441 ifTrue: [
            recoveredStack2 := 'SfunErr'.
            recoveredPC := 7444.
        ].
        recoveredStep = 7444 ifTrue: [
            recoveredStack3 := 170.
            recoveredPC := 7448.
        ].
        recoveredStep = 7448 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7450.
        ].
        recoveredStep = 7450 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7451.
        ].
        recoveredStep = 7451 ifTrue: [
            recoveredStack2 := 'Alcset'.
            recoveredPC := 7454.
        ].
        recoveredStep = 7454 ifTrue: [
            recoveredStack3 := 'Alcset'.
            recoveredPC := 7458.
        ].
        recoveredStep = 7458 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7460.
        ].
        recoveredStep = 7460 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7461.
        ].
        recoveredStep = 7461 ifTrue: [
            recoveredStack2 := 'BtnoErr'.
            recoveredPC := 7464.
        ].
        recoveredStep = 7464 ifTrue: [
            recoveredStack3 := 426.
            recoveredPC := 7468.
        ].
        recoveredStep = 7468 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7470.
        ].
        recoveredStep = 7470 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7471.
        ].
        recoveredStep = 7471 ifTrue: [
            recoveredStack2 := 'IdxSuper'.
            recoveredPC := 7474.
        ].
        recoveredStep = 7474 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 7476.
        ].
        recoveredStep = 7476 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7478.
        ].
        recoveredStep = 7478 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7479.
        ].
        recoveredStep = 7479 ifTrue: [
            recoveredStack2 := 'CfgsignalReady'.
            recoveredPC := 7482.
        ].
        recoveredStep = 7482 ifTrue: [
            recoveredStack3 := 79.
            recoveredPC := 7486.
        ].
        recoveredStep = 7486 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7488.
        ].
        recoveredStep = 7488 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7489.
        ].
        recoveredStep = 7489 ifTrue: [
            recoveredStack2 := 'KbldErr'.
            recoveredPC := 7492.
        ].
        recoveredStep = 7492 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 7494.
        ].
        recoveredStep = 7494 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7496.
        ].
        recoveredStep = 7496 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7497.
        ].
        recoveredStep = 7497 ifTrue: [
            recoveredStack2 := 'Nxtadd'.
            recoveredPC := 7500.
        ].
        recoveredStep = 7500 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 7502.
        ].
        recoveredStep = 7502 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7504.
        ].
        recoveredStep = 7504 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7505.
        ].
        recoveredStep = 7505 ifTrue: [
            recoveredStack2 := 'Ugfmode'.
            recoveredPC := 7508.
        ].
        recoveredStep = 7508 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 7510.
        ].
        recoveredStep = 7510 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7512.
        ].
        recoveredStep = 7512 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7513.
        ].
        recoveredStep = 7513 ifTrue: [
            recoveredStack2 := 'Ctlogidx'.
            recoveredPC := 7516.
        ].
        recoveredStep = 7516 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 7518.
        ].
        recoveredStep = 7518 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7520.
        ].
        recoveredStep = 7520 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7521.
        ].
        recoveredStep = 7521 ifTrue: [
            recoveredStack2 := 'Noctclupnd'.
            recoveredPC := 7524.
        ].
        recoveredStep = 7524 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 7526.
        ].
        recoveredStep = 7526 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7528.
        ].
        recoveredStep = 7528 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7529.
        ].
        recoveredStep = 7529 ifTrue: [
            recoveredStack2 := 'LeofErr'.
            recoveredPC := 7532.
        ].
        recoveredStep = 7532 ifTrue: [
            recoveredStack3 := 30.
            recoveredPC := 7534.
        ].
        recoveredStep = 7534 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7536.
        ].
        recoveredStep = 7536 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7537.
        ].
        recoveredStep = 7537 ifTrue: [
            recoveredStack2 := 'Checkread'.
            recoveredPC := 7540.
        ].
        recoveredStep = 7540 ifTrue: [
            recoveredStack3 := 1024.
            recoveredPC := 7544.
        ].
        recoveredStep = 7544 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7546.
        ].
        recoveredStep = 7546 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7547.
        ].
        recoveredStep = 7547 ifTrue: [
            recoveredStack2 := 'CtDblstr'.
            recoveredPC := 7550.
        ].
        recoveredStep = 7550 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 7554.
        ].
        recoveredStep = 7554 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7556.
        ].
        recoveredStep = 7556 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7557.
        ].
        recoveredStep = 7557 ifTrue: [
            recoveredStack2 := 'UserprfNtkey'.
            recoveredPC := 7560.
        ].
        recoveredStep = 7560 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 7562.
        ].
        recoveredStep = 7562 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7564.
        ].
        recoveredStep = 7564 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7565.
        ].
        recoveredStep = 7565 ifTrue: [
            recoveredStack2 := 'LnodErr'.
            recoveredPC := 7568.
        ].
        recoveredStep = 7568 ifTrue: [
            recoveredStack3 := 50.
            recoveredPC := 7570.
        ].
        recoveredStep = 7570 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7572.
        ].
        recoveredStep = 7572 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7573.
        ].
        recoveredStep = 7573 ifTrue: [
            recoveredStack2 := 'SecFileownr'.
            recoveredPC := 7576.
        ].
        recoveredStep = 7576 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 7578.
        ].
        recoveredStep = 7578 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7580.
        ].
        recoveredStep = 7580 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7581.
        ].
        recoveredStep = 7581 ifTrue: [
            recoveredStack2 := 'DrecErr'.
            recoveredPC := 7584.
        ].
        recoveredStep = 7584 ifTrue: [
            recoveredStack3 := 21.
            recoveredPC := 7586.
        ].
        recoveredStep = 7586 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7588.
        ].
        recoveredStep = 7588 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7589.
        ].
        recoveredStep = 7589 ifTrue: [
            recoveredStack2 := 'Piwtyp'.
            recoveredPC := 7592.
        ].
        recoveredStep = 7592 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 7594.
        ].
        recoveredStep = 7594 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7596.
        ].
        recoveredStep = 7596 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7597.
        ].
        recoveredStep = 7597 ifTrue: [
            recoveredStack2 := 'AflnErr'.
            recoveredPC := 7600.
        ].
        recoveredStep = 7600 ifTrue: [
            recoveredStack3 := 131.
            recoveredPC := 7604.
        ].
        recoveredStep = 7604 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7606.
        ].
        recoveredStep = 7606 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7607.
        ].
        recoveredStep = 7607 ifTrue: [
            recoveredStack2 := 'CfgguestMemory'.
            recoveredPC := 7610.
        ].
        recoveredStep = 7610 ifTrue: [
            recoveredStack3 := 28.
            recoveredPC := 7612.
        ].
        recoveredStep = 7612 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7614.
        ].
        recoveredStep = 7614 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7615.
        ].
        recoveredStep = 7615 ifTrue: [
            recoveredStack2 := 'CtddExt'.
            recoveredPC := 7618.
        ].
        recoveredStep = 7618 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 7622.
        ].
        recoveredStep = 7622 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7624.
        ].
        recoveredStep = 7624 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7625.
        ].
        recoveredStep = 7625 ifTrue: [
            recoveredStack2 := 'Dhdrsiz'.
            recoveredPC := 7628.
        ].
        recoveredStep = 7628 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 7632.
        ].
        recoveredStep = 7632 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7634.
        ].
        recoveredStep = 7634 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7635.
        ].
        recoveredStep = 7635 ifTrue: [
            recoveredStack2 := 'OpsStateOff'.
            recoveredPC := 7638.
        ].
        recoveredStep = 7638 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 7640.
        ].
        recoveredStep = 7640 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7642.
        ].
        recoveredStep = 7642 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7643.
        ].
        recoveredStep = 7643 ifTrue: [
            recoveredStack2 := 'CtddLog'.
            recoveredPC := 7646.
        ].
        recoveredStep = 7646 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 7648.
        ].
        recoveredStep = 7648 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7650.
        ].
        recoveredStep = 7650 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7651.
        ].
        recoveredStep = 7651 ifTrue: [
            recoveredStack2 := 'CfguserMemory'.
            recoveredPC := 7654.
        ].
        recoveredStep = 7654 ifTrue: [
            recoveredStack3 := 206.
            recoveredPC := 7658.
        ].
        recoveredStep = 7658 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7660.
        ].
        recoveredStep = 7660 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7661.
        ].
        recoveredStep = 7661 ifTrue: [
            recoveredStack2 := 'Maxage'.
            recoveredPC := 7664.
        ].
        recoveredStep = 7664 ifTrue: [
            recoveredStack3 := 65535.
            recoveredPC := 7668.
        ].
        recoveredStep = 7668 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7670.
        ].
        recoveredStep = 7670 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7671.
        ].
        recoveredStep = 7671 ifTrue: [
            recoveredStack2 := 'Ctprocptr'.
            recoveredPC := 7674.
        ].
        recoveredStep = 7674 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 7676.
        ].
        recoveredStep = 7676 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7678.
        ].
        recoveredStep = 7678 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7679.
        ].
        recoveredStep = 7679 ifTrue: [
            recoveredStack2 := 'OpsStateVret'.
            recoveredPC := 7682.
        ].
        recoveredStep = 7682 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 7684.
        ].
        recoveredStep = 7684 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7686.
        ].
        recoveredStep = 7686 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7687.
        ].
        recoveredStep = 7687 ifTrue: [
            recoveredStack2 := 'ShdrErr'.
            recoveredPC := 7690.
        ].
        recoveredStep = 7690 ifTrue: [
            recoveredStack3 := 462.
            recoveredPC := 7694.
        ].
        recoveredStep = 7694 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7696.
        ].
        recoveredStep = 7696 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7697.
        ].
        recoveredStep = 7697 ifTrue: [
            recoveredStack2 := 'CfgsysmonQlength'.
            recoveredPC := 7700.
        ].
        recoveredStep = 7700 ifTrue: [
            recoveredStack3 := 197.
            recoveredPC := 7704.
        ].
        recoveredStep = 7704 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7706.
        ].
        recoveredStep = 7706 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7707.
        ].
        recoveredStep = 7707 ifTrue: [
            recoveredStack2 := 'CtddStr'.
            recoveredPC := 7710.
        ].
        recoveredStep = 7710 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 7712.
        ].
        recoveredStep = 7712 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7714.
        ].
        recoveredStep = 7714 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7715.
        ].
        recoveredStep = 7715 ifTrue: [
            recoveredStack2 := 'BatRetRec'.
            recoveredPC := 7718.
        ].
        recoveredStep = 7718 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 7720.
        ].
        recoveredStep = 7720 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7722.
        ].
        recoveredStep = 7722 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7723.
        ].
        recoveredStep = 7723 ifTrue: [
            recoveredStack2 := 'Cfgusers'.
            recoveredPC := 7726.
        ].
        recoveredStep = 7726 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 7728.
        ].
        recoveredStep = 7728 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7730.
        ].
        recoveredStep = 7730 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7731.
        ].
        recoveredStep = 7731 ifTrue: [
            recoveredStack2 := 'Wrl'.
            recoveredPC := 7734.
        ].
        recoveredStep = 7734 ifTrue: [
            recoveredStack3 := 'Write'.
            recoveredPC := 7738.
        ].
        recoveredStep = 7738 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7740.
        ].
        recoveredStep = 7740 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7741.
        ].
        recoveredStep = 7741 ifTrue: [
            recoveredStack2 := 'DECSEG'.
            recoveredPC := 7744.
        ].
        recoveredStep = 7744 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 7746.
        ].
        recoveredStep = 7746 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7748.
        ].
        recoveredStep = 7748 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7749.
        ].
        recoveredStep = 7749 ifTrue: [
            recoveredStack2 := 'CtrtFiles'.
            recoveredPC := 7752.
        ].
        recoveredStep = 7752 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 7754.
        ].
        recoveredStep = 7754 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7756.
        ].
        recoveredStep = 7756 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7757.
        ].
        recoveredStep = 7757 ifTrue: [
            recoveredStack2 := 'ResFirst'.
            recoveredPC := 7760.
        ].
        recoveredStep = 7760 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 7762.
        ].
        recoveredStep = 7762 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7764.
        ].
        recoveredStep = 7764 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7765.
        ].
        recoveredStep = 7765 ifTrue: [
            recoveredStack2 := 'Loktyp'.
            recoveredPC := 7768.
        ].
        recoveredStep = 7768 ifTrue: [
            recoveredStack3 := 18.
            recoveredPC := 7770.
        ].
        recoveredStep = 7770 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7772.
        ].
        recoveredStep = 7772 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7773.
        ].
        recoveredStep = 7773 ifTrue: [
            recoveredStack2 := 'Readrec'.
            recoveredPC := 7776.
        ].
        recoveredStep = 7776 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 7778.
        ].
        recoveredStep = 7778 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7780.
        ].
        recoveredStep = 7780 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7781.
        ].
        recoveredStep = 7781 ifTrue: [
            recoveredStack2 := 'Itimretry'.
            recoveredPC := 7784.
        ].
        recoveredStep = 7784 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 7786.
        ].
        recoveredStep = 7786 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7788.
        ].
        recoveredStep = 7788 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7789.
        ].
        recoveredStep = 7789 ifTrue: [
            recoveredStack2 := 'TRNLOG'.
            recoveredPC := 7792.
        ].
        recoveredStep = 7792 ifTrue: [
            recoveredStack3 := 48.
            recoveredPC := 7794.
        ].
        recoveredStep = 7794 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7796.
        ].
        recoveredStep = 7796 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7797.
        ].
        recoveredStep = 7797 ifTrue: [
            recoveredStack2 := 'CfgkeepLogs'.
            recoveredPC := 7800.
        ].
        recoveredStep = 7800 ifTrue: [
            recoveredStack3 := 19.
            recoveredPC := 7802.
        ].
        recoveredStep = 7802 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7804.
        ].
        recoveredStep = 7804 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7805.
        ].
        recoveredStep = 7805 ifTrue: [
            recoveredStack2 := 'ResType'.
            recoveredPC := 7808.
        ].
        recoveredStep = 7808 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 7810.
        ].
        recoveredStep = 7810 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7812.
        ].
        recoveredStep = 7812 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7813.
        ].
        recoveredStep = 7813 ifTrue: [
            recoveredStack2 := 'Pi8typ'.
            recoveredPC := 7816.
        ].
        recoveredStep = 7816 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 7818.
        ].
        recoveredStep = 7818 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7820.
        ].
        recoveredStep = 7820 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7821.
        ].
        recoveredStep = 7821 ifTrue: [
            recoveredStack2 := 'Cthistrtrn'.
            recoveredPC := 7824.
        ].
        recoveredStep = 7824 ifTrue: [
            recoveredStack3 := 16384.
            recoveredPC := 7828.
        ].
        recoveredStep = 7828 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7830.
        ].
        recoveredStep = 7830 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7831.
        ].
        recoveredStep = 7831 ifTrue: [
            recoveredStack2 := 'TrdDump'.
            recoveredPC := 7834.
        ].
        recoveredStep = 7834 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 7836.
        ].
        recoveredStep = 7836 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7838.
        ].
        recoveredStep = 7838 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7839.
        ].
        recoveredStep = 7839 ifTrue: [
            recoveredStack2 := 'Endtran'.
            recoveredPC := 7842.
        ].
        recoveredStep = 7842 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 7844.
        ].
        recoveredStep = 7844 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7846.
        ].
        recoveredStep = 7846 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7847.
        ].
        recoveredStep = 7847 ifTrue: [
            recoveredStack2 := 'Ctnamindxadd'.
            recoveredPC := 7850.
        ].
        recoveredStep = 7850 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 7852.
        ].
        recoveredStep = 7852 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7854.
        ].
        recoveredStep = 7854 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7855.
        ].
        recoveredStep = 7855 ifTrue: [
            recoveredStack2 := 'Cfgfiles'.
            recoveredPC := 7858.
        ].
        recoveredStep = 7858 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 7860.
        ].
        recoveredStep = 7860 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7862.
        ].
        recoveredStep = 7862 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7863.
        ].
        recoveredStep = 7863 ifTrue: [
            recoveredStack2 := 'BatRetKey'.
            recoveredPC := 7866.
        ].
        recoveredStep = 7866 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 7870.
        ].
        recoveredStep = 7870 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7872.
        ].
        recoveredStep = 7872 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7873.
        ].
        recoveredStep = 7873 ifTrue: [
            recoveredStack2 := 'Logtype'.
            recoveredPC := 7876.
        ].
        recoveredStep = 7876 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 7878.
        ].
        recoveredStep = 7878 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7880.
        ].
        recoveredStep = 7880 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7881.
        ].
        recoveredStep = 7881 ifTrue: [
            recoveredStack2 := 'Pi2typ'.
            recoveredPC := 7884.
        ].
        recoveredStep = 7884 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 7886.
        ].
        recoveredStep = 7886 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7888.
        ].
        recoveredStep = 7888 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7889.
        ].
        recoveredStep = 7889 ifTrue: [
            recoveredStack2 := 'CtInt2'.
            recoveredPC := 7892.
        ].
        recoveredStep = 7892 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 7894.
        ].
        recoveredStep = 7894 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7896.
        ].
        recoveredStep = 7896 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7897.
        ].
        recoveredStep = 7897 ifTrue: [
            recoveredStack2 := 'ALTSEG'.
            recoveredPC := 7900.
        ].
        recoveredStep = 7900 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 7902.
        ].
        recoveredStep = 7902 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7904.
        ].
        recoveredStep = 7904 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7905.
        ].
        recoveredStep = 7905 ifTrue: [
            recoveredStack2 := 'KdupErr'.
            recoveredPC := 7908.
        ].
        recoveredStep = 7908 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 7910.
        ].
        recoveredStep = 7910 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7912.
        ].
        recoveredStep = 7912 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7913.
        ].
        recoveredStep = 7913 ifTrue: [
            recoveredStack2 := 'ReadErr'.
            recoveredPC := 7916.
        ].
        recoveredStep = 7916 ifTrue: [
            recoveredStack3 := 36.
            recoveredPC := 7918.
        ].
        recoveredStep = 7918 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7920.
        ].
        recoveredStep = 7920 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7921.
        ].
        recoveredStep = 7921 ifTrue: [
            recoveredStack2 := 'Ctmemchrtxt'.
            recoveredPC := 7924.
        ].
        recoveredStep = 7924 ifTrue: [
            recoveredStack3 := 'Pvoid'.
            recoveredPC := 7928.
        ].
        recoveredStep = 7928 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7930.
        ].
        recoveredStep = 7930 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7931.
        ].
        recoveredStep = 7931 ifTrue: [
            recoveredStack2 := 'Pi1typ'.
            recoveredPC := 7934.
        ].
        recoveredStep = 7934 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 7936.
        ].
        recoveredStep = 7936 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7938.
        ].
        recoveredStep = 7938 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7939.
        ].
        recoveredStep = 7939 ifTrue: [
            recoveredStack2 := 'Cttimeidhdr'.
            recoveredPC := 7942.
        ].
        recoveredStep = 7942 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 7944.
        ].
        recoveredStep = 7944 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7946.
        ].
        recoveredStep = 7946 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7947.
        ].
        recoveredStep = 7947 ifTrue: [
            recoveredStack2 := 'Uvarseg'.
            recoveredPC := 7950.
        ].
        recoveredStep = 7950 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 7952.
        ].
        recoveredStep = 7952 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7954.
        ].
        recoveredStep = 7954 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7955.
        ].
        recoveredStep = 7955 ifTrue: [
            recoveredStack2 := 'BnodErr'.
            recoveredPC := 7958.
        ].
        recoveredStep = 7958 ifTrue: [
            recoveredStack3 := 69.
            recoveredPC := 7962.
        ].
        recoveredStep = 7962 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7964.
        ].
        recoveredStep = 7964 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7965.
        ].
        recoveredStep = 7965 ifTrue: [
            recoveredStack2 := 'DODA_TSTHISVERSION'.
            recoveredPC := 7968.
        ].
        recoveredStep = 7968 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 7970.
        ].
        recoveredStep = 7970 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7972.
        ].
        recoveredStep = 7972 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7973.
        ].
        recoveredStep = 7973 ifTrue: [
            recoveredStack2 := 'OpsInternal'.
            recoveredPC := 7976.
        ].
        recoveredStep = 7976 ifTrue: [
            recoveredStack3 := 512.
            recoveredPC := 7980.
        ].
        recoveredStep = 7980 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7982.
        ].
        recoveredStep = 7982 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7983.
        ].
        recoveredStep = 7983 ifTrue: [
            recoveredStack2 := 'CtddRcv'.
            recoveredPC := 7986.
        ].
        recoveredStep = 7986 ifTrue: [
            recoveredStack3 := 9.
            recoveredPC := 7988.
        ].
        recoveredStep = 7988 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7990.
        ].
        recoveredStep = 7990 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7991.
        ].
        recoveredStep = 7991 ifTrue: [
            recoveredStack2 := 'OpsVarlenCmb'.
            recoveredPC := 7994.
        ].
        recoveredStep = 7994 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 7996.
        ].
        recoveredStep = 7996 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 7998.
        ].
        recoveredStep = 7998 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7999.
        ].
        recoveredStep = 7999 ifTrue: [
            recoveredStack2 := 'Rvs'.
            recoveredPC := 8002.
        ].
        recoveredStep = 8002 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 8004.
        ].
        recoveredStep = 8004 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8006.
        ].
        recoveredStep = 8006 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8007.
        ].
        recoveredStep = 8007 ifTrue: [
            recoveredStack2 := 'HdrcErr'.
            recoveredPC := 8010.
        ].
        recoveredStep = 8010 ifTrue: [
            recoveredStack3 := 624.
            recoveredPC := 8014.
        ].
        recoveredStep = 8014 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8016.
        ].
        recoveredStep = 8016 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8017.
        ].
        recoveredStep = 8017 ifTrue: [
            recoveredStack2 := 'DdmpErr'.
            recoveredPC := 8020.
        ].
        recoveredStep = 8020 ifTrue: [
            recoveredStack3 := 563.
            recoveredPC := 8024.
        ].
        recoveredStep = 8024 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8026.
        ].
        recoveredStep = 8026 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8027.
        ].
        recoveredStep = 8027 ifTrue: [
            recoveredStack2 := 'Ctvdecl'.
            recoveredPC := 8030.
        ].
        recoveredStep = 8030 ifTrue: [
            recoveredStack3 := 'Ctdecl'.
            recoveredPC := 8034.
        ].
        recoveredStep = 8034 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8036.
        ].
        recoveredStep = 8036 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8037.
        ].
        recoveredStep = 8037 ifTrue: [
            recoveredStack2 := 'QchunkSize'.
            recoveredPC := 8040.
        ].
        recoveredStep = 8040 ifTrue: [
            recoveredStack3 := 10000.
            recoveredPC := 8044.
        ].
        recoveredStep = 8044 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8046.
        ].
        recoveredStep = 8046 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8047.
        ].
        recoveredStep = 8047 ifTrue: [
            recoveredStack2 := 'TrdAdmin'.
            recoveredPC := 8050.
        ].
        recoveredStep = 8050 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 8052.
        ].
        recoveredStep = 8052 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8054.
        ].
        recoveredStep = 8054 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8055.
        ].
        recoveredStep = 8055 ifTrue: [
            recoveredStack2 := 'DeadErr'.
            recoveredPC := 8058.
        ].
        recoveredStep = 8058 ifTrue: [
            recoveredStack3 := 86.
            recoveredPC := 8062.
        ].
        recoveredStep = 8062 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8064.
        ].
        recoveredStep = 8064 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8065.
        ].
        recoveredStep = 8065 ifTrue: [
            recoveredStack2 := 'BatRetPos'.
            recoveredPC := 8068.
        ].
        recoveredStep = 8068 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 8072.
        ].
        recoveredStep = 8072 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8074.
        ].
        recoveredStep = 8074 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8075.
        ].
        recoveredStep = 8075 ifTrue: [
            recoveredStack2 := 'Pi4typ'.
            recoveredPC := 8078.
        ].
        recoveredStep = 8078 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 8080.
        ].
        recoveredStep = 8080 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8082.
        ].
        recoveredStep = 8082 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8083.
        ].
        recoveredStep = 8083 ifTrue: [
            recoveredStack2 := 'Comtyp'.
            recoveredPC := 8086.
        ].
        recoveredStep = 8086 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 8088.
        ].
        recoveredStep = 8088 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8090.
        ].
        recoveredStep = 8090 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8091.
        ].
        recoveredStep = 8091 ifTrue: [
            recoveredStack2 := 'Psemamut'.
            recoveredPC := 8094.
        ].
        recoveredStep = 8094 ifTrue: [
            recoveredStack3 := 'Psema'.
            recoveredPC := 8098.
        ].
        recoveredStep = 8098 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8100.
        ].
        recoveredStep = 8100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8101.
        ].
        recoveredStep = 8101 ifTrue: [
            recoveredStack2 := 'UnodErr'.
            recoveredPC := 8104.
        ].
        recoveredStep = 8104 ifTrue: [
            recoveredStack3 := 51.
            recoveredPC := 8106.
        ].
        recoveredStep = 8106 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8108.
        ].
        recoveredStep = 8108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8109.
        ].
        recoveredStep = 8109 ifTrue: [
            recoveredStack2 := 'Maxvfil'.
            recoveredPC := 8112.
        ].
        recoveredStep = 8112 ifTrue: [
            recoveredStack3 := 500.
            recoveredPC := 8116.
        ].
        recoveredStep = 8116 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8118.
        ].
        recoveredStep = 8118 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8119.
        ].
        recoveredStep = 8119 ifTrue: [
            recoveredStack2 := 'Regadd'.
            recoveredPC := 8122.
        ].
        recoveredStep = 8122 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 8124.
        ].
        recoveredStep = 8124 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8126.
        ].
        recoveredStep = 8126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8127.
        ].
        recoveredStep = 8127 ifTrue: [
            recoveredStack2 := 'CfgcommitDelay'.
            recoveredPC := 8130.
        ].
        recoveredStep = 8130 ifTrue: [
            recoveredStack3 := 44.
            recoveredPC := 8132.
        ].
        recoveredStep = 8132 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8134.
        ].
        recoveredStep = 8134 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8135.
        ].
        recoveredStep = 8135 ifTrue: [
            recoveredStack2 := 'SecFilegrup'.
            recoveredPC := 8138.
        ].
        recoveredStep = 8138 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 8140.
        ].
        recoveredStep = 8140 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8142.
        ].
        recoveredStep = 8142 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8143.
        ].
        recoveredStep = 8143 ifTrue: [
            recoveredStack2 := 'DdmpBeg'.
            recoveredPC := 8146.
        ].
        recoveredStep = 8146 ifTrue: [
            recoveredStack3 := 561.
            recoveredPC := 8150.
        ].
        recoveredStep = 8150 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8152.
        ].
        recoveredStep = 8152 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8153.
        ].
        recoveredStep = 8153 ifTrue: [
            recoveredStack2 := 'OpsUnlockUpd'.
            recoveredPC := 8156.
        ].
        recoveredStep = 8156 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 8158.
        ].
        recoveredStep = 8158 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8160.
        ].
        recoveredStep = 8160 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8161.
        ].
        recoveredStep = 8161 ifTrue: [
            recoveredStack2 := 'CtTimesold'.
            recoveredPC := 8164.
        ].
        recoveredStep = 8164 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 8166.
        ].
        recoveredStep = 8166 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8168.
        ].
        recoveredStep = 8168 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8169.
        ].
        recoveredStep = 8169 ifTrue: [
            recoveredStack2 := 'Checklock'.
            recoveredPC := 8172.
        ].
        recoveredStep = 8172 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 8176.
        ].
        recoveredStep = 8176 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8178.
        ].
        recoveredStep = 8178 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8179.
        ].
        recoveredStep = 8179 ifTrue: [
            recoveredStack2 := 'Ctnewrecflg'.
            recoveredPC := 8182.
        ].
        recoveredStep = 8182 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 8184.
        ].
        recoveredStep = 8184 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8186.
        ].
        recoveredStep = 8186 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8187.
        ].
        recoveredStep = 8187 ifTrue: [
            recoveredStack2 := 'VmaxErr'.
            recoveredPC := 8190.
        ].
        recoveredStep = 8190 ifTrue: [
            recoveredStack3 := 140.
            recoveredPC := 8194.
        ].
        recoveredStep = 8194 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8196.
        ].
        recoveredStep = 8196 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8197.
        ].
        recoveredStep = 8197 ifTrue: [
            recoveredStack2 := 'RcseErr'.
            recoveredPC := 8200.
        ].
        recoveredStep = 8200 ifTrue: [
            recoveredStack3 := 406.
            recoveredPC := 8204.
        ].
        recoveredStep = 8204 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8206.
        ].
        recoveredStep = 8206 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8207.
        ].
        recoveredStep = 8207 ifTrue: [
            recoveredStack2 := 'Decadd'.
            recoveredPC := 8210.
        ].
        recoveredStep = 8210 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 8212.
        ].
        recoveredStep = 8212 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8214.
        ].
        recoveredStep = 8214 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8215.
        ].
        recoveredStep = 8215 ifTrue: [
            recoveredStack2 := 'CfgpreimageDump'.
            recoveredPC := 8218.
        ].
        recoveredStep = 8218 ifTrue: [
            recoveredStack3 := 74.
            recoveredPC := 8222.
        ].
        recoveredStep = 8222 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8224.
        ].
        recoveredStep = 8224 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8225.
        ].
        recoveredStep = 8225 ifTrue: [
            recoveredStack2 := 'PerformOff'.
            recoveredPC := 8228.
        ].
        recoveredStep = 8228 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 8230.
        ].
        recoveredStep = 8230 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8232.
        ].
        recoveredStep = 8232 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8233.
        ].
        recoveredStep = 8233 ifTrue: [
            recoveredStack2 := 'Updtran'.
            recoveredPC := 8236.
        ].
        recoveredStep = 8236 ifTrue: [
            recoveredStack3 := 33.
            recoveredPC := 8238.
        ].
        recoveredStep = 8238 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8240.
        ].
        recoveredStep = 8240 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8241.
        ].
        recoveredStep = 8241 ifTrue: [
            recoveredStack2 := 'Guest'.
            recoveredPC := 8244.
        ].
        recoveredStep = 8244 ifTrue: [
            recoveredStack3 := '"guest"'.
            recoveredPC := 8248.
        ].
        recoveredStep = 8248 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8250.
        ].
        recoveredStep = 8250 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8251.
        ].
        recoveredStep = 8251 ifTrue: [
            recoveredStack2 := 'Dupkey'.
            recoveredPC := 8254.
        ].
        recoveredStep = 8254 ifTrue: [
            recoveredStack3 := '''\1'''.
            recoveredPC := 8258.
        ].
        recoveredStep = 8258 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8260.
        ].
        recoveredStep = 8260 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8261.
        ].
        recoveredStep = 8261 ifTrue: [
            recoveredStack2 := 'BtfnErr'.
            recoveredPC := 8264.
        ].
        recoveredStep = 8264 ifTrue: [
            recoveredStack3 := 422.
            recoveredPC := 8268.
        ].
        recoveredStep = 8268 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8270.
        ].
        recoveredStep = 8270 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8271.
        ].
        recoveredStep = 8271 ifTrue: [
            recoveredStack2 := 'OtrnErr'.
            recoveredPC := 8274.
        ].
        recoveredStep = 8274 ifTrue: [
            recoveredStack3 := 534.
            recoveredPC := 8278.
        ].
        recoveredStep = 8278 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8280.
        ].
        recoveredStep = 8280 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8281.
        ].
        recoveredStep = 8281 ifTrue: [
            recoveredStack2 := 'Filmod'.
            recoveredPC := 8284.
        ].
        recoveredStep = 8284 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 8286.
        ].
        recoveredStep = 8286 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8288.
        ].
        recoveredStep = 8288 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8289.
        ].
        recoveredStep = 8289 ifTrue: [
            recoveredStack2 := 'OpsLockonGet'.
            recoveredPC := 8292.
        ].
        recoveredStep = 8292 ifTrue: [
            recoveredStack3 := 'OpsOnceLok)'.
            recoveredPC := 8296.
        ].
        recoveredStep = 8296 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8298.
        ].
        recoveredStep = 8298 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8299.
        ].
        recoveredStep = 8299 ifTrue: [
            recoveredStack2 := 'DlRvrs'.
            recoveredPC := 8302.
        ].
        recoveredStep = 8302 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 8304.
        ].
        recoveredStep = 8304 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8306.
        ].
        recoveredStep = 8306 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8307.
        ].
        recoveredStep = 8307 ifTrue: [
            recoveredStack2 := 'DefResrvd20'.
            recoveredPC := 8310.
        ].
        recoveredStep = 8310 ifTrue: [
            recoveredStack3 := 31.
            recoveredPC := 8312.
        ].
        recoveredStep = 8312 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8314.
        ].
        recoveredStep = 8314 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8315.
        ].
        recoveredStep = 8315 ifTrue: [
            recoveredStack2 := 'FLTSEG'.
            recoveredPC := 8318.
        ].
        recoveredStep = 8318 ifTrue: [
            recoveredStack3 := 9.
            recoveredPC := 8320.
        ].
        recoveredStep = 8320 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8322.
        ].
        recoveredStep = 8322 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8323.
        ].
        recoveredStep = 8323 ifTrue: [
            recoveredStack2 := 'FdevCod'.
            recoveredPC := 8326.
        ].
        recoveredStep = 8326 ifTrue: [
            recoveredStack3 := '-9'.
            recoveredPC := 8330.
        ].
        recoveredStep = 8330 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8332.
        ].
        recoveredStep = 8332 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8333.
        ].
        recoveredStep = 8333 ifTrue: [
            recoveredStack2 := 'ArqsErr'.
            recoveredPC := 8336.
        ].
        recoveredStep = 8336 ifTrue: [
            recoveredStack3 := 127.
            recoveredPC := 8340.
        ].
        recoveredStep = 8340 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8342.
        ].
        recoveredStep = 8342 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8343.
        ].
        recoveredStep = 8343 ifTrue: [
            recoveredStack2 := 'Pixtyp'.
            recoveredPC := 8346.
        ].
        recoveredStep = 8346 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 8348.
        ].
        recoveredStep = 8348 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8350.
        ].
        recoveredStep = 8350 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8351.
        ].
        recoveredStep = 8351 ifTrue: [
            recoveredStack2 := 'CfgsignalDown'.
            recoveredPC := 8354.
        ].
        recoveredStep = 8354 ifTrue: [
            recoveredStack3 := 82.
            recoveredPC := 8358.
        ].
        recoveredStep = 8358 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8360.
        ].
        recoveredStep = 8360 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8361.
        ].
        recoveredStep = 8361 ifTrue: [
            recoveredStack2 := 'Chgadd'.
            recoveredPC := 8364.
        ].
        recoveredStep = 8364 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 8368.
        ].
        recoveredStep = 8368 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8370.
        ].
        recoveredStep = 8370 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8371.
        ].
        recoveredStep = 8371 ifTrue: [
            recoveredStack2 := 'Shdtyp'.
            recoveredPC := 8374.
        ].
        recoveredStep = 8374 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 8376.
        ].
        recoveredStep = 8376 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8378.
        ].
        recoveredStep = 8378 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8379.
        ].
        recoveredStep = 8379 ifTrue: [
            recoveredStack2 := 'Mltortrn'.
            recoveredPC := 8382.
        ].
        recoveredStep = 8382 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 8384.
        ].
        recoveredStep = 8384 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8386.
        ].
        recoveredStep = 8386 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8387.
        ].
        recoveredStep = 8387 ifTrue: [
            recoveredStack2 := 'Restrsv'.
            recoveredPC := 8390.
        ].
        recoveredStep = 8390 ifTrue: [
            recoveredStack3 := 15.
            recoveredPC := 8392.
        ].
        recoveredStep = 8392 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8394.
        ].
        recoveredStep = 8394 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8395.
        ].
        recoveredStep = 8395 ifTrue: [
            recoveredStack2 := 'SaddErr'.
            recoveredPC := 8398.
        ].
        recoveredStep = 8398 ifTrue: [
            recoveredStack3 := 415.
            recoveredPC := 8402.
        ].
        recoveredStep = 8402 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8404.
        ].
        recoveredStep = 8404 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8405.
        ].
        recoveredStep = 8405 ifTrue: [
            recoveredStack2 := 'DcnvErr'.
            recoveredPC := 8408.
        ].
        recoveredStep = 8408 ifTrue: [
            recoveredStack3 := 439.
            recoveredPC := 8412.
        ].
        recoveredStep = 8412 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8414.
        ].
        recoveredStep = 8414 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8415.
        ].
        recoveredStep = 8415 ifTrue: [
            recoveredStack2 := 'CtgnSrc'.
            recoveredPC := 8418.
        ].
        recoveredStep = 8418 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 8420.
        ].
        recoveredStep = 8420 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8422.
        ].
        recoveredStep = 8422 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8423.
        ].
        recoveredStep = 8423 ifTrue: [
            recoveredStack2 := 'OpsUnlockRwt'.
            recoveredPC := 8426.
        ].
        recoveredStep = 8426 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 8428.
        ].
        recoveredStep = 8428 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8430.
        ].
        recoveredStep = 8430 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8431.
        ].
        recoveredStep = 8431 ifTrue: [
            recoveredStack2 := 'DddmErr'.
            recoveredPC := 8434.
        ].
        recoveredStep = 8434 ifTrue: [
            recoveredStack3 := 440.
            recoveredPC := 8438.
        ].
        recoveredStep = 8438 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8440.
        ].
        recoveredStep = 8440 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8441.
        ].
        recoveredStep = 8441 ifTrue: [
            recoveredStack2 := 'Piztyp'.
            recoveredPC := 8444.
        ].
        recoveredStep = 8444 ifTrue: [
            recoveredStack3 := 9.
            recoveredPC := 8446.
        ].
        recoveredStep = 8446 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8448.
        ].
        recoveredStep = 8448 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8449.
        ].
        recoveredStep = 8449 ifTrue: [
            recoveredStack2 := 'SqlinitErr'.
            recoveredPC := 8452.
        ].
        recoveredStep = 8452 ifTrue: [
            recoveredStack3 := 500.
            recoveredPC := 8456.
        ].
        recoveredStep = 8456 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8458.
        ].
        recoveredStep = 8458 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8459.
        ].
        recoveredStep = 8459 ifTrue: [
            recoveredStack2 := 'Filtyp'.
            recoveredPC := 8462.
        ].
        recoveredStep = 8462 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 8464.
        ].
        recoveredStep = 8464 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8466.
        ].
        recoveredStep = 8466 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8467.
        ].
        recoveredStep = 8467 ifTrue: [
            recoveredStack2 := 'Databufferrequests'.
            recoveredPC := 8470.
        ].
        recoveredStep = 8470 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 8472.
        ].
        recoveredStep = 8472 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8474.
        ].
        recoveredStep = 8474 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8475.
        ].
        recoveredStep = 8475 ifTrue: [
            recoveredStack2 := 'Ctnonsql'.
            recoveredPC := 8478.
        ].
        recoveredStep = 8478 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 8480.
        ].
        recoveredStep = 8480 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8482.
        ].
        recoveredStep = 8482 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8483.
        ].
        recoveredStep = 8483 ifTrue: [
            recoveredStack2 := 'Opntran'.
            recoveredPC := 8486.
        ].
        recoveredStep = 8486 ifTrue: [
            recoveredStack3 := 27.
            recoveredPC := 8488.
        ].
        recoveredStep = 8488 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8490.
        ].
        recoveredStep = 8490 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8491.
        ].
        recoveredStep = 8491 ifTrue: [
            recoveredStack2 := 'DdmpEnd'.
            recoveredPC := 8494.
        ].
        recoveredStep = 8494 ifTrue: [
            recoveredStack3 := 562.
            recoveredPC := 8498.
        ].
        recoveredStep = 8498 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8500.
        ].
        recoveredStep = 8500 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8501.
        ].
        recoveredStep = 8501 ifTrue: [
            recoveredStack2 := 'SresErr'.
            recoveredPC := 8504.
        ].
        recoveredStep = 8504 ifTrue: [
            recoveredStack3 := 460.
            recoveredPC := 8508.
        ].
        recoveredStep = 8508 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8510.
        ].
        recoveredStep = 8510 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8511.
        ].
        recoveredStep = 8511 ifTrue: [
            recoveredStack2 := 'SAVENV'.
            recoveredPC := 8514.
        ].
        recoveredStep = 8514 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 8518.
        ].
        recoveredStep = 8518 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8520.
        ].
        recoveredStep = 8520 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8521.
        ].
        recoveredStep = 8521 ifTrue: [
            recoveredStack2 := 'Curkey'.
            recoveredPC := 8524.
        ].
        recoveredStep = 8524 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 8526.
        ].
        recoveredStep = 8526 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8528.
        ].
        recoveredStep = 8528 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8529.
        ].
        recoveredStep = 8529 ifTrue: [
            recoveredStack2 := 'BtipErr'.
            recoveredPC := 8532.
        ].
        recoveredStep = 8532 ifTrue: [
            recoveredStack3 := 425.
            recoveredPC := 8536.
        ].
        recoveredStep = 8536 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8538.
        ].
        recoveredStep = 8538 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8539.
        ].
        recoveredStep = 8539 ifTrue: [
            recoveredStack2 := 'BAT_VERIFY'.
            recoveredPC := 8542.
        ].
        recoveredStep = 8542 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 8544.
        ].
        recoveredStep = 8544 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8546.
        ].
        recoveredStep = 8546 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8547.
        ].
        recoveredStep = 8547 ifTrue: [
            recoveredStack2 := 'CommitDelay'.
            recoveredPC := 8550.
        ].
        recoveredStep = 8550 ifTrue: [
            recoveredStack3 := '10l'.
            recoveredPC := 8554.
        ].
        recoveredStep = 8554 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8556.
        ].
        recoveredStep = 8556 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8557.
        ].
        recoveredStep = 8557 ifTrue: [
            recoveredStack2 := 'CtddCln'.
            recoveredPC := 8560.
        ].
        recoveredStep = 8560 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 8562.
        ].
        recoveredStep = 8562 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8564.
        ].
        recoveredStep = 8564 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8565.
        ].
        recoveredStep = 8565 ifTrue: [
            recoveredStack2 := 'Cfglogons'.
            recoveredPC := 8568.
        ].
        recoveredStep = 8568 ifTrue: [
            recoveredStack3 := 200.
            recoveredPC := 8572.
        ].
        recoveredStep = 8572 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8574.
        ].
        recoveredStep = 8574 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8575.
        ].
        recoveredStep = 8575 ifTrue: [
            recoveredStack2 := 'Piytyp'.
            recoveredPC := 8578.
        ].
        recoveredStep = 8578 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 8580.
        ].
        recoveredStep = 8580 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8582.
        ].
        recoveredStep = 8582 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8583.
        ].
        recoveredStep = 8583 ifTrue: [
            recoveredStack2 := 'IsnmErr'.
            recoveredPC := 8586.
        ].
        recoveredStep = 8586 ifTrue: [
            recoveredStack3 := 186.
            recoveredPC := 8590.
        ].
        recoveredStep = 8590 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8592.
        ].
        recoveredStep = 8592 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8593.
        ].
        recoveredStep = 8593 ifTrue: [
            recoveredStack2 := 'McreErr'.
            recoveredPC := 8596.
        ].
        recoveredStep = 8596 ifTrue: [
            recoveredStack3 := 542.
            recoveredPC := 8600.
        ].
        recoveredStep = 8600 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8602.
        ].
        recoveredStep = 8602 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8603.
        ].
        recoveredStep = 8603 ifTrue: [
            recoveredStack2 := 'OpsMonitors'.
            recoveredPC := 8606.
        ].
        recoveredStep = 8606 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 8608.
        ].
        recoveredStep = 8608 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8610.
        ].
        recoveredStep = 8610 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8611.
        ].
        recoveredStep = 8611 ifTrue: [
            recoveredStack2 := 'Readfil'.
            recoveredPC := 8614.
        ].
        recoveredStep = 8614 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 8616.
        ].
        recoveredStep = 8616 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8618.
        ].
        recoveredStep = 8618 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8619.
        ].
        recoveredStep = 8619 ifTrue: [
            recoveredStack2 := 'MtrnErr'.
            recoveredPC := 8622.
        ].
        recoveredStep = 8622 ifTrue: [
            recoveredStack3 := 533.
            recoveredPC := 8626.
        ].
        recoveredStep = 8626 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8628.
        ].
        recoveredStep = 8628 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8629.
        ].
        recoveredStep = 8629 ifTrue: [
            recoveredStack2 := 'DcreErr'.
            recoveredPC := 8632.
        ].
        recoveredStep = 8632 ifTrue: [
            recoveredStack3 := 444.
            recoveredPC := 8636.
        ].
        recoveredStep = 8636 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8638.
        ].
        recoveredStep = 8638 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8639.
        ].
        recoveredStep = 8639 ifTrue: [
            recoveredStack2 := 'SrqsErr'.
            recoveredPC := 8642.
        ].
        recoveredStep = 8642 ifTrue: [
            recoveredStack3 := 167.
            recoveredPC := 8646.
        ].
        recoveredStep = 8646 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8648.
        ].
        recoveredStep = 8648 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8649.
        ].
        recoveredStep = 8649 ifTrue: [
            recoveredStack2 := 'AspcErr'.
            recoveredPC := 8652.
        ].
        recoveredStep = 8652 ifTrue: [
            recoveredStack3 := 132.
            recoveredPC := 8656.
        ].
        recoveredStep = 8656 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8658.
        ].
        recoveredStep = 8658 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8659.
        ].
        recoveredStep = 8659 ifTrue: [
            recoveredStack2 := 'VrfyErr'.
            recoveredPC := 8662.
        ].
        recoveredStep = 8662 ifTrue: [
            recoveredStack3 := 601.
            recoveredPC := 8666.
        ].
        recoveredStep = 8666 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8668.
        ].
        recoveredStep = 8668 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8669.
        ].
        recoveredStep = 8669 ifTrue: [
            recoveredStack2 := 'Cfgpascal24'.
            recoveredPC := 8672.
        ].
        recoveredStep = 8672 ifTrue: [
            recoveredStack3 := 143.
            recoveredPC := 8676.
        ].
        recoveredStep = 8676 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8678.
        ].
        recoveredStep = 8678 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8679.
        ].
        recoveredStep = 8679 ifTrue: [
            recoveredStack2 := 'OpsOnce'.
            recoveredPC := 8682.
        ].
        recoveredStep = 8682 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 8684.
        ].
        recoveredStep = 8684 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8686.
        ].
        recoveredStep = 8686 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8687.
        ].
        recoveredStep = 8687 ifTrue: [
            recoveredStack2 := 'CfgfileHandles'.
            recoveredPC := 8690.
        ].
        recoveredStep = 8690 ifTrue: [
            recoveredStack3 := 36.
            recoveredPC := 8692.
        ].
        recoveredStep = 8692 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8694.
        ].
        recoveredStep = 8694 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8695.
        ].
        recoveredStep = 8695 ifTrue: [
            recoveredStack2 := 'InotErr'.
            recoveredPC := 8698.
        ].
        recoveredStep = 8698 ifTrue: [
            recoveredStack3 := 101.
            recoveredPC := 8702.
        ].
        recoveredStep = 8702 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8704.
        ].
        recoveredStep = 8704 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8705.
        ].
        recoveredStep = 8705 ifTrue: [
            recoveredStack2 := 'DefMap'.
            recoveredPC := 8708.
        ].
        recoveredStep = 8708 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 8710.
        ].
        recoveredStep = 8710 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8712.
        ].
        recoveredStep = 8712 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8713.
        ].
        recoveredStep = 8713 ifTrue: [
            recoveredStack2 := 'TrdSmon'.
            recoveredPC := 8716.
        ].
        recoveredStep = 8716 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 8720.
        ].
        recoveredStep = 8720 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8722.
        ].
        recoveredStep = 8722 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8723.
        ].
        recoveredStep = 8723 ifTrue: [
            recoveredStack2 := 'SCHEMA_DODA'.
            recoveredPC := 8726.
        ].
        recoveredStep = 8726 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 8728.
        ].
        recoveredStep = 8728 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8730.
        ].
        recoveredStep = 8730 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8731.
        ].
        recoveredStep = 8731 ifTrue: [
            recoveredStack2 := 'VdlflgErr'.
            recoveredPC := 8734.
        ].
        recoveredStep = 8734 ifTrue: [
            recoveredStack3 := 147.
            recoveredPC := 8738.
        ].
        recoveredStep = 8738 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8740.
        ].
        recoveredStep = 8740 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8741.
        ].
        recoveredStep = 8741 ifTrue: [
            recoveredStack2 := 'CfgtaskerPc'.
            recoveredPC := 8744.
        ].
        recoveredStep = 8744 ifTrue: [
            recoveredStack3 := 38.
            recoveredPC := 8746.
        ].
        recoveredStep = 8746 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8748.
        ].
        recoveredStep = 8748 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8749.
        ].
        recoveredStep = 8749 ifTrue: [
            recoveredStack2 := 'FuseErr'.
            recoveredPC := 8752.
        ].
        recoveredStep = 8752 ifTrue: [
            recoveredStack3 := 46.
            recoveredPC := 8754.
        ].
        recoveredStep = 8754 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8756.
        ].
        recoveredStep = 8756 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8757.
        ].
        recoveredStep = 8757 ifTrue: [
            recoveredStack2 := 'HtypErr'.
            recoveredPC := 8760.
        ].
        recoveredStep = 8760 ifTrue: [
            recoveredStack3 := 621.
            recoveredPC := 8764.
        ].
        recoveredStep = 8764 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8766.
        ].
        recoveredStep = 8766 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8767.
        ].
        recoveredStep = 8767 ifTrue: [
            recoveredStack2 := 'OpsTrackMon'.
            recoveredPC := 8770.
        ].
        recoveredStep = 8770 ifTrue: [
            recoveredStack3 := 131072.
            recoveredPC := 8774.
        ].
        recoveredStep = 8774 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8776.
        ].
        recoveredStep = 8776 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8777.
        ].
        recoveredStep = 8777 ifTrue: [
            recoveredStack2 := 'Ctclrbf'.
            recoveredPC := 8780.
        ].
        recoveredStep = 8780 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 8782.
        ].
        recoveredStep = 8782 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8784.
        ].
        recoveredStep = 8784 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8785.
        ].
        recoveredStep = 8785 ifTrue: [
            recoveredStack2 := 'AaidErr'.
            recoveredPC := 8788.
        ].
        recoveredStep = 8788 ifTrue: [
            recoveredStack3 := 135.
            recoveredPC := 8792.
        ].
        recoveredStep = 8792 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8794.
        ].
        recoveredStep = 8794 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8795.
        ].
        recoveredStep = 8795 ifTrue: [
            recoveredStack2 := 'Thruadj'.
            recoveredPC := 8798.
        ].
        recoveredStep = 8798 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 8800.
        ].
        recoveredStep = 8800 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8802.
        ].
        recoveredStep = 8802 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8803.
        ].
        recoveredStep = 8803 ifTrue: [
            recoveredStack2 := 'CtInt2u'.
            recoveredPC := 8806.
        ].
        recoveredStep = 8806 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 8808.
        ].
        recoveredStep = 8808 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8810.
        ].
        recoveredStep = 8810 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8811.
        ].
        recoveredStep = 8811 ifTrue: [
            recoveredStack2 := 'Clstran'.
            recoveredPC := 8814.
        ].
        recoveredStep = 8814 ifTrue: [
            recoveredStack3 := 30.
            recoveredPC := 8816.
        ].
        recoveredStep = 8816 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8818.
        ].
        recoveredStep = 8818 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8819.
        ].
        recoveredStep = 8819 ifTrue: [
            recoveredStack2 := 'Ctnumenthdr'.
            recoveredPC := 8822.
        ].
        recoveredStep = 8822 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 8824.
        ].
        recoveredStep = 8824 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8826.
        ].
        recoveredStep = 8826 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8827.
        ].
        recoveredStep = 8827 ifTrue: [
            recoveredStack2 := 'FtypErr'.
            recoveredPC := 8830.
        ].
        recoveredStep = 8830 ifTrue: [
            recoveredStack3 := 53.
            recoveredPC := 8832.
        ].
        recoveredStep = 8832 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8834.
        ].
        recoveredStep = 8834 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8835.
        ].
        recoveredStep = 8835 ifTrue: [
            recoveredStack2 := 'KtypErr'.
            recoveredPC := 8838.
        ].
        recoveredStep = 8838 ifTrue: [
            recoveredStack3 := 52.
            recoveredPC := 8840.
        ].
        recoveredStep = 8840 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8842.
        ].
        recoveredStep = 8842 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8843.
        ].
        recoveredStep = 8843 ifTrue: [
            recoveredStack2 := 'DlTadr'.
            recoveredPC := 8846.
        ].
        recoveredStep = 8846 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 8848.
        ].
        recoveredStep = 8848 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8850.
        ].
        recoveredStep = 8850 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8851.
        ].
        recoveredStep = 8851 ifTrue: [
            recoveredStack2 := 'BAT_DEL'.
            recoveredPC := 8854.
        ].
        recoveredStep = 8854 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 8856.
        ].
        recoveredStep = 8856 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8858.
        ].
        recoveredStep = 8858 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8859.
        ].
        recoveredStep = 8859 ifTrue: [
            recoveredStack2 := 'AtrnErr'.
            recoveredPC := 8862.
        ].
        recoveredStep = 8862 ifTrue: [
            recoveredStack3 := 81.
            recoveredPC := 8866.
        ].
        recoveredStep = 8866 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8868.
        ].
        recoveredStep = 8868 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8869.
        ].
        recoveredStep = 8869 ifTrue: [
            recoveredStack2 := 'Ctnone'.
            recoveredPC := 8872.
        ].
        recoveredStep = 8872 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 8874.
        ].
        recoveredStep = 8874 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8876.
        ].
        recoveredStep = 8876 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8877.
        ].
        recoveredStep = 8877 ifTrue: [
            recoveredStack2 := 'ResPos'.
            recoveredPC := 8880.
        ].
        recoveredStep = 8880 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 8882.
        ].
        recoveredStep = 8882 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8884.
        ].
        recoveredStep = 8884 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8885.
        ].
        recoveredStep = 8885 ifTrue: [
            recoveredStack2 := 'RnotErr'.
            recoveredPC := 8888.
        ].
        recoveredStep = 8888 ifTrue: [
            recoveredStack3 := 408.
            recoveredPC := 8892.
        ].
        recoveredStep = 8892 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8894.
        ].
        recoveredStep = 8894 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8895.
        ].
        recoveredStep = 8895 ifTrue: [
            recoveredStack2 := 'Seqprv'.
            recoveredPC := 8898.
        ].
        recoveredStep = 8898 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 8900.
        ].
        recoveredStep = 8900 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8902.
        ].
        recoveredStep = 8902 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8903.
        ].
        recoveredStep = 8903 ifTrue: [
            recoveredStack2 := 'CfgnodeDelay'.
            recoveredPC := 8906.
        ].
        recoveredStep = 8906 ifTrue: [
            recoveredStack3 := 41.
            recoveredPC := 8908.
        ].
        recoveredStep = 8908 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8910.
        ].
        recoveredStep = 8910 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8911.
        ].
        recoveredStep = 8911 ifTrue: [
            recoveredStack2 := 'Cfgpascalst'.
            recoveredPC := 8914.
        ].
        recoveredStep = 8914 ifTrue: [
            recoveredStack3 := 142.
            recoveredPC := 8918.
        ].
        recoveredStep = 8918 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8920.
        ].
        recoveredStep = 8920 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8921.
        ].
        recoveredStep = 8921 ifTrue: [
            recoveredStack2 := 'TcreErr'.
            recoveredPC := 8924.
        ].
        recoveredStep = 8924 ifTrue: [
            recoveredStack3 := 169.
            recoveredPC := 8928.
        ].
        recoveredStep = 8928 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8930.
        ].
        recoveredStep = 8930 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8931.
        ].
        recoveredStep = 8931 ifTrue: [
            recoveredStack2 := 'Modmode'.
            recoveredPC := 8934.
        ].
        recoveredStep = 8934 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 8936.
        ].
        recoveredStep = 8936 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8938.
        ].
        recoveredStep = 8938 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8939.
        ].
        recoveredStep = 8939 ifTrue: [
            recoveredStack2 := 'DefNatlng1'.
            recoveredPC := 8942.
        ].
        recoveredStep = 8942 ifTrue: [
            recoveredStack3 := 9.
            recoveredPC := 8944.
        ].
        recoveredStep = 8944 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8946.
        ].
        recoveredStep = 8946 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8947.
        ].
        recoveredStep = 8947 ifTrue: [
            recoveredStack2 := 'BAT_GET'.
            recoveredPC := 8950.
        ].
        recoveredStep = 8950 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 8952.
        ].
        recoveredStep = 8952 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8954.
        ].
        recoveredStep = 8954 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8955.
        ].
        recoveredStep = 8955 ifTrue: [
            recoveredStack2 := 'TrnDabrt'.
            recoveredPC := 8958.
        ].
        recoveredStep = 8958 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 8960.
        ].
        recoveredStep = 8960 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8962.
        ].
        recoveredStep = 8962 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8963.
        ].
        recoveredStep = 8963 ifTrue: [
            recoveredStack2 := 'DELUPDT'.
            recoveredPC := 8966.
        ].
        recoveredStep = 8966 ifTrue: [
            recoveredStack3 := 2048.
            recoveredPC := 8970.
        ].
        recoveredStep = 8970 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8972.
        ].
        recoveredStep = 8972 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8973.
        ].
        recoveredStep = 8973 ifTrue: [
            recoveredStack2 := 'Cfgrtree'.
            recoveredPC := 8976.
        ].
        recoveredStep = 8976 ifTrue: [
            recoveredStack3 := 137.
            recoveredPC := 8980.
        ].
        recoveredStep = 8980 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8982.
        ].
        recoveredStep = 8982 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8983.
        ].
        recoveredStep = 8983 ifTrue: [
            recoveredStack2 := 'FcresIdx'.
            recoveredPC := 8986.
        ].
        recoveredStep = 8986 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 8988.
        ].
        recoveredStep = 8988 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8990.
        ].
        recoveredStep = 8990 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8991.
        ].
        recoveredStep = 8991 ifTrue: [
            recoveredStack2 := 'Ctmemlok'.
            recoveredPC := 8994.
        ].
        recoveredStep = 8994 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 8996.
        ].
        recoveredStep = 8996 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 8998.
        ].
        recoveredStep = 8998 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8999.
        ].
        recoveredStep = 8999 ifTrue: [
            recoveredStack2 := 'WriteErr'.
            recoveredPC := 9002.
        ].
        recoveredStep = 9002 ifTrue: [
            recoveredStack3 := 37.
            recoveredPC := 9004.
        ].
        recoveredStep = 9004 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9006.
        ].
        recoveredStep = 9006 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9007.
        ].
        recoveredStep = 9007 ifTrue: [
            recoveredStack2 := 'Ctlkimds'.
            recoveredPC := 9010.
        ].
        recoveredStep = 9010 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9012.
        ].
        recoveredStep = 9012 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9014.
        ].
        recoveredStep = 9014 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9015.
        ].
        recoveredStep = 9015 ifTrue: [
            recoveredStack2 := 'Frceadj'.
            recoveredPC := 9018.
        ].
        recoveredStep = 9018 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 9020.
        ].
        recoveredStep = 9020 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9022.
        ].
        recoveredStep = 9022 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9023.
        ].
        recoveredStep = 9023 ifTrue: [
            recoveredStack2 := 'StrnErr'.
            recoveredPC := 9026.
        ].
        recoveredStep = 9026 ifTrue: [
            recoveredStack3 := 151.
            recoveredPC := 9030.
        ].
        recoveredStep = 9030 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9032.
        ].
        recoveredStep = 9032 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9033.
        ].
        recoveredStep = 9033 ifTrue: [
            recoveredStack2 := 'Fildef'.
            recoveredPC := 9036.
        ].
        recoveredStep = 9036 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 9038.
        ].
        recoveredStep = 9038 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9040.
        ].
        recoveredStep = 9040 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9041.
        ].
        recoveredStep = 9041 ifTrue: [
            recoveredStack2 := 'Ctconbins'.
            recoveredPC := 9044.
        ].
        recoveredStep = 9044 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 9046.
        ].
        recoveredStep = 9046 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9048.
        ].
        recoveredStep = 9048 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9049.
        ].
        recoveredStep = 9049 ifTrue: [
            recoveredStack2 := 'ENDSEG'.
            recoveredPC := 9052.
        ].
        recoveredStep = 9052 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 9056.
        ].
        recoveredStep = 9056 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9058.
        ].
        recoveredStep = 9058 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9059.
        ].
        recoveredStep = 9059 ifTrue: [
            recoveredStack2 := 'Drnzero'.
            recoveredPC := 9062.
        ].
        recoveredStep = 9062 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 9064.
        ].
        recoveredStep = 9064 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9066.
        ].
        recoveredStep = 9066 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9067.
        ].
        recoveredStep = 9067 ifTrue: [
            recoveredStack2 := 'CfgcheckpointMonitor'.
            recoveredPC := 9070.
        ].
        recoveredStep = 9070 ifTrue: [
            recoveredStack3 := 45.
            recoveredPC := 9072.
        ].
        recoveredStep = 9072 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9074.
        ].
        recoveredStep = 9074 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9075.
        ].
        recoveredStep = 9075 ifTrue: [
            recoveredStack2 := 'CvalErr'.
            recoveredPC := 9078.
        ].
        recoveredStep = 9078 ifTrue: [
            recoveredStack3 := 598.
            recoveredPC := 9082.
        ].
        recoveredStep = 9082 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9084.
        ].
        recoveredStep = 9084 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9085.
        ].
        recoveredStep = 9085 ifTrue: [
            recoveredStack2 := 'HnotErr'.
            recoveredPC := 9088.
        ].
        recoveredStep = 9088 ifTrue: [
            recoveredStack3 := 617.
            recoveredPC := 9092.
        ].
        recoveredStep = 9092 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9094.
        ].
        recoveredStep = 9094 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9095.
        ].
        recoveredStep = 9095 ifTrue: [
            recoveredStack2 := 'PrdsErr'.
            recoveredPC := 9098.
        ].
        recoveredStep = 9098 ifTrue: [
            recoveredStack3 := 34.
            recoveredPC := 9100.
        ].
        recoveredStep = 9100 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9102.
        ].
        recoveredStep = 9102 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9103.
        ].
        recoveredStep = 9103 ifTrue: [
            recoveredStack2 := 'Ldelsi'.
            recoveredPC := 9106.
        ].
        recoveredStep = 9106 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 9110.
        ].
        recoveredStep = 9110 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9112.
        ].
        recoveredStep = 9112 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9113.
        ].
        recoveredStep = 9113 ifTrue: [
            recoveredStack2 := 'Newifil'.
            recoveredPC := 9116.
        ].
        recoveredStep = 9116 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9118.
        ].
        recoveredStep = 9118 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9120.
        ].
        recoveredStep = 9120 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9121.
        ].
        recoveredStep = 9121 ifTrue: [
            recoveredStack2 := 'BAT_COMPLETE'.
            recoveredPC := 9124.
        ].
        recoveredStep = 9124 ifTrue: [
            recoveredStack3 := 8192.
            recoveredPC := 9128.
        ].
        recoveredStep = 9128 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9130.
        ].
        recoveredStep = 9130 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9131.
        ].
        recoveredStep = 9131 ifTrue: [
            recoveredStack2 := 'OVRFASE'.
            recoveredPC := 9134.
        ].
        recoveredStep = 9134 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9136.
        ].
        recoveredStep = 9136 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9138.
        ].
        recoveredStep = 9138 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9139.
        ].
        recoveredStep = 9139 ifTrue: [
            recoveredStack2 := 'Seqnxt'.
            recoveredPC := 9142.
        ].
        recoveredStep = 9142 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9144.
        ].
        recoveredStep = 9144 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9146.
        ].
        recoveredStep = 9146 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9147.
        ].
        recoveredStep = 9147 ifTrue: [
            recoveredStack2 := 'CtMoney'.
            recoveredPC := 9150.
        ].
        recoveredStep = 9150 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 9152.
        ].
        recoveredStep = 9152 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9154.
        ].
        recoveredStep = 9154 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9155.
        ].
        recoveredStep = 9155 ifTrue: [
            recoveredStack2 := 'SnstErr'.
            recoveredPC := 9158.
        ].
        recoveredStep = 9158 ifTrue: [
            recoveredStack3 := 414.
            recoveredPC := 9162.
        ].
        recoveredStep = 9162 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9164.
        ].
        recoveredStep = 9164 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9165.
        ].
        recoveredStep = 9165 ifTrue: [
            recoveredStack2 := 'HtrnErr'.
            recoveredPC := 9168.
        ].
        recoveredStep = 9168 ifTrue: [
            recoveredStack3 := 520.
            recoveredPC := 9172.
        ].
        recoveredStep = 9172 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9174.
        ].
        recoveredStep = 9174 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9175.
        ].
        recoveredStep = 9175 ifTrue: [
            recoveredStack2 := 'Semtyp'.
            recoveredPC := 9178.
        ].
        recoveredStep = 9178 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 9180.
        ].
        recoveredStep = 9180 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9182.
        ].
        recoveredStep = 9182 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9183.
        ].
        recoveredStep = 9183 ifTrue: [
            recoveredStack2 := 'SspcErr'.
            recoveredPC := 9186.
        ].
        recoveredStep = 9186 ifTrue: [
            recoveredStack3 := 172.
            recoveredPC := 9190.
        ].
        recoveredStep = 9190 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9192.
        ].
        recoveredStep = 9192 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9193.
        ].
        recoveredStep = 9193 ifTrue: [
            recoveredStack2 := 'Strfile'.
            recoveredPC := 9196.
        ].
        recoveredStep = 9196 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 9198.
        ].
        recoveredStep = 9198 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9200.
        ].
        recoveredStep = 9200 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9201.
        ].
        recoveredStep = 9201 ifTrue: [
            recoveredStack2 := 'Numctlist'.
            recoveredPC := 9204.
        ].
        recoveredStep = 9204 ifTrue: [
            recoveredStack3 := 22.
            recoveredPC := 9206.
        ].
        recoveredStep = 9206 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9208.
        ].
        recoveredStep = 9208 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9209.
        ].
        recoveredStep = 9209 ifTrue: [
            recoveredStack2 := 'Ctalignment'.
            recoveredPC := 9212.
        ].
        recoveredStep = 9212 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9214.
        ].
        recoveredStep = 9214 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9216.
        ].
        recoveredStep = 9216 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9217.
        ].
        recoveredStep = 9217 ifTrue: [
            recoveredStack2 := 'OpsRsvd2b2'.
            recoveredPC := 9220.
        ].
        recoveredStep = 9220 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 9224.
        ].
        recoveredStep = 9224 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9226.
        ].
        recoveredStep = 9226 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9227.
        ].
        recoveredStep = 9227 ifTrue: [
            recoveredStack2 := 'IsrcErr'.
            recoveredPC := 9230.
        ].
        recoveredStep = 9230 ifTrue: [
            recoveredStack3 := 110.
            recoveredPC := 9234.
        ].
        recoveredStep = 9234 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9236.
        ].
        recoveredStep = 9236 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9237.
        ].
        recoveredStep = 9237 ifTrue: [
            recoveredStack2 := 'BatCan'.
            recoveredPC := 9240.
        ].
        recoveredStep = 9240 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9242.
        ].
        recoveredStep = 9242 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9244.
        ].
        recoveredStep = 9244 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9245.
        ].
        recoveredStep = 9245 ifTrue: [
            recoveredStack2 := 'RcreErr'.
            recoveredPC := 9248.
        ].
        recoveredStep = 9248 ifTrue: [
            recoveredStack3 := 400.
            recoveredPC := 9252.
        ].
        recoveredStep = 9252 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9254.
        ].
        recoveredStep = 9254 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9255.
        ].
        recoveredStep = 9255 ifTrue: [
            recoveredStack2 := 'CtgnAbt'.
            recoveredPC := 9258.
        ].
        recoveredStep = 9258 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 9260.
        ].
        recoveredStep = 9260 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9262.
        ].
        recoveredStep = 9262 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9263.
        ].
        recoveredStep = 9263 ifTrue: [
            recoveredStack2 := 'MIRROR_SKP'.
            recoveredPC := 9266.
        ].
        recoveredStep = 9266 ifTrue: [
            recoveredStack3 := 8192.
            recoveredPC := 9270.
        ].
        recoveredStep = 9270 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9272.
        ].
        recoveredStep = 9272 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9273.
        ].
        recoveredStep = 9273 ifTrue: [
            recoveredStack2 := 'LmtcErr'.
            recoveredPC := 9276.
        ].
        recoveredStep = 9276 ifTrue: [
            recoveredStack3 := 530.
            recoveredPC := 9280.
        ].
        recoveredStep = 9280 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9282.
        ].
        recoveredStep = 9282 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9283.
        ].
        recoveredStep = 9283 ifTrue: [
            recoveredStack2 := 'SpacErr'.
            recoveredPC := 9286.
        ].
        recoveredStep = 9286 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 9288.
        ].
        recoveredStep = 9288 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9290.
        ].
        recoveredStep = 9290 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9291.
        ].
        recoveredStep = 9291 ifTrue: [
            recoveredStack2 := 'Cmptran'.
            recoveredPC := 9294.
        ].
        recoveredStep = 9294 ifTrue: [
            recoveredStack3 := 51.
            recoveredPC := 9296.
        ].
        recoveredStep = 9296 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9298.
        ].
        recoveredStep = 9298 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9299.
        ].
        recoveredStep = 9299 ifTrue: [
            recoveredStack2 := 'MnotErr'.
            recoveredPC := 9302.
        ].
        recoveredStep = 9302 ifTrue: [
            recoveredStack3 := 551.
            recoveredPC := 9306.
        ].
        recoveredStep = 9306 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9308.
        ].
        recoveredStep = 9308 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9309.
        ].
        recoveredStep = 9309 ifTrue: [
            recoveredStack2 := 'ScsfErr'.
            recoveredPC := 9312.
        ].
        recoveredStep = 9312 ifTrue: [
            recoveredStack3 := 145.
            recoveredPC := 9316.
        ].
        recoveredStep = 9316 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9318.
        ].
        recoveredStep = 9318 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9319.
        ].
        recoveredStep = 9319 ifTrue: [
            recoveredStack2 := 'IsdpErr'.
            recoveredPC := 9322.
        ].
        recoveredStep = 9322 ifTrue: [
            recoveredStack3 := 184.
            recoveredPC := 9326.
        ].
        recoveredStep = 9326 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9328.
        ].
        recoveredStep = 9328 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9329.
        ].
        recoveredStep = 9329 ifTrue: [
            recoveredStack2 := 'NoUnifm'.
            recoveredPC := 9331.
        ].
        recoveredStep = 9331 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9333.
        ].
        recoveredStep = 9333 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9335.
        ].
        recoveredStep = 9335 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9336.
        ].
        recoveredStep = 9336 ifTrue: [
            recoveredStack2 := 'TtypErr'.
            recoveredPC := 9340.
        ].
        recoveredStep = 9340 ifTrue: [
            recoveredStack3 := 99.
            recoveredPC := 9344.
        ].
        recoveredStep = 9344 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9346.
        ].
        recoveredStep = 9346 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9347.
        ].
        recoveredStep = 9347 ifTrue: [
            recoveredStack2 := 'Nbrwriteoperations'.
            recoveredPC := 9350.
        ].
        recoveredStep = 9350 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 9352.
        ].
        recoveredStep = 9352 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9354.
        ].
        recoveredStep = 9354 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9355.
        ].
        recoveredStep = 9355 ifTrue: [
            recoveredStack2 := 'SYSMON_MAIN'.
            recoveredPC := 9358.
        ].
        recoveredStep = 9358 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 9360.
        ].
        recoveredStep = 9360 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9362.
        ].
        recoveredStep = 9362 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9363.
        ].
        recoveredStep = 9363 ifTrue: [
            recoveredStack2 := 'Keytyp'.
            recoveredPC := 9366.
        ].
        recoveredStep = 9366 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 9368.
        ].
        recoveredStep = 9368 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9370.
        ].
        recoveredStep = 9370 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9371.
        ].
        recoveredStep = 9371 ifTrue: [
            recoveredStack2 := 'GnotErr'.
            recoveredPC := 9374.
        ].
        recoveredStep = 9374 ifTrue: [
            recoveredStack3 := 517.
            recoveredPC := 9378.
        ].
        recoveredStep = 9378 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9380.
        ].
        recoveredStep = 9380 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9381.
        ].
        recoveredStep = 9381 ifTrue: [
            recoveredStack2 := 'DefMaskOpntim'.
            recoveredPC := 9384.
        ].
        recoveredStep = 9384 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 9386.
        ].
        recoveredStep = 9386 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9388.
        ].
        recoveredStep = 9388 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9389.
        ].
        recoveredStep = 9389 ifTrue: [
            recoveredStack2 := 'VpntErr'.
            recoveredPC := 9392.
        ].
        recoveredStep = 9392 ifTrue: [
            recoveredStack3 := 159.
            recoveredPC := 9396.
        ].
        recoveredStep = 9396 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9398.
        ].
        recoveredStep = 9398 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9399.
        ].
        recoveredStep = 9399 ifTrue: [
            recoveredStack2 := 'Ctflavorhdr'.
            recoveredPC := 9402.
        ].
        recoveredStep = 9402 ifTrue: [
            recoveredStack3 := 18.
            recoveredPC := 9404.
        ].
        recoveredStep = 9404 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9406.
        ].
        recoveredStep = 9406 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9407.
        ].
        recoveredStep = 9407 ifTrue: [
            recoveredStack2 := 'SpagErr'.
            recoveredPC := 9410.
        ].
        recoveredStep = 9410 ifTrue: [
            recoveredStack3 := 417.
            recoveredPC := 9414.
        ].
        recoveredStep = 9414 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9416.
        ].
        recoveredStep = 9416 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9417.
        ].
        recoveredStep = 9417 ifTrue: [
            recoveredStack2 := 'UqidErr'.
            recoveredPC := 9420.
        ].
        recoveredStep = 9420 ifTrue: [
            recoveredStack3 := 463.
            recoveredPC := 9424.
        ].
        recoveredStep = 9424 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9426.
        ].
        recoveredStep = 9426 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9427.
        ].
        recoveredStep = 9427 ifTrue: [
            recoveredStack2 := 'Logindx'.
            recoveredPC := 9430.
        ].
        recoveredStep = 9430 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9432.
        ].
        recoveredStep = 9432 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9434.
        ].
        recoveredStep = 9434 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9435.
        ].
        recoveredStep = 9435 ifTrue: [
            recoveredStack2 := 'Ctdiagnosecomm3'.
            recoveredPC := 9438.
        ].
        recoveredStep = 9438 ifTrue: [
            recoveredStack3 := 512.
            recoveredPC := 9442.
        ].
        recoveredStep = 9442 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9444.
        ].
        recoveredStep = 9444 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9445.
        ].
        recoveredStep = 9445 ifTrue: [
            recoveredStack2 := 'CfgqueryMemory'.
            recoveredPC := 9448.
        ].
        recoveredStep = 9448 ifTrue: [
            recoveredStack3 := 29.
            recoveredPC := 9450.
        ].
        recoveredStep = 9450 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9452.
        ].
        recoveredStep = 9452 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9453.
        ].
        recoveredStep = 9453 ifTrue: [
            recoveredStack2 := 'RESNAME_LEN'.
            recoveredPC := 9456.
        ].
        recoveredStep = 9456 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 9460.
        ].
        recoveredStep = 9460 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9462.
        ].
        recoveredStep = 9462 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9463.
        ].
        recoveredStep = 9463 ifTrue: [
            recoveredStack2 := 'ColSuffix'.
            recoveredPC := 9466.
        ].
        recoveredStep = 9466 ifTrue: [
            recoveredStack3 := '''\10'''.
            recoveredPC := 9470.
        ].
        recoveredStep = 9470 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9472.
        ].
        recoveredStep = 9472 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9473.
        ].
        recoveredStep = 9473 ifTrue: [
            recoveredStack2 := 'Ctgidmem'.
            recoveredPC := 9476.
        ].
        recoveredStep = 9476 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 9478.
        ].
        recoveredStep = 9478 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9480.
        ].
        recoveredStep = 9480 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9481.
        ].
        recoveredStep = 9481 ifTrue: [
            recoveredStack2 := 'ItimErr'.
            recoveredPC := 9484.
        ].
        recoveredStep = 9484 ifTrue: [
            recoveredStack3 := 160.
            recoveredPC := 9488.
        ].
        recoveredStep = 9488 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9490.
        ].
        recoveredStep = 9490 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9491.
        ].
        recoveredStep = 9491 ifTrue: [
            recoveredStack2 := 'BatLokRed'.
            recoveredPC := 9494.
        ].
        recoveredStep = 9494 ifTrue: [
            recoveredStack3 := 2048.
            recoveredPC := 9498.
        ].
        recoveredStep = 9498 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9500.
        ].
        recoveredStep = 9500 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9501.
        ].
        recoveredStep = 9501 ifTrue: [
            recoveredStack2 := 'LgstErr'.
            recoveredPC := 9504.
        ].
        recoveredStep = 9504 ifTrue: [
            recoveredStack3 := 470.
            recoveredPC := 9508.
        ].
        recoveredStep = 9508 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9510.
        ].
        recoveredStep = 9510 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9511.
        ].
        recoveredStep = 9511 ifTrue: [
            recoveredStack2 := 'TrnmErr'.
            recoveredPC := 9514.
        ].
        recoveredStep = 9514 ifTrue: [
            recoveredStack3 := 77.
            recoveredPC := 9518.
        ].
        recoveredStep = 9518 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9520.
        ].
        recoveredStep = 9520 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9521.
        ].
        recoveredStep = 9521 ifTrue: [
            recoveredStack2 := 'Rstcuri'.
            recoveredPC := 9524.
        ].
        recoveredStep = 9524 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9526.
        ].
        recoveredStep = 9526 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9528.
        ].
        recoveredStep = 9528 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9529.
        ].
        recoveredStep = 9529 ifTrue: [
            recoveredStack2 := 'Nbrbytesread'.
            recoveredPC := 9532.
        ].
        recoveredStep = 9532 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 9534.
        ].
        recoveredStep = 9534 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9536.
        ].
        recoveredStep = 9536 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9537.
        ].
        recoveredStep = 9537 ifTrue: [
            recoveredStack2 := 'IsamVars'.
            recoveredPC := 9540.
        ].
        recoveredStep = 9540 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9542.
        ].
        recoveredStep = 9542 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9544.
        ].
        recoveredStep = 9544 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9545.
        ].
        recoveredStep = 9545 ifTrue: [
            recoveredStack2 := 'KcratErr'.
            recoveredPC := 9548.
        ].
        recoveredStep = 9548 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 9550.
        ].
        recoveredStep = 9550 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9552.
        ].
        recoveredStep = 9552 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9553.
        ].
        recoveredStep = 9553 ifTrue: [
            recoveredStack2 := 'Vlength'.
            recoveredPC := 9556.
        ].
        recoveredStep = 9556 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 9558.
        ].
        recoveredStep = 9558 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9560.
        ].
        recoveredStep = 9560 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9561.
        ].
        recoveredStep = 9561 ifTrue: [
            recoveredStack2 := 'NtimErr'.
            recoveredPC := 9564.
        ].
        recoveredStep = 9564 ifTrue: [
            recoveredStack3 := 156.
            recoveredPC := 9568.
        ].
        recoveredStep = 9568 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9570.
        ].
        recoveredStep = 9570 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9571.
        ].
        recoveredStep = 9571 ifTrue: [
            recoveredStack2 := 'UstpErr'.
            recoveredPC := 9574.
        ].
        recoveredStep = 9574 ifTrue: [
            recoveredStack3 := 410.
            recoveredPC := 9578.
        ].
        recoveredStep = 9578 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9580.
        ].
        recoveredStep = 9580 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9581.
        ].
        recoveredStep = 9581 ifTrue: [
            recoveredStack2 := 'Ctdiagnosecomm2'.
            recoveredPC := 9584.
        ].
        recoveredStep = 9584 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 9588.
        ].
        recoveredStep = 9588 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9590.
        ].
        recoveredStep = 9590 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9591.
        ].
        recoveredStep = 9591 ifTrue: [
            recoveredStack2 := 'CfgcheckpointInterval'.
            recoveredPC := 9594.
        ].
        recoveredStep = 9594 ifTrue: [
            recoveredStack3 := 77.
            recoveredPC := 9598.
        ].
        recoveredStep = 9598 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9600.
        ].
        recoveredStep = 9600 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9601.
        ].
        recoveredStep = 9601 ifTrue: [
            recoveredStack2 := 'Delflg'.
            recoveredPC := 9604.
        ].
        recoveredStep = 9604 ifTrue: [
            recoveredStack3 := 'C255'.
            recoveredPC := 9608.
        ].
        recoveredStep = 9608 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9610.
        ].
        recoveredStep = 9610 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9611.
        ].
        recoveredStep = 9611 ifTrue: [
            recoveredStack2 := 'CtddLst'.
            recoveredPC := 9614.
        ].
        recoveredStep = 9614 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 9616.
        ].
        recoveredStep = 9616 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9618.
        ].
        recoveredStep = 9618 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9619.
        ].
        recoveredStep = 9619 ifTrue: [
            recoveredStack2 := 'Dalist'.
            recoveredPC := 9622.
        ].
        recoveredStep = 9622 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9624.
        ].
        recoveredStep = 9624 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9626.
        ].
        recoveredStep = 9626 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9627.
        ].
        recoveredStep = 9627 ifTrue: [
            recoveredStack2 := 'YOURSEG1'.
            recoveredPC := 9630.
        ].
        recoveredStep = 9630 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 9632.
        ].
        recoveredStep = 9632 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9634.
        ].
        recoveredStep = 9634 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9635.
        ].
        recoveredStep = 9635 ifTrue: [
            recoveredStack2 := 'BatGet'.
            recoveredPC := 9638.
        ].
        recoveredStep = 9638 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 9640.
        ].
        recoveredStep = 9640 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9642.
        ].
        recoveredStep = 9642 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9643.
        ].
        recoveredStep = 9643 ifTrue: [
            recoveredStack2 := 'Laddkey'.
            recoveredPC := 9646.
        ].
        recoveredStep = 9646 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 9648.
        ].
        recoveredStep = 9648 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9650.
        ].
        recoveredStep = 9650 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9651.
        ].
        recoveredStep = 9651 ifTrue: [
            recoveredStack2 := 'Savcuri'.
            recoveredPC := 9654.
        ].
        recoveredStep = 9654 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 9656.
        ].
        recoveredStep = 9656 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9658.
        ].
        recoveredStep = 9658 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9659.
        ].
        recoveredStep = 9659 ifTrue: [
            recoveredStack2 := 'CtlkRsv'.
            recoveredPC := 9662.
        ].
        recoveredStep = 9662 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 9664.
        ].
        recoveredStep = 9664 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9666.
        ].
        recoveredStep = 9666 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9667.
        ].
        recoveredStep = 9667 ifTrue: [
            recoveredStack2 := 'Cretran'.
            recoveredPC := 9670.
        ].
        recoveredStep = 9670 ifTrue: [
            recoveredStack3 := 28.
            recoveredPC := 9672.
        ].
        recoveredStep = 9672 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9674.
        ].
        recoveredStep = 9674 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9675.
        ].
        recoveredStep = 9675 ifTrue: [
            recoveredStack2 := 'IalcErr'.
            recoveredPC := 9678.
        ].
        recoveredStep = 9678 ifTrue: [
            recoveredStack3 := 83.
            recoveredPC := 9682.
        ].
        recoveredStep = 9682 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9684.
        ].
        recoveredStep = 9684 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9685.
        ].
        recoveredStep = 9685 ifTrue: [
            recoveredStack2 := 'IslnErr'.
            recoveredPC := 9688.
        ].
        recoveredStep = 9688 ifTrue: [
            recoveredStack3 := 115.
            recoveredPC := 9692.
        ].
        recoveredStep = 9692 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9694.
        ].
        recoveredStep = 9694 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9695.
        ].
        recoveredStep = 9695 ifTrue: [
            recoveredStack2 := 'BsupErr'.
            recoveredPC := 9698.
        ].
        recoveredStep = 9698 ifTrue: [
            recoveredStack3 := 411.
            recoveredPC := 9702.
        ].
        recoveredStep = 9702 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9704.
        ].
        recoveredStep = 9704 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9705.
        ].
        recoveredStep = 9705 ifTrue: [
            recoveredStack2 := 'Maxlev'.
            recoveredPC := 9708.
        ].
        recoveredStep = 9708 ifTrue: [
            recoveredStack3 := 11.
            recoveredPC := 9710.
        ].
        recoveredStep = 9710 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9712.
        ].
        recoveredStep = 9712 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9713.
        ].
        recoveredStep = 9713 ifTrue: [
            recoveredStack2 := 'BatDel'.
            recoveredPC := 9716.
        ].
        recoveredStep = 9716 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 9718.
        ].
        recoveredStep = 9718 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9720.
        ].
        recoveredStep = 9720 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9721.
        ].
        recoveredStep = 9721 ifTrue: [
            recoveredStack2 := 'RchkErr'.
            recoveredPC := 9724.
        ].
        recoveredStep = 9724 ifTrue: [
            recoveredStack3 := 66.
            recoveredPC := 9728.
        ].
        recoveredStep = 9728 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9730.
        ].
        recoveredStep = 9730 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9731.
        ].
        recoveredStep = 9731 ifTrue: [
            recoveredStack2 := 'Indexbufferrequests'.
            recoveredPC := 9734.
        ].
        recoveredStep = 9734 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 9736.
        ].
        recoveredStep = 9736 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9738.
        ].
        recoveredStep = 9738 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9739.
        ].
        recoveredStep = 9739 ifTrue: [
            recoveredStack2 := 'Namilen'.
            recoveredPC := 9742.
        ].
        recoveredStep = 9742 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 9744.
        ].
        recoveredStep = 9744 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9746.
        ].
        recoveredStep = 9746 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9747.
        ].
        recoveredStep = 9747 ifTrue: [
            recoveredStack2 := 'ClnSkip'.
            recoveredPC := 9750.
        ].
        recoveredStep = 9750 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 9752.
        ].
        recoveredStep = 9752 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9754.
        ].
        recoveredStep = 9754 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9755.
        ].
        recoveredStep = 9755 ifTrue: [
            recoveredStack2 := 'Lprmidx'.
            recoveredPC := 9758.
        ].
        recoveredStep = 9758 ifTrue: [
            recoveredStack3 := 35.
            recoveredPC := 9760.
        ].
        recoveredStep = 9760 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9762.
        ].
        recoveredStep = 9762 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9763.
        ].
        recoveredStep = 9763 ifTrue: [
            recoveredStack2 := 'ShHdrword'.
            recoveredPC := 9766.
        ].
        recoveredStep = 9766 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 9768.
        ].
        recoveredStep = 9768 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9770.
        ].
        recoveredStep = 9770 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9771.
        ].
        recoveredStep = 9771 ifTrue: [
            recoveredStack2 := 'LalcErr'.
            recoveredPC := 9774.
        ].
        recoveredStep = 9774 ifTrue: [
            recoveredStack3 := 68.
            recoveredPC := 9778.
        ].
        recoveredStep = 9778 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9780.
        ].
        recoveredStep = 9780 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9781.
        ].
        recoveredStep = 9781 ifTrue: [
            recoveredStack2 := 'VariLen'.
            recoveredPC := 9784.
        ].
        recoveredStep = 9784 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 9786.
        ].
        recoveredStep = 9786 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9788.
        ].
        recoveredStep = 9788 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9789.
        ].
        recoveredStep = 9789 ifTrue: [
            recoveredStack2 := 'LerrErr'.
            recoveredPC := 9792.
        ].
        recoveredStep = 9792 ifTrue: [
            recoveredStack3 := 62.
            recoveredPC := 9794.
        ].
        recoveredStep = 9794 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9796.
        ].
        recoveredStep = 9796 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9797.
        ].
        recoveredStep = 9797 ifTrue: [
            recoveredStack2 := 'DefNames'.
            recoveredPC := 9800.
        ].
        recoveredStep = 9800 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 9802.
        ].
        recoveredStep = 9802 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9804.
        ].
        recoveredStep = 9804 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9805.
        ].
        recoveredStep = 9805 ifTrue: [
            recoveredStack2 := 'Ctsegmod'.
            recoveredPC := 9808.
        ].
        recoveredStep = 9808 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 9810.
        ].
        recoveredStep = 9810 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9812.
        ].
        recoveredStep = 9812 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9813.
        ].
        recoveredStep = 9813 ifTrue: [
            recoveredStack2 := 'LhVer'.
            recoveredPC := 9816.
        ].
        recoveredStep = 9816 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9818.
        ].
        recoveredStep = 9818 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9820.
        ].
        recoveredStep = 9820 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9821.
        ].
        recoveredStep = 9821 ifTrue: [
            recoveredStack2 := 'CtmaxDatKey'.
            recoveredPC := 9824.
        ].
        recoveredStep = 9824 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 9826.
        ].
        recoveredStep = 9826 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9828.
        ].
        recoveredStep = 9828 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9829.
        ].
        recoveredStep = 9829 ifTrue: [
            recoveredStack2 := 'DODA_TSFIRSTVERSION'.
            recoveredPC := 9832.
        ].
        recoveredStep = 9832 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 9834.
        ].
        recoveredStep = 9834 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9836.
        ].
        recoveredStep = 9836 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9837.
        ].
        recoveredStep = 9837 ifTrue: [
            recoveredStack2 := 'CfgsignalMirrorEvent'.
            recoveredPC := 9840.
        ].
        recoveredStep = 9840 ifTrue: [
            recoveredStack3 := 80.
            recoveredPC := 9844.
        ].
        recoveredStep = 9844 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9846.
        ].
        recoveredStep = 9846 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9847.
        ].
        recoveredStep = 9847 ifTrue: [
            recoveredStack2 := 'Ctstatusvdp'.
            recoveredPC := 9850.
        ].
        recoveredStep = 9850 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9852.
        ].
        recoveredStep = 9852 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9854.
        ].
        recoveredStep = 9854 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9855.
        ].
        recoveredStep = 9855 ifTrue: [
            recoveredStack2 := 'Mirnam'.
            recoveredPC := 9858.
        ].
        recoveredStep = 9858 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 9860.
        ].
        recoveredStep = 9860 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9862.
        ].
        recoveredStep = 9862 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9863.
        ].
        recoveredStep = 9863 ifTrue: [
            recoveredStack2 := 'Setbit'.
            recoveredPC := 9866.
        ].
        recoveredStep = 9866 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 9868.
        ].
        recoveredStep = 9868 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9870.
        ].
        recoveredStep = 9870 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9871.
        ].
        recoveredStep = 9871 ifTrue: [
            recoveredStack2 := 'VlenErr'.
            recoveredPC := 9874.
        ].
        recoveredStep = 9874 ifTrue: [
            recoveredStack3 := 148.
            recoveredPC := 9878.
        ].
        recoveredStep = 9878 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9880.
        ].
        recoveredStep = 9880 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9881.
        ].
        recoveredStep = 9881 ifTrue: [
            recoveredStack2 := 'Ctdiagnosecomm1'.
            recoveredPC := 9884.
        ].
        recoveredStep = 9884 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 9888.
        ].
        recoveredStep = 9888 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9890.
        ].
        recoveredStep = 9890 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9891.
        ].
        recoveredStep = 9891 ifTrue: [
            recoveredStack2 := 'MskpErr'.
            recoveredPC := 9894.
        ].
        recoveredStep = 9894 ifTrue: [
            recoveredStack3 := 550.
            recoveredPC := 9898.
        ].
        recoveredStep = 9898 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9900.
        ].
        recoveredStep = 9900 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9901.
        ].
        recoveredStep = 9901 ifTrue: [
            recoveredStack2 := 'TWOFASE'.
            recoveredPC := 9904.
        ].
        recoveredStep = 9904 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 9908.
        ].
        recoveredStep = 9908 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9910.
        ].
        recoveredStep = 9910 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9911.
        ].
        recoveredStep = 9911 ifTrue: [
            recoveredStack2 := 'CoBase'.
            recoveredPC := 9914.
        ].
        recoveredStep = 9914 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9916.
        ].
        recoveredStep = 9916 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9918.
        ].
        recoveredStep = 9918 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9919.
        ].
        recoveredStep = 9919 ifTrue: [
            recoveredStack2 := 'Ctured'.
            recoveredPC := 9922.
        ].
        recoveredStep = 9922 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 9924.
        ].
        recoveredStep = 9924 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9926.
        ].
        recoveredStep = 9926 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9927.
        ].
        recoveredStep = 9927 ifTrue: [
            recoveredStack2 := 'CfgfileSpecs'.
            recoveredPC := 9930.
        ].
        recoveredStep = 9930 ifTrue: [
            recoveredStack3 := 149.
            recoveredPC := 9934.
        ].
        recoveredStep = 9934 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9936.
        ].
        recoveredStep = 9936 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9937.
        ].
        recoveredStep = 9937 ifTrue: [
            recoveredStack2 := 'CfgidxMemory'.
            recoveredPC := 9940.
        ].
        recoveredStep = 9940 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 9942.
        ].
        recoveredStep = 9942 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9944.
        ].
        recoveredStep = 9944 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9945.
        ].
        recoveredStep = 9945 ifTrue: [
            recoveredStack2 := 'VrlnErr'.
            recoveredPC := 9948.
        ].
        recoveredStep = 9948 ifTrue: [
            recoveredStack3 := 149.
            recoveredPC := 9952.
        ].
        recoveredStep = 9952 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9954.
        ].
        recoveredStep = 9954 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9955.
        ].
        recoveredStep = 9955 ifTrue: [
            recoveredStack2 := 'CfglistMemory'.
            recoveredPC := 9958.
        ].
        recoveredStep = 9958 ifTrue: [
            recoveredStack3 := 22.
            recoveredPC := 9960.
        ].
        recoveredStep = 9960 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9962.
        ].
        recoveredStep = 9962 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9963.
        ].
        recoveredStep = 9963 ifTrue: [
            recoveredStack2 := 'CfgtranTimeout'.
            recoveredPC := 9966.
        ].
        recoveredStep = 9966 ifTrue: [
            recoveredStack3 := 30.
            recoveredPC := 9968.
        ].
        recoveredStep = 9968 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9970.
        ].
        recoveredStep = 9970 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9971.
        ].
        recoveredStep = 9971 ifTrue: [
            recoveredStack2 := 'Logsiz'.
            recoveredPC := 9974.
        ].
        recoveredStep = 9974 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 9976.
        ].
        recoveredStep = 9976 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9978.
        ].
        recoveredStep = 9978 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9979.
        ].
        recoveredStep = 9979 ifTrue: [
            recoveredStack2 := 'Enable'.
            recoveredPC := 9982.
        ].
        recoveredStep = 9982 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 9984.
        ].
        recoveredStep = 9984 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9986.
        ].
        recoveredStep = 9986 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9987.
        ].
        recoveredStep = 9987 ifTrue: [
            recoveredStack2 := 'Spc'.
            recoveredPC := 9990.
        ].
        recoveredStep = 9990 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9992.
        ].
        recoveredStep = 9992 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 9994.
        ].
        recoveredStep = 9994 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9995.
        ].
        recoveredStep = 9995 ifTrue: [
            recoveredStack2 := 'Fnsrvdir'.
            recoveredPC := 9998.
        ].
        recoveredStep = 9998 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 10000.
        ].
        recoveredStep = 10000 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10002.
        ].
        recoveredStep = 10002 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10003.
        ].
        recoveredStep = 10003 ifTrue: [
            recoveredStack2 := 'Revmap'.
            recoveredPC := 10006.
        ].
        recoveredStep = 10006 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 10008.
        ].
        recoveredStep = 10008 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10010.
        ].
        recoveredStep = 10010 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10011.
        ].
        recoveredStep = 10011 ifTrue: [
            recoveredStack2 := 'BatPkey'.
            recoveredPC := 10014.
        ].
        recoveredStep = 10014 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 10016.
        ].
        recoveredStep = 10016 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10018.
        ].
        recoveredStep = 10018 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10019.
        ].
        recoveredStep = 10019 ifTrue: [
            recoveredStack2 := 'CmisErr'.
            recoveredPC := 10022.
        ].
        recoveredStep = 10022 ifTrue: [
            recoveredStack3 := 596.
            recoveredPC := 10026.
        ].
        recoveredStep = 10026 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10028.
        ].
        recoveredStep = 10028 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10029.
        ].
        recoveredStep = 10029 ifTrue: [
            recoveredStack2 := 'SgrpErr'.
            recoveredPC := 10032.
        ].
        recoveredStep = 10032 ifTrue: [
            recoveredStack3 := 455.
            recoveredPC := 10036.
        ].
        recoveredStep = 10036 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10038.
        ].
        recoveredStep = 10038 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10039.
        ].
        recoveredStep = 10039 ifTrue: [
            recoveredStack2 := 'INTSEG'.
            recoveredPC := 10042.
        ].
        recoveredStep = 10042 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 10044.
        ].
        recoveredStep = 10044 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10046.
        ].
        recoveredStep = 10046 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10047.
        ].
        recoveredStep = 10047 ifTrue: [
            recoveredStack2 := 'WRITETHRU	'.
            recoveredPC := 10050.
        ].
        recoveredStep = 10050 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 10054.
        ].
        recoveredStep = 10054 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10056.
        ].
        recoveredStep = 10056 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10057.
        ].
        recoveredStep = 10057 ifTrue: [
            recoveredStack2 := 'DzroErr'.
            recoveredPC := 10060.
        ].
        recoveredStep = 10060 ifTrue: [
            recoveredStack3 := 438.
            recoveredPC := 10064.
        ].
        recoveredStep = 10064 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10066.
        ].
        recoveredStep = 10066 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10067.
        ].
        recoveredStep = 10067 ifTrue: [
            recoveredStack2 := 'Cfgvarldata'.
            recoveredPC := 10070.
        ].
        recoveredStep = 10070 ifTrue: [
            recoveredStack3 := 134.
            recoveredPC := 10074.
        ].
        recoveredStep = 10074 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10076.
        ].
        recoveredStep = 10076 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10077.
        ].
        recoveredStep = 10077 ifTrue: [
            recoveredStack2 := 'CfgtmpnamePath'.
            recoveredPC := 10080.
        ].
        recoveredStep = 10080 ifTrue: [
            recoveredStack3 := 55.
            recoveredPC := 10082.
        ].
        recoveredStep = 10082 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10084.
        ].
        recoveredStep = 10084 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10085.
        ].
        recoveredStep = 10085 ifTrue: [
            recoveredStack2 := 'Indxend'.
            recoveredPC := 10088.
        ].
        recoveredStep = 10088 ifTrue: [
            recoveredStack3 := 61.
            recoveredPC := 10090.
        ].
        recoveredStep = 10090 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10092.
        ].
        recoveredStep = 10092 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10093.
        ].
        recoveredStep = 10093 ifTrue: [
            recoveredStack2 := 'DcratErr'.
            recoveredPC := 10096.
        ].
        recoveredStep = 10096 ifTrue: [
            recoveredStack3 := 17.
            recoveredPC := 10098.
        ].
        recoveredStep = 10098 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10100.
        ].
        recoveredStep = 10100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10101.
        ].
        recoveredStep = 10101 ifTrue: [
            recoveredStack2 := 'Revbin'.
            recoveredPC := 10104.
        ].
        recoveredStep = 10104 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 10106.
        ].
        recoveredStep = 10106 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10108.
        ].
        recoveredStep = 10108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10109.
        ].
        recoveredStep = 10109 ifTrue: [
            recoveredStack2 := 'Disableres'.
            recoveredPC := 10112.
        ].
        recoveredStep = 10112 ifTrue: [
            recoveredStack3 := 2048.
            recoveredPC := 10116.
        ].
        recoveredStep = 10116 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10118.
        ].
        recoveredStep = 10118 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10119.
        ].
        recoveredStep = 10119 ifTrue: [
            recoveredStack2 := 'NsupErr'.
            recoveredPC := 10122.
        ].
        recoveredStep = 10122 ifTrue: [
            recoveredStack3 := 454.
            recoveredPC := 10126.
        ].
        recoveredStep = 10126 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10128.
        ].
        recoveredStep = 10128 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10129.
        ].
        recoveredStep = 10129 ifTrue: [
            recoveredStack2 := 'Resflg'.
            recoveredPC := 10132.
        ].
        recoveredStep = 10132 ifTrue: [
            recoveredStack3 := '-'.
            recoveredPC := 10136.
        ].
        recoveredStep = 10136 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10138.
        ].
        recoveredStep = 10138 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10139.
        ].
        recoveredStep = 10139 ifTrue: [
            recoveredStack2 := 'SrinErr'.
            recoveredPC := 10142.
        ].
        recoveredStep = 10142 ifTrue: [
            recoveredStack3 := 508.
            recoveredPC := 10146.
        ].
        recoveredStep = 10146 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10148.
        ].
        recoveredStep = 10148 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10149.
        ].
        recoveredStep = 10149 ifTrue: [
            recoveredStack2 := 'Cfgctsuper'.
            recoveredPC := 10152.
        ].
        recoveredStep = 10152 ifTrue: [
            recoveredStack3 := 132.
            recoveredPC := 10156.
        ].
        recoveredStep = 10156 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10158.
        ].
        recoveredStep = 10158 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10159.
        ].
        recoveredStep = 10159 ifTrue: [
            recoveredStack2 := 'CT_4STRING'.
            recoveredPC := 10162.
        ].
        recoveredStep = 10162 ifTrue: [
            recoveredStack3 := 170.
            recoveredPC := 10166.
        ].
        recoveredStep = 10166 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10168.
        ].
        recoveredStep = 10168 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10169.
        ].
        recoveredStep = 10169 ifTrue: [
            recoveredStack2 := 'Ctreeconv'.
            recoveredPC := 10172.
        ].
        recoveredStep = 10172 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 10174.
        ].
        recoveredStep = 10174 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10176.
        ].
        recoveredStep = 10176 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10177.
        ].
        recoveredStep = 10177 ifTrue: [
            recoveredStack2 := 'BatResv1'.
            recoveredPC := 10180.
        ].
        recoveredStep = 10180 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 10182.
        ].
        recoveredStep = 10182 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10184.
        ].
        recoveredStep = 10184 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10185.
        ].
        recoveredStep = 10185 ifTrue: [
            recoveredStack2 := 'Cfgloclib'.
            recoveredPC := 10188.
        ].
        recoveredStep = 10188 ifTrue: [
            recoveredStack3 := 147.
            recoveredPC := 10192.
        ].
        recoveredStep = 10192 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10194.
        ].
        recoveredStep = 10194 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10195.
        ].
        recoveredStep = 10195 ifTrue: [
            recoveredStack2 := 'BtstErr'.
            recoveredPC := 10198.
        ].
        recoveredStep = 10198 ifTrue: [
            recoveredStack3 := 427.
            recoveredPC := 10202.
        ].
        recoveredStep = 10202 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10204.
        ].
        recoveredStep = 10204 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10205.
        ].
        recoveredStep = 10205 ifTrue: [
            recoveredStack2 := 'UalcErr'.
            recoveredPC := 10208.
        ].
        recoveredStep = 10208 ifTrue: [
            recoveredStack3 := 82.
            recoveredPC := 10212.
        ].
        recoveredStep = 10212 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10214.
        ].
        recoveredStep = 10214 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10215.
        ].
        recoveredStep = 10215 ifTrue: [
            recoveredStack2 := 'Yourseg2'.
            recoveredPC := 10218.
        ].
        recoveredStep = 10218 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 10220.
        ].
        recoveredStep = 10220 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10222.
        ].
        recoveredStep = 10222 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10223.
        ].
        recoveredStep = 10223 ifTrue: [
            recoveredStack2 := 'Ctseglen'.
            recoveredPC := 10226.
        ].
        recoveredStep = 10226 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 10228.
        ].
        recoveredStep = 10228 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10230.
        ].
        recoveredStep = 10230 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10231.
        ].
        recoveredStep = 10231 ifTrue: [
            recoveredStack2 := 'BatFltr'.
            recoveredPC := 10234.
        ].
        recoveredStep = 10234 ifTrue: [
            recoveredStack3 := 16384.
            recoveredPC := 10238.
        ].
        recoveredStep = 10238 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10240.
        ].
        recoveredStep = 10240 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10241.
        ].
        recoveredStep = 10241 ifTrue: [
            recoveredStack2 := 'Indxdel'.
            recoveredPC := 10244.
        ].
        recoveredStep = 10244 ifTrue: [
            recoveredStack3 := 43.
            recoveredPC := 10246.
        ].
        recoveredStep = 10246 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10248.
        ].
        recoveredStep = 10248 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10249.
        ].
        recoveredStep = 10249 ifTrue: [
            recoveredStack2 := 'ShDelky'.
            recoveredPC := 10252.
        ].
        recoveredStep = 10252 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 10254.
        ].
        recoveredStep = 10254 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10256.
        ].
        recoveredStep = 10256 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10257.
        ].
        recoveredStep = 10257 ifTrue: [
            recoveredStack2 := 'CoMember'.
            recoveredPC := 10260.
        ].
        recoveredStep = 10260 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 10262.
        ].
        recoveredStep = 10262 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10264.
        ].
        recoveredStep = 10264 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10265.
        ].
        recoveredStep = 10265 ifTrue: [
            recoveredStack2 := 'CfgsessionTimeout'.
            recoveredPC := 10268.
        ].
        recoveredStep = 10268 ifTrue: [
            recoveredStack3 := 34.
            recoveredPC := 10270.
        ].
        recoveredStep = 10270 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10272.
        ].
        recoveredStep = 10272 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10273.
        ].
        recoveredStep = 10273 ifTrue: [
            recoveredStack2 := 'OpsRsvd2b3'.
            recoveredPC := 10276.
        ].
        recoveredStep = 10276 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 10280.
        ].
        recoveredStep = 10280 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10282.
        ].
        recoveredStep = 10282 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10283.
        ].
        recoveredStep = 10283 ifTrue: [
            recoveredStack2 := 'Notforce'.
            recoveredPC := 10285.
        ].
        recoveredStep = 10285 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 10287.
        ].
        recoveredStep = 10287 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10289.
        ].
        recoveredStep = 10289 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10290.
        ].
        recoveredStep = 10290 ifTrue: [
            recoveredStack2 := 'Decseg'.
            recoveredPC := 10294.
        ].
        recoveredStep = 10294 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 10296.
        ].
        recoveredStep = 10296 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10298.
        ].
        recoveredStep = 10298 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10299.
        ].
        recoveredStep = 10299 ifTrue: [
            recoveredStack2 := 'DefMaskPscl24'.
            recoveredPC := 10302.
        ].
        recoveredStep = 10302 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 10304.
        ].
        recoveredStep = 10304 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10306.
        ].
        recoveredStep = 10306 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10307.
        ].
        recoveredStep = 10307 ifTrue: [
            recoveredStack2 := 'RrlnErr'.
            recoveredPC := 10310.
        ].
        recoveredStep = 10310 ifTrue: [
            recoveredStack3 := 120.
            recoveredPC := 10314.
        ].
        recoveredStep = 10314 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10316.
        ].
        recoveredStep = 10316 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10317.
        ].
        recoveredStep = 10317 ifTrue: [
            recoveredStack2 := 'CfgnetLocks'.
            recoveredPC := 10320.
        ].
        recoveredStep = 10320 ifTrue: [
            recoveredStack3 := 201.
            recoveredPC := 10324.
        ].
        recoveredStep = 10324 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10326.
        ].
        recoveredStep = 10326 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10327.
        ].
        recoveredStep = 10327 ifTrue: [
            recoveredStack2 := 'DlenErr'.
            recoveredPC := 10330.
        ].
        recoveredStep = 10330 ifTrue: [
            recoveredStack3 := 434.
            recoveredPC := 10334.
        ].
        recoveredStep = 10334 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10336.
        ].
        recoveredStep = 10336 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10337.
        ].
        recoveredStep = 10337 ifTrue: [
            recoveredStack2 := 'BAT_INS'.
            recoveredPC := 10340.
        ].
        recoveredStep = 10340 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 10342.
        ].
        recoveredStep = 10342 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10344.
        ].
        recoveredStep = 10344 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10345.
        ].
        recoveredStep = 10345 ifTrue: [
            recoveredStack2 := 'RlenErr'.
            recoveredPC := 10348.
        ].
        recoveredStep = 10348 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 10352.
        ].
        recoveredStep = 10352 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10354.
        ].
        recoveredStep = 10354 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10355.
        ].
        recoveredStep = 10355 ifTrue: [
            recoveredStack2 := 'BtmtErr'.
            recoveredPC := 10358.
        ].
        recoveredStep = 10358 ifTrue: [
            recoveredStack3 := 428.
            recoveredPC := 10362.
        ].
        recoveredStep = 10362 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10364.
        ].
        recoveredStep = 10364 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10365.
        ].
        recoveredStep = 10365 ifTrue: [
            recoveredStack2 := 'AddLock'.
            recoveredPC := 10368.
        ].
        recoveredStep = 10368 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 10370.
        ].
        recoveredStep = 10370 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10372.
        ].
        recoveredStep = 10372 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10373.
        ].
        recoveredStep = 10373 ifTrue: [
            recoveredStack2 := 'BatLokWrt'.
            recoveredPC := 10376.
        ].
        recoveredStep = 10376 ifTrue: [
            recoveredStack3 := 4096.
            recoveredPC := 10380.
        ].
        recoveredStep = 10380 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10382.
        ].
        recoveredStep = 10382 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10383.
        ].
        recoveredStep = 10383 ifTrue: [
            recoveredStack2 := '_programCounterType_'.
            recoveredPC := 10386.
        ].
        recoveredStep = 10386 ifTrue: [
            recoveredStack3 := 'Uint'.
            recoveredPC := 10390.
        ].
        recoveredStep = 10390 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10392.
        ].
        recoveredStep = 10392 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10393.
        ].
        recoveredStep = 10393 ifTrue: [
            recoveredStack2 := 'Mbrmod'.
            recoveredPC := 10396.
        ].
        recoveredStep = 10396 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 10398.
        ].
        recoveredStep = 10398 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10400.
        ].
        recoveredStep = 10400 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10401.
        ].
        recoveredStep = 10401 ifTrue: [
            recoveredStack2 := 'DODA_CLASSNAME'.
            recoveredPC := 10404.
        ].
        recoveredStep = 10404 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 10406.
        ].
        recoveredStep = 10406 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10408.
        ].
        recoveredStep = 10408 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10409.
        ].
        recoveredStep = 10409 ifTrue: [
            recoveredStack2 := 'Histadj'.
            recoveredPC := 10412.
        ].
        recoveredStep = 10412 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 10416.
        ].
        recoveredStep = 10416 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10418.
        ].
        recoveredStep = 10418 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10419.
        ].
        recoveredStep = 10419 ifTrue: [
            recoveredStack2 := 'TabnErr'.
            recoveredPC := 10422.
        ].
        recoveredStep = 10422 ifTrue: [
            recoveredStack3 := 78.
            recoveredPC := 10426.
        ].
        recoveredStep = 10426 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10428.
        ].
        recoveredStep = 10428 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10429.
        ].
        recoveredStep = 10429 ifTrue: [
            recoveredStack2 := 'MsavErr'.
            recoveredPC := 10432.
        ].
        recoveredStep = 10432 ifTrue: [
            recoveredStack3 := 547.
            recoveredPC := 10436.
        ].
        recoveredStep = 10436 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10438.
        ].
        recoveredStep = 10438 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10439.
        ].
        recoveredStep = 10439 ifTrue: [
            recoveredStack2 := 'LsrvErr'.
            recoveredPC := 10442.
        ].
        recoveredStep = 10442 ifTrue: [
            recoveredStack3 := 452.
            recoveredPC := 10446.
        ].
        recoveredStep = 10446 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10448.
        ].
        recoveredStep = 10448 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10449.
        ].
        recoveredStep = 10449 ifTrue: [
            recoveredStack2 := 'Cthistuser'.
            recoveredPC := 10452.
        ].
        recoveredStep = 10452 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 10454.
        ].
        recoveredStep = 10454 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10456.
        ].
        recoveredStep = 10456 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10457.
        ].
        recoveredStep = 10457 ifTrue: [
            recoveredStack2 := 'Startsrvr'.
            recoveredPC := 10460.
        ].
        recoveredStep = 10460 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 10462.
        ].
        recoveredStep = 10462 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10464.
        ].
        recoveredStep = 10464 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10465.
        ].
        recoveredStep = 10465 ifTrue: [
            recoveredStack2 := 'FsavErr'.
            recoveredPC := 10468.
        ].
        recoveredStep = 10468 ifTrue: [
            recoveredStack3 := 49.
            recoveredPC := 10470.
        ].
        recoveredStep = 10470 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10472.
        ].
        recoveredStep = 10472 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10473.
        ].
        recoveredStep = 10473 ifTrue: [
            recoveredStack2 := 'ColBoth'.
            recoveredPC := 10476.
        ].
        recoveredStep = 10476 ifTrue: [
            recoveredStack3 := '''\14'''.
            recoveredPC := 10480.
        ].
        recoveredStep = 10480 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10482.
        ].
        recoveredStep = 10482 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10483.
        ].
        recoveredStep = 10483 ifTrue: [
            recoveredStack2 := 'Physiz'.
            recoveredPC := 10486.
        ].
        recoveredStep = 10486 ifTrue: [
            recoveredStack3 := 11.
            recoveredPC := 10488.
        ].
        recoveredStep = 10488 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10490.
        ].
        recoveredStep = 10490 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10491.
        ].
        recoveredStep = 10491 ifTrue: [
            recoveredStack2 := 'FunkErr'.
            recoveredPC := 10494.
        ].
        recoveredStep = 10494 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 10496.
        ].
        recoveredStep = 10496 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10498.
        ].
        recoveredStep = 10498 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10499.
        ].
        recoveredStep = 10499 ifTrue: [
            recoveredStack2 := 'PsavErr'.
            recoveredPC := 10502.
        ].
        recoveredStep = 10502 ifTrue: [
            recoveredStack3 := 558.
            recoveredPC := 10506.
        ].
        recoveredStep = 10506 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10508.
        ].
        recoveredStep = 10508 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10509.
        ].
        recoveredStep = 10509 ifTrue: [
            recoveredStack2 := 'UserprfClrchk'.
            recoveredPC := 10512.
        ].
        recoveredStep = 10512 ifTrue: [
            recoveredStack3 := 512.
            recoveredPC := 10516.
        ].
        recoveredStep = 10516 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10518.
        ].
        recoveredStep = 10518 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10519.
        ].
        recoveredStep = 10519 ifTrue: [
            recoveredStack2 := 'Ctpascal24'.
            recoveredPC := 10522.
        ].
        recoveredStep = 10522 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 10524.
        ].
        recoveredStep = 10524 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10526.
        ].
        recoveredStep = 10526 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10527.
        ].
        recoveredStep = 10527 ifTrue: [
            recoveredStack2 := 'MclsErr'.
            recoveredPC := 10530.
        ].
        recoveredStep = 10530 ifTrue: [
            recoveredStack3 := 544.
            recoveredPC := 10534.
        ].
        recoveredStep = 10534 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10536.
        ].
        recoveredStep = 10536 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10537.
        ].
        recoveredStep = 10537 ifTrue: [
            recoveredStack2 := 'BAT_CAN'.
            recoveredPC := 10540.
        ].
        recoveredStep = 10540 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 10542.
        ].
        recoveredStep = 10542 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10544.
        ].
        recoveredStep = 10544 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10545.
        ].
        recoveredStep = 10545 ifTrue: [
            recoveredStack2 := 'Cfgmonal1Qlength'.
            recoveredPC := 10548.
        ].
        recoveredStep = 10548 ifTrue: [
            recoveredStack3 := 198.
            recoveredPC := 10552.
        ].
        recoveredStep = 10552 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10554.
        ].
        recoveredStep = 10554 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10555.
        ].
        recoveredStep = 10555 ifTrue: [
            recoveredStack2 := 'ClnGetrcv'.
            recoveredPC := 10558.
        ].
        recoveredStep = 10558 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 10560.
        ].
        recoveredStep = 10560 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10562.
        ].
        recoveredStep = 10562 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10563.
        ].
        recoveredStep = 10563 ifTrue: [
            recoveredStack2 := 'HzroErr'.
            recoveredPC := 10566.
        ].
        recoveredStep = 10566 ifTrue: [
            recoveredStack3 := 619.
            recoveredPC := 10570.
        ].
        recoveredStep = 10570 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10572.
        ].
        recoveredStep = 10572 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10573.
        ].
        recoveredStep = 10573 ifTrue: [
            recoveredStack2 := 'Ctblkwat'.
            recoveredPC := 10576.
        ].
        recoveredStep = 10576 ifTrue: [
            recoveredStack3 := 'Ctsemwat'.
            recoveredPC := 10580.
        ].
        recoveredStep = 10580 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10582.
        ].
        recoveredStep = 10582 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10583.
        ].
        recoveredStep = 10583 ifTrue: [
            recoveredStack2 := 'CfgsqlDebug'.
            recoveredPC := 10586.
        ].
        recoveredStep = 10586 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 10588.
        ].
        recoveredStep = 10588 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10590.
        ].
        recoveredStep = 10590 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10591.
        ].
        recoveredStep = 10591 ifTrue: [
            recoveredStack2 := 'SCHEMA_NAMES'.
            recoveredPC := 10594.
        ].
        recoveredStep = 10594 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 10596.
        ].
        recoveredStep = 10596 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10598.
        ].
        recoveredStep = 10598 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10599.
        ].
        recoveredStep = 10599 ifTrue: [
            recoveredStack2 := 'FcrnamLen'.
            recoveredPC := 10602.
        ].
        recoveredStep = 10602 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 10604.
        ].
        recoveredStep = 10604 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10606.
        ].
        recoveredStep = 10606 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10607.
        ].
        recoveredStep = 10607 ifTrue: [
            recoveredStack2 := 'FlenErr'.
            recoveredPC := 10610.
        ].
        recoveredStep = 10610 ifTrue: [
            recoveredStack3 := 432.
            recoveredPC := 10614.
        ].
        recoveredStep = 10614 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10616.
        ].
        recoveredStep = 10616 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10617.
        ].
        recoveredStep = 10617 ifTrue: [
            recoveredStack2 := 'Alignm'.
            recoveredPC := 10620.
        ].
        recoveredStep = 10620 ifTrue: [
            recoveredStack3 := 21.
            recoveredPC := 10622.
        ].
        recoveredStep = 10622 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10624.
        ].
        recoveredStep = 10624 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10625.
        ].
        recoveredStep = 10625 ifTrue: [
            recoveredStack2 := 'RzroErr'.
            recoveredPC := 10628.
        ].
        recoveredStep = 10628 ifTrue: [
            recoveredStack3 := 403.
            recoveredPC := 10632.
        ].
        recoveredStep = 10632 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10634.
        ].
        recoveredStep = 10634 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10635.
        ].
        recoveredStep = 10635 ifTrue: [
            recoveredStack2 := 'FnMaskIsam'.
            recoveredPC := 10638.
        ].
        recoveredStep = 10638 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 10642.
        ].
        recoveredStep = 10642 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10644.
        ].
        recoveredStep = 10644 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10645.
        ].
        recoveredStep = 10645 ifTrue: [
            recoveredStack2 := 'FnopErr'.
            recoveredPC := 10648.
        ].
        recoveredStep = 10648 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 10650.
        ].
        recoveredStep = 10650 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10652.
        ].
        recoveredStep = 10652 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10653.
        ].
        recoveredStep = 10653 ifTrue: [
            recoveredStack2 := 'TrnDdata'.
            recoveredPC := 10656.
        ].
        recoveredStep = 10656 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 10658.
        ].
        recoveredStep = 10658 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10660.
        ].
        recoveredStep = 10660 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10661.
        ].
        recoveredStep = 10661 ifTrue: [
            recoveredStack2 := 'BatRpos'.
            recoveredPC := 10664.
        ].
        recoveredStep = 10664 ifTrue: [
            recoveredStack3 := 512.
            recoveredPC := 10668.
        ].
        recoveredStep = 10668 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10670.
        ].
        recoveredStep = 10670 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10671.
        ].
        recoveredStep = 10671 ifTrue: [
            recoveredStack2 := 'KlenErr'.
            recoveredPC := 10674.
        ].
        recoveredStep = 10674 ifTrue: [
            recoveredStack3 := 45.
            recoveredPC := 10676.
        ].
        recoveredStep = 10676 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10678.
        ].
        recoveredStep = 10678 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10679.
        ].
        recoveredStep = 10679 ifTrue: [
            recoveredStack2 := 'Cfgmonal2Qlength'.
            recoveredPC := 10682.
        ].
        recoveredStep = 10682 ifTrue: [
            recoveredStack3 := 199.
            recoveredPC := 10686.
        ].
        recoveredStep = 10686 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10688.
        ].
        recoveredStep = 10688 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10689.
        ].
        recoveredStep = 10689 ifTrue: [
            recoveredStack2 := 'CfgrequestDelta'.
            recoveredPC := 10692.
        ].
        recoveredStep = 10692 ifTrue: [
            recoveredStack3 := 51.
            recoveredPC := 10694.
        ].
        recoveredStep = 10694 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10696.
        ].
        recoveredStep = 10696 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10697.
        ].
        recoveredStep = 10697 ifTrue: [
            recoveredStack2 := 'Lhdrshst'.
            recoveredPC := 10700.
        ].
        recoveredStep = 10700 ifTrue: [
            recoveredStack3 := 17.
            recoveredPC := 10702.
        ].
        recoveredStep = 10702 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10704.
        ].
        recoveredStep = 10704 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10705.
        ].
        recoveredStep = 10705 ifTrue: [
            recoveredStack2 := 'DsrvErr'.
            recoveredPC := 10708.
        ].
        recoveredStep = 10708 ifTrue: [
            recoveredStack3 := 509.
            recoveredPC := 10712.
        ].
        recoveredStep = 10712 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10714.
        ].
        recoveredStep = 10714 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10715.
        ].
        recoveredStep = 10715 ifTrue: [
            recoveredStack2 := 'FcresData'.
            recoveredPC := 10718.
        ].
        recoveredStep = 10718 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 10720.
        ].
        recoveredStep = 10720 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10722.
        ].
        recoveredStep = 10722 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10723.
        ].
        recoveredStep = 10723 ifTrue: [
            recoveredStack2 := 'Ctfred'.
            recoveredPC := 10726.
        ].
        recoveredStep = 10726 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 10728.
        ].
        recoveredStep = 10728 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10730.
        ].
        recoveredStep = 10730 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10731.
        ].
        recoveredStep = 10731 ifTrue: [
            recoveredStack2 := 'VdlkErr'.
            recoveredPC := 10734.
        ].
        recoveredStep = 10734 ifTrue: [
            recoveredStack3 := 146.
            recoveredPC := 10738.
        ].
        recoveredStep = 10738 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10740.
        ].
        recoveredStep = 10740 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10741.
        ].
        recoveredStep = 10741 ifTrue: [
            recoveredStack2 := 'doda_version'.
            recoveredPC := 10744.
        ].
        recoveredStep = 10744 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 10746.
        ].
        recoveredStep = 10746 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10748.
        ].
        recoveredStep = 10748 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10749.
        ].
        recoveredStep = 10749 ifTrue: [
            recoveredStack2 := 'Restorectree'.
            recoveredPC := 10752.
        ].
        recoveredStep = 10752 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 10754.
        ].
        recoveredStep = 10754 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10756.
        ].
        recoveredStep = 10756 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10757.
        ].
        recoveredStep = 10757 ifTrue: [
            recoveredStack2 := 'Commonown'.
            recoveredPC := 10760.
        ].
        recoveredStep = 10760 ifTrue: [
            recoveredStack3 := 'CtCmnown'.
            recoveredPC := 10764.
        ].
        recoveredStep = 10764 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10766.
        ].
        recoveredStep = 10766 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10767.
        ].
        recoveredStep = 10767 ifTrue: [
            recoveredStack2 := 'HmapErr'.
            recoveredPC := 10770.
        ].
        recoveredStep = 10770 ifTrue: [
            recoveredStack3 := 614.
            recoveredPC := 10774.
        ].
        recoveredStep = 10774 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10776.
        ].
        recoveredStep = 10776 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10777.
        ].
        recoveredStep = 10777 ifTrue: [
            recoveredStack2 := 'CfgnetAllocs'.
            recoveredPC := 10780.
        ].
        recoveredStep = 10780 ifTrue: [
            recoveredStack3 := 194.
            recoveredPC := 10784.
        ].
        recoveredStep = 10784 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10786.
        ].
        recoveredStep = 10786 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10787.
        ].
        recoveredStep = 10787 ifTrue: [
            recoveredStack2 := 'FmodErr'.
            recoveredPC := 10790.
        ].
        recoveredStep = 10790 ifTrue: [
            recoveredStack3 := 48.
            recoveredPC := 10792.
        ].
        recoveredStep = 10792 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10794.
        ].
        recoveredStep = 10794 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10795.
        ].
        recoveredStep = 10795 ifTrue: [
            recoveredStack2 := 'Filnam'.
            recoveredPC := 10798.
        ].
        recoveredStep = 10798 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 10800.
        ].
        recoveredStep = 10800 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10802.
        ].
        recoveredStep = 10802 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10803.
        ].
        recoveredStep = 10803 ifTrue: [
            recoveredStack2 := 'ClenErr'.
            recoveredPC := 10806.
        ].
        recoveredStep = 10806 ifTrue: [
            recoveredStack3 := 595.
            recoveredPC := 10810.
        ].
        recoveredStep = 10810 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10812.
        ].
        recoveredStep = 10812 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10813.
        ].
        recoveredStep = 10813 ifTrue: [
            recoveredStack2 := 'ShRstrus'.
            recoveredPC := 10816.
        ].
        recoveredStep = 10816 ifTrue: [
            recoveredStack3 := 39.
            recoveredPC := 10818.
        ].
        recoveredStep = 10818 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10820.
        ].
        recoveredStep = 10820 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10821.
        ].
        recoveredStep = 10821 ifTrue: [
            recoveredStack2 := 'Superfile'.
            recoveredPC := 10824.
        ].
        recoveredStep = 10824 ifTrue: [
            recoveredStack3 := 512.
            recoveredPC := 10828.
        ].
        recoveredStep = 10828 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10830.
        ].
        recoveredStep = 10830 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10831.
        ].
        recoveredStep = 10831 ifTrue: [
            recoveredStack2 := 'CtSqlbcd'.
            recoveredPC := 10834.
        ].
        recoveredStep = 10834 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 10836.
        ].
        recoveredStep = 10836 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10838.
        ].
        recoveredStep = 10838 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10839.
        ].
        recoveredStep = 10839 ifTrue: [
            recoveredStack2 := 'BAT_LOK_WRT'.
            recoveredPC := 10842.
        ].
        recoveredStep = 10842 ifTrue: [
            recoveredStack3 := 4096.
            recoveredPC := 10846.
        ].
        recoveredStep = 10846 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10848.
        ].
        recoveredStep = 10848 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10849.
        ].
        recoveredStep = 10849 ifTrue: [
            recoveredStack2 := 'BCDSEG'.
            recoveredPC := 10852.
        ].
        recoveredStep = 10852 ifTrue: [
            recoveredStack3 := 11.
            recoveredPC := 10854.
        ].
        recoveredStep = 10854 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10856.
        ].
        recoveredStep = 10856 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10857.
        ].
        recoveredStep = 10857 ifTrue: [
            recoveredStack2 := 'Rcl1Err'.
            recoveredPC := 10860.
        ].
        recoveredStep = 10860 ifTrue: [
            recoveredStack3 := 570.
            recoveredPC := 10864.
        ].
        recoveredStep = 10864 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10866.
        ].
        recoveredStep = 10866 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10867.
        ].
        recoveredStep = 10867 ifTrue: [
            recoveredStack2 := 'CtDate'.
            recoveredPC := 10870.
        ].
        recoveredStep = 10870 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 10872.
        ].
        recoveredStep = 10872 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10874.
        ].
        recoveredStep = 10874 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10875.
        ].
        recoveredStep = 10875 ifTrue: [
            recoveredStack2 := 'doda_dummy'.
            recoveredPC := 10878.
        ].
        recoveredStep = 10878 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 10880.
        ].
        recoveredStep = 10880 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10882.
        ].
        recoveredStep = 10882 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10883.
        ].
        recoveredStep = 10883 ifTrue: [
            recoveredStack2 := 'Ctidxext'.
            recoveredPC := 10886.
        ].
        recoveredStep = 10886 ifTrue: [
            recoveredStack3 := '".idx"'.
            recoveredPC := 10890.
        ].
        recoveredStep = 10890 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10892.
        ].
        recoveredStep = 10892 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10893.
        ].
        recoveredStep = 10893 ifTrue: [
            recoveredStack2 := 'SchemaDoda'.
            recoveredPC := 10896.
        ].
        recoveredStep = 10896 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 10898.
        ].
        recoveredStep = 10898 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10900.
        ].
        recoveredStep = 10900 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10901.
        ].
        recoveredStep = 10901 ifTrue: [
            recoveredStack2 := 'Ctstacksize'.
            recoveredPC := 10904.
        ].
        recoveredStep = 10904 ifTrue: [
            recoveredStack3 := 16384.
            recoveredPC := 10908.
        ].
        recoveredStep = 10908 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10910.
        ].
        recoveredStep = 10910 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10911.
        ].
        recoveredStep = 10911 ifTrue: [
            recoveredStack2 := 'UdlkTrn'.
            recoveredPC := 10914.
        ].
        recoveredStep = 10914 ifTrue: [
            recoveredStack3 := '-3'.
            recoveredPC := 10918.
        ].
        recoveredStep = 10918 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10920.
        ].
        recoveredStep = 10920 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10921.
        ].
        recoveredStep = 10921 ifTrue: [
            recoveredStack2 := 'DatClose'.
            recoveredPC := 10924.
        ].
        recoveredStep = 10924 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 10926.
        ].
        recoveredStep = 10926 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10928.
        ].
        recoveredStep = 10928 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10929.
        ].
        recoveredStep = 10929 ifTrue: [
            recoveredStack2 := 'RestoreBlk'.
            recoveredPC := 10932.
        ].
        recoveredStep = 10932 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 10934.
        ].
        recoveredStep = 10934 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10936.
        ].
        recoveredStep = 10936 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10937.
        ].
        recoveredStep = 10937 ifTrue: [
            recoveredStack2 := 'BAT_RET_KEY'.
            recoveredPC := 10940.
        ].
        recoveredStep = 10940 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 10944.
        ].
        recoveredStep = 10944 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10946.
        ].
        recoveredStep = 10946 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10947.
        ].
        recoveredStep = 10947 ifTrue: [
            recoveredStack2 := 'CfgpathSeparator'.
            recoveredPC := 10950.
        ].
        recoveredStep = 10950 ifTrue: [
            recoveredStack3 := 150.
            recoveredPC := 10954.
        ].
        recoveredStep = 10954 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10956.
        ].
        recoveredStep = 10956 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10957.
        ].
        recoveredStep = 10957 ifTrue: [
            recoveredStack2 := 'BAT_RET_REC'.
            recoveredPC := 10960.
        ].
        recoveredStep = 10960 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 10962.
        ].
        recoveredStep = 10962 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10964.
        ].
        recoveredStep = 10964 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10965.
        ].
        recoveredStep = 10965 ifTrue: [
            recoveredStack2 := 'CtF2string'.
            recoveredPC := 10968.
        ].
        recoveredStep = 10968 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 10970.
        ].
        recoveredStep = 10970 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10972.
        ].
        recoveredStep = 10972 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10973.
        ].
        recoveredStep = 10973 ifTrue: [
            recoveredStack2 := 'PerformOn'.
            recoveredPC := 10976.
        ].
        recoveredStep = 10976 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 10978.
        ].
        recoveredStep = 10978 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10980.
        ].
        recoveredStep = 10980 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10981.
        ].
        recoveredStep = 10981 ifTrue: [
            recoveredStack2 := 'CsavErr'.
            recoveredPC := 10984.
        ].
        recoveredStep = 10984 ifTrue: [
            recoveredStack3 := 559.
            recoveredPC := 10988.
        ].
        recoveredStep = 10988 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 10990.
        ].
        recoveredStep = 10990 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10991.
        ].
        recoveredStep = 10991 ifTrue: [
            recoveredStack2 := 'ImodErr'.
            recoveredPC := 10994.
        ].
        recoveredStep = 10994 ifTrue: [
            recoveredStack3 := 116.
            recoveredPC := 10998.
        ].
        recoveredStep = 10998 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11000.
        ].
        recoveredStep = 11000 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11001.
        ].
        recoveredStep = 11001 ifTrue: [
            recoveredStack2 := 'VrclErr'.
            recoveredPC := 11004.
        ].
        recoveredStep = 11004 ifTrue: [
            recoveredStack3 := 154.
            recoveredPC := 11008.
        ].
        recoveredStep = 11008 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11010.
        ].
        recoveredStep = 11010 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11011.
        ].
        recoveredStep = 11011 ifTrue: [
            recoveredStack2 := 'IdskErr'.
            recoveredPC := 11014.
        ].
        recoveredStep = 11014 ifTrue: [
            recoveredStack3 := 192.
            recoveredPC := 11018.
        ].
        recoveredStep = 11018 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11020.
        ].
        recoveredStep = 11020 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11021.
        ].
        recoveredStep = 11021 ifTrue: [
            recoveredStack2 := 'VatClose'.
            recoveredPC := 11024.
        ].
        recoveredStep = 11024 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 11026.
        ].
        recoveredStep = 11026 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11028.
        ].
        recoveredStep = 11028 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11029.
        ].
        recoveredStep = 11029 ifTrue: [
            recoveredStack2 := 'AsavErr'.
            recoveredPC := 11032.
        ].
        recoveredStep = 11032 ifTrue: [
            recoveredStack3 := 532.
            recoveredPC := 11036.
        ].
        recoveredStep = 11036 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11038.
        ].
        recoveredStep = 11038 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11039.
        ].
        recoveredStep = 11039 ifTrue: [
            recoveredStack2 := 'Nodsiz'.
            recoveredPC := 11042.
        ].
        recoveredStep = 11042 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 11044.
        ].
        recoveredStep = 11044 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11046.
        ].
        recoveredStep = 11046 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11047.
        ].
        recoveredStep = 11047 ifTrue: [
            recoveredStack2 := 'Laddsi'.
            recoveredPC := 11050.
        ].
        recoveredStep = 11050 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 11054.
        ].
        recoveredStep = 11054 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11056.
        ].
        recoveredStep = 11056 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11057.
        ].
        recoveredStep = 11057 ifTrue: [
            recoveredStack2 := 'HmidErr'.
            recoveredPC := 11060.
        ].
        recoveredStep = 11060 ifTrue: [
            recoveredStack3 := 622.
            recoveredPC := 11064.
        ].
        recoveredStep = 11064 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11066.
        ].
        recoveredStep = 11066 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11067.
        ].
        recoveredStep = 11067 ifTrue: [
            recoveredStack2 := 'StskErr'.
            recoveredPC := 11070.
        ].
        recoveredStep = 11070 ifTrue: [
            recoveredStack3 := 95.
            recoveredPC := 11074.
        ].
        recoveredStep = 11074 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11076.
        ].
        recoveredStep = 11076 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11077.
        ].
        recoveredStep = 11077 ifTrue: [
            recoveredStack2 := 'Oldfill'.
            recoveredPC := 11080.
        ].
        recoveredStep = 11080 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 11082.
        ].
        recoveredStep = 11082 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11084.
        ].
        recoveredStep = 11084 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11085.
        ].
        recoveredStep = 11085 ifTrue: [
            recoveredStack2 := 'BatNxt'.
            recoveredPC := 11088.
        ].
        recoveredStep = 11088 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 11090.
        ].
        recoveredStep = 11090 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11092.
        ].
        recoveredStep = 11092 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11093.
        ].
        recoveredStep = 11093 ifTrue: [
            recoveredStack2 := 'Reshdrsiz'.
            recoveredPC := 11096.
        ].
        recoveredStep = 11096 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 11098.
        ].
        recoveredStep = 11098 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11100.
        ].
        recoveredStep = 11100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11101.
        ].
        recoveredStep = 11101 ifTrue: [
            recoveredStack2 := 'Ixctyp'.
            recoveredPC := 11104.
        ].
        recoveredStep = 11104 ifTrue: [
            recoveredStack3 := 15.
            recoveredPC := 11106.
        ].
        recoveredStep = 11106 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11108.
        ].
        recoveredStep = 11108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11109.
        ].
        recoveredStep = 11109 ifTrue: [
            recoveredStack2 := 'Gnserver'.
            recoveredPC := 11112.
        ].
        recoveredStep = 11112 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 11114.
        ].
        recoveredStep = 11114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11116.
        ].
        recoveredStep = 11116 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11117.
        ].
        recoveredStep = 11117 ifTrue: [
            recoveredStack2 := 'IdrkErr'.
            recoveredPC := 11120.
        ].
        recoveredStep = 11120 ifTrue: [
            recoveredStack3 := 107.
            recoveredPC := 11124.
        ].
        recoveredStep = 11124 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11126.
        ].
        recoveredStep = 11126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11127.
        ].
        recoveredStep = 11127 ifTrue: [
            recoveredStack2 := 'CfgguestLogon'.
            recoveredPC := 11130.
        ].
        recoveredStep = 11130 ifTrue: [
            recoveredStack3 := 68.
            recoveredPC := 11134.
        ].
        recoveredStep = 11134 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11136.
        ].
        recoveredStep = 11136 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11137.
        ].
        recoveredStep = 11137 ifTrue: [
            recoveredStack2 := '	ctFIXED'.
            recoveredPC := 11140.
        ].
        recoveredStep = 11140 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 11142.
        ].
        recoveredStep = 11142 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11144.
        ].
        recoveredStep = 11144 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11145.
        ].
        recoveredStep = 11145 ifTrue: [
            recoveredStack2 := 'Ctblkclr'.
            recoveredPC := 11148.
        ].
        recoveredStep = 11148 ifTrue: [
            recoveredStack3 := 'Ctsemclr'.
            recoveredPC := 11152.
        ].
        recoveredStep = 11152 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11154.
        ].
        recoveredStep = 11154 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11155.
        ].
        recoveredStep = 11155 ifTrue: [
            recoveredStack2 := 'Lhdrcomp'.
            recoveredPC := 11158.
        ].
        recoveredStep = 11158 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 11160.
        ].
        recoveredStep = 11160 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11162.
        ].
        recoveredStep = 11162 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11163.
        ].
        recoveredStep = 11163 ifTrue: [
            recoveredStack2 := 'Regseg'.
            recoveredPC := 11166.
        ].
        recoveredStep = 11166 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 11168.
        ].
        recoveredStep = 11168 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11170.
        ].
        recoveredStep = 11170 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11171.
        ].
        recoveredStep = 11171 ifTrue: [
            recoveredStack2 := 'ShExtfil'.
            recoveredPC := 11174.
        ].
        recoveredStep = 11174 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 11176.
        ].
        recoveredStep = 11176 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11178.
        ].
        recoveredStep = 11178 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11179.
        ].
        recoveredStep = 11179 ifTrue: [
            recoveredStack2 := 'Cfgbound'.
            recoveredPC := 11182.
        ].
        recoveredStep = 11182 ifTrue: [
            recoveredStack3 := 139.
            recoveredPC := 11186.
        ].
        recoveredStep = 11186 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11188.
        ].
        recoveredStep = 11188 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11189.
        ].
        recoveredStep = 11189 ifTrue: [
            recoveredStack2 := 'NoError'.
            recoveredPC := 11192.
        ].
        recoveredStep = 11192 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 11194.
        ].
        recoveredStep = 11194 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11196.
        ].
        recoveredStep = 11196 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11197.
        ].
        recoveredStep = 11197 ifTrue: [
            recoveredStack2 := 'Gnsnd'.
            recoveredPC := 11200.
        ].
        recoveredStep = 11200 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 11202.
        ].
        recoveredStep = 11202 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11204.
        ].
        recoveredStep = 11204 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11205.
        ].
        recoveredStep = 11205 ifTrue: [
            recoveredStack2 := 'CfgmaxKeySeg'.
            recoveredPC := 11208.
        ].
        recoveredStep = 11208 ifTrue: [
            recoveredStack3 := 47.
            recoveredPC := 11210.
        ].
        recoveredStep = 11210 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11212.
        ].
        recoveredStep = 11212 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11213.
        ].
        recoveredStep = 11213 ifTrue: [
            recoveredStack2 := 'UdlkErr'.
            recoveredPC := 11216.
        ].
        recoveredStep = 11216 ifTrue: [
            recoveredStack3 := 41.
            recoveredPC := 11218.
        ].
        recoveredStep = 11218 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11220.
        ].
        recoveredStep = 11220 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11221.
        ].
        recoveredStep = 11221 ifTrue: [
            recoveredStack2 := 'RmodErr'.
            recoveredPC := 11224.
        ].
        recoveredStep = 11224 ifTrue: [
            recoveredStack3 := 122.
            recoveredPC := 11228.
        ].
        recoveredStep = 11228 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11230.
        ].
        recoveredStep = 11230 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11231.
        ].
        recoveredStep = 11231 ifTrue: [
            recoveredStack2 := 'FclsErr'.
            recoveredPC := 11234.
        ].
        recoveredStep = 11234 ifTrue: [
            recoveredStack3 := 24.
            recoveredPC := 11236.
        ].
        recoveredStep = 11236 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11238.
        ].
        recoveredStep = 11238 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11239.
        ].
        recoveredStep = 11239 ifTrue: [
            recoveredStack2 := 'Chgset'.
            recoveredPC := 11242.
        ].
        recoveredStep = 11242 ifTrue: [
            recoveredStack3 := 'Chgset'.
            recoveredPC := 11246.
        ].
        recoveredStep = 11246 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11248.
        ].
        recoveredStep = 11248 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11249.
        ].
        recoveredStep = 11249 ifTrue: [
            recoveredStack2 := 'TrowErr'.
            recoveredPC := 11252.
        ].
        recoveredStep = 11252 ifTrue: [
            recoveredStack3 := 75.
            recoveredPC := 11256.
        ].
        recoveredStep = 11256 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11258.
        ].
        recoveredStep = 11258 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11259.
        ].
        recoveredStep = 11259 ifTrue: [
            recoveredStack2 := 'TrdIsam'.
            recoveredPC := 11262.
        ].
        recoveredStep = 11262 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 11264.
        ].
        recoveredStep = 11264 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11266.
        ].
        recoveredStep = 11266 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11267.
        ].
        recoveredStep = 11267 ifTrue: [
            recoveredStack2 := 'SrflErr'.
            recoveredPC := 11270.
        ].
        recoveredStep = 11270 ifTrue: [
            recoveredStack3 := 506.
            recoveredPC := 11274.
        ].
        recoveredStep = 11274 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11276.
        ].
        recoveredStep = 11276 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11277.
        ].
        recoveredStep = 11277 ifTrue: [
            recoveredStack2 := 'ArspErr'.
            recoveredPC := 11280.
        ].
        recoveredStep = 11280 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 11284.
        ].
        recoveredStep = 11284 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11286.
        ].
        recoveredStep = 11286 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11287.
        ].
        recoveredStep = 11287 ifTrue: [
            recoveredStack2 := 'DUPCHANEL'.
            recoveredPC := 11290.
        ].
        recoveredStep = 11290 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 11294.
        ].
        recoveredStep = 11294 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11296.
        ].
        recoveredStep = 11296 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11297.
        ].
        recoveredStep = 11297 ifTrue: [
            recoveredStack2 := 'Defercp'.
            recoveredPC := 11300.
        ].
        recoveredStep = 11300 ifTrue: [
            recoveredStack3 := 4096.
            recoveredPC := 11304.
        ].
        recoveredStep = 11304 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11306.
        ].
        recoveredStep = 11306 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11307.
        ].
        recoveredStep = 11307 ifTrue: [
            recoveredStack2 := 'Fileoffs'.
            recoveredPC := 11310.
        ].
        recoveredStep = 11310 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 11312.
        ].
        recoveredStep = 11312 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11314.
        ].
        recoveredStep = 11314 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11315.
        ].
        recoveredStep = 11315 ifTrue: [
            recoveredStack2 := 'Ctdlldecl'.
            recoveredPC := 11318.
        ].
        recoveredStep = 11318 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 11320.
        ].
        recoveredStep = 11320 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11322.
        ].
        recoveredStep = 11322 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11323.
        ].
        recoveredStep = 11323 ifTrue: [
            recoveredStack2 := 'InolErr'.
            recoveredPC := 11326.
        ].
        recoveredStep = 11326 ifTrue: [
            recoveredStack3 := 113.
            recoveredPC := 11330.
        ].
        recoveredStep = 11330 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11332.
        ].
        recoveredStep = 11332 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11333.
        ].
        recoveredStep = 11333 ifTrue: [
            recoveredStack2 := 'FnMaskLong'.
            recoveredPC := 11336.
        ].
        recoveredStep = 11336 ifTrue: [
            recoveredStack3 := 512.
            recoveredPC := 11340.
        ].
        recoveredStep = 11340 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11342.
        ].
        recoveredStep = 11342 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11343.
        ].
        recoveredStep = 11343 ifTrue: [
            recoveredStack2 := 'Tranmsk'.
            recoveredPC := 11346.
        ].
        recoveredStep = 11346 ifTrue: [
            recoveredStack3 := '~shdsrch'.
            recoveredPC := 11350.
        ].
        recoveredStep = 11350 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11352.
        ].
        recoveredStep = 11352 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11353.
        ].
        recoveredStep = 11353 ifTrue: [
            recoveredStack2 := 'SoutErr'.
            recoveredPC := 11356.
        ].
        recoveredStep = 11356 ifTrue: [
            recoveredStack3 := 179.
            recoveredPC := 11360.
        ].
        recoveredStep = 11360 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11362.
        ].
        recoveredStep = 11362 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11363.
        ].
        recoveredStep = 11363 ifTrue: [
            recoveredStack2 := 'Permanent'.
            recoveredPC := 11366.
        ].
        recoveredStep = 11366 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 11368.
        ].
        recoveredStep = 11368 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11370.
        ].
        recoveredStep = 11370 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11371.
        ].
        recoveredStep = 11371 ifTrue: [
            recoveredStack2 := 'NsrvErr'.
            recoveredPC := 11374.
        ].
        recoveredStep = 11374 ifTrue: [
            recoveredStack3 := 453.
            recoveredPC := 11378.
        ].
        recoveredStep = 11378 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11380.
        ].
        recoveredStep = 11380 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11381.
        ].
        recoveredStep = 11381 ifTrue: [
            recoveredStack2 := 'CT_ARRAY'.
            recoveredPC := 11384.
        ].
        recoveredStep = 11384 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 11388.
        ].
        recoveredStep = 11388 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11390.
        ].
        recoveredStep = 11390 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11391.
        ].
        recoveredStep = 11391 ifTrue: [
            recoveredStack2 := 'ConvertOut'.
            recoveredPC := 11394.
        ].
        recoveredStep = 11394 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 11396.
        ].
        recoveredStep = 11396 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11398.
        ].
        recoveredStep = 11398 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11399.
        ].
        recoveredStep = 11399 ifTrue: [
            recoveredStack2 := 'Cfgunifrmat'.
            recoveredPC := 11402.
        ].
        recoveredStep = 11402 ifTrue: [
            recoveredStack3 := 146.
            recoveredPC := 11406.
        ].
        recoveredStep = 11406 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11408.
        ].
        recoveredStep = 11408 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11409.
        ].
        recoveredStep = 11409 ifTrue: [
            recoveredStack2 := 'SysmonMain'.
            recoveredPC := 11412.
        ].
        recoveredStep = 11412 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 11414.
        ].
        recoveredStep = 11414 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11416.
        ].
        recoveredStep = 11416 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11417.
        ].
        recoveredStep = 11417 ifTrue: [
            recoveredStack2 := 'AmrdErr'.
            recoveredPC := 11420.
        ].
        recoveredStep = 11420 ifTrue: [
            recoveredStack3 := 138.
            recoveredPC := 11424.
        ].
        recoveredStep = 11424 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11426.
        ].
        recoveredStep = 11426 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11427.
        ].
        recoveredStep = 11427 ifTrue: [
            recoveredStack2 := 'Tstbit'.
            recoveredPC := 11430.
        ].
        recoveredStep = 11430 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 11432.
        ].
        recoveredStep = 11432 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11434.
        ].
        recoveredStep = 11434 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11435.
        ].
        recoveredStep = 11435 ifTrue: [
            recoveredStack2 := 'CfgstartEven'.
            recoveredPC := 11438.
        ].
        recoveredStep = 11438 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 11440.
        ].
        recoveredStep = 11440 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11442.
        ].
        recoveredStep = 11442 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11443.
        ].
        recoveredStep = 11443 ifTrue: [
            recoveredStack2 := 'KlorErr'.
            recoveredPC := 11446.
        ].
        recoveredStep = 11446 ifTrue: [
            recoveredStack3 := 59.
            recoveredPC := 11448.
        ].
        recoveredStep = 11448 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11450.
        ].
        recoveredStep = 11450 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11451.
        ].
        recoveredStep = 11451 ifTrue: [
            recoveredStack2 := 'HnulErr'.
            recoveredPC := 11454.
        ].
        recoveredStep = 11454 ifTrue: [
            recoveredStack3 := 610.
            recoveredPC := 11458.
        ].
        recoveredStep = 11458 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11460.
        ].
        recoveredStep = 11460 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11461.
        ].
        recoveredStep = 11461 ifTrue: [
            recoveredStack2 := 'Ctsave'.
            recoveredPC := 11464.
        ].
        recoveredStep = 11464 ifTrue: [
            recoveredStack3 := 'Mbsave'.
            recoveredPC := 11468.
        ].
        recoveredStep = 11468 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11470.
        ].
        recoveredStep = 11470 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11471.
        ].
        recoveredStep = 11471 ifTrue: [
            recoveredStack2 := 'FlogErr'.
            recoveredPC := 11474.
        ].
        recoveredStep = 11474 ifTrue: [
            recoveredStack3 := 79.
            recoveredPC := 11478.
        ].
        recoveredStep = 11478 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11480.
        ].
        recoveredStep = 11480 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11481.
        ].
        recoveredStep = 11481 ifTrue: [
            recoveredStack2 := 'CfgskipMissingFiles'.
            recoveredPC := 11484.
        ].
        recoveredStep = 11484 ifTrue: [
            recoveredStack3 := 54.
            recoveredPC := 11486.
        ].
        recoveredStep = 11486 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11488.
        ].
        recoveredStep = 11488 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11489.
        ].
        recoveredStep = 11489 ifTrue: [
            recoveredStack2 := 'Oldimage'.
            recoveredPC := 11492.
        ].
        recoveredStep = 11492 ifTrue: [
            recoveredStack3 := 14.
            recoveredPC := 11494.
        ].
        recoveredStep = 11494 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11496.
        ].
        recoveredStep = 11496 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11497.
        ].
        recoveredStep = 11497 ifTrue: [
            recoveredStack2 := 'GnulErr'.
            recoveredPC := 11500.
        ].
        recoveredStep = 11500 ifTrue: [
            recoveredStack3 := 516.
            recoveredPC := 11504.
        ].
        recoveredStep = 11504 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11506.
        ].
        recoveredStep = 11506 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11507.
        ].
        recoveredStep = 11507 ifTrue: [
            recoveredStack2 := 'Nbrreadoperations'.
            recoveredPC := 11510.
        ].
        recoveredStep = 11510 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 11512.
        ].
        recoveredStep = 11512 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11514.
        ].
        recoveredStep = 11514 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11515.
        ].
        recoveredStep = 11515 ifTrue: [
            recoveredStack2 := 'Lkstate'.
            recoveredPC := 11518.
        ].
        recoveredStep = 11518 ifTrue: [
            recoveredStack3 := 1024.
            recoveredPC := 11522.
        ].
        recoveredStep = 11522 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11524.
        ].
        recoveredStep = 11524 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11525.
        ].
        recoveredStep = 11525 ifTrue: [
            recoveredStack2 := 'Ctsupsep'.
            recoveredPC := 11528.
        ].
        recoveredStep = 11528 ifTrue: [
            recoveredStack3 := '''!!'''.
            recoveredPC := 11532.
        ].
        recoveredStep = 11532 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11534.
        ].
        recoveredStep = 11534 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11535.
        ].
        recoveredStep = 11535 ifTrue: [
            recoveredStack2 := 'Cthistindx'.
            recoveredPC := 11538.
        ].
        recoveredStep = 11538 ifTrue: [
            recoveredStack3 := 8192.
            recoveredPC := 11542.
        ].
        recoveredStep = 11542 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11544.
        ].
        recoveredStep = 11544 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11545.
        ].
        recoveredStep = 11545 ifTrue: [
            recoveredStack2 := 'Avlist'.
            recoveredPC := 11548.
        ].
        recoveredStep = 11548 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 11550.
        ].
        recoveredStep = 11550 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11552.
        ].
        recoveredStep = 11552 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11553.
        ].
        recoveredStep = 11553 ifTrue: [
            recoveredStack2 := 'SmxlErr'.
            recoveredPC := 11556.
        ].
        recoveredStep = 11556 ifTrue: [
            recoveredStack3 := 142.
            recoveredPC := 11560.
        ].
        recoveredStep = 11560 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11562.
        ].
        recoveredStep = 11562 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11563.
        ].
        recoveredStep = 11563 ifTrue: [
            recoveredStack2 := 'MirrorSkp'.
            recoveredPC := 11566.
        ].
        recoveredStep = 11566 ifTrue: [
            recoveredStack3 := 8192.
            recoveredPC := 11570.
        ].
        recoveredStep = 11570 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11572.
        ].
        recoveredStep = 11572 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11573.
        ].
        recoveredStep = 11573 ifTrue: [
            recoveredStack2 := 'UseDefault'.
            recoveredPC := 11576.
        ].
        recoveredStep = 11576 ifTrue: [
            recoveredStack3 := '-2'.
            recoveredPC := 11580.
        ].
        recoveredStep = 11580 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11582.
        ].
        recoveredStep = 11582 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11583.
        ].
        recoveredStep = 11583 ifTrue: [
            recoveredStack2 := 'OpsLockon'.
            recoveredPC := 11586.
        ].
        recoveredStep = 11586 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 11588.
        ].
        recoveredStep = 11588 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11590.
        ].
        recoveredStep = 11590 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11591.
        ].
        recoveredStep = 11591 ifTrue: [
            recoveredStack2 := 'SsLock'.
            recoveredPC := 11594.
        ].
        recoveredStep = 11594 ifTrue: [
            recoveredStack3 := 17.
            recoveredPC := 11596.
        ].
        recoveredStep = 11596 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11598.
        ].
        recoveredStep = 11598 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11599.
        ].
        recoveredStep = 11599 ifTrue: [
            recoveredStack2 := 'Xtdseg'.
            recoveredPC := 11602.
        ].
        recoveredStep = 11602 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 11606.
        ].
        recoveredStep = 11606 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11608.
        ].
        recoveredStep = 11608 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11609.
        ].
        recoveredStep = 11609 ifTrue: [
            recoveredStack2 := 'IcurErr'.
            recoveredPC := 11612.
        ].
        recoveredStep = 11612 ifTrue: [
            recoveredStack3 := 100.
            recoveredPC := 11616.
        ].
        recoveredStep = 11616 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11618.
        ].
        recoveredStep = 11618 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11619.
        ].
        recoveredStep = 11619 ifTrue: [
            recoveredStack2 := 'NoParmfile'.
            recoveredPC := 11622.
        ].
        recoveredStep = 11622 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 11624.
        ].
        recoveredStep = 11624 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11626.
        ].
        recoveredStep = 11626 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11627.
        ].
        recoveredStep = 11627 ifTrue: [
            recoveredStack2 := 'Ctpntrsize'.
            recoveredPC := 11630.
        ].
        recoveredStep = 11630 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 11632.
        ].
        recoveredStep = 11632 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11634.
        ].
        recoveredStep = 11634 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11635.
        ].
        recoveredStep = 11635 ifTrue: [
            recoveredStack2 := 'CfgmaxDatKey'.
            recoveredPC := 11638.
        ].
        recoveredStep = 11638 ifTrue: [
            recoveredStack3 := 31.
            recoveredPC := 11640.
        ].
        recoveredStep = 11640 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11642.
        ].
        recoveredStep = 11642 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11643.
        ].
        recoveredStep = 11643 ifTrue: [
            recoveredStack2 := 'Ovrfase'.
            recoveredPC := 11646.
        ].
        recoveredStep = 11646 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 11648.
        ].
        recoveredStep = 11648 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11650.
        ].
        recoveredStep = 11650 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11651.
        ].
        recoveredStep = 11651 ifTrue: [
            recoveredStack2 := 'SnfbErr'.
            recoveredPC := 11654.
        ].
        recoveredStep = 11654 ifTrue: [
            recoveredStack3 := 165.
            recoveredPC := 11658.
        ].
        recoveredStep = 11658 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11660.
        ].
        recoveredStep = 11660 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11661.
        ].
        recoveredStep = 11661 ifTrue: [
            recoveredStack2 := 'Fixed'.
            recoveredPC := 11664.
        ].
        recoveredStep = 11664 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 11666.
        ].
        recoveredStep = 11666 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11668.
        ].
        recoveredStep = 11668 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11669.
        ].
        recoveredStep = 11669 ifTrue: [
            recoveredStack2 := 'Noctclup'.
            recoveredPC := 11672.
        ].
        recoveredStep = 11672 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 11674.
        ].
        recoveredStep = 11674 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11676.
        ].
        recoveredStep = 11676 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11677.
        ].
        recoveredStep = 11677 ifTrue: [
            recoveredStack2 := 'ImriErr'.
            recoveredPC := 11680.
        ].
        recoveredStep = 11680 ifTrue: [
            recoveredStack3 := 117.
            recoveredPC := 11684.
        ].
        recoveredStep = 11684 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11686.
        ].
        recoveredStep = 11686 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11687.
        ].
        recoveredStep = 11687 ifTrue: [
            recoveredStack2 := 'BmodErr'.
            recoveredPC := 11690.
        ].
        recoveredStep = 11690 ifTrue: [
            recoveredStack3 := 446.
            recoveredPC := 11694.
        ].
        recoveredStep = 11694 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11696.
        ].
        recoveredStep = 11696 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11697.
        ].
        recoveredStep = 11697 ifTrue: [
            recoveredStack2 := 'Ctbadlop'.
            recoveredPC := 11700.
        ].
        recoveredStep = 11700 ifTrue: [
            recoveredStack3 := '''\114'''.
            recoveredPC := 11704.
        ].
        recoveredStep = 11704 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11706.
        ].
        recoveredStep = 11706 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11707.
        ].
        recoveredStep = 11707 ifTrue: [
            recoveredStack2 := 'Ixbtyp'.
            recoveredPC := 11710.
        ].
        recoveredStep = 11710 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 11712.
        ].
        recoveredStep = 11712 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11714.
        ].
        recoveredStep = 11714 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11715.
        ].
        recoveredStep = 11715 ifTrue: [
            recoveredStack2 := 'ClnChkabt'.
            recoveredPC := 11718.
        ].
        recoveredStep = 11718 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 11720.
        ].
        recoveredStep = 11720 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11722.
        ].
        recoveredStep = 11722 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11723.
        ].
        recoveredStep = 11723 ifTrue: [
            recoveredStack2 := 'HstSuper'.
            recoveredPC := 11726.
        ].
        recoveredStep = 11726 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 11728.
        ].
        recoveredStep = 11728 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11730.
        ].
        recoveredStep = 11730 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11731.
        ].
        recoveredStep = 11731 ifTrue: [
            recoveredStack2 := 'SuseDefault'.
            recoveredPC := 11734.
        ].
        recoveredStep = 11734 ifTrue: [
            recoveredStack3 := '-2'.
            recoveredPC := 11738.
        ].
        recoveredStep = 11738 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11740.
        ].
        recoveredStep = 11740 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11741.
        ].
        recoveredStep = 11741 ifTrue: [
            recoveredStack2 := 'CfgskipMissingMirrors'.
            recoveredPC := 11744.
        ].
        recoveredStep = 11744 ifTrue: [
            recoveredStack3 := 61.
            recoveredPC := 11746.
        ].
        recoveredStep = 11746 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11748.
        ].
        recoveredStep = 11748 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11749.
        ].
        recoveredStep = 11749 ifTrue: [
            recoveredStack2 := 'CfgmemoryTrack'.
            recoveredPC := 11752.
        ].
        recoveredStep = 11752 ifTrue: [
            recoveredStack3 := 72.
            recoveredPC := 11756.
        ].
        recoveredStep = 11756 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11758.
        ].
        recoveredStep = 11758 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11759.
        ].
        recoveredStep = 11759 ifTrue: [
            recoveredStack2 := 'LOGFIL'.
            recoveredPC := 11762.
        ].
        recoveredStep = 11762 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 11764.
        ].
        recoveredStep = 11764 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11766.
        ].
        recoveredStep = 11766 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11767.
        ].
        recoveredStep = 11767 ifTrue: [
            recoveredStack2 := 'WpfDef'.
            recoveredPC := 11770.
        ].
        recoveredStep = 11770 ifTrue: [
            recoveredStack3 := 8192.
            recoveredPC := 11774.
        ].
        recoveredStep = 11774 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11776.
        ].
        recoveredStep = 11776 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11777.
        ].
        recoveredStep = 11777 ifTrue: [
            recoveredStack2 := 'Nodezero'.
            recoveredPC := 11780.
        ].
        recoveredStep = 11780 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 11782.
        ].
        recoveredStep = 11782 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11784.
        ].
        recoveredStep = 11784 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11785.
        ].
        recoveredStep = 11785 ifTrue: [
            recoveredStack2 := 'SrspErr'.
            recoveredPC := 11788.
        ].
        recoveredStep = 11788 ifTrue: [
            recoveredStack3 := 168.
            recoveredPC := 11792.
        ].
        recoveredStep = 11792 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11794.
        ].
        recoveredStep = 11794 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11795.
        ].
        recoveredStep = 11795 ifTrue: [
            recoveredStack2 := 'RnonErr'.
            recoveredPC := 11798.
        ].
        recoveredStep = 11798 ifTrue: [
            recoveredStack3 := 401.
            recoveredPC := 11802.
        ].
        recoveredStep = 11802 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11804.
        ].
        recoveredStep = 11804 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11805.
        ].
        recoveredStep = 11805 ifTrue: [
            recoveredStack2 := 'SrcvErr'.
            recoveredPC := 11808.
        ].
        recoveredStep = 11808 ifTrue: [
            recoveredStack3 := 419.
            recoveredPC := 11812.
        ].
        recoveredStep = 11812 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11814.
        ].
        recoveredStep = 11814 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11815.
        ].
        recoveredStep = 11815 ifTrue: [
            recoveredStack2 := 'ResTypnum'.
            recoveredPC := 11818.
        ].
        recoveredStep = 11818 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 11820.
        ].
        recoveredStep = 11820 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11822.
        ].
        recoveredStep = 11822 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11823.
        ].
        recoveredStep = 11823 ifTrue: [
            recoveredStack2 := 'Semamut'.
            recoveredPC := 11826.
        ].
        recoveredStep = 11826 ifTrue: [
            recoveredStack3 := 'Sema'.
            recoveredPC := 11830.
        ].
        recoveredStep = 11830 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11832.
        ].
        recoveredStep = 11832 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11833.
        ].
        recoveredStep = 11833 ifTrue: [
            recoveredStack2 := 'CfgctstatusMask'.
            recoveredPC := 11836.
        ].
        recoveredStep = 11836 ifTrue: [
            recoveredStack3 := 86.
            recoveredPC := 11840.
        ].
        recoveredStep = 11840 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11842.
        ].
        recoveredStep = 11842 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11843.
        ].
        recoveredStep = 11843 ifTrue: [
            recoveredStack2 := 'Maxapps'.
            recoveredPC := 11846.
        ].
        recoveredStep = 11846 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 11850.
        ].
        recoveredStep = 11850 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11852.
        ].
        recoveredStep = 11852 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11853.
        ].
        recoveredStep = 11853 ifTrue: [
            recoveredStack2 := 'BmalErr'.
            recoveredPC := 11856.
        ].
        recoveredStep = 11856 ifTrue: [
            recoveredStack3 := 521.
            recoveredPC := 11860.
        ].
        recoveredStep = 11860 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11862.
        ].
        recoveredStep = 11862 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11863.
        ].
        recoveredStep = 11863 ifTrue: [
            recoveredStack2 := 'Pnlist'.
            recoveredPC := 11866.
        ].
        recoveredStep = 11866 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 11868.
        ].
        recoveredStep = 11868 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11870.
        ].
        recoveredStep = 11870 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11871.
        ].
        recoveredStep = 11871 ifTrue: [
            recoveredStack2 := 'SortErr'.
            recoveredPC := 11874.
        ].
        recoveredStep = 11874 ifTrue: [
            recoveredStack3 := 370.
            recoveredPC := 11878.
        ].
        recoveredStep = 11878 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11880.
        ].
        recoveredStep = 11880 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11881.
        ].
        recoveredStep = 11881 ifTrue: [
            recoveredStack2 := 'Ctnamindxdel'.
            recoveredPC := 11884.
        ].
        recoveredStep = 11884 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 11886.
        ].
        recoveredStep = 11886 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11888.
        ].
        recoveredStep = 11888 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11889.
        ].
        recoveredStep = 11889 ifTrue: [
            recoveredStack2 := 'DnulErr'.
            recoveredPC := 11892.
        ].
        recoveredStep = 11892 ifTrue: [
            recoveredStack3 := 33.
            recoveredPC := 11894.
        ].
        recoveredStep = 11894 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11896.
        ].
        recoveredStep = 11896 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11897.
        ].
        recoveredStep = 11897 ifTrue: [
            recoveredStack2 := 'Cttranlock'.
            recoveredPC := 11900.
        ].
        recoveredStep = 11900 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 11902.
        ].
        recoveredStep = 11902 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11904.
        ].
        recoveredStep = 11904 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11905.
        ].
        recoveredStep = 11905 ifTrue: [
            recoveredStack2 := 'Ctbufsiz'.
            recoveredPC := 11908.
        ].
        recoveredStep = 11908 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 11912.
        ].
        recoveredStep = 11912 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11914.
        ].
        recoveredStep = 11914 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11915.
        ].
        recoveredStep = 11915 ifTrue: [
            recoveredStack2 := 'Ctkeep'.
            recoveredPC := 11918.
        ].
        recoveredStep = 11918 ifTrue: [
            recoveredStack3 := 9.
            recoveredPC := 11920.
        ].
        recoveredStep = 11920 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11922.
        ].
        recoveredStep = 11922 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11923.
        ].
        recoveredStep = 11923 ifTrue: [
            recoveredStack2 := 'Updateifil'.
            recoveredPC := 11926.
        ].
        recoveredStep = 11926 ifTrue: [
            recoveredStack3 := '-99'.
            recoveredPC := 11930.
        ].
        recoveredStep = 11930 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11932.
        ].
        recoveredStep = 11932 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11933.
        ].
        recoveredStep = 11933 ifTrue: [
            recoveredStack2 := 'CtsqlFiles'.
            recoveredPC := 11936.
        ].
        recoveredStep = 11936 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 11938.
        ].
        recoveredStep = 11938 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11940.
        ].
        recoveredStep = 11940 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11941.
        ].
        recoveredStep = 11941 ifTrue: [
            recoveredStack2 := 'UserprfSerial'.
            recoveredPC := 11944.
        ].
        recoveredStep = 11944 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 11946.
        ].
        recoveredStep = 11946 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11948.
        ].
        recoveredStep = 11948 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11949.
        ].
        recoveredStep = 11949 ifTrue: [
            recoveredStack2 := 'doda_objectBlob'.
            recoveredPC := 11952.
        ].
        recoveredStep = 11952 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 11954.
        ].
        recoveredStep = 11954 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11956.
        ].
        recoveredStep = 11956 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11957.
        ].
        recoveredStep = 11957 ifTrue: [
            recoveredStack2 := 'CfgtaskerNp'.
            recoveredPC := 11960.
        ].
        recoveredStep = 11960 ifTrue: [
            recoveredStack3 := 40.
            recoveredPC := 11962.
        ].
        recoveredStep = 11962 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11964.
        ].
        recoveredStep = 11964 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11965.
        ].
        recoveredStep = 11965 ifTrue: [
            recoveredStack2 := 'BrepErr'.
            recoveredPC := 11968.
        ].
        recoveredStep = 11968 ifTrue: [
            recoveredStack3 := 531.
            recoveredPC := 11972.
        ].
        recoveredStep = 11972 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11974.
        ].
        recoveredStep = 11974 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11975.
        ].
        recoveredStep = 11975 ifTrue: [
            recoveredStack2 := 'ClnUndo'.
            recoveredPC := 11978.
        ].
        recoveredStep = 11978 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 11980.
        ].
        recoveredStep = 11980 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11982.
        ].
        recoveredStep = 11982 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11983.
        ].
        recoveredStep = 11983 ifTrue: [
            recoveredStack2 := 'Ctlistbuf'.
            recoveredPC := 11986.
        ].
        recoveredStep = 11986 ifTrue: [
            recoveredStack3 := 64000.
            recoveredPC := 11990.
        ].
        recoveredStep = 11990 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 11992.
        ].
        recoveredStep = 11992 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11993.
        ].
        recoveredStep = 11993 ifTrue: [
            recoveredStack2 := 'SpcDif'.
            recoveredPC := 11996.
        ].
        recoveredStep = 11996 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 11998.
        ].
        recoveredStep = 11998 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12000.
        ].
        recoveredStep = 12000 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12001.
        ].
        recoveredStep = 12001 ifTrue: [
            recoveredStack2 := 'Begtran'.
            recoveredPC := 12004.
        ].
        recoveredStep = 12004 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 12006.
        ].
        recoveredStep = 12006 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12008.
        ].
        recoveredStep = 12008 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12009.
        ].
        recoveredStep = 12009 ifTrue: [
            recoveredStack2 := 'RbufErr'.
            recoveredPC := 12012.
        ].
        recoveredStep = 12012 ifTrue: [
            recoveredStack3 := 404.
            recoveredPC := 12016.
        ].
        recoveredStep = 12016 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12018.
        ].
        recoveredStep = 12018 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12019.
        ].
        recoveredStep = 12019 ifTrue: [
            recoveredStack2 := 'TnonErr'.
            recoveredPC := 12022.
        ].
        recoveredStep = 12022 ifTrue: [
            recoveredStack3 := 71.
            recoveredPC := 12026.
        ].
        recoveredStep = 12026 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12028.
        ].
        recoveredStep = 12028 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12029.
        ].
        recoveredStep = 12029 ifTrue: [
            recoveredStack2 := 'IfilErr'.
            recoveredPC := 12032.
        ].
        recoveredStep = 12032 ifTrue: [
            recoveredStack3 := 104.
            recoveredPC := 12036.
        ].
        recoveredStep = 12036 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12038.
        ].
        recoveredStep = 12038 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12039.
        ].
        recoveredStep = 12039 ifTrue: [
            recoveredStack2 := 'Cthistfirst'.
            recoveredPC := 12042.
        ].
        recoveredStep = 12042 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 12044.
        ].
        recoveredStep = 12044 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12046.
        ].
        recoveredStep = 12046 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12047.
        ].
        recoveredStep = 12047 ifTrue: [
            recoveredStack2 := 'Incadd'.
            recoveredPC := 12050.
        ].
        recoveredStep = 12050 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 12052.
        ].
        recoveredStep = 12052 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12054.
        ].
        recoveredStep = 12054 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12055.
        ].
        recoveredStep = 12055 ifTrue: [
            recoveredStack2 := 'IderErr'.
            recoveredPC := 12058.
        ].
        recoveredStep = 12058 ifTrue: [
            recoveredStack3 := 193.
            recoveredPC := 12062.
        ].
        recoveredStep = 12062 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12064.
        ].
        recoveredStep = 12064 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12065.
        ].
        recoveredStep = 12065 ifTrue: [
            recoveredStack2 := 'ShReuse'.
            recoveredPC := 12068.
        ].
        recoveredStep = 12068 ifTrue: [
            recoveredStack3 := '|'.
            recoveredPC := 12070.
        ].
        recoveredStep = 12070 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12072.
        ].
        recoveredStep = 12072 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12073.
        ].
        recoveredStep = 12073 ifTrue: [
            recoveredStack2 := 'Outseg'.
            recoveredPC := 12076.
        ].
        recoveredStep = 12076 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 12080.
        ].
        recoveredStep = 12080 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12082.
        ].
        recoveredStep = 12082 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12083.
        ].
        recoveredStep = 12083 ifTrue: [
            recoveredStack2 := 'NoCtbatch'.
            recoveredPC := 12086.
        ].
        recoveredStep = 12086 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 12088.
        ].
        recoveredStep = 12088 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12090.
        ].
        recoveredStep = 12090 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12091.
        ].
        recoveredStep = 12091 ifTrue: [
            recoveredStack2 := 'CtLast'.
            recoveredPC := 12094.
        ].
        recoveredStep = 12094 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 12098.
        ].
        recoveredStep = 12098 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12100.
        ].
        recoveredStep = 12100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12101.
        ].
        recoveredStep = 12101 ifTrue: [
            recoveredStack2 := 'SfreErr'.
            recoveredPC := 12104.
        ].
        recoveredStep = 12104 ifTrue: [
            recoveredStack3 := 163.
            recoveredPC := 12108.
        ].
        recoveredStep = 12108 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12110.
        ].
        recoveredStep = 12110 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12111.
        ].
        recoveredStep = 12111 ifTrue: [
            recoveredStack2 := 'TlogErr'.
            recoveredPC := 12114.
        ].
        recoveredStep = 12114 ifTrue: [
            recoveredStack3 := 73.
            recoveredPC := 12118.
        ].
        recoveredStep = 12118 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12120.
        ].
        recoveredStep = 12120 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12121.
        ].
        recoveredStep = 12121 ifTrue: [
            recoveredStack2 := 'KlnkErr'.
            recoveredPC := 12124.
        ].
        recoveredStep = 12124 ifTrue: [
            recoveredStack3 := 25.
            recoveredPC := 12126.
        ].
        recoveredStep = 12126 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12128.
        ].
        recoveredStep = 12128 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12129.
        ].
        recoveredStep = 12129 ifTrue: [
            recoveredStack2 := 'Ctmutclr'.
            recoveredPC := 12132.
        ].
        recoveredStep = 12132 ifTrue: [
            recoveredStack3 := 'Ctsemclr'.
            recoveredPC := 12136.
        ].
        recoveredStep = 12136 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12138.
        ].
        recoveredStep = 12138 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12139.
        ].
        recoveredStep = 12139 ifTrue: [
            recoveredStack2 := 'Maxvabs'.
            recoveredPC := 12142.
        ].
        recoveredStep = 12142 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 12144.
        ].
        recoveredStep = 12144 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12146.
        ].
        recoveredStep = 12146 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12147.
        ].
        recoveredStep = 12147 ifTrue: [
            recoveredStack2 := 'OpsRsvd2b4'.
            recoveredPC := 12150.
        ].
        recoveredStep = 12150 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 12154.
        ].
        recoveredStep = 12154 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12156.
        ].
        recoveredStep = 12156 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12157.
        ].
        recoveredStep = 12157 ifTrue: [
            recoveredStack2 := 'HlogErr'.
            recoveredPC := 12160.
        ].
        recoveredStep = 12160 ifTrue: [
            recoveredStack3 := 611.
            recoveredPC := 12164.
        ].
        recoveredStep = 12164 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12166.
        ].
        recoveredStep = 12166 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12167.
        ].
        recoveredStep = 12167 ifTrue: [
            recoveredStack2 := 'Idxlog'.
            recoveredPC := 12170.
        ].
        recoveredStep = 12170 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 12172.
        ].
        recoveredStep = 12172 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12174.
        ].
        recoveredStep = 12174 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12175.
        ].
        recoveredStep = 12175 ifTrue: [
            recoveredStack2 := 'Cfg749xMonitor'.
            recoveredPC := 12178.
        ].
        recoveredStep = 12178 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 12182.
        ].
        recoveredStep = 12182 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12184.
        ].
        recoveredStep = 12184 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12185.
        ].
        recoveredStep = 12185 ifTrue: [
            recoveredStack2 := 'OpsSkpdat'.
            recoveredPC := 12188.
        ].
        recoveredStep = 12188 ifTrue: [
            recoveredStack3 := 2048.
            recoveredPC := 12192.
        ].
        recoveredStep = 12192 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12194.
        ].
        recoveredStep = 12194 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12195.
        ].
        recoveredStep = 12195 ifTrue: [
            recoveredStack2 := 'Ctmemque'.
            recoveredPC := 12198.
        ].
        recoveredStep = 12198 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 12200.
        ].
        recoveredStep = 12200 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12202.
        ].
        recoveredStep = 12202 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12203.
        ].
        recoveredStep = 12203 ifTrue: [
            recoveredStack2 := 'Keydup'.
            recoveredPC := 12206.
        ].
        recoveredStep = 12206 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 12208.
        ].
        recoveredStep = 12208 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12210.
        ].
        recoveredStep = 12210 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12211.
        ].
        recoveredStep = 12211 ifTrue: [
            recoveredStack2 := 'FnBaseText'.
            recoveredPC := 12214.
        ].
        recoveredStep = 12214 ifTrue: [
            recoveredStack3 := 188.
            recoveredPC := 12218.
        ].
        recoveredStep = 12218 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12220.
        ].
        recoveredStep = 12220 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12221.
        ].
        recoveredStep = 12221 ifTrue: [
            recoveredStack2 := 'Fnz'.
            recoveredPC := 12224.
        ].
        recoveredStep = 12224 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 12228.
        ].
        recoveredStep = 12228 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12230.
        ].
        recoveredStep = 12230 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12231.
        ].
        recoveredStep = 12231 ifTrue: [
            recoveredStack2 := 'Ctporth'.
            recoveredPC := 12234.
        ].
        recoveredStep = 12234 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 12236.
        ].
        recoveredStep = 12236 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12238.
        ].
        recoveredStep = 12238 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12239.
        ].
        recoveredStep = 12239 ifTrue: [
            recoveredStack2 := 'AmsgErr'.
            recoveredPC := 12242.
        ].
        recoveredStep = 12242 ifTrue: [
            recoveredStack3 := 141.
            recoveredPC := 12246.
        ].
        recoveredStep = 12246 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12248.
        ].
        recoveredStep = 12248 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12249.
        ].
        recoveredStep = 12249 ifTrue: [
            recoveredStack2 := 'IkruErr'.
            recoveredPC := 12252.
        ].
        recoveredStep = 12252 ifTrue: [
            recoveredStack3 := 180.
            recoveredPC := 12256.
        ].
        recoveredStep = 12256 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12258.
        ].
        recoveredStep = 12258 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12259.
        ].
        recoveredStep = 12259 ifTrue: [
            recoveredStack2 := 'Rcl3Err'.
            recoveredPC := 12262.
        ].
        recoveredStep = 12262 ifTrue: [
            recoveredStack3 := 572.
            recoveredPC := 12266.
        ].
        recoveredStep = 12266 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12268.
        ].
        recoveredStep = 12268 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12269.
        ].
        recoveredStep = 12269 ifTrue: [
            recoveredStack2 := 'CfgcheckpointPrevious'.
            recoveredPC := 12272.
        ].
        recoveredStep = 12272 ifTrue: [
            recoveredStack3 := 84.
            recoveredPC := 12276.
        ].
        recoveredStep = 12276 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12278.
        ].
        recoveredStep = 12278 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12279.
        ].
        recoveredStep = 12279 ifTrue: [
            recoveredStack2 := 'Ctrecpt'.
            recoveredPC := 12282.
        ].
        recoveredStep = 12282 ifTrue: [
            recoveredStack3 := 'Long'.
            recoveredPC := 12286.
        ].
        recoveredStep = 12286 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12288.
        ].
        recoveredStep = 12288 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12289.
        ].
        recoveredStep = 12289 ifTrue: [
            recoveredStack2 := 'Mrksiz'.
            recoveredPC := 12292.
        ].
        recoveredStep = 12292 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 12294.
        ].
        recoveredStep = 12294 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12296.
        ].
        recoveredStep = 12296 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12297.
        ].
        recoveredStep = 12297 ifTrue: [
            recoveredStack2 := 'Ack2fase'.
            recoveredPC := 12300.
        ].
        recoveredStep = 12300 ifTrue: [
            recoveredStack3 := 24.
            recoveredPC := 12302.
        ].
        recoveredStep = 12302 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12304.
        ].
        recoveredStep = 12304 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12305.
        ].
        recoveredStep = 12305 ifTrue: [
            recoveredStack2 := 'Ctfilenone'.
            recoveredPC := 12308.
        ].
        recoveredStep = 12308 ifTrue: [
            recoveredStack3 := '-1)'.
            recoveredPC := 12312.
        ].
        recoveredStep = 12312 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12314.
        ].
        recoveredStep = 12314 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12315.
        ].
        recoveredStep = 12315 ifTrue: [
            recoveredStack2 := 'READFIL'.
            recoveredPC := 12318.
        ].
        recoveredStep = 12318 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 12320.
        ].
        recoveredStep = 12320 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12322.
        ].
        recoveredStep = 12322 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12323.
        ].
        recoveredStep = 12323 ifTrue: [
            recoveredStack2 := 'Alphakey'.
            recoveredPC := 12326.
        ].
        recoveredStep = 12326 ifTrue: [
            recoveredStack3 := '''\0'''.
            recoveredPC := 12330.
        ].
        recoveredStep = 12330 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12332.
        ].
        recoveredStep = 12332 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12333.
        ].
        recoveredStep = 12333 ifTrue: [
            recoveredStack2 := 'Ctghatsize'.
            recoveredPC := 12336.
        ].
        recoveredStep = 12336 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 12338.
        ].
        recoveredStep = 12338 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12340.
        ].
        recoveredStep = 12340 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12341.
        ].
        recoveredStep = 12341 ifTrue: [
            recoveredStack2 := 'Compact'.
            recoveredPC := 12344.
        ].
        recoveredStep = 12344 ifTrue: [
            recoveredStack3 := '''\143'''.
            recoveredPC := 12348.
        ].
        recoveredStep = 12348 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12350.
        ].
        recoveredStep = 12350 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12351.
        ].
        recoveredStep = 12351 ifTrue: [
            recoveredStack2 := 'Frsfld'.
            recoveredPC := 12354.
        ].
        recoveredStep = 12354 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 12356.
        ].
        recoveredStep = 12356 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12358.
        ].
        recoveredStep = 12358 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12359.
        ].
        recoveredStep = 12359 ifTrue: [
            recoveredStack2 := 'Partial'.
            recoveredPC := 12362.
        ].
        recoveredStep = 12362 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 12364.
        ].
        recoveredStep = 12364 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12366.
        ].
        recoveredStep = 12366 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12367.
        ].
        recoveredStep = 12367 ifTrue: [
            recoveredStack2 := 'CtResrvd'.
            recoveredPC := 12370.
        ].
        recoveredStep = 12370 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 12372.
        ].
        recoveredStep = 12372 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12374.
        ].
        recoveredStep = 12374 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12375.
        ].
        recoveredStep = 12375 ifTrue: [
            recoveredStack2 := 'Ctdiagnosewalk'.
            recoveredPC := 12378.
        ].
        recoveredStep = 12378 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 12380.
        ].
        recoveredStep = 12380 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12382.
        ].
        recoveredStep = 12382 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12383.
        ].
        recoveredStep = 12383 ifTrue: [
            recoveredStack2 := 'Indxvul'.
            recoveredPC := 12386.
        ].
        recoveredStep = 12386 ifTrue: [
            recoveredStack3 := 63.
            recoveredPC := 12388.
        ].
        recoveredStep = 12388 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12390.
        ].
        recoveredStep = 12390 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12391.
        ].
        recoveredStep = 12391 ifTrue: [
            recoveredStack2 := 'DlokErr'.
            recoveredPC := 12394.
        ].
        recoveredStep = 12394 ifTrue: [
            recoveredStack3 := 42.
            recoveredPC := 12396.
        ].
        recoveredStep = 12396 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12398.
        ].
        recoveredStep = 12398 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12399.
        ].
        recoveredStep = 12399 ifTrue: [
            recoveredStack2 := 'SfilErr'.
            recoveredPC := 12402.
        ].
        recoveredStep = 12402 ifTrue: [
            recoveredStack3 := 164.
            recoveredPC := 12406.
        ].
        recoveredStep = 12406 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12408.
        ].
        recoveredStep = 12408 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12409.
        ].
        recoveredStep = 12409 ifTrue: [
            recoveredStack2 := 'SdirErr'.
            recoveredPC := 12412.
        ].
        recoveredStep = 12412 ifTrue: [
            recoveredStack3 := 413.
            recoveredPC := 12416.
        ].
        recoveredStep = 12416 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12418.
        ].
        recoveredStep = 12418 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12419.
        ].
        recoveredStep = 12419 ifTrue: [
            recoveredStack2 := 'NonSuper'.
            recoveredPC := 12422.
        ].
        recoveredStep = 12422 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 12424.
        ].
        recoveredStep = 12424 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12426.
        ].
        recoveredStep = 12426 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12427.
        ].
        recoveredStep = 12427 ifTrue: [
            recoveredStack2 := 'CfgserverName'.
            recoveredPC := 12430.
        ].
        recoveredStep = 12430 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 12432.
        ].
        recoveredStep = 12432 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12434.
        ].
        recoveredStep = 12434 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12435.
        ].
        recoveredStep = 12435 ifTrue: [
            recoveredStack2 := 'TrdDnode'.
            recoveredPC := 12438.
        ].
        recoveredStep = 12438 ifTrue: [
            recoveredStack3 := 2048.
            recoveredPC := 12442.
        ].
        recoveredStep = 12442 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12444.
        ].
        recoveredStep = 12444 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12445.
        ].
        recoveredStep = 12445 ifTrue: [
            recoveredStack2 := 'IkmuErr'.
            recoveredPC := 12448.
        ].
        recoveredStep = 12448 ifTrue: [
            recoveredStack3 := 181.
            recoveredPC := 12452.
        ].
        recoveredStep = 12452 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12454.
        ].
        recoveredStep = 12454 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12455.
        ].
        recoveredStep = 12455 ifTrue: [
            recoveredStack2 := 'CfgcontextHash'.
            recoveredPC := 12458.
        ].
        recoveredStep = 12458 ifTrue: [
            recoveredStack3 := 67.
            recoveredPC := 12462.
        ].
        recoveredStep = 12462 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12464.
        ].
        recoveredStep = 12464 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12465.
        ].
        recoveredStep = 12465 ifTrue: [
            recoveredStack2 := 'LbofErr'.
            recoveredPC := 12468.
        ].
        recoveredStep = 12468 ifTrue: [
            recoveredStack3 := 27.
            recoveredPC := 12470.
        ].
        recoveredStep = 12470 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12472.
        ].
        recoveredStep = 12472 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12473.
        ].
        recoveredStep = 12473 ifTrue: [
            recoveredStack2 := 'NlogErr'.
            recoveredPC := 12476.
        ].
        recoveredStep = 12476 ifTrue: [
            recoveredStack3 := 498.
            recoveredPC := 12480.
        ].
        recoveredStep = 12480 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12482.
        ].
        recoveredStep = 12482 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12483.
        ].
        recoveredStep = 12483 ifTrue: [
            recoveredStack2 := 'Forever'.
            recoveredPC := 12486.
        ].
        recoveredStep = 12486 ifTrue: [
            recoveredStack3 := ';;'.
            recoveredPC := 12490.
        ].
        recoveredStep = 12490 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12492.
        ].
        recoveredStep = 12492 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12493.
        ].
        recoveredStep = 12493 ifTrue: [
            recoveredStack2 := 'HidxErr'.
            recoveredPC := 12496.
        ].
        recoveredStep = 12496 ifTrue: [
            recoveredStack3 := 615.
            recoveredPC := 12500.
        ].
        recoveredStep = 12500 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12502.
        ].
        recoveredStep = 12502 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12503.
        ].
        recoveredStep = 12503 ifTrue: [
            recoveredStack2 := 'GpfDef'.
            recoveredPC := 12506.
        ].
        recoveredStep = 12506 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 12510.
        ].
        recoveredStep = 12510 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12512.
        ].
        recoveredStep = 12512 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12513.
        ].
        recoveredStep = 12513 ifTrue: [
            recoveredStack2 := 'ShQnode'.
            recoveredPC := 12516.
        ].
        recoveredStep = 12516 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 12518.
        ].
        recoveredStep = 12518 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12520.
        ].
        recoveredStep = 12520 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12521.
        ].
        recoveredStep = 12521 ifTrue: [
            recoveredStack2 := 'Namindx'.
            recoveredPC := 12524.
        ].
        recoveredStep = 12524 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 12526.
        ].
        recoveredStep = 12526 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12528.
        ].
        recoveredStep = 12528 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12529.
        ].
        recoveredStep = 12529 ifTrue: [
            recoveredStack2 := 'ClnCommit'.
            recoveredPC := 12532.
        ].
        recoveredStep = 12532 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 12534.
        ].
        recoveredStep = 12534 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12536.
        ].
        recoveredStep = 12536 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12537.
        ].
        recoveredStep = 12537 ifTrue: [
            recoveredStack2 := 'Leaf'.
            recoveredPC := 12540.
        ].
        recoveredStep = 12540 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 12542.
        ].
        recoveredStep = 12542 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12544.
        ].
        recoveredStep = 12544 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12545.
        ].
        recoveredStep = 12545 ifTrue: [
            recoveredStack2 := 'Noocsema'.
            recoveredPC := 12548.
        ].
        recoveredStep = 12548 ifTrue: [
            recoveredStack3 := '-199'.
            recoveredPC := 12552.
        ].
        recoveredStep = 12552 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12554.
        ].
        recoveredStep = 12554 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12555.
        ].
        recoveredStep = 12555 ifTrue: [
            recoveredStack2 := 'DltfErr'.
            recoveredPC := 12558.
        ].
        recoveredStep = 12558 ifTrue: [
            recoveredStack3 := 55.
            recoveredPC := 12560.
        ].
        recoveredStep = 12560 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12562.
        ].
        recoveredStep = 12562 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12563.
        ].
        recoveredStep = 12563 ifTrue: [
            recoveredStack2 := 'Preimg'.
            recoveredPC := 12566.
        ].
        recoveredStep = 12566 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 12568.
        ].
        recoveredStep = 12568 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12570.
        ].
        recoveredStep = 12570 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12571.
        ].
        recoveredStep = 12571 ifTrue: [
            recoveredStack2 := 'Ctnoglotran'.
            recoveredPC := 12574.
        ].
        recoveredStep = 12574 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 12576.
        ].
        recoveredStep = 12576 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12578.
        ].
        recoveredStep = 12578 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12579.
        ].
        recoveredStep = 12579 ifTrue: [
            recoveredStack2 := 'Restran'.
            recoveredPC := 12582.
        ].
        recoveredStep = 12582 ifTrue: [
            recoveredStack3 := 36.
            recoveredPC := 12584.
        ].
        recoveredStep = 12584 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12586.
        ].
        recoveredStep = 12586 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12587.
        ].
        recoveredStep = 12587 ifTrue: [
            recoveredStack2 := 'BAT_RESV1'.
            recoveredPC := 12590.
        ].
        recoveredStep = 12590 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 12592.
        ].
        recoveredStep = 12592 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12594.
        ].
        recoveredStep = 12594 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12595.
        ].
        recoveredStep = 12595 ifTrue: [
            recoveredStack2 := 'Cfgdiagnostics'.
            recoveredPC := 12598.
        ].
        recoveredStep = 12598 ifTrue: [
            recoveredStack3 := 66.
            recoveredPC := 12602.
        ].
        recoveredStep = 12602 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12604.
        ].
        recoveredStep = 12604 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12605.
        ].
        recoveredStep = 12605 ifTrue: [
            recoveredStack2 := 'CtInt4'.
            recoveredPC := 12608.
        ].
        recoveredStep = 12608 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 12610.
        ].
        recoveredStep = 12610 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12612.
        ].
        recoveredStep = 12612 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12613.
        ].
        recoveredStep = 12613 ifTrue: [
            recoveredStack2 := 'SRLSEG'.
            recoveredPC := 12616.
        ].
        recoveredStep = 12616 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 12618.
        ].
        recoveredStep = 12618 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12620.
        ].
        recoveredStep = 12620 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12621.
        ].
        recoveredStep = 12621 ifTrue: [
            recoveredStack2 := 'OpfNopass'.
            recoveredPC := 12624.
        ].
        recoveredStep = 12624 ifTrue: [
            recoveredStack3 := 32768.
            recoveredPC := 12628.
        ].
        recoveredStep = 12628 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12630.
        ].
        recoveredStep = 12630 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12631.
        ].
        recoveredStep = 12631 ifTrue: [
            recoveredStack2 := 'Gns'.
            recoveredPC := 12634.
        ].
        recoveredStep = 12634 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 12636.
        ].
        recoveredStep = 12636 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12638.
        ].
        recoveredStep = 12638 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12639.
        ].
        recoveredStep = 12639 ifTrue: [
            recoveredStack2 := 'Mrksize'.
            recoveredPC := 12642.
        ].
        recoveredStep = 12642 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 12644.
        ].
        recoveredStep = 12644 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12646.
        ].
        recoveredStep = 12646 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12647.
        ].
        recoveredStep = 12647 ifTrue: [
            recoveredStack2 := 'OpfDef'.
            recoveredPC := 12650.
        ].
        recoveredStep = 12650 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 12652.
        ].
        recoveredStep = 12652 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12654.
        ].
        recoveredStep = 12654 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12655.
        ].
        recoveredStep = 12655 ifTrue: [
            recoveredStack2 := 'Writethru'.
            recoveredPC := 12658.
        ].
        recoveredStep = 12658 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 12662.
        ].
        recoveredStep = 12662 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12664.
        ].
        recoveredStep = 12664 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12665.
        ].
        recoveredStep = 12665 ifTrue: [
            recoveredStack2 := 'InputOffset'.
            recoveredPC := 12668.
        ].
        recoveredStep = 12668 ifTrue: [
            recoveredStack3 := '+'.
            recoveredPC := 12672.
        ].
        recoveredStep = 12672 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12674.
        ].
        recoveredStep = 12674 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12675.
        ].
        recoveredStep = 12675 ifTrue: [
            recoveredStack2 := 'Ctmemidx'.
            recoveredPC := 12678.
        ].
        recoveredStep = 12678 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 12680.
        ].
        recoveredStep = 12680 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12682.
        ].
        recoveredStep = 12682 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12683.
        ].
        recoveredStep = 12683 ifTrue: [
            recoveredStack2 := 'CtBool'.
            recoveredPC := 12686.
        ].
        recoveredStep = 12686 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 12688.
        ].
        recoveredStep = 12688 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12690.
        ].
        recoveredStep = 12690 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12691.
        ].
        recoveredStep = 12691 ifTrue: [
            recoveredStack2 := 'Pwz'.
            recoveredPC := 12694.
        ].
        recoveredStep = 12694 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 12696.
        ].
        recoveredStep = 12696 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12698.
        ].
        recoveredStep = 12698 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12699.
        ].
        recoveredStep = 12699 ifTrue: [
            recoveredStack2 := 'CtSqlbcdold'.
            recoveredPC := 12702.
        ].
        recoveredStep = 12702 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 12704.
        ].
        recoveredStep = 12704 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12706.
        ].
        recoveredStep = 12706 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12707.
        ].
        recoveredStep = 12707 ifTrue: [
            recoveredStack2 := 'VARSEG'.
            recoveredPC := 12710.
        ].
        recoveredStep = 12710 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 12712.
        ].
        recoveredStep = 12712 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12714.
        ].
        recoveredStep = 12714 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12715.
        ].
        recoveredStep = 12715 ifTrue: [
            recoveredStack2 := 'SmsgErr'.
            recoveredPC := 12718.
        ].
        recoveredStep = 12718 ifTrue: [
            recoveredStack3 := 171.
            recoveredPC := 12722.
        ].
        recoveredStep = 12722 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12724.
        ].
        recoveredStep = 12724 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12725.
        ].
        recoveredStep = 12725 ifTrue: [
            recoveredStack2 := 'Und'.
            recoveredPC := 12728.
        ].
        recoveredStep = 12728 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 12730.
        ].
        recoveredStep = 12730 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12732.
        ].
        recoveredStep = 12732 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12733.
        ].
        recoveredStep = 12733 ifTrue: [
            recoveredStack2 := 'GpfNopass'.
            recoveredPC := 12736.
        ].
        recoveredStep = 12736 ifTrue: [
            recoveredStack3 := 65536.
            recoveredPC := 12740.
        ].
        recoveredStep = 12740 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12742.
        ].
        recoveredStep = 12742 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12743.
        ].
        recoveredStep = 12743 ifTrue: [
            recoveredStack2 := 'DefResrvd1'.
            recoveredPC := 12746.
        ].
        recoveredStep = 12746 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 12748.
        ].
        recoveredStep = 12748 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12750.
        ].
        recoveredStep = 12750 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12751.
        ].
        recoveredStep = 12751 ifTrue: [
            recoveredStack2 := 'Deltran'.
            recoveredPC := 12754.
        ].
        recoveredStep = 12754 ifTrue: [
            recoveredStack3 := 29.
            recoveredPC := 12756.
        ].
        recoveredStep = 12756 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12758.
        ].
        recoveredStep = 12758 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12759.
        ].
        recoveredStep = 12759 ifTrue: [
            recoveredStack2 := 'CT_INT4U'.
            recoveredPC := 12762.
        ].
        recoveredStep = 12762 ifTrue: [
            recoveredStack3 := 56.
            recoveredPC := 12764.
        ].
        recoveredStep = 12764 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12766.
        ].
        recoveredStep = 12766 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12767.
        ].
        recoveredStep = 12767 ifTrue: [
            recoveredStack2 := 'OpsCommitSwp'.
            recoveredPC := 12770.
        ].
        recoveredStep = 12770 ifTrue: [
            recoveredStack3 := 2097152.
            recoveredPC := 12774.
        ].
        recoveredStep = 12774 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12776.
        ].
        recoveredStep = 12776 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12777.
        ].
        recoveredStep = 12777 ifTrue: [
            recoveredStack2 := 'CfgsemaphoreBlk'.
            recoveredPC := 12780.
        ].
        recoveredStep = 12780 ifTrue: [
            recoveredStack3 := 33.
            recoveredPC := 12782.
        ].
        recoveredStep = 12782 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12784.
        ].
        recoveredStep = 12784 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12785.
        ].
        recoveredStep = 12785 ifTrue: [
            recoveredStack2 := 'NotOpRcv'.
            recoveredPC := 12788.
        ].
        recoveredStep = 12788 ifTrue: [
            recoveredStack3 := '-3'.
            recoveredPC := 12792.
        ].
        recoveredStep = 12792 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12794.
        ].
        recoveredStep = 12794 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12795.
        ].
        recoveredStep = 12795 ifTrue: [
            recoveredStack2 := 'ResLength'.
            recoveredPC := 12798.
        ].
        recoveredStep = 12798 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 12802.
        ].
        recoveredStep = 12802 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12804.
        ].
        recoveredStep = 12804 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12805.
        ].
        recoveredStep = 12805 ifTrue: [
            recoveredStack2 := 'Inlist'.
            recoveredPC := 12808.
        ].
        recoveredStep = 12808 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 12810.
        ].
        recoveredStep = 12810 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12812.
        ].
        recoveredStep = 12812 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12813.
        ].
        recoveredStep = 12813 ifTrue: [
            recoveredStack2 := 'CtsIsam'.
            recoveredPC := 12815.
        ].
        recoveredStep = 12815 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 12817.
        ].
        recoveredStep = 12817 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12819.
        ].
        recoveredStep = 12819 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12820.
        ].
        recoveredStep = 12820 ifTrue: [
            recoveredStack2 := 'PURGEIFIL'.
            recoveredPC := 12824.
        ].
        recoveredStep = 12824 ifTrue: [
            recoveredStack3 := -101.
            recoveredPC := 12828.
        ].
        recoveredStep = 12828 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12830.
        ].
        recoveredStep = 12830 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12831.
        ].
        recoveredStep = 12831 ifTrue: [
            recoveredStack2 := 'UPDATEIFIL'.
            recoveredPC := 12834.
        ].
        recoveredStep = 12834 ifTrue: [
            recoveredStack3 := -99.
            recoveredPC := 12838.
        ].
        recoveredStep = 12838 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12840.
        ].
        recoveredStep = 12840 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12841.
        ].
        recoveredStep = 12841 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12842.
        ].
        recoveredStep = 12842 ifTrue: [
            recoveredStack3 := 'vdelFlag'.
            recoveredPC := 12846.
        ].
        recoveredStep = 12846 ifTrue: [
            recoveredStack4 := 65021.
            recoveredPC := 12850.
        ].
        recoveredStep = 12850 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12853.
        ].
        recoveredStep = 12853 ifTrue: [
            recoveredStack3 := 'vactFlag'.
            recoveredPC := 12856.
        ].
        recoveredStep = 12856 ifTrue: [
            recoveredStack4 := 64250.
            recoveredPC := 12860.
        ].
        recoveredStep = 12860 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12863.
        ].
        recoveredStep = 12863 ifTrue: [
            recoveredStack3 := 'vnodFlag'.
            recoveredPC := 12866.
        ].
        recoveredStep = 12866 ifTrue: [
            recoveredStack4 := 64447.
            recoveredPC := 12870.
        ].
        recoveredStep = 12870 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12873.
        ].
        recoveredStep = 12873 ifTrue: [
            recoveredStack3 := 'vresFlag'.
            recoveredPC := 12876.
        ].
        recoveredStep = 12876 ifTrue: [
            recoveredStack4 := 65278.
            recoveredPC := 12880.
        ].
        recoveredStep = 12880 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 12882.
        ].
        recoveredStep = 12882 ifTrue: [
            recoveredStack2 := 'vlnkFlag'.
            recoveredPC := 12886.
        ].
        recoveredStep = 12886 ifTrue: [
            recoveredStack3 := 64764.
            recoveredPC := 12890.
        ].
        recoveredStep = 12890 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 12892.
        ].
        recoveredStep = 12892 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

