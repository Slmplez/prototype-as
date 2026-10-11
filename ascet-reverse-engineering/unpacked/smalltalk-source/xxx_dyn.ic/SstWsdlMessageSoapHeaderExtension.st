"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001570; bytecode file offset 0x626a4"
!SstWsdlMessageSoapHeaderExtension methodsFor: 'recovered'!
localName
    ^'header'
! !

"xxx_dyn.ic method 0x200015d0; bytecode file offset 0x626a4"
!SstWsdlMessageSoapHeaderExtension methodsFor: 'recovered'!
subElementSelectors
    ^#('soapHeaderFaultExtensions')
! !

"xxx_dyn.ic method 0x20004288; bytecode file offset 0x65384"
!SstWsdlMessageSoapHeaderExtension methodsFor: 'recovered'!
message
    | recoveredValue0 |
    recoveredValue0 := message.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200042d4; bytecode file offset 0x653d8"
!SstWsdlMessageSoapHeaderExtension methodsFor: 'recovered'!
part
    | recoveredValue0 |
    recoveredValue0 := part.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004e94; bytecode file offset 0x65fa4"
!SstWsdlMessageSoapHeaderExtension methodsFor: 'recovered'!
headerFault: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) addExtension: (recoveredValue0).
    ^self
! !

"xxx_dyn.ic method 0x200067b8; bytecode file offset 0x67888"
!SstWsdlMessageSoapHeaderExtension methodsFor: 'recovered'!
messageObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) message.
    recoveredValue1 := (self) resolve: (recoveredValue0) usingSelector: ('messages').
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20007748; bytecode file offset 0x6887c"
!SstWsdlMessageSoapHeaderExtension methodsFor: 'recovered'!
attributeSelectors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super attributeSelectors.
    recoveredValue1 := (recoveredValue0) , (#('part' 'message')).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200087f0; bytecode file offset 0x698bc"
!SstWsdlMessageSoapHeaderExtension methodsFor: 'recovered'!
message: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    message := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000884c; bytecode file offset 0x69910"
!SstWsdlMessageSoapHeaderExtension methodsFor: 'recovered'!
part: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    part := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000d0e8; bytecode file offset 0x6e1bc"
!SstWsdlMessageSoapHeaderExtension methodsFor: 'recovered'!
parts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) part.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) part.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200149fc; bytecode file offset 0x75ad0"
!SstWsdlMessageSoapHeaderExtension methodsFor: 'recovered'!
schemaElement
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) messageObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) part.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) partNamed: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeObject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

