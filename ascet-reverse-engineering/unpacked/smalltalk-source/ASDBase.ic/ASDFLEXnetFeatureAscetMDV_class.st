"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017ccc; bytecode file offset 0x92209c"
!ASDFLEXnetFeatureAscetMDV class methodsFor: 'recovered'!
featureName
    ^'Ascet-MDV'
! !

"ASDBase.ic method 0x200b70b8; bytecode file offset 0x9b39ac"
!ASDFLEXnetFeatureAscetMDV class methodsFor: 'recovered'!
feature
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super feature.
    recoveredValue1 := (recoveredValue0) , ('V').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2014c29c; bytecode file offset 0xa48bf0"
!ASDFLEXnetFeatureAscetMDV class methodsFor: 'recovered'!
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
            recoveredStack3 := [:block280cc90cArg1 | 
    | block280cc90cValue0 block280cc90cValue1 |
    block280cc90cValue0 := block280cc90cArg1.
    block280cc90cValue1 := (block280cc90cValue0) checkout.
    block280cc90cValue1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAscetMDVLicense: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

