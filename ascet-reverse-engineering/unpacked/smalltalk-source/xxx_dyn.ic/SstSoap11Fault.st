"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200006e4; bytecode file offset 0x619a4"
!SstSoap11Fault methodsFor: 'recovered'!
faultCode
    | recoveredValue0 |
    recoveredValue0 := (self) errorCode.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003f68; bytecode file offset 0x650c4"
!SstSoap11Fault methodsFor: 'recovered'!
faultActor
    | recoveredValue0 |
    recoveredValue0 := faultActor.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004074; bytecode file offset 0x65178"
!SstSoap11Fault methodsFor: 'recovered'!
faultString
    | recoveredValue0 |
    recoveredValue0 := faultString.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004e7c; bytecode file offset 0x65fa4"
!SstSoap11Fault methodsFor: 'recovered'!
faultCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) errorCode: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20008460; bytecode file offset 0x695c4"
!SstSoap11Fault methodsFor: 'recovered'!
faultActor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    faultActor := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008574; bytecode file offset 0x69688"
!SstSoap11Fault methodsFor: 'recovered'!
faultString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    faultString := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200206ac; bytecode file offset 0x817a8"
!SstSoap11Fault methodsFor: 'recovered'!
defaultExceptionForCode
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) faultCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ExSstSoapException.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) localName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := SstSoapFaultCodeClient.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := ExSstSoapClientException.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := SstSoapFaultCodeMustUnderstand.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := ExSstSoapMustUnderstandException.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := SstSoapFaultCodeServer.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := ExSstSoapServerException.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := SstSoapFaultCodeVersionMismatch.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := ExSstSoapVersionMismatchException.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := super defaultExceptionForCode.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

