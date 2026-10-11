"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000018; bytecode file offset 0x8fc8ec"
!AbtXmlInputSource methodsFor: 'recovered'!
publicId
    ^self
! !

"ASDBase.ic method 0x20001af0; bytecode file offset 0x8ffcfc"
!AbtXmlInputSource methodsFor: 'recovered'!
abtAsXmlInputSource
    ^self
! !

"ASDBase.ic method 0x20009b90; bytecode file offset 0x908be4"
!AbtXmlInputSource methodsFor: 'recovered'!
stream
    | recoveredValue0 |
    recoveredValue0 := (self) characterStream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200665e4; bytecode file offset 0x963428"
!AbtXmlInputSource methodsFor: 'recovered'!
byteStream
    | recoveredValue0 |
    recoveredValue0 := byteStream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066dec; bytecode file offset 0x9646f8"
!AbtXmlInputSource methodsFor: 'recovered'!
characterStream
    | recoveredValue0 |
    recoveredValue0 := characterStream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069cf0; bytecode file offset 0x966bdc"
!AbtXmlInputSource methodsFor: 'recovered'!
systemId
    | recoveredValue0 |
    recoveredValue0 := systemId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ab1c; bytecode file offset 0x967a18"
!AbtXmlInputSource methodsFor: 'recovered'!
encoding
    | recoveredValue0 |
    recoveredValue0 := encoding.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be864; bytecode file offset 0x9bb178"
!AbtXmlInputSource methodsFor: 'recovered'!
byteStream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    byteStream := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf450; bytecode file offset 0x9bc0b4"
!AbtXmlInputSource methodsFor: 'recovered'!
characterStream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    characterStream := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c078c; bytecode file offset 0x9bd228"
!AbtXmlInputSource methodsFor: 'recovered'!
publicId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    publicId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c11d0; bytecode file offset 0x9bdf14"
!AbtXmlInputSource methodsFor: 'recovered'!
systemId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    systemId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c17d4; bytecode file offset 0x9beac8"
!AbtXmlInputSource methodsFor: 'recovered'!
encoding: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    encoding := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5120; bytecode file offset 0x9d19e8"
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

"ASDBase.ic method 0x201901d0; bytecode file offset 0xa8ca90"
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

