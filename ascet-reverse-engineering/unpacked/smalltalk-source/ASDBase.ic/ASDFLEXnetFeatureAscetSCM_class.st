"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c604; bytecode file offset 0x92209c"
!ASDFLEXnetFeatureAscetSCM class methodsFor: 'recovered'!
featureName
    ^'Ascet-SCM'
! !

"ASDBase.ic method 0x20071c04; bytecode file offset 0x96e578"
!ASDFLEXnetFeatureAscetSCM class methodsFor: 'recovered'!
minorVersion
    ^0
! !

"ASDBase.ic method 0x20072fb0; bytecode file offset 0x96f8bc"
!ASDFLEXnetFeatureAscetSCM class methodsFor: 'recovered'!
majorVersion
    ^6
! !

"ASDBase.ic method 0x2014c264; bytecode file offset 0xa48bf0"
!ASDFLEXnetFeatureAscetSCM class methodsFor: 'recovered'!
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
            recoveredStack3 := [:block280cc8c4Arg1 | 
    | block280cc8c4Value0 block280cc8c4Value1 |
    block280cc8c4Value0 := block280cc8c4Arg1.
    block280cc8c4Value1 := (block280cc8c4Value0) checkout.
    block280cc8c4Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAscetSCMLicense: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202304d4; bytecode file offset 0xb2cda8"
!ASDFLEXnetFeatureAscetSCM class methodsFor: 'recovered'!
feature
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := ('Ascet') asUppercase.
    recoveredValue1 := (recoveredValue0) , ('-').
    recoveredValue2 := String.
    recoveredValue3 := Character.
    recoveredValue4 := (recoveredValue3) digitValue: (28).
    recoveredValue5 := Character.
    recoveredValue6 := (recoveredValue5) digitValue: (12).
    recoveredValue7 := Character.
    recoveredValue8 := (recoveredValue7) digitValue: (22).
    recoveredValue9 := (recoveredValue2) with: (recoveredValue4) with: (recoveredValue6) with: (recoveredValue8).
    recoveredValue10 := (recoveredValue1) , (recoveredValue9).
    ^recoveredValue10
! !

