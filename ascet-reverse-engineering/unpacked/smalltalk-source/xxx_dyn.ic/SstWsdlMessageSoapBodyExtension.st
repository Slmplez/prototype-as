"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001048; bytecode file offset 0x626a4"
!SstWsdlMessageSoapBodyExtension methodsFor: 'recovered'!
localName
    ^'body'
! !

"xxx_dyn.ic method 0x200042b0; bytecode file offset 0x65384"
!SstWsdlMessageSoapBodyExtension methodsFor: 'recovered'!
parts
    | recoveredValue0 |
    recoveredValue0 := parts.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20007778; bytecode file offset 0x6887c"
!SstWsdlMessageSoapBodyExtension methodsFor: 'recovered'!
attributeSelectors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super attributeSelectors.
    recoveredValue1 := (recoveredValue0) , (#('parts')).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000d7c0; bytecode file offset 0x6e890"
!SstWsdlMessageSoapBodyExtension methodsFor: 'recovered'!
parts: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimSeparators.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            parts := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

