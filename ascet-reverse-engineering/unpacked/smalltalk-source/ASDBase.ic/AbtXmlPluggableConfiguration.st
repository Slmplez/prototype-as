"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000238; bytecode file offset 0x8ffcfc"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
initialize
    ^self
! !

"ASDBase.ic method 0x2000bf00; bytecode file offset 0x908be4"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
asContext
    | recoveredValue0 |
    recoveredValue0 := (self) newContext.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200496ec; bytecode file offset 0x947128"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
newConfiguration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) newConfigurationOfClass: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006670c; bytecode file offset 0x963428"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
primElementConfigurations
    | recoveredValue0 |
    recoveredValue0 := elementConfigurations.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068a8c; bytecode file offset 0x965b90"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
primObjectCache
    | recoveredValue0 |
    recoveredValue0 := objectCache.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069870; bytecode file offset 0x966bdc"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
parentConfiguration
    | recoveredValue0 |
    recoveredValue0 := parentConfiguration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074080; bytecode file offset 0x970b34"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
newContext
    ^nil
! !

"ASDBase.ic method 0x20099eb8; bytecode file offset 0x997194"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
propertyNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ae10c; bytecode file offset 0x9aaa48"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
addProperty: recoveredArg1 named: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b9a34; bytecode file offset 0x9b63d0"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
mappingSpecName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) objectCache.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) mappingSpecNamed: (recoveredValue1).
    (self) mappingSpec: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bea48; bytecode file offset 0x9bc0b4"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
mappingSpec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mappingSpec := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfdc4; bytecode file offset 0x9bd228"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
objectCache: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    objectCache := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0b20; bytecode file offset 0x9bdf14"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
parentConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parentConfiguration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20124b78; bytecode file offset 0xa21430"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
rootConfiguration
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentConfiguration.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentConfiguration.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20128f90; bytecode file offset 0xa258cc"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
elementConfigurations
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := elementConfigurations.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            elementConfigurations := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := elementConfigurations.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20129498; bytecode file offset 0xa25d58"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
mappingSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := mappingSpec.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) getFromParent: ('mappingSpec').
    recoveredBlock6Value0
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20129b8c; bytecode file offset 0xa26468"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
properties
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := properties.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            properties := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := properties.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20133a20; bytecode file offset 0xa302dc"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
getFromParent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentConfiguration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentConfiguration.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20154468; bytecode file offset 0xa50d34"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
newConfigurationOfClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) mappingSpec.
    (recoveredValue2) mappingSpec: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) primObjectCache.
    (recoveredValue4) objectCache: (recoveredValue5).
    recoveredValue6 := (recoveredValue1) parentConfiguration: (self).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201d42b4; bytecode file offset 0xad0ba8"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
useConfiguration: recoveredArg1 forElementNamed: recoveredArg2 inNamespace: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementConfigurations.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) abrAsString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280d548cValue0 block280d548cValue1 |
    block280d548cValue0 := LookupTable.
    block280d548cValue1 := (block280d548cValue0) new.
    block280d548cValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fd4a8; bytecode file offset 0xaf9d6c"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
objectCache
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentConfiguration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtXmlObjectCache.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentConfiguration.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectCache.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := objectCache.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021c880; bytecode file offset 0xb19144"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
propertyNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := (self) parentConfiguration.
    recoveredBlock7Value1 := [:recoveredBlock7Block15Arg1 | 
    | recoveredBlock7Block15Value0 recoveredBlock7Block15Value1 recoveredBlock7Block15Value2 |
    recoveredBlock7Block15Value0 := recoveredBlock7Block15Arg1.
    recoveredBlock7Block15Value1 := recoveredArg1.
    recoveredBlock7Block15Value2 := (recoveredBlock7Block15Value0) propertyNamed: (recoveredBlock7Block15Value1).
    recoveredBlock7Block15Value2
].
    recoveredBlock7Value2 := (recoveredBlock7Value0) ifNotNil: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (self) propertyNamed: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x203c94b0; bytecode file offset 0xcc5d8c"
!AbtXmlPluggableConfiguration methodsFor: 'recovered'!
configurationForElementNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primElementConfigurations.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := AbtXmlObjectCache.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookup: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 |
    recoveredBlock46Value0 := (self) parentConfiguration.
    recoveredBlock46Value1 := [:recoveredBlock46Block54Arg1 | 
    | recoveredBlock46Block54Value0 recoveredBlock46Block54Value1 recoveredBlock46Block54Value2 recoveredBlock46Block54Value3 recoveredBlock46Block54Value4 |
    recoveredBlock46Block54Value0 := recoveredBlock46Block54Arg1.
    recoveredBlock46Block54Value1 := recoveredArg1.
    recoveredBlock46Block54Value2 := recoveredArg2.
    recoveredBlock46Block54Value3 := (recoveredBlock46Block54Value0) configurationForElementNamed: (recoveredBlock46Block54Value1) inNamespace: (recoveredBlock46Block54Value2).
    recoveredBlock46Block54Value4 := recoveredBlock46Block54Value3.
    recoveredLocal1 := recoveredBlock46Block54Value4.
    recoveredBlock46Block54Value3
].
    recoveredBlock46Value2 := (recoveredBlock46Value0) ifNotNil: (recoveredBlock46Value1).
    recoveredBlock46Value2
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

