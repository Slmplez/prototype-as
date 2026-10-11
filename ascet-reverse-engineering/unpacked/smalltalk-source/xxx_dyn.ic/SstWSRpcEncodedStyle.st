"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000e78; bytecode file offset 0x6209c"
!SstWSRpcEncodedStyle methodsFor: 'recovered'!
use
    | recoveredValue0 |
    recoveredValue0 := WSEncodedString.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200061cc; bytecode file offset 0x672a0"
!SstWSRpcEncodedStyle methodsFor: 'recovered'!
addEncodingNamespacesFrom: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) primAddEncodingNamespacesFrom: (recoveredValue0) to: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2000cecc; bytecode file offset 0x6dfa4"
!SstWSRpcEncodedStyle methodsFor: 'recovered'!
wrapperObjectFor: recoveredArg1 part: recoveredArg2 extension: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) schemaContentForPart: (recoveredValue0).
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) namespace.
    recoveredValue4 := (recoveredValue1) namespaceUri: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := AbtXmlSchemaTypeObjectWrapper.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue5) name: (nil) type: (recoveredValue6) object: (recoveredValue7).
    ^recoveredValue8
! !

"xxx_dyn.ic method 0x20011d88; bytecode file offset 0x72e64"
!SstWSRpcEncodedStyle methodsFor: 'recovered'!
schemaContentForPart: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) typeObjectForPart: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) newElementNamed: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) nillable: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

