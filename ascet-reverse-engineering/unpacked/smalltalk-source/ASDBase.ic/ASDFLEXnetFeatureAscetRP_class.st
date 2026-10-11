"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d2f4; bytecode file offset 0x92209c"
!ASDFLEXnetFeatureAscetRP class methodsFor: 'recovered'!
featureName
    ^'Ascet-RP'
! !

"ASDBase.ic method 0x20071c14; bytecode file offset 0x96e578"
!ASDFLEXnetFeatureAscetRP class methodsFor: 'recovered'!
minorVersion
    ^0
! !

"ASDBase.ic method 0x20072f40; bytecode file offset 0x96f8bc"
!ASDFLEXnetFeatureAscetRP class methodsFor: 'recovered'!
majorVersion
    ^6
! !

"ASDBase.ic method 0x2014c2b8; bytecode file offset 0xa48bf0"
!ASDFLEXnetFeatureAscetRP class methodsFor: 'recovered'!
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
            recoveredStack3 := [:block280cc930Arg1 | 
    | block280cc930Value0 block280cc930Value1 |
    block280cc930Value0 := block280cc930Arg1.
    block280cc930Value1 := (block280cc930Value0) checkout.
    block280cc930Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAscetRPLicense: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d61d0; bytecode file offset 0xad2aa4"
!ASDFLEXnetFeatureAscetRP class methodsFor: 'recovered'!
feature
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ('Ascet') asUppercase.
    recoveredValue1 := (recoveredValue0) , ('-').
    recoveredValue2 := String.
    recoveredValue3 := Character.
    recoveredValue4 := (recoveredValue3) digitValue: (27).
    recoveredValue5 := Character.
    recoveredValue6 := (recoveredValue5) digitValue: (25).
    recoveredValue7 := (recoveredValue2) with: (recoveredValue4) with: (recoveredValue6).
    recoveredValue8 := (recoveredValue1) , (recoveredValue7).
    ^recoveredValue8
! !

