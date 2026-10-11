"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006879c; bytecode file offset 0x965b90"
!ETASCanDBFile methodsFor: 'recovered'!
nodeList
    | recoveredValue0 |
    recoveredValue0 := nodeList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20089774; bytecode file offset 0x986060"
!ETASCanDBFile methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    nodeList := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2011ddb0; bytecode file offset 0xa1a678"
!ETASCanDBFile methodsFor: 'recovered'!
parse: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CANDBBaseObject.
    (recoveredValue0) initializeClass.
    recoveredValue1 := CANDBTop.
    recoveredValue2 := (recoveredValue1) create.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) getFrom: (recoveredValue3).
    nodeList := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x2018a874; bytecode file offset 0xa87140"
!ETASCanDBFile methodsFor: 'recovered'!
getFileTag: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CANDBBaseObject.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) skipComment: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) nextWordBySeparatorsAnd: ($").
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := Cr.
    (recoveredValue5) skipTo: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2019b5a8; bytecode file offset 0xa97e70"
!ETASCanDBFile methodsFor: 'recovered'!
checkFormat: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFileTag: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileTag.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ETASCanDBError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWrongFileTag: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cd31c; bytecode file offset 0xac9be4"
!ETASCanDBFile methodsFor: 'recovered'!
showEtasDoitResult: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super showEtasDoitResult: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASAP2DB.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) inspect.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e7bd8; bytecode file offset 0xae44a0"
!ETASCanDBFile methodsFor: 'recovered'!
addInspectorMenuEntriesIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super addInspectorMenuEntriesIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 |
    recoveredBlock14Value0 := nodeList.
    recoveredBlock14Value1 := (recoveredBlock14Value0) notNil.
    recoveredBlock14Value1
].
    (recoveredValue1) add: ('createASAP2Project') label: ('createASAP2Project') enable: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2025d0ac; bytecode file offset 0xb59974"
!ETASCanDBFile methodsFor: 'recovered'!
parse
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) openStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkFormat: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) parse: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029daa4; bytecode file offset 0xb9a380"
!ETASCanDBFile methodsFor: 'recovered'!
createTmpASAP2Project
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := path.
    recoveredValue3 := (recoveredValue1) splitPath: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) at: (3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := ASAP2BaseObject.
    (recoveredValue5) Persistent: (false).
    recoveredValue6 := nodeList.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue6) createASAP2Project: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue9) clearId.
    recoveredValue10 := ASAP2BaseObject.
    (recoveredValue10) Persistent: (false).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) createASAP2DBObjects.
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := path.
    (recoveredValue13) fileName: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x2029db00; bytecode file offset 0xb9a3dc"
!ETASCanDBFile methodsFor: 'recovered'!
createASAP2Project
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := path.
    recoveredValue3 := (recoveredValue1) splitPath: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) at: (3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := ASAP2BaseObject.
    (recoveredValue5) Persistent: (false).
    recoveredValue6 := nodeList.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue6) createASAP2Project: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue9) clearId.
    recoveredValue10 := ASAP2BaseObject.
    (recoveredValue10) Persistent: (true).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) createASAP2DBObjects.
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := path.
    (recoveredValue13) fileName: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x203fbf28; bytecode file offset 0xcf8814"
!ETASCanDBFile methodsFor: 'recovered'!
createASAP2File
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := path.
    recoveredValue3 := (recoveredValue1) splitPath: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) at: (1).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) at: (2).
    recoveredValue8 := (recoveredValue5) , (recoveredValue7).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) at: (3).
    recoveredValue11 := (recoveredValue8) , (recoveredValue10).
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := nodeList.
    recoveredValue13 := (recoveredValue12) createASAP2Project.
    recoveredValue14 := recoveredValue13.
    recoveredLocal3 := recoveredValue14.
    recoveredValue15 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 recoveredBlock46Value4 recoveredBlock46Value5 recoveredBlock46Value6 recoveredBlock46Value7 recoveredBlock46Value8 recoveredBlock46Value9 recoveredBlock46Value10 recoveredBlock46Value11 |
    recoveredBlock46Value0 := recoveredLocal2.
    recoveredBlock46Value1 := (recoveredBlock46Value0) , ('.').
    recoveredBlock46Value2 := recoveredBlock46Arg1.
    recoveredBlock46Value3 := (recoveredBlock46Value2) name.
    recoveredBlock46Value4 := (recoveredBlock46Value1) , (recoveredBlock46Value3).
    recoveredBlock46Value5 := (recoveredBlock46Value4) , ('.a2l').
    recoveredLocal4 := recoveredBlock46Value5.
    recoveredBlock46Value6 := CfsFileDescriptor.
    recoveredBlock46Value7 := recoveredLocal4.
    (recoveredBlock46Value6) remove: (recoveredBlock46Value7).
    recoveredBlock46Value8 := ASAP2FileReader.
    recoveredBlock46Value9 := recoveredLocal4.
    recoveredBlock46Value10 := recoveredBlock46Arg1.
    recoveredBlock46Value11 := (recoveredBlock46Value8) createFile: (recoveredBlock46Value9) project: (recoveredBlock46Value10).
    recoveredBlock46Value11
].
    (recoveredValue13) do: (recoveredValue15).
    recoveredValue16 := recoveredLocal4.
    ^recoveredValue16
! !

