"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b8924; bytecode file offset 0x9b51dc"
!DBXmlReferenceFixer methodsFor: 'recovered'!
fixMain: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := main.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := params.
    (recoveredValue0) renameIn: (recoveredValue1) xsltParams: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200de2a0; bytecode file offset 0x9dab5c"
!DBXmlReferenceFixer methodsFor: 'recovered'!
initForName: recoveredArg1 new: recoveredArg2 items: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) initOn: (recoveredValue0) new: (recoveredValue1) items: (recoveredValue2) match: ('exact').
    ^recoveredValue3
! !

"ASDBase.ic method 0x20148590; bytecode file offset 0xa44e54"
!DBXmlReferenceFixer methodsFor: 'recovered'!
initForNamespace: recoveredArg1 new: recoveredArg2 items: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) , ('/').
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) , ('/').
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (self) initOn: (recoveredValue1) new: (recoveredValue3) items: (recoveredValue4) match: ('beginning').
    ^recoveredValue5
! !

"ASDBase.ic method 0x2028b59c; bytecode file offset 0xb87e6c"
!DBXmlReferenceFixer methodsFor: 'recovered'!
execute
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := items.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := 'todo'.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) notNil.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isOnDisk.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 22] ifFalse: [recoveredBlock6PC := 39].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isDefaultProject.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 39] ifFalse: [recoveredBlock6PC := 30].
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) objectClass.
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) basePath.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) dbXmlFixReferences: (recoveredBlock6Stack2) basePath: (recoveredBlock6Stack3).
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202908b4; bytecode file offset 0xb8d194"
!DBXmlReferenceFixer methodsFor: 'recovered'!
initOn: recoveredArg1 new: recoveredArg2 items: recoveredArg3 match: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg3.
    items := recoveredValue0.
    recoveredValue1 := Array.
    recoveredValue2 := Util.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) quoteAsXSLTParam: (recoveredValue3).
    recoveredValue5 := Util.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue5) quoteAsXSLTParam: (recoveredValue6).
    recoveredValue8 := Util.
    recoveredValue9 := recoveredArg4.
    recoveredValue10 := (recoveredValue8) quoteAsXSLTParam: (recoveredValue9).
    recoveredValue11 := (recoveredValue1) with: ('in') with: (recoveredValue4) with: ('out') with: (recoveredValue7) with: ('match') with: (recoveredValue10).
    params := recoveredValue11.
    recoveredValue12 := DBXmlRenamer.
    recoveredValue13 := (recoveredValue12) new.
    recoveredValue14 := (recoveredValue13) initOn: ('main').
    main := recoveredValue14.
    ^self
! !

