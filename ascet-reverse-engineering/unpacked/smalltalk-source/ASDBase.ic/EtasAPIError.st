"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a340; bytecode file offset 0x908be4"
!EtasAPIError methodsFor: 'recovered'!
isError
    | recoveredValue0 |
    recoveredValue0 := (self) isAPIError.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018a94; bytecode file offset 0x92209c"
!EtasAPIError methodsFor: 'recovered'!
asCebraFormat
    ^'E'
! !

"ASDBase.ic method 0x20033284; bytecode file offset 0x934580"
!EtasAPIError methodsFor: 'recovered'!
asCebraSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errorMessage.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004986c; bytecode file offset 0x947128"
!EtasAPIError methodsFor: 'recovered'!
errorMessage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errorCode.
    recoveredValue1 := (self) errorForCode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066154; bytecode file offset 0x963428"
!EtasAPIError methodsFor: 'recovered'!
errorCode
    | recoveredValue0 |
    recoveredValue0 := errorCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200662ac; bytecode file offset 0x963428"
!EtasAPIError methodsFor: 'recovered'!
errorObject
    | recoveredValue0 |
    recoveredValue0 := errorCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077434; bytecode file offset 0x9757c8"
!EtasAPIError methodsFor: 'recovered'!
isAPIError
    ^true
! !

"ASDBase.ic method 0x200a03b4; bytecode file offset 0x99cc80"
!EtasAPIError methodsFor: 'recovered'!
asCebraLength
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errorMessage.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (4) + (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a1f04; bytecode file offset 0x99e870"
!EtasAPIError methodsFor: 'recovered'!
asCebraString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorCode.
    recoveredValue1 := (recoveredValue0) asCebraString.
    recoveredValue2 := (self) errorMessage.
    recoveredValue3 := (recoveredValue2) asCebraString.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200be5b4; bytecode file offset 0x9bb178"
!EtasAPIError methodsFor: 'recovered'!
errorCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorCode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf240; bytecode file offset 0x9bc0b4"
!EtasAPIError methodsFor: 'recovered'!
errorObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fa8fc; bytecode file offset 0x9f71d0"
!EtasAPIError methodsFor: 'recovered'!
initialize
    super initialize.
    (self) errorCode: (0).
    ^self
! !

"ASDBase.ic method 0x20165798; bytecode file offset 0xa62074"
!EtasAPIError methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('API-Error: "').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) errorMessage.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    (recoveredValue1) nextPut: ($").
    ^self
! !

"ASDBase.ic method 0x201781f4; bytecode file offset 0xa74ad0"
!EtasAPIError methodsFor: 'recovered'!
errorForCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) CodeErrorTable.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [
    ^'unknown API error'
].
    recoveredValue4 := (recoveredValue1) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

