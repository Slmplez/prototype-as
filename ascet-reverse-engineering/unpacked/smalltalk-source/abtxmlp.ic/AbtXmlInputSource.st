"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000000; bytecode file offset 0x187f0"
!AbtXmlInputSource methodsFor: 'recovered'!
publicId
    ^self
! !

"abtxmlp.ic method 0x20000080; bytecode file offset 0x188a8"
!AbtXmlInputSource methodsFor: 'recovered'!
abtAsXmlInputSource
    ^self
! !

"abtxmlp.ic method 0x200002e0; bytecode file offset 0x18bb0"
!AbtXmlInputSource methodsFor: 'recovered'!
stream
    | recoveredValue0 |
    recoveredValue0 := (self) characterStream.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000d14; bytecode file offset 0x19564"
!AbtXmlInputSource methodsFor: 'recovered'!
byteStream
    | recoveredValue0 |
    recoveredValue0 := byteStream.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000dc0; bytecode file offset 0x19600"
!AbtXmlInputSource methodsFor: 'recovered'!
characterStream
    | recoveredValue0 |
    recoveredValue0 := characterStream.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000f00; bytecode file offset 0x19700"
!AbtXmlInputSource methodsFor: 'recovered'!
systemId
    | recoveredValue0 |
    recoveredValue0 := systemId.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x20000f7c; bytecode file offset 0x19774"
!AbtXmlInputSource methodsFor: 'recovered'!
encoding
    | recoveredValue0 |
    recoveredValue0 := encoding.
    ^recoveredValue0
! !

"abtxmlp.ic method 0x2000246c; bytecode file offset 0x1ac8c"
!AbtXmlInputSource methodsFor: 'recovered'!
byteStream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    byteStream := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x200024f0; bytecode file offset 0x1ad18"
!AbtXmlInputSource methodsFor: 'recovered'!
characterStream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    characterStream := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x2000256c; bytecode file offset 0x1ad9c"
!AbtXmlInputSource methodsFor: 'recovered'!
publicId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    publicId := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x200025e8; bytecode file offset 0x1ae20"
!AbtXmlInputSource methodsFor: 'recovered'!
systemId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    systemId := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002674; bytecode file offset 0x1ae94"
!AbtXmlInputSource methodsFor: 'recovered'!
encoding: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    encoding := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x20002990; bytecode file offset 0x1b18c"
!AbtXmlInputSource methodsFor: 'recovered'!
decodedStream
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) codePageConverter.
    recoveredValue2 := (self) characterStream.
    recoveredValue3 := (self) encoding.
    recoveredValue4 := (recoveredValue1) convertStream: (recoveredValue2) withEncoding: (recoveredValue3).
    ^recoveredValue4
! !

"abtxmlp.ic method 0x2000493c; bytecode file offset 0x1d130"
!AbtXmlInputSource methodsFor: 'recovered'!
close
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) byteStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) byteStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) characterStream.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) characterStream.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

