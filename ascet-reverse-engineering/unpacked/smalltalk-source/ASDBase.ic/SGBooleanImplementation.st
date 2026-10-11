"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006ab54; bytecode file offset 0x967a18"
!SGBooleanImplementation methodsFor: 'recovered'!
xmlGetImplType
    | recoveredValue0 |
    recoveredValue0 := implType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200722d0; bytecode file offset 0x96ee04"
!SGBooleanImplementation methodsFor: 'recovered'!
defaultBitMask
    ^1
! !

"ASDBase.ic method 0x2007f244; bytecode file offset 0x97c330"
!SGBooleanImplementation methodsFor: 'recovered'!
isASDPrimitiveConfigObject
    ^false
! !

"ASDBase.ic method 0x200c2ee4; bytecode file offset 0x9bfde0"
!SGBooleanImplementation methodsFor: 'recovered'!
extraImplInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    extraImplInfo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cccc8; bytecode file offset 0x9c958c"
!SGBooleanImplementation methodsFor: 'recovered'!
formula
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBFormulaId.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) name: ('ident').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d00fc; bytecode file offset 0x9cc9c8"
!SGBooleanImplementation methodsFor: 'recovered'!
getImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kli') == ('Call_86140').
    recoveredValue1 := implType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2016f840; bytecode file offset 0xa6c108"
!SGBooleanImplementation methodsFor: 'recovered'!
extraImplInfo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := extraImplInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := SGExtraImplInfo.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) createDefault.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultBitMask.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitmask: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) extraImplInfo: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := extraImplInfo.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018a8ac; bytecode file offset 0xa87178"
!SGBooleanImplementation methodsFor: 'recovered'!
asASDPrimitiveImplObjectModelType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := RBDataBoolean.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) extraImplInfo.
    (recoveredValue2) access: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := implType.
    (recoveredValue4) setImplType: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue6) asASDPrimitiveImplObjectModelType: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20194d00; bytecode file offset 0xa915d0"
!SGBooleanImplementation methodsFor: 'recovered'!
convertImplDataElementForAscet50ModelType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    super convertImplDataElementForAscet50ModelType: (recoveredValue0).
    recoveredValue1 := RBDataBoolean.
    recoveredValue2 := (recoveredValue1) createDefault.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) extraImplInfo.
    (recoveredValue3) access: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := implType.
    (recoveredValue5) setImplType: (recoveredValue6).
    ^recoveredValue2
! !

