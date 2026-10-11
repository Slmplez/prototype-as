"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200163b8; bytecode file offset 0x92209c"
!SGDeltaT methodsFor: 'recovered'!
mdlTypeLabel
    ^'deltaT'
! !

"ASDBase.ic method 0x20018aac; bytecode file offset 0x92209c"
!SGDeltaT methodsFor: 'recovered'!
defaultPhysicalMaximum
    ^#[106 23 211 76 247 198 160 64]
! !

"ASDBase.ic method 0x2001c6f4; bytecode file offset 0x92209c"
!SGDeltaT methodsFor: 'recovered'!
iconName
    ^'ElementTypeVariableDT'
! !

"ASDBase.ic method 0x20021440; bytecode file offset 0x92209c"
!SGDeltaT methodsFor: 'recovered'!
getBasicModelType
    ^'dt'
! !

"ASDBase.ic method 0x200240ec; bytecode file offset 0x92209c"
!SGDeltaT methodsFor: 'recovered'!
defaultScale
    | recoveredValue0 |
    recoveredValue0 := (Fraction) numerator: (15625) denominator: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20026da0; bytecode file offset 0x923928"
!SGDeltaT methodsFor: 'recovered'!
defaultTargetMaximum
    ^#[106 23 211 76 247 198 160 64]
! !

"ASDBase.ic method 0x2003cef8; bytecode file offset 0x93bf94"
!SGDeltaT methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGReservedNames.
    recoveredValue1 := (recoveredValue0) dtName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dcc8; bytecode file offset 0x93bf94"
!SGDeltaT methodsFor: 'recovered'!
defaultImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt32Unsigned.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e328; bytecode file offset 0x93bf94"
!SGDeltaT methodsFor: 'recovered'!
possibleTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007558c; bytecode file offset 0x9757c8"
!SGDeltaT methodsFor: 'recovered'!
isSGDeltaT
    ^true
! !

"ASDBase.ic method 0x200d9724; bytecode file offset 0x9d5fe4"
!SGDeltaT methodsFor: 'recovered'!
convertLimiterSettingsForAscet50DataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) extraImplInfo.
    (recoveredValue1) setAutomaticResolution.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) extraImplInfo.
    (recoveredValue3) clearLimitOverflow.
    ^self
! !

"ASDBase.ic method 0x20154da0; bytecode file offset 0xa5167c"
!SGDeltaT methodsFor: 'recovered'!
sameType: recoveredArg1
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
            recoveredStack0 := super sameType: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SGReal.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034c474; bytecode file offset 0xc48d78"
!SGDeltaT methodsFor: 'recovered'!
createTargetImplementation
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := RBFormulaLinear.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) c0: (0).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) c1: (1000000).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := SGReservedNames.
    recoveredValue6 := (recoveredValue5) dtName.
    (recoveredValue4) name: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) unit: ('s').
    recoveredLocal1 := recoveredValue1.
    recoveredValue8 := RBArithmeticElement.
    recoveredValue9 := (recoveredValue8) createDefault.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) formula: (recoveredValue11).
    recoveredValue12 := recoveredValue9.
    recoveredValue13 := RBInterval.
    recoveredValue14 := (self) defaultTargetMaximum.
    recoveredValue15 := (recoveredValue13) left: (#[0 0 0 0 0 0 0 0]) right: (recoveredValue14).
    (recoveredValue12) setPhysInterval: (recoveredValue15).
    recoveredValue16 := recoveredValue9.
    (recoveredValue16) unit: ('s').
    recoveredValue17 := recoveredValue9.
    recoveredValue18 := (self) defaultImplType.
    (recoveredValue17) setImplType: (recoveredValue18).
    recoveredValue19 := recoveredValue9.
    (recoveredValue19) updateImplementationRepresentation.
    ^recoveredValue9
! !

"ASDBase.ic method 0x203dd28c; bytecode file offset 0xcd9bac"
!SGDeltaT methodsFor: 'recovered'!
createImplementation
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := ('Kk') == ('Call_62417').
    recoveredValue1 := RBFormulaLinear.
    recoveredValue2 := (recoveredValue1) createDefault.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) c0: (0).
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := (self) defaultScale.
    (recoveredValue4) c1: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := SGReservedNames.
    recoveredValue8 := (recoveredValue7) dtName.
    (recoveredValue6) name: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) unit: ('s').
    recoveredLocal2 := recoveredValue2.
    recoveredValue10 := RBArithmeticElement.
    recoveredValue11 := (recoveredValue10) createDefault.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := recoveredLocal2.
    (recoveredValue12) formula: (recoveredValue13).
    recoveredValue14 := recoveredValue11.
    recoveredValue15 := RBInterval.
    recoveredValue16 := (self) defaultPhysicalMaximum.
    recoveredValue17 := (recoveredValue15) left: (#[0 0 0 0 0 0 0 0]) right: (recoveredValue16).
    (recoveredValue14) setPhysInterval: (recoveredValue17).
    recoveredValue18 := recoveredValue11.
    (recoveredValue18) unit: ('s').
    recoveredValue19 := recoveredValue11.
    recoveredValue20 := (self) defaultImplType.
    (recoveredValue19) setImplType: (recoveredValue20).
    recoveredValue21 := recoveredValue11.
    (recoveredValue21) updateImplementationRepresentation.
    recoveredLocal1 := recoveredValue11.
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := (recoveredValue22) extraImplInfo.
    recoveredValue24 := recoveredValue23.
    (recoveredValue24) setAutomaticResolution.
    recoveredValue25 := recoveredValue23.
    (recoveredValue25) clearLimitOverflow.
    (recoveredValue23) dontUseLimiter.
    recoveredValue26 := recoveredLocal1.
    (self) checkImplementationMaster: (recoveredValue26).
    recoveredValue27 := recoveredLocal1.
    ^recoveredValue27
! !

