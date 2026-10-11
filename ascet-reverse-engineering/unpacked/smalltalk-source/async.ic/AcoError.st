"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"async.ic method 0x20000118; bytecode file offset 0x72e0"
!AcoError methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
primitiveGetGpInfoString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x2000049c; bytecode file offset 0x7644"
!AcoError methodsFor: 'recovered'!
gpInfo
    | recoveredValue0 |
    recoveredValue0 := gpInfo.
    ^recoveredValue0
! !

"async.ic method 0x2000062c; bytecode file offset 0x77c4"
!AcoError methodsFor: 'recovered'!
isAcoError
    ^true
! !

"async.ic method 0x200008f8; bytecode file offset 0x7a90"
!AcoError methodsFor: 'recovered'!
getGpInfoString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) primitiveGetGpInfoString: (recoveredValue0).
    (self) gpInfo: (recoveredValue1).
    recoveredValue2 := gpInfo.
    ^recoveredValue2
! !

"async.ic method 0x20000968; bytecode file offset 0x7b08"
!AcoError methodsFor: 'recovered'!
gpInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    gpInfo := recoveredValue0.
    ^self
! !

"async.ic method 0x2000104c; bytecode file offset 0x81f0"
!AcoError methodsFor: 'recovered'!
identifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IdentifierDictionary.
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
    | block28000b28Value0 |
    block28000b28Value0 := MxEse10.
    block28000b28Value0
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"async.ic method 0x2000107c; bytecode file offset 0x8220"
!AcoError methodsFor: 'recovered'!
message
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MessageDictionary.
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
    'Unknown AcoError Code'
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"async.ic method 0x2000115c; bytecode file offset 0x8308"
!AcoError methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := MxEse11.
    recoveredValue2 := (self) identifier.
    recoveredValue3 := (self) errorCode.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := (self) message.
    recoveredValue6 := (recoveredValue1) bindWith: (recoveredValue2) with: (recoveredValue4) with: (recoveredValue5).
    (recoveredValue0) nextPutAll: (recoveredValue6).
    ^self
! !

