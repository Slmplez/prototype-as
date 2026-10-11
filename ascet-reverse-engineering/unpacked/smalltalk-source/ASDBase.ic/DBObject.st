"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000ac58; bytecode file offset 0x908be4"
!DBObject methodsFor: 'recovered'!
asRBDBReference
    | recoveredValue0 |
    recoveredValue0 := (self) asRBDBProxyObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d108; bytecode file offset 0x969c04"
!DBObject methodsFor: 'recovered'!
objectState
    | recoveredValue0 |
    recoveredValue0 := objectState.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d51c; bytecode file offset 0x96a390"
!DBObject methodsFor: 'recovered'!
referenceState
    | recoveredValue0 |
    recoveredValue0 := referenceState.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c3708; bytecode file offset 0x9c058c"
!DBObject methodsFor: 'recovered'!
objectState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    objectState := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c409c; bytecode file offset 0x9c0bf0"
!DBObject methodsFor: 'recovered'!
referenceState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    referenceState := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cb100; bytecode file offset 0x9c7b3c"
!DBObject methodsFor: 'recovered'!
asLabelProxy: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) asLabelProxy.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) function: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ce81c; bytecode file offset 0x9cb0e8"
!DBObject methodsFor: 'recovered'!
updateToNewOid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interface.
    recoveredValue1 := (recoveredValue0) getNewOidBytes.
    globalId := recoveredValue1.
    (self) setModified.
    ^self
! !

"ASDBase.ic method 0x2011cb40; bytecode file offset 0xa193fc"
!DBObject methodsFor: 'recovered'!
initializeUndefined
    super initializeUndefined.
    referenceState := 0.
    objectState := 0.
    ^self
! !

"ASDBase.ic method 0x20145b54; bytecode file offset 0xa42420"
!DBObject methodsFor: 'recovered'!
updateDefaultValues: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super updateDefaultValues: (recoveredValue0).
    objectState := 0.
    referenceState := 0.
    ^self
! !

"ASDBase.ic method 0x20145b64; bytecode file offset 0xa42420"
!DBObject methodsFor: 'recovered'!
setDefaultValues: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super setDefaultValues: (recoveredValue0).
    objectState := 0.
    referenceState := 0.
    ^self
! !

"ASDBase.ic method 0x2019d6cc; bytecode file offset 0xa99f9c"
!DBObject methodsFor: 'recovered'!
dbXmlDescWithRefs: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super dbXmlDesc: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := EtasXmlSupportDOMElement.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := (recoveredValue3) initOn: ('referenced').
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) addSubElement: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201e2098; bytecode file offset 0xade958"
!DBObject methodsFor: 'recovered'!
completeName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := className.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := className.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            className := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            name := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := className.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := '/'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := name.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202028d0; bytecode file offset 0xaff194"
!DBObject methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := objectState.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) nextPut: ($ ).
    recoveredValue5 := referenceState.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) printOn: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20205d20; bytecode file offset 0xb025f8"
!DBObject methodsFor: 'recovered'!
asDBExportProxy
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) class.
    recoveredValue1 := DBObject.
    recoveredValue2 := (recoveredValue0) equals: (recoveredValue1).
    (self) runtimeAssert: (recoveredValue2) additionalInfo: ('collected dbobjects should be dbobjects and NOT dbproxy').
    recoveredValue3 := super asDBExportProxy.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := name.
    (recoveredValue4) name: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := className.
    (recoveredValue6) className: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2023658c; bytecode file offset 0xb32e5c"
!DBObject methodsFor: 'recovered'!
asLabelProxy
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := DBLabelProxy.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := globalId.
    (recoveredValue2) globalId: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := interface.
    (recoveredValue5) dbInterface: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) istate: (0).
    recoveredValue8 := recoveredValue4.
    recoveredValue9 := className.
    (recoveredValue8) className: (recoveredValue9).
    recoveredValue10 := name.
    (recoveredValue4) name: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x2025bc94; bytecode file offset 0xb58568"
!DBObject methodsFor: 'recovered'!
asLabelProxy: recoveredArg1 id: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := DBLabelProxy.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := globalId.
    (recoveredValue2) globalId: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := interface.
    (recoveredValue5) dbInterface: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) istate: (0).
    recoveredValue8 := recoveredValue4.
    recoveredValue9 := recoveredArg2.
    (recoveredValue8) className: (recoveredValue9).
    recoveredValue10 := recoveredValue4.
    recoveredValue11 := name.
    (recoveredValue10) name: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    (recoveredValue4) function: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20271efc; bytecode file offset 0xb6e7d4"
!DBObject methodsFor: 'recovered'!
asTempLabelProxy: recoveredArg1 id: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := interface.
    recoveredValue1 := (recoveredValue0) labelDBProxyClass.
    recoveredValue2 := (recoveredValue1) tempClass.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := globalId.
    (recoveredValue4) globalId: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := interface.
    (recoveredValue7) dbInterface: (recoveredValue8).
    recoveredValue9 := recoveredValue6.
    (recoveredValue9) istate: (0).
    recoveredValue10 := recoveredValue6.
    recoveredValue11 := recoveredArg2.
    (recoveredValue10) className: (recoveredValue11).
    recoveredValue12 := recoveredValue6.
    recoveredValue13 := name.
    (recoveredValue12) name: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    (recoveredValue6) function: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

