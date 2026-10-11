"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d8dc; bytecode file offset 0x90a4b8"
!SGAbstractImplStrategy methodsFor: 'recovered'!
isMdlVarNeedsImpl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077244; bytecode file offset 0x9757c8"
!SGAbstractImplStrategy methodsFor: 'recovered'!
isBindingInfoEnabled
    ^true
! !

"ASDBase.ic method 0x200b2d74; bytecode file offset 0x9af634"
!SGAbstractImplStrategy methodsFor: 'recovered'!
representableBits
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) keyRepresentableBits.
    recoveredValue2 := (self) getOption: (recoveredValue1) default: (32).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200fbac4; bytecode file offset 0x9f838c"
!SGAbstractImplStrategy methodsFor: 'recovered'!
createUnsignedImplTypeFromInterval: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := RBArithmeticElement.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) ileBuilder.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) createUnsignedImplTypeFromInterval: (recoveredValue4).
    (recoveredValue2) setImplType: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20122a8c; bytecode file offset 0xa1f34c"
!SGAbstractImplStrategy methodsFor: 'recovered'!
checkImplementationComplianceForElement: recoveredArg1 mdlBuilder: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlReference.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) checkMdlImplementationComplianceOf: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

