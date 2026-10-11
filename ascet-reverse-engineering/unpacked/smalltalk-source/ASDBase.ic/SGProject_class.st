"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b738; bytecode file offset 0x908be4"
!SGProject class methodsFor: 'recovered'!
create
    | recoveredValue0 |
    recoveredValue0 := (self) new.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200166b8; bytecode file offset 0x92209c"
!SGProject class methodsFor: 'recovered'!
eHooksConfigFileNameElementName
    ^'EHooksConfigFile'
! !

"ASDBase.ic method 0x20018824; bytecode file offset 0x92209c"
!SGProject class methodsFor: 'recovered'!
editorIconName
    ^'ComponentsProject'
! !

"ASDBase.ic method 0x20018a70; bytecode file offset 0x92209c"
!SGProject class methodsFor: 'recovered'!
eventMethodName
    ^'event_CT'
! !

"ASDBase.ic method 0x20018c80; bytecode file offset 0x92209c"
!SGProject class methodsFor: 'recovered'!
iconName
    ^'ComponentsProject'
! !

"ASDBase.ic method 0x20019610; bytecode file offset 0x92209c"
!SGProject class methodsFor: 'recovered'!
simulateMethodName
    ^'simulate_CT'
! !

"ASDBase.ic method 0x2001e38c; bytecode file offset 0x92209c"
!SGProject class methodsFor: 'recovered'!
typeLabel
    ^'Project'
! !

"ASDBase.ic method 0x2001ec50; bytecode file offset 0x92209c"
!SGProject class methodsFor: 'recovered'!
apiItemTypes
    ^#('Project')
! !

"ASDBase.ic method 0x20021140; bytecode file offset 0x92209c"
!SGProject class methodsFor: 'recovered'!
OldClass
    ^'ASDDefaultProject'
! !

"ASDBase.ic method 0x20022ec8; bytecode file offset 0x92209c"
!SGProject class methodsFor: 'recovered'!
terminateMethodName
    ^'terminate_CT'
! !

"ASDBase.ic method 0x200235d0; bytecode file offset 0x92209c"
!SGProject class methodsFor: 'recovered'!
initMethodName
    ^'initialize_CT'
! !

"ASDBase.ic method 0x20026470; bytecode file offset 0x923928"
!SGProject class methodsFor: 'recovered'!
defaultItemLabel
    ^'Project'
! !

"ASDBase.ic method 0x2003ed08; bytecode file offset 0x93bf94"
!SGProject class methodsFor: 'recovered'!
eHooksKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := TGControllerTarget.
    recoveredValue1 := (recoveredValue0) ehooksTargetType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093694; bytecode file offset 0x98ffa4"
!SGProject class methodsFor: 'recovered'!
cycleTimeVariableNameFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) label.
    recoveredValue2 := ('cycleTime_') , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200936a8; bytecode file offset 0x98ffa4"
!SGProject class methodsFor: 'recovered'!
cycleStartTimeVariableNameFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) label.
    recoveredValue2 := ('cycleStartTime_') , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200936e4; bytecode file offset 0x98ffa4"
!SGProject class methodsFor: 'recovered'!
dtVariableNameFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) label.
    recoveredValue2 := ('dT_') , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20185e1c; bytecode file offset 0xa826e8"
!SGProject class methodsFor: 'recovered'!
createDefaultProject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) className.
    (recoveredValue1) initializeRBDBObject: (recoveredValue2) className: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) label: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) defaultProject: (true).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) initialize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201b7d2c; bytecode file offset 0xab45fc"
!SGProject class methodsFor: 'recovered'!
ObjectFilerMapping
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('globalVariables') put: ('classVariables').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('mappedVariables') put: ('mappedVariableDictionary').
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2027439c; bytecode file offset 0xb70c6c"
!SGProject class methodsFor: 'recovered'!
create: recoveredArg1 specification: recoveredArg2 parent: recoveredArg3 databaseAccess: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := super create: (recoveredStack1) specification: (recoveredStack2) parent: (recoveredStack3) databaseAccess: (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultsUseProjectOptionsTemplate.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDefaultsProjectOptionsTemplate.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) reinitBuildSettingsFromXMLFile: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036ac30; bytecode file offset 0xc67544"
!SGProject class methodsFor: 'recovered'!
defaultInstanceVariableMappings
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'classVariables'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := [:block280f11e8Arg1 | 
    | block280f11e8Value0 block280f11e8Value1 block280f11e8Value2 block280f11e8Value3 block280f11e8Value4 block280f11e8Value5 |
    block280f11e8Value0 := block280f11e8Arg1.
    block280f11e8Value1 := (block280f11e8Value0) at: (1).
    block280f11e8Value2 := block280f11e8Arg1.
    block280f11e8Value3 := (block280f11e8Value2) at: (3).
    block280f11e8Value4 := (block280f11e8Value3) at: ('globalVariables').
    block280f11e8Value5 := (block280f11e8Value1) instVarAt: (block280f11e8Value4).
    block280f11e8Value5
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 'mappedVariableDictionary'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := [:block280f120cArg1 | 
    | block280f120cValue0 block280f120cValue1 block280f120cValue2 block280f120cValue3 block280f120cValue4 block280f120cValue5 |
    block280f120cValue0 := block280f120cArg1.
    block280f120cValue1 := (block280f120cValue0) at: (1).
    block280f120cValue2 := block280f120cArg1.
    block280f120cValue3 := (block280f120cValue2) at: (3).
    block280f120cValue4 := (block280f120cValue3) at: ('mappedVariables').
    block280f120cValue5 := (block280f120cValue1) instVarAt: (block280f120cValue4).
    block280f120cValue5
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

