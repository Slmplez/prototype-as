"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20026110; bytecode file offset 0x923928"
!DBProxy class methodsFor: 'recovered'!
unLinkInstVarNames
    ^#('interface' 'istate')
! !

"ASDBase.ic method 0x2002f7c4; bytecode file offset 0x934580"
!DBProxy class methodsFor: 'recovered'!
createUndefined
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initializeUndefined.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030b14; bytecode file offset 0x934580"
!DBProxy class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20071ff8; bytecode file offset 0x96ee04"
!DBProxy class methodsFor: 'recovered'!
proxyID
    ^1
! !

"ASDBase.ic method 0x20087c80; bytecode file offset 0x9845b8"
!DBProxy class methodsFor: 'recovered'!
indices
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := DBGlobalIdKey.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009534c; bytecode file offset 0x991c58"
!DBProxy class methodsFor: 'recovered'!
createWithBytesInDefaultInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) library.
    recoveredValue2 := (self) createWithBytes: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200df964; bytecode file offset 0x9dc238"
!DBProxy class methodsFor: 'recovered'!
emCreate: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) dbInterface.
    (recoveredValue1) dbInterface: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dfcb0; bytecode file offset 0x9dc58c"
!DBProxy class methodsFor: 'recovered'!
createWithBytes: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createWithBytes: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue2) dbInterface: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2012712c; bytecode file offset 0xa239ec"
!DBProxy class methodsFor: 'recovered'!
createWithBytes: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) globalId: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) istate: (0).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20138d58; bytecode file offset 0xa3561c"
!DBProxy class methodsFor: 'recovered'!
createFromRecord: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) globalId.
    (recoveredValue1) globalId: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) istate: (0).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201397a0; bytecode file offset 0xa36058"
!DBProxy class methodsFor: 'recovered'!
emBehaviorId
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DBProxy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 150.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014b5bc; bytecode file offset 0xa47e80"
!DBProxy class methodsFor: 'recovered'!
createFromRecord: recoveredArg1 at: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) globalIdAt: (recoveredValue3).
    (recoveredValue1) globalId: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) istate: (0).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2032d6f4; bytecode file offset 0xc29fd0"
!DBProxy class methodsFor: 'recovered'!
proxyClasses
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (6).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := DBProxy.
    recoveredValue4 := (recoveredValue3) proxyID.
    recoveredValue5 := DBProxy.
    (recoveredValue2) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := DBAttributeProxy.
    recoveredValue8 := (recoveredValue7) proxyID.
    recoveredValue9 := DBAttributeProxy.
    (recoveredValue6) at: (recoveredValue8) put: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := DBVersionProxy.
    recoveredValue12 := (recoveredValue11) proxyID.
    recoveredValue13 := DBVersionProxy.
    (recoveredValue10) at: (recoveredValue12) put: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := DBSearchProxy.
    recoveredValue16 := (recoveredValue15) proxyID.
    recoveredValue17 := DBSearchProxy.
    (recoveredValue14) at: (recoveredValue16) put: (recoveredValue17).
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := DBObject.
    recoveredValue20 := (recoveredValue19) proxyID.
    recoveredValue21 := DBObject.
    (recoveredValue18) at: (recoveredValue20) put: (recoveredValue21).
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := DBLinkProxy.
    recoveredValue24 := (recoveredValue23) proxyID.
    recoveredValue25 := DBLinkProxy.
    (recoveredValue22) at: (recoveredValue24) put: (recoveredValue25).
    recoveredValue26 := recoveredLocal1.
    ^recoveredValue26
! !

