"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbh.ic method 0x200001b8; bytecode file offset 0x11d4c"
!AbtNlsRequest methodsFor: 'recovered'!
fileNameBasedRequest
    | recoveredValue0 |
    recoveredValue0 := (self) request.
    ^recoveredValue0
! !

"abtdbh.ic method 0x20000424; bytecode file offset 0x11ef8"
!AbtNlsRequest methodsFor: 'recovered'!
isResolved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) resolution.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"abtdbh.ic method 0x200009c8; bytecode file offset 0x124a4"
!AbtNlsRequest methodsFor: 'recovered'!
resolve
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) resolveSelector.
    recoveredValue2 := (self) perform: (recoveredValue1).
    ^recoveredValue2
! !

"abtdbh.ic method 0x20000a8c; bytecode file offset 0x12584"
!AbtNlsRequest methodsFor: 'recovered'!
request
    | recoveredValue0 |
    recoveredValue0 := request.
    ^recoveredValue0
! !

"abtdbh.ic method 0x20000ae8; bytecode file offset 0x125b8"
!AbtNlsRequest methodsFor: 'recovered'!
resolution
    | recoveredValue0 |
    recoveredValue0 := resolution.
    ^recoveredValue0
! !

"abtdbh.ic method 0x20000b0c; bytecode file offset 0x125dc"
!AbtNlsRequest methodsFor: 'recovered'!
effectivePath
    | recoveredValue0 |
    recoveredValue0 := effectivePath.
    ^recoveredValue0
! !

"abtdbh.ic method 0x20000b28; bytecode file offset 0x12608"
!AbtNlsRequest methodsFor: 'recovered'!
effectiveLocale
    | recoveredValue0 |
    recoveredValue0 := effectiveLocale.
    ^recoveredValue0
! !

"abtdbh.ic method 0x20000d0c; bytecode file offset 0x127e4"
!AbtNlsRequest methodsFor: 'recovered'!
abtIsNlsRequest
    ^true
! !

"abtdbh.ic method 0x20000d30; bytecode file offset 0x12838"
!AbtNlsRequest methodsFor: 'recovered'!
cannotResolve
    ^false
! !

"abtdbh.ic method 0x2000171c; bytecode file offset 0x13224"
!AbtNlsRequest methodsFor: 'recovered'!
request: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    request := recoveredValue0.
    ^self
! !

"abtdbh.ic method 0x20001788; bytecode file offset 0x13258"
!AbtNlsRequest methodsFor: 'recovered'!
resolution: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    resolution := recoveredValue0.
    ^self
! !

"abtdbh.ic method 0x200017bc; bytecode file offset 0x13294"
!AbtNlsRequest methodsFor: 'recovered'!
effectivePath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    effectivePath := recoveredValue0.
    ^self
! !

"abtdbh.ic method 0x20001808; bytecode file offset 0x132d8"
!AbtNlsRequest methodsFor: 'recovered'!
effectiveLocale: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    effectiveLocale := recoveredValue0.
    ^self
! !

"abtdbh.ic method 0x2000204c; bytecode file offset 0x13b28"
!AbtNlsRequest methodsFor: 'recovered'!
clearResolution
    (self) resolution: (nil).
    (self) effectivePath: (nil).
    (self) effectiveLocale: (nil).
    ^self
! !

"abtdbh.ic method 0x200053dc; bytecode file offset 0x16ed0"
!AbtNlsRequest methodsFor: 'recovered'!
debugPrintOn: recoveredArg1
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) request.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) isString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) request.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) request.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) tab.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) resolution.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) tab.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) effectivePath.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) tab.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) effectiveLocale.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

