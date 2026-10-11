"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000460; bytecode file offset 0x615ac"
!SstServerApplicationContext methodsFor: 'recovered'!
initializeRequest: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x20000678; bytecode file offset 0x619a4"
!SstServerApplicationContext methodsFor: 'recovered'!
container
    | recoveredValue0 |
    recoveredValue0 := (self) owner.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200009d0; bytecode file offset 0x61a94"
!SstServerApplicationContext methodsFor: 'recovered'!
handlesRequest: recoveredArg1
    ^true
! !

"xxx_dyn.ic method 0x20002574; bytecode file offset 0x6363c"
!SstServerApplicationContext methodsFor: 'recovered'!
getAttributeNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) keys.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200025c4; bytecode file offset 0x63698"
!SstServerApplicationContext methodsFor: 'recovered'!
getInitParameterNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := initSettings.
    recoveredValue1 := (recoveredValue0) keys.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200038ac; bytecode file offset 0x649e8"
!SstServerApplicationContext methodsFor: 'recovered'!
owner
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003d00; bytecode file offset 0x64ed4"
!SstServerApplicationContext methodsFor: 'recovered'!
containerKey
    | recoveredValue0 |
    recoveredValue0 := containerKey.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003e44; bytecode file offset 0x64fe8"
!SstServerApplicationContext methodsFor: 'recovered'!
sessionManagerConfiguration
    | recoveredValue0 |
    recoveredValue0 := clientSessionManagerConfiguration.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20005a88; bytecode file offset 0x66b54"
!SstServerApplicationContext methodsFor: 'recovered'!
attributesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200078fc; bytecode file offset 0x689c8"
!SstServerApplicationContext methodsFor: 'recovered'!
getAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := attributes.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007918; bytecode file offset 0x689e4"
!SstServerApplicationContext methodsFor: 'recovered'!
getInitParameter: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := initSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007cdc; bytecode file offset 0x68f50"
!SstServerApplicationContext methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008340; bytecode file offset 0x69404"
!SstServerApplicationContext methodsFor: 'recovered'!
containerKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    containerKey := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000835c; bytecode file offset 0x69508"
!SstServerApplicationContext methodsFor: 'recovered'!
sessionManagerConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    clientSessionManagerConfiguration := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20009fd4; bytecode file offset 0x6b0a0"
!SstServerApplicationContext methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    attributes := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    initSettings := recoveredValue3.
    ^self
! !

"xxx_dyn.ic method 0x2000a0b4; bytecode file offset 0x6b188"
!SstServerApplicationContext methodsFor: 'recovered'!
ensureRealized
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := clientSessionManagerConfiguration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := clientSessionManagerConfiguration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ensureRealized.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000a990; bytecode file offset 0x6ba5c"
!SstServerApplicationContext methodsFor: 'recovered'!
sessionManager
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) container.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) container.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) sessionManagerForContext: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000eae4; bytecode file offset 0x6fbb4"
!SstServerApplicationContext methodsFor: 'recovered'!
removeAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := attributes.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [].
    recoveredBlock4Value3 := (recoveredBlock4Value0) removeKey: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000f604; bytecode file offset 0x706d0"
!SstServerApplicationContext methodsFor: 'recovered'!
setAttribute: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := attributes.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := recoveredArg2.
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) put: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000f62c; bytecode file offset 0x706f8"
!SstServerApplicationContext methodsFor: 'recovered'!
atInitParameter: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := initSettings.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := recoveredArg2.
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) put: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