"ASDBase.ic method 0x2058c39c; bytecode file offset 0xe88c6c"
!DBProxy class methodsFor: 'recovered'!
globalIdAsString: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) at: (1).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) printOn: (recoveredValue4) base: (16) showRadix: (false).
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) nextPut: ($_).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) at: (2).
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) printOn: (recoveredValue8) base: (16) showRadix: (false).
    recoveredValue9 := recoveredLocal1.
    (recoveredValue9) nextPut: ($_).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) at: (3).
    recoveredValue12 := recoveredLocal1.
    (recoveredValue11) printOn: (recoveredValue12) base: (16) showRadix: (false).
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) at: (4).
    recoveredValue15 := recoveredLocal1.
    (recoveredValue14) printOn: (recoveredValue15) base: (16) showRadix: (false).
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) at: (5).
    recoveredValue18 := recoveredLocal1.
    (recoveredValue17) printOn: (recoveredValue18) base: (16) showRadix: (false).
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := (recoveredValue19) at: (6).
    recoveredValue21 := recoveredLocal1.
    (recoveredValue20) printOn: (recoveredValue21) base: (16) showRadix: (false).
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := (recoveredValue22) at: (7).
    recoveredValue24 := recoveredLocal1.
    (recoveredValue23) printOn: (recoveredValue24) base: (16) showRadix: (false).
    recoveredValue25 := recoveredArg1.
    recoveredValue26 := (recoveredValue25) at: (8).
    recoveredValue27 := recoveredLocal1.
    (recoveredValue26) printOn: (recoveredValue27) base: (16) showRadix: (false).
    recoveredValue28 := recoveredLocal1.
    (recoveredValue28) nextPut: ($.).
    recoveredValue29 := recoveredArg1.
    recoveredValue30 := (recoveredValue29) at: (9).
    recoveredValue31 := recoveredLocal1.
    (recoveredValue30) printOn: (recoveredValue31) base: (16) showRadix: (false).
    recoveredValue32 := recoveredArg1.
    recoveredValue33 := (recoveredValue32) at: (10).
    recoveredValue34 := recoveredLocal1.
    (recoveredValue33) printOn: (recoveredValue34) base: (16) showRadix: (false).
    recoveredValue35 := recoveredArg1.
    recoveredValue36 := (recoveredValue35) at: (11).
    recoveredValue37 := recoveredLocal1.
    (recoveredValue36) printOn: (recoveredValue37) base: (16) showRadix: (false).
    recoveredValue38 := recoveredArg1.
    recoveredValue39 := (recoveredValue38) at: (12).
    recoveredValue40 := recoveredLocal1.
    (recoveredValue39) printOn: (recoveredValue40) base: (16) showRadix: (false).
    recoveredValue41 := recoveredLocal1.
    (recoveredValue41) nextPut: ($ ).
    recoveredValue42 := recoveredArg1.
    recoveredValue43 := (recoveredValue42) at: (13).
    recoveredValue44 := recoveredLocal1.
    (recoveredValue43) printOn: (recoveredValue44) base: (16) showRadix: (false).
    recoveredValue45 := recoveredArg1.
    recoveredValue46 := (recoveredValue45) at: (14).
    recoveredValue47 := recoveredLocal1.
    (recoveredValue46) printOn: (recoveredValue47) base: (16) showRadix: (false).
    recoveredValue48 := recoveredArg1.
    recoveredValue49 := (recoveredValue48) at: (15).
    recoveredValue50 := recoveredLocal1.
    (recoveredValue49) printOn: (recoveredValue50) base: (16) showRadix: (false).
    recoveredValue51 := recoveredArg1.
    recoveredValue52 := (recoveredValue51) at: (16).
    recoveredValue53 := recoveredLocal1.
    (recoveredValue52) printOn: (recoveredValue53) base: (16) showRadix: (false).
    recoveredValue54 := recoveredLocal1.
    (recoveredValue54) nextPut: ($.).
    recoveredValue55 := recoveredArg1.
    recoveredValue56 := (recoveredValue55) at: (17).
    recoveredValue57 := recoveredLocal1.
    (recoveredValue56) printOn: (recoveredValue57) base: (16) showRadix: (false).
    recoveredValue58 := recoveredArg1.
    recoveredValue59 := (recoveredValue58) at: (18).
    recoveredValue60 := recoveredLocal1.
    (recoveredValue59) printOn: (recoveredValue60) base: (16) showRadix: (false).
    recoveredValue61 := recoveredLocal1.
    (recoveredValue61) nextPut: ($.).
    recoveredValue62 := recoveredArg1.
    recoveredValue63 := (recoveredValue62) at: (19).
    recoveredValue64 := recoveredLocal1.
    (recoveredValue63) printOn: (recoveredValue64) base: (16) showRadix: (false).
    recoveredValue65 := recoveredArg1.
    recoveredValue66 := (recoveredValue65) at: (20).
    recoveredValue67 := recoveredLocal1.
    (recoveredValue66) printOn: (recoveredValue67) base: (16) showRadix: (false).
    recoveredValue68 := recoveredLocal1.
    recoveredValue69 := (recoveredValue68) contents.
    ^recoveredValue69
! !

