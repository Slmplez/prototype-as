"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ddbc; bytecode file offset 0x92209c"
!ASDFLEXnetFeatureAscetRPLite class methodsFor: 'recovered'!
feature
    ^'INT_ASC'
! !

"ASDBase.ic method 0x2001ecd4; bytecode file offset 0x92209c"
!ASDFLEXnetFeatureAscetRPLite class methodsFor: 'recovered'!
featureName
    ^'INTECRIO-ASC'
! !

"ASDBase.ic method 0x20071c1c; bytecode file offset 0x96e578"
!ASDFLEXnetFeatureAscetRPLite class methodsFor: 'recovered'!
minorVersion
    ^0
! !

"ASDBase.ic method 0x20072f48; bytecode file offset 0x96f8bc"
!ASDFLEXnetFeatureAscetRPLite class methodsFor: 'recovered'!
majorVersion
    ^6
! !

"ASDBase.ic method 0x2014c30c; bytecode file offset 0xa48bf0"
!ASDFLEXnetFeatureAscetRPLite class methodsFor: 'recovered'!
createLicense
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasLicenseManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) featureName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [:block280cc99cArg1 | 
    | block280cc99cValue0 block280cc99cValue1 |
    block280cc99cValue0 := block280cc99cArg1.
    block280cc99cValue1 := (block280cc99cValue0) checkout.
    block280cc99cValue1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAscetRPLiteLicense: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

