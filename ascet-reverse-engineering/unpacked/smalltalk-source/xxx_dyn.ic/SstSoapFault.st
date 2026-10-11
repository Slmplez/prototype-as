"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200003e0; bytecode file offset 0x615ac"
!SstSoapFault methodsFor: 'recovered'!
declareNamespacePrefixes: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x20000480; bytecode file offset 0x615ac"
!SstSoapFault methodsFor: 'recovered'!
position: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x20000520; bytecode file offset 0x615fc"
!SstSoapFault methodsFor: 'recovered'!
addMisunderstoodHeaderForElement: recoveredArg1 context: recoveredArg2
    ^self
! !

"xxx_dyn.ic method 0x20000e54; bytecode file offset 0x6209c"
!SstSoapFault methodsFor: 'recovered'!
httpStatusCode
    | recoveredValue0 |
    recoveredValue0 := HttpInternalServerError.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20000f50; bytecode file offset 0x6209c"
!SstSoapFault methodsFor: 'recovered'!
defaultExceptionForCode
    | recoveredValue0 |
    recoveredValue0 := ExSstSoapException.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000177c; bytecode file offset 0x62c08"
!SstSoapFault methodsFor: 'recovered'!
abtXmlCacheKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) abtXmlCacheKey.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200029d0; bytecode file offset 0x63b1c"
!SstSoapFault methodsFor: 'recovered'!
signalException
    (self) raise.
    ^self
! !

"xxx_dyn.ic method 0x20003d38; bytecode file offset 0x64ed4"
!SstSoapFault methodsFor: 'recovered'!
detail
    | recoveredValue0 |
    recoveredValue0 := detail.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200047c8; bytecode file offset 0x6592c"
!SstSoapFault methodsFor: 'recovered'!
isSoapFault
    ^true
! !

"xxx_dyn.ic method 0x20005430; bytecode file offset 0x6655c"
!SstSoapFault methodsFor: 'recovered'!
raise
    | recoveredValue0 |
    recoveredValue0 := (self) exception.
    (self) raise: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x20006d7c; bytecode file offset 0x67e58"
!SstSoapFault methodsFor: 'recovered'!
raise: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) faultString.
    (recoveredValue0) signalWith: (recoveredValue1) with: (self).
    ^self
! !

"xxx_dyn.ic method 0x20008240; bytecode file offset 0x69404"
!SstSoapFault methodsFor: 'recovered'!
detail: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    detail := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200083b4; bytecode file offset 0x69508"
!SstSoapFault methodsFor: 'recovered'!
exception: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    exception := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000c8c4; bytecode file offset 0x6d98c"
!SstSoapFault methodsFor: 'recovered'!
exception
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := exception.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultExceptionForCode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := exception.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000faa4; bytecode file offset 0x70ba0"
!SstSoapFault methodsFor: 'recovered'!
identifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SstSoapErrorConstants.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) errorCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block2800aa4cValue0 block2800aa4cValue1 |
    block2800aa4cValue0 := NlsCatSSTG.
    block2800aa4cValue1 := (block2800aa4cValue0) indexedMsg: (2).
    block2800aa4cValue1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyAtValue: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

