"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000dd0; bytecode file offset 0x8ffcfc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
asap2
    ^self
! !

"ASDBase.ic method 0x200026f8; bytecode file offset 0x8ffcfc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
mergeCompuTabs
    ^self
! !

"ASDBase.ic method 0x20002fa8; bytecode file offset 0x8ffcfc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
initializeDBObject
    ^self
! !

"ASDBase.ic method 0x200037b0; bytecode file offset 0x90206c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
longName: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004a90; bytecode file offset 0x90206c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
a2ml: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004b00; bytecode file offset 0x90206c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
nameTable: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000db4c; bytecode file offset 0x90a4b8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
sorted: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200420c0; bytecode file offset 0x93e978"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
noOfFunctions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := function.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004f8b4; bytecode file offset 0x94d048"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
initializeTemp
    (self) initialize.
    ^self
! !

"ASDBase.ic method 0x20051cb8; bytecode file offset 0x94f0e0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
ifDataLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ifData.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (recoveredValue1) asSortedCollection.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005c99c; bytecode file offset 0x959680"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
calibrationAccesses
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASAP2BytesCharacteristic.
    recoveredValue1 := (recoveredValue0) basicNew.
    recoveredValue2 := (recoveredValue1) calibrationAccessEnums.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006fba0; bytecode file offset 0x96c6ac"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
modPar
    | recoveredValue0 |
    recoveredValue0 := modPar.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ff24; bytecode file offset 0x96c850"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
modCommon
    | recoveredValue0 |
    recoveredValue0 := modCommon.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070180; bytecode file offset 0x96cb7c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
ifData
    | recoveredValue0 |
    recoveredValue0 := ifData.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070554; bytecode file offset 0x96ce40"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
dumpVersion
    | recoveredValue0 |
    recoveredValue0 := dumpVersion.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078ddc; bytecode file offset 0x9757c8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isASAP2
    ^true
! !

"ASDBase.ic method 0x2007b334; bytecode file offset 0x97c330"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isDbObject
    ^false
! !

"ASDBase.ic method 0x200826bc; bytecode file offset 0x97ef80"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isAddressInsideRange: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := modPar.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) isAddressInsideRange: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200826c8; bytecode file offset 0x97ef80"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
memorySegmentForAddress: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := modPar.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) memorySegmentsForAddress: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094e6c; bytecode file offset 0x991c58"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
unitNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) unit.
    recoveredValue2 := (self) objectNamed: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094e7c; bytecode file offset 0x991c58"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
axisPointNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) axisPoint.
    recoveredValue2 := (self) objectNamed: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094edc; bytecode file offset 0x991c58"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
measurementNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) measurement.
    recoveredValue2 := (self) objectNamed: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200950cc; bytecode file offset 0x991c58"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
characteristicNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) characteristic.
    recoveredValue2 := (self) objectNamed: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200950fc; bytecode file offset 0x991c58"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
functionNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) function.
    recoveredValue2 := (self) objectNamed: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009511c; bytecode file offset 0x991c58"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
compuTabNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) compuTab.
    recoveredValue2 := (self) objectNamed: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200951ac; bytecode file offset 0x991c58"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
frameNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) frame.
    recoveredValue2 := (self) objectNamed: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009522c; bytecode file offset 0x991c58"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
groupNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) group.
    recoveredValue2 := (self) objectNamed: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009524c; bytecode file offset 0x991c58"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
userRightsNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) userRights.
    recoveredValue2 := (self) objectNamed: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009527c; bytecode file offset 0x991c58"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
recordLayoutNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) recordLayout.
    recoveredValue2 := (self) objectNamed: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009536c; bytecode file offset 0x991c58"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
compuMethodNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) compuMethod.
    recoveredValue2 := (self) objectNamed: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a901c; bytecode file offset 0x9a58ec"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addAxisPoint: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := axisPoint.
    (self) addNamedObject: (recoveredValue0) in: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a9070; bytecode file offset 0x9a5934"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addRecordLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recordLayout.
    (self) addNamedObject: (recoveredValue0) in: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a9094; bytecode file offset 0x9a594c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addFunction: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := function.
    (self) addNamedObject: (recoveredValue0) in: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a90ac; bytecode file offset 0x9a5964"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addCompuTab: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := compuTab.
    (self) addNamedObject: (recoveredValue0) in: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a90c4; bytecode file offset 0x9a5988"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addCompuMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := compuMethod.
    (self) addNamedObject: (recoveredValue0) in: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a90e8; bytecode file offset 0x9a59a0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := group.
    (self) addNamedObject: (recoveredValue0) in: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a9118; bytecode file offset 0x9a59d0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addUnit: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := unit.
    (self) addNamedObject: (recoveredValue0) in: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a97ac; bytecode file offset 0x9a6068"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
existsRecordLayout: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) recordLayout.
    recoveredValue2 := (self) object: (recoveredValue0) in: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) notNil.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200aa9f8; bytecode file offset 0x9a72e0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
referencesFromLabelsToGroupOrFunction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) referencesFromLabelsToGroup: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) referencesFromLabelsToFunction: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200acc34; bytecode file offset 0x9a94ec"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isAddressInsideRange: recoveredArg1 size: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := modPar.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) isAddressInsideRange: (recoveredValue1) size: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c6290; bytecode file offset 0x9c2bec"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
modPar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    modPar := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6474; bytecode file offset 0x9c2dd0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
modCommon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    modCommon := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6828; bytecode file offset 0x9c3164"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
ifData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ifData := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c69d4; bytecode file offset 0x9c3470"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
dumpVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dumpVersion := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d6be4; bytecode file offset 0x9d3600"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) putNameIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putLongNameIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200df2c4; bytecode file offset 0x9dbc24"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
createAccessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) createAccessorIn: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e13a8; bytecode file offset 0x9ddc68"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
compuMethodSorted
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := compuMethod.
    recoveredValue1 := (self) sortBlock.
    recoveredValue2 := (recoveredValue0) asSortedCollection: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asOrderedCollection.
    recoveredValue4 := recoveredValue3.
    compuMethod := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e5374; bytecode file offset 0x9e1cc0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isFibexAsap2
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFibexAsap2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200e53b4; bytecode file offset 0x9e1cc0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
hasExramRanges
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasExramRanges.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ff348; bytecode file offset 0x9fbd94"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
removeMemoryLayout: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) removeMemoryLayout: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ff398; bytecode file offset 0x9fbd94"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
printASDInfoOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) printASDInfoOn: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ff3a8; bytecode file offset 0x9fbd94"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
removeSystemConstant: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) removeSystemConstant: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ff4d8; bytecode file offset 0x9fbd94"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addCommentInfoToStream: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) addCommentInfoToStream: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201011ac; bytecode file offset 0x9fdf08"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putIn: recoveredArg1 variantCoding: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) variantCoding.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) variantCoding.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010148c; bytecode file offset 0x9fdf08"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putIn: recoveredArg1 modPar: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201014cc; bytecode file offset 0x9fdf08"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putIn: recoveredArg1 modCommon: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modCommon.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) modCommon.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20101d40; bytecode file offset 0x9fe600"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
exchange: recoveredArg1 with: recoveredArg2 in: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) add: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2010695c; bytecode file offset 0xa03214"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isMeasurementCatalog
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := modPar.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := modPar.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMeasurementCatalog.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010992c; bytecode file offset 0xa061ec"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
exspectedStackSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) noOfLabels.
    recoveredValue1 := (recoveredValue0) * (8).
    recoveredValue2 := flat.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue3) * (8).
    recoveredValue5 := (recoveredValue1) max: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2010be40; bytecode file offset 0xa08708"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) dumpVersion.
    (self) dumpVersion: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201108c0; bytecode file offset 0xa0d17c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addDuplicatePostFixFor: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20117350; bytecode file offset 0xa13c0c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
searchBlockUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c74d0Arg1 :block280c74d0Arg2 | 
    | block280c74d0Value0 block280c74d0Value1 block280c74d0Value2 block280c74d0Value3 block280c74d0Value4 |
    block280c74d0Value0 := block280c74d0Arg1.
    block280c74d0Value1 := (block280c74d0Value0) name.
    block280c74d0Value2 := block280c74d0Arg2.
    block280c74d0Value3 := (block280c74d0Value2) name.
    block280c74d0Value4 := (block280c74d0Value1) <= (block280c74d0Value3).
    block280c74d0Value4
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20117384; bytecode file offset 0xa13c40"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
searchBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c7518Arg1 :block280c7518Arg2 | 
    | block280c7518Value0 block280c7518Value1 block280c7518Value2 block280c7518Value3 block280c7518Value4 |
    block280c7518Value0 := block280c7518Arg1.
    block280c7518Value1 := (block280c7518Value0) name.
    block280c7518Value2 := block280c7518Arg2.
    block280c7518Value3 := (block280c7518Value2) name.
    block280c7518Value4 := (block280c7518Value1) >= (block280c7518Value3).
    block280c7518Value4
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011e410; bytecode file offset 0xa1acc8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
memorySegmentsFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := modPar.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := modPar.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegmentsFor: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011efc8; bytecode file offset 0xa1b88c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
preDump: recoveredArg1
    | recoveredValue0 |
    (self) changeToOrderedCollection.
    (self) minimizeFunctionList.
    recoveredValue0 := recoveredArg1.
    super preDump: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2011f604; bytecode file offset 0xa1bfdc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isCharacteristicReferencedByLabels: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280c8c70Arg1 :block280c8c70Arg2 | 
    | block280c8c70Value0 block280c8c70Value1 block280c8c70Value2 |
    block280c8c70Value0 := block280c8c70Arg1.
    block280c8c70Value1 := block280c8c70Arg2.
    block280c8c70Value2 := (block280c8c70Value0) referencesCharacteristic: (block280c8c70Value1).
    block280c8c70Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByAdjustableLabels: (recoveredStack1) accessBlock: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011f618; bytecode file offset 0xa1bfdc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isAxisPointReferencedByLabels: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280c8c94Arg1 :block280c8c94Arg2 | 
    | block280c8c94Value0 block280c8c94Value1 block280c8c94Value2 |
    block280c8c94Value0 := block280c8c94Arg1.
    block280c8c94Value1 := block280c8c94Arg2.
    block280c8c94Value2 := (block280c8c94Value0) referencesAxisPoint: (block280c8c94Value1).
    block280c8c94Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011f62c; bytecode file offset 0xa1bfdc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isGroupReferencedByLabels: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280c8cb8Arg1 :block280c8cb8Arg2 | 
    | block280c8cb8Value0 block280c8cb8Value1 block280c8cb8Value2 |
    block280c8cb8Value0 := block280c8cb8Arg1.
    block280c8cb8Value1 := block280c8cb8Arg2.
    block280c8cb8Value2 := (block280c8cb8Value0) referencesGroup: (block280c8cb8Value1).
    block280c8cb8Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011f640; bytecode file offset 0xa1bfdc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isFunctionReferencedByFunctions: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280c8cdcArg1 :block280c8cdcArg2 | 
    | block280c8cdcValue0 block280c8cdcValue1 block280c8cdcValue2 |
    block280c8cdcValue0 := block280c8cdcArg1.
    block280c8cdcValue1 := block280c8cdcArg2.
    block280c8cdcValue2 := (block280c8cdcValue0) referencesFunction: (block280c8cdcValue1).
    block280c8cdcValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByFunction: (recoveredStack1) accessBlock: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011f668; bytecode file offset 0xa1bfdc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isFrameReferencedByLabels: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280c8d24Arg1 :block280c8d24Arg2 | 
    | block280c8d24Value0 block280c8d24Value1 block280c8d24Value2 |
    block280c8d24Value0 := block280c8d24Arg1.
    block280c8d24Value1 := block280c8d24Arg2.
    block280c8d24Value2 := (block280c8d24Value0) referencesFrame: (block280c8d24Value1).
    block280c8d24Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011f690; bytecode file offset 0xa1bfdc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isMeasurementReferencedByLabels: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280c8d6cArg1 :block280c8d6cArg2 | 
    | block280c8d6cValue0 block280c8d6cValue1 block280c8d6cValue2 |
    block280c8d6cValue0 := block280c8d6cArg1.
    block280c8d6cValue1 := block280c8d6cArg2.
    block280c8d6cValue2 := (block280c8d6cValue0) referencesMeasurement: (block280c8d6cValue1).
    block280c8d6cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011f6b8; bytecode file offset 0xa1bfdc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isUnitReferencedByLabels: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280c8db4Arg1 :block280c8db4Arg2 | 
    | block280c8db4Value0 block280c8db4Value1 block280c8db4Value2 |
    block280c8db4Value0 := block280c8db4Arg1.
    block280c8db4Value1 := block280c8db4Arg2.
    block280c8db4Value2 := (block280c8db4Value0) referencesUnit: (block280c8db4Value1).
    block280c8db4Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011f6e0; bytecode file offset 0xa1bfdc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isRecordLayoutReferencedByLabels: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280c8dfcArg1 :block280c8dfcArg2 | 
    | block280c8dfcValue0 block280c8dfcValue1 block280c8dfcValue2 |
    block280c8dfcValue0 := block280c8dfcArg1.
    block280c8dfcValue1 := block280c8dfcArg2.
    block280c8dfcValue2 := (block280c8dfcValue0) referencesRecordLayout: (block280c8dfcValue1).
    block280c8dfcValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByAdjustableLabels: (recoveredStack1) accessBlock: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011f71c; bytecode file offset 0xa1bfdc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isUnitReferencedByCompuMethod: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280c8e68Arg1 :block280c8e68Arg2 | 
    | block280c8e68Value0 block280c8e68Value1 block280c8e68Value2 |
    block280c8e68Value0 := block280c8e68Arg1.
    block280c8e68Value1 := block280c8e68Arg2.
    block280c8e68Value2 := (block280c8e68Value0) referencesUnit: (block280c8e68Value1).
    block280c8e68Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByCompuMethod: (recoveredStack1) accessBlock: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20124e58; bytecode file offset 0xa21718"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
longName
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCommentModule.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) longName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012668c; bytecode file offset 0xa22f4c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
comparePrepare: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    (self) clearId.
    recoveredValue0 := (self) asap2Copy.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) changeToOrderedCollection.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) clearId.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201299c8; bytecode file offset 0xa26288"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addRecordLayoutToStandardAxis
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c9648Arg1 | 
    | block280c9648Value0 block280c9648Value1 |
    block280c9648Value0 := block280c9648Arg1.
    block280c9648Value1 := (block280c9648Value0) addRecordLayoutToStandardAxis.
    block280c9648Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012a5c0; bytecode file offset 0xa26e94"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
modified
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c978cArg1 | 
    | block280c978cValue0 block280c978cValue1 |
    block280c978cValue0 := block280c978cArg1.
    block280c978cValue1 := (block280c978cValue0) modified.
    block280c978cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012ca14; bytecode file offset 0xa292dc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
displayIdentifierBase
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCommentModule.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c9cc0Arg1 | 
    | block280c9cc0Value0 block280c9cc0Value1 |
    block280c9cc0Value0 := block280c9cc0Arg1.
    block280c9cc0Value1 := (block280c9cc0Value0) displayIdentifier.
    block280c9cc0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNoError: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultReturn: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20131a34; bytecode file offset 0xa2e2f4"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isCompuMethodReferencedByLabels: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280cae0cArg1 :block280cae0cArg2 | 
    | block280cae0cValue0 block280cae0cValue1 block280cae0cValue2 block280cae0cValue3 |
    block280cae0cValue0 := block280cae0cArg1.
    block280cae0cValue1 := (block280cae0cValue0) compuMethod.
    block280cae0cValue2 := block280cae0cArg2.
    block280cae0cValue3 := (block280cae0cValue1) = (block280cae0cValue2).
    block280cae0cValue3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20134d20; bytecode file offset 0xa315dc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addSelectedFunctions: recoveredArg1 from: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) addFunction: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20134d44; bytecode file offset 0xa315fc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isReferencedByCompuMethod: recoveredArg1 accessBlock: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := compuMethod.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20134d64; bytecode file offset 0xa3161c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isReferencedByGroup: recoveredArg1 accessBlock: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := group.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20134f0c; bytecode file offset 0xa317cc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addSelectedFormulas: recoveredArg1 from: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asArray.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) addCompuMethod: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20137d44; bytecode file offset 0xa34608"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allFunctionsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) noOfFunctions.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := function.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue3) allLabelsFor: (recoveredValue4) in: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20137d70; bytecode file offset 0xa34634"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCompuMethodSortedFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (self) sortBlock.
    recoveredValue2 := (recoveredValue0) sortBlock: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := compuMethod.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue3) allLabelsFor: (recoveredValue4) in: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20137d9c; bytecode file offset 0xa34660"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allGroupsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) noOfFunctions.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := group.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue3) allLabelsFor: (recoveredValue4) in: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2013a828; bytecode file offset 0xa370e8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
updateLinkIds
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := flat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cb5c8Arg1 :block280cb5c8Arg2 | 
    | block280cb5c8Value0 block280cb5c8Value1 block280cb5c8Value2 |
    block280cb5c8Value0 := block280cb5c8Arg1.
    block280cb5c8Value1 := block280cb5c8Arg2.
    block280cb5c8Value2 := (block280cb5c8Value0) comments: (block280cb5c8Value1).
    block280cb5c8Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013dc18; bytecode file offset 0xa3a4e0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
displayIdentifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCommentModule.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cbbd4Arg1 | 
    | block280cbbd4Value0 block280cbbd4Value1 |
    block280cbbd4Value0 := block280cbbd4Arg1.
    block280cbbd4Value1 := (block280cbbd4Value0) displayIdentifier.
    block280cbbd4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNoError: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultReturn: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013dc48; bytecode file offset 0xa3a514"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
a2ml
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getHardwareModule.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cbbf8Arg1 | 
    | block280cbbf8Value0 block280cbbf8Value1 |
    block280cbbf8Value0 := block280cbbf8Arg1.
    block280cbbf8Value1 := (block280cbbf8Value0) a2ml.
    block280cbbf8Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultReturn: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013f9dc; bytecode file offset 0xa3c2ec"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
resetAllDataElements
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allDevices.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) resetDataElementsFor: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20140f18; bytecode file offset 0xa3d7d4"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isModified
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parent.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) isModified.
    ^recoveredBlock6Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x201414f8; bytecode file offset 0xa3ddcc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isCanMonitoring
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getHardwareModule.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) isCanMonitoring.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNoError: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x2014a44c; bytecode file offset 0xa46d28"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCalibrationLabelsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := characteristic.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := characteristic.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue4) allLabelsFor: (recoveredValue5) in: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2014a464; bytecode file offset 0xa46d28"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCalibrationSlewsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := characteristic.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := characteristic.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue4) allSlewsFor: (recoveredValue5) in: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2014a490; bytecode file offset 0xa46d54"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allMeasurementLabelsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := measurement.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := measurement.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue4) allLabelsFor: (recoveredValue5) in: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2014a4e8; bytecode file offset 0xa46dac"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allAxisPointLabelsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := axisPoint.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := axisPoint.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue4) allLabelsFor: (recoveredValue5) in: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2014a544; bytecode file offset 0xa46e08"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
modParFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := modPar.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue2) labelFor: (recoveredValue3) in: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) firstOrNil.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2014d2cc; bytecode file offset 0xa49b84"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
noOfLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := characteristic.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := measurement.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := axisPoint.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue4) + (recoveredValue6).
    recoveredValue8 := frame.
    recoveredValue9 := (recoveredValue8) size.
    recoveredValue10 := (recoveredValue7) + (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x20150b6c; bytecode file offset 0xa4d468"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
createVariantReferences
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) variantCoding.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) createVariantReferences: (self).
    recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201547a4; bytecode file offset 0xa51064"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addCharacteristic: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCharacteristic.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := characteristic.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) addNamedObject: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201547cc; bytecode file offset 0xa5108c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addMeasurement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMeasurement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := measurement.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) addNamedObject: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20156284; bytecode file offset 0xa52b40"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
functionsReferencing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := function.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) referenceToLabel: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201562a8; bytecode file offset 0xa52b64"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
groupsReferencing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := group.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) referenceToLabel: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2015897c; bytecode file offset 0xa55244"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allFunctions
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) noOfFunctions.
    recoveredValue2 := (self) noOfDevices.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := (recoveredValue0) new: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := function.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) collectAllLabelsIn: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201589ac; bytecode file offset 0xa55278"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allModules
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) noOfFunctions.
    recoveredValue2 := (self) noOfDevices.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := (recoveredValue0) new: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) comments.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) collectAllLabelsIn: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2015a040; bytecode file offset 0xa568fc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
countObjectsIn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parent.
    recoveredLocal1 := recoveredValue0.
    parent := nil.
    recoveredValue1 := recoveredArg1.
    super countObjectsIn: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    parent := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x2015ad70; bytecode file offset 0xa57634"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allFunctionsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (self) noOfFunctions.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue1) sortBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := function.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue4) allLabelsFor: (recoveredValue5) in: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2015ad9c; bytecode file offset 0xa57660"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allGroupsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (self) noOfFunctions.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue1) sortBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := group.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue4) allLabelsFor: (recoveredValue5) in: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2015d508; bytecode file offset 0xa59dcc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
createFunctionListReference
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := function.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cdb0cArg1 | 
    | block280cdb0cValue0 block280cdb0cValue1 |
    block280cdb0cValue0 := block280cdb0cArg1.
    block280cdb0cValue1 := (block280cdb0cValue0) createFunctionListReference.
    block280cdb0cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) minimizeFunctionList.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015dbf0; bytecode file offset 0xa5a4b4"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
memorySegments
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := modPar.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := modPar.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegment.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := modPar.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) memoryLayout.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016565c; bytecode file offset 0xa61f20"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
referencesFromLabelsToGroup: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280ce550Arg1 :block280ce550Arg2 | 
    | block280ce550Value0 block280ce550Value1 block280ce550Value2 block280ce550Value3 |
    block280ce550Value0 := block280ce550Arg1.
    block280ce550Value1 := (block280ce550Value0) subGroup.
    block280ce550Value2 := block280ce550Arg2.
    block280ce550Value3 := (block280ce550Value1) includes: (block280ce550Value2).
    block280ce550Value3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := group.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsTo: (recoveredStack1) accessBlock: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20165d30; bytecode file offset 0xa625f0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
memorySegmentsForAddress: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) modPar.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (OrderedCollection new) yourself.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) memorySegmentsForAddress: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016cb68; bytecode file offset 0xa69444"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCalibrationSlewsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := characteristic.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) new: (recoveredValue2) sortBlock: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := characteristic.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue5) allSlewsFor: (recoveredValue6) in: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2016cb80; bytecode file offset 0xa69444"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCalibrationLabelsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := characteristic.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) new: (recoveredValue2) sortBlock: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := characteristic.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue5) allLabelsFor: (recoveredValue6) in: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2016cbb0; bytecode file offset 0xa69474"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allMeasurementLabelsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := measurement.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) new: (recoveredValue2) sortBlock: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := measurement.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue5) allLabelsFor: (recoveredValue6) in: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2016cbe0; bytecode file offset 0xa694a4"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allAxisPointLabelsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := axisPoint.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) new: (recoveredValue2) sortBlock: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := axisPoint.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue5) allLabelsFor: (recoveredValue6) in: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201734dc; bytecode file offset 0xa6fd9c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
noOfDevices
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := comments.
    recoveredValue1 := [
    ^0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := comments.
    recoveredValue3 := (recoveredValue2) labels.
    recoveredValue4 := (recoveredValue3) size.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20176fc0; bytecode file offset 0xa73884"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
createDeviceLink: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) variantCoding.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ASAP2ModuleLabel.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) device: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := ASAP2VariantModuleLabel.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) device: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017f3fc; bytecode file offset 0xa7bd6c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
selectCharacteristicMaps
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cf69cArg1 | 
    | block280cf69cValue0 block280cf69cValue1 block280cf69cValue2 block280cf69cValue3 block280cf69cValue4 block280cf69cValue5 |
    block280cf69cValue0 := block280cf69cArg1.
    block280cf69cValue1 := (block280cf69cValue0) class.
    block280cf69cValue2 := (block280cf69cValue1) asap2BehaviorId.
    block280cf69cValue3 := ASAP2BytesCharacteristicMap.
    block280cf69cValue4 := (block280cf69cValue3) asap2BehaviorId.
    block280cf69cValue5 := (block280cf69cValue2) = (block280cf69cValue4).
    block280cf69cValue5
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017f418; bytecode file offset 0xa7bd6c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
selectCharacteristicAsciis
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cf6c0Arg1 | 
    | block280cf6c0Value0 block280cf6c0Value1 block280cf6c0Value2 block280cf6c0Value3 block280cf6c0Value4 block280cf6c0Value5 |
    block280cf6c0Value0 := block280cf6c0Arg1.
    block280cf6c0Value1 := (block280cf6c0Value0) class.
    block280cf6c0Value2 := (block280cf6c0Value1) asap2BehaviorId.
    block280cf6c0Value3 := ASAP2BytesCharacteristicAscii.
    block280cf6c0Value4 := (block280cf6c0Value3) asap2BehaviorId.
    block280cf6c0Value5 := (block280cf6c0Value2) = (block280cf6c0Value4).
    block280cf6c0Value5
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017f434; bytecode file offset 0xa7bd6c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
selectCharacteristicCuboids
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cf6e4Arg1 | 
    | block280cf6e4Value0 block280cf6e4Value1 block280cf6e4Value2 block280cf6e4Value3 block280cf6e4Value4 block280cf6e4Value5 |
    block280cf6e4Value0 := block280cf6e4Arg1.
    block280cf6e4Value1 := (block280cf6e4Value0) class.
    block280cf6e4Value2 := (block280cf6e4Value1) asap2BehaviorId.
    block280cf6e4Value3 := ASAP2BytesCharacteristicCuboid.
    block280cf6e4Value4 := (block280cf6e4Value3) asap2BehaviorId.
    block280cf6e4Value5 := (block280cf6e4Value2) = (block280cf6e4Value4).
    block280cf6e4Value5
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017f450; bytecode file offset 0xa7bd6c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
selectCharacteristicValblks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cf708Arg1 | 
    | block280cf708Value0 block280cf708Value1 block280cf708Value2 block280cf708Value3 block280cf708Value4 block280cf708Value5 |
    block280cf708Value0 := block280cf708Arg1.
    block280cf708Value1 := (block280cf708Value0) class.
    block280cf708Value2 := (block280cf708Value1) asap2BehaviorId.
    block280cf708Value3 := ASAP2BytesCharacteristicValblk.
    block280cf708Value4 := (block280cf708Value3) asap2BehaviorId.
    block280cf708Value5 := (block280cf708Value2) = (block280cf708Value4).
    block280cf708Value5
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017f46c; bytecode file offset 0xa7bd6c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
selectCharacteristicCurves
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cf72cArg1 | 
    | block280cf72cValue0 block280cf72cValue1 block280cf72cValue2 block280cf72cValue3 block280cf72cValue4 block280cf72cValue5 |
    block280cf72cValue0 := block280cf72cArg1.
    block280cf72cValue1 := (block280cf72cValue0) class.
    block280cf72cValue2 := (block280cf72cValue1) asap2BehaviorId.
    block280cf72cValue3 := ASAP2BytesCharacteristicCurve.
    block280cf72cValue4 := (block280cf72cValue3) asap2BehaviorId.
    block280cf72cValue5 := (block280cf72cValue2) = (block280cf72cValue4).
    block280cf72cValue5
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017f488; bytecode file offset 0xa7bd6c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
selectCharacteristicValues
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cf750Arg1 | 
    | block280cf750Value0 block280cf750Value1 block280cf750Value2 block280cf750Value3 block280cf750Value4 block280cf750Value5 |
    block280cf750Value0 := block280cf750Arg1.
    block280cf750Value1 := (block280cf750Value0) class.
    block280cf750Value2 := (block280cf750Value1) asap2BehaviorId.
    block280cf750Value3 := ASAP2BytesCharacteristicValue.
    block280cf750Value4 := (block280cf750Value3) asap2BehaviorId.
    block280cf750Value5 := (block280cf750Value2) = (block280cf750Value4).
    block280cf750Value5
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017f4a4; bytecode file offset 0xa7bd6c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
selectCharacteristicValueBooleans
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cf774Arg1 | 
    | block280cf774Value0 block280cf774Value1 block280cf774Value2 block280cf774Value3 block280cf774Value4 block280cf774Value5 |
    block280cf774Value0 := block280cf774Arg1.
    block280cf774Value1 := (block280cf774Value0) class.
    block280cf774Value2 := (block280cf774Value1) asap2BehaviorId.
    block280cf774Value3 := ASAP2BytesCharacteristicValueBoolean.
    block280cf774Value4 := (block280cf774Value3) asap2BehaviorId.
    block280cf774Value5 := (block280cf774Value2) = (block280cf774Value4).
    block280cf774Value5
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017f64c; bytecode file offset 0xa7bf68"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
selectMeasurements
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := measurement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cf7bcArg1 | 
    | block280cf7bcValue0 block280cf7bcValue1 block280cf7bcValue2 block280cf7bcValue3 block280cf7bcValue4 block280cf7bcValue5 |
    block280cf7bcValue0 := block280cf7bcArg1.
    block280cf7bcValue1 := (block280cf7bcValue0) class.
    block280cf7bcValue2 := (block280cf7bcValue1) asap2BehaviorId.
    block280cf7bcValue3 := ASAP2BytesMeasurement.
    block280cf7bcValue4 := (block280cf7bcValue3) asap2BehaviorId.
    block280cf7bcValue5 := (block280cf7bcValue2) = (block280cf7bcValue4).
    block280cf7bcValue5
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017f668; bytecode file offset 0xa7bf68"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
selectMeasurementBooleanArrays
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := measurement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cf7e0Arg1 | 
    | block280cf7e0Value0 block280cf7e0Value1 block280cf7e0Value2 block280cf7e0Value3 block280cf7e0Value4 block280cf7e0Value5 |
    block280cf7e0Value0 := block280cf7e0Arg1.
    block280cf7e0Value1 := (block280cf7e0Value0) class.
    block280cf7e0Value2 := (block280cf7e0Value1) asap2BehaviorId.
    block280cf7e0Value3 := ASAP2BytesMeasurementBooleanArray.
    block280cf7e0Value4 := (block280cf7e0Value3) asap2BehaviorId.
    block280cf7e0Value5 := (block280cf7e0Value2) = (block280cf7e0Value4).
    block280cf7e0Value5
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017f684; bytecode file offset 0xa7bf68"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
selectMeasurementBooleans
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := measurement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cf804Arg1 | 
    | block280cf804Value0 block280cf804Value1 block280cf804Value2 block280cf804Value3 block280cf804Value4 block280cf804Value5 |
    block280cf804Value0 := block280cf804Arg1.
    block280cf804Value1 := (block280cf804Value0) class.
    block280cf804Value2 := (block280cf804Value1) asap2BehaviorId.
    block280cf804Value3 := ASAP2BytesMeasurementBoolean.
    block280cf804Value4 := (block280cf804Value3) asap2BehaviorId.
    block280cf804Value5 := (block280cf804Value2) = (block280cf804Value4).
    block280cf804Value5
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017f6a0; bytecode file offset 0xa7bf68"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
selectMeasurementArrays
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := measurement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cf828Arg1 | 
    | block280cf828Value0 block280cf828Value1 block280cf828Value2 block280cf828Value3 block280cf828Value4 block280cf828Value5 |
    block280cf828Value0 := block280cf828Arg1.
    block280cf828Value1 := (block280cf828Value0) class.
    block280cf828Value2 := (block280cf828Value1) asap2BehaviorId.
    block280cf828Value3 := ASAP2BytesMeasurementArray.
    block280cf828Value4 := (block280cf828Value3) asap2BehaviorId.
    block280cf828Value5 := (block280cf828Value2) = (block280cf828Value4).
    block280cf828Value5
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017f7a8; bytecode file offset 0xa7c070"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
selectAxisPoints
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := axisPoint.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280cf84cArg1 | 
    | block280cf84cValue0 block280cf84cValue1 block280cf84cValue2 block280cf84cValue3 block280cf84cValue4 block280cf84cValue5 |
    block280cf84cValue0 := block280cf84cArg1.
    block280cf84cValue1 := (block280cf84cValue0) class.
    block280cf84cValue2 := (block280cf84cValue1) asap2BehaviorId.
    block280cf84cValue3 := ASAP2BytesAxisPoints.
    block280cf84cValue4 := (block280cf84cValue3) asap2BehaviorId.
    block280cf84cValue5 := (block280cf84cValue2) = (block280cf84cValue4).
    block280cf84cValue5
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201859e8; bytecode file offset 0xa822ac"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
removeRecordLayout: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRecordLayoutReferencedByLabels: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recordLayout.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) asap2Remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) removeFrom: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20185a18; bytecode file offset 0xa822dc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
removeFrame: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFrameReferencedByLabels: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := group.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) asap2Remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) removeFrom: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20185a48; bytecode file offset 0xa8230c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
removeUnit: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUnitReferencedByLabels: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := unit.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) asap2Remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) removeFrom: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20189e34; bytecode file offset 0xa866fc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
asap2Copy
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) clearId.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d0b00Arg1 | 
    | block280d0b00Value0 block280d0b00Value1 |
    block280d0b00Value0 := block280d0b00Arg1.
    block280d0b00Value1 := (block280d0b00Value0) asap2Copy.
    block280d0b00Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) doWithAllCollectionsAndAssign: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018abc8; bytecode file offset 0xa87488"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
calibrationNamed: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) characteristic.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectNamed: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) axisPoint.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) objectNamed: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019a0fc; bytecode file offset 0xa969c0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allFunctionsAndGroupsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) noOfFunctions.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := function.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue3) allLabelsFor: (recoveredValue4) in: (recoveredValue5).
    recoveredValue6 := group.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue6) allLabelsFor: (recoveredValue7) in: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2019dd5c; bytecode file offset 0xa9a624"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
object: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDictionary.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b3534; bytecode file offset 0xaafdf8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isFunctionReferencedByLabels: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280d4220Arg1 :block280d4220Arg2 | 
    | block280d4220Value0 block280d4220Value1 block280d4220Value2 |
    block280d4220Value0 := block280d4220Arg1.
    block280d4220Value1 := block280d4220Arg2.
    block280d4220Value2 := (block280d4220Value0) referencesFunction: (block280d4220Value1).
    block280d4220Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFunctionReferencedByFunctions: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b8d40; bytecode file offset 0xab5604"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
createModuleLink
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) comments.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := parent.
    recoveredBlock5Value1 := (recoveredBlock5Value0) createModuleLink.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := comments.
    recoveredValue3 := (recoveredValue2) copy.
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201bdd2c; bytecode file offset 0xaba5f0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allFunctionsAndGroupsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (self) noOfFunctions.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue1) sortBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := function.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue4) allLabelsFor: (recoveredValue5) in: (recoveredValue6).
    recoveredValue7 := group.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue7) allLabelsFor: (recoveredValue8) in: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x201ccfb4; bytecode file offset 0xac9898"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
removeCharacteristicOrAxisPoint: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asap2BehaviorId.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := ASAP2BytesAxisPoints.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) asap2BehaviorId.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) removeAxisPoint: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) removeCharacteristic: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ccfd0; bytecode file offset 0xac9898"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addCharacteristicOrAxisPoint: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asap2BehaviorId.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := ASAP2BytesAxisPoints.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) asap2BehaviorId.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) addAxisPoint: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) addCharacteristic: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d5800; bytecode file offset 0xad20c8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
selectAxisDescriptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d5564Arg1 | 
    | block280d5564Value0 block280d5564Value1 block280d5564Value2 |
    block280d5564Value0 := block280d5564Arg1.
    block280d5564Value1 := (block280d5564Value0) axisDescription.
    block280d5564Value2 := (block280d5564Value1) notNil.
    block280d5564Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:block280d5588Arg1 | 
    | block280d5588Value0 block280d5588Value1 |
    block280d5588Value0 := block280d5588Arg1.
    block280d5588Value1 := (block280d5588Value0) axisDescription.
    block280d5588Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d6878; bytecode file offset 0xad3140"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
markOnlyReadWriteAllInstVars
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := flat.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := [:block280d5834Arg1 | 
    | block280d5834Value0 block280d5834Value1 |
    block280d5834Value0 := block280d5834Arg1.
    block280d5834Value1 := (block280d5834Value0) markReadWriteAllInstVars.
    block280d5834Value1
].
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            (recoveredBlock4Stack1) do: (recoveredBlock4Stack2).
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) markReadWriteInstVars.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    ^self
! !

"ASDBase.ic method 0x201dc584; bytecode file offset 0xad8ff8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putIn: recoveredArg1 recordLayout: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) recordLayout.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) recordLayout.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sorted: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) putIn: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dc5b4; bytecode file offset 0xad8ff8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putIn: recoveredArg1 axisPoints: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisPoint.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisPoint.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sorted: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) putIn: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dc5cc; bytecode file offset 0xad8ff8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putIn: recoveredArg1 characteristic: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) characteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) characteristic.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sorted: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) putIn: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dc5e4; bytecode file offset 0xad8ff8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putIn: recoveredArg1 frame: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) frame.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sorted: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) putIn: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dc5fc; bytecode file offset 0xad8ff8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putIn: recoveredArg1 unit: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) unit.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) unit.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sorted: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) putIn: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dc65c; bytecode file offset 0xad8ff8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putIn: recoveredArg1 group: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) group.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) group.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sorted: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) putIn: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dc6a4; bytecode file offset 0xad8ff8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putIn: recoveredArg1 function: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) function.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) function.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sorted: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) putIn: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dc6bc; bytecode file offset 0xad8ff8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putIn: recoveredArg1 measurement: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) measurement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) measurement.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sorted: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) putIn: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dc6d4; bytecode file offset 0xad8ff8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putIn: recoveredArg1 compuTab: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) compuTab.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) compuTab.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sorted: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) putIn: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dc71c; bytecode file offset 0xad8ff8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putIn: recoveredArg1 userRights: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userRights.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) userRights.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sorted: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) putIn: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dc734; bytecode file offset 0xad8ff8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putIn: recoveredArg1 compuMethod: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) compuMethod.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) compuMethod.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) sorted: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) putIn: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e6cb4; bytecode file offset 0xae3580"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
setFileDefaultsFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) setFileDefaults.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisDescription.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [:block280d73a0Arg1 | 
    | block280d73a0Stack0 block280d73a0Stack1 block280d73a0Stack2 block280d73a0Stack3 block280d73a0PC block280d73a0Step block280d73a0Done block280d73a0Result |
    block280d73a0Stack0 := self.
    block280d73a0PC := 4.
    block280d73a0Done := false.
    [block280d73a0Done not] whileTrue: [
        block280d73a0Step := block280d73a0PC.
        block280d73a0Step = 4 ifTrue: [
            block280d73a0Stack1 := block280d73a0Arg1.
            block280d73a0PC := 5.
        ].
        block280d73a0Step = 5 ifTrue: [
            block280d73a0Stack2 := [:block280d73c4Arg1 | 
    | block280d73c4Value0 block280d73c4Value1 |
    block280d73c4Value0 := block280d73c4Arg1.
    block280d73c4Value1 := (block280d73c4Value0) setFileDefaults.
    block280d73c4Value1
].
            block280d73a0PC := 7.
        ].
        block280d73a0Step = 7 ifTrue: [
            block280d73a0PC := 13.
        ].
        block280d73a0Step = 13 ifTrue: [
            block280d73a0Stack1 := (block280d73a0Stack1) do: (block280d73a0Stack2).
            block280d73a0PC := 15.
        ].
        block280d73a0Step = 15 ifTrue: [
            block280d73a0Result := block280d73a0Stack1.
            block280d73a0Done := true.
        ].
    ].
    block280d73a0Result
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f1f20; bytecode file offset 0xaee7e8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allDevices
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) allDevices.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f8ee4; bytecode file offset 0xaf57b4"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
checkFunctionLists
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) function.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d84a4Arg1 | 
    | block280d84a4Value0 block280d84a4Value1 |
    block280d84a4Value0 := block280d84a4Arg1.
    block280d84a4Value1 := (block280d84a4Value0) checkFunctionList.
    block280d84a4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
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
            recoveredStack1 := [:block280d84c8Arg1 | 
    | block280d84c8Value0 block280d84c8Value1 |
    block280d84c8Value0 := block280d84c8Arg1.
    block280d84c8Value1 := (block280d84c8Value0) removeInvalidFunctionEntries.
    block280d84c8Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f9904; bytecode file offset 0xaf61d4"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCurveAxisLabelsFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := characteristic.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280d8510Arg1 | 
    | block280d8510Value0 block280d8510Value1 |
    block280d8510Value0 := block280d8510Arg1.
    block280d8510Value1 := (block280d8510Value0) isCurveAxis.
    block280d8510Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) allLabelsFor: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20201738; bytecode file offset 0xafe00c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) addToSpecificationModule: (self).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getCommentModule.
    (recoveredValue1) addToCommentModule: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) getHardwareModule.
    (recoveredValue3) addToHardwareModule: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := parent.
    recoveredValue7 := (recoveredValue6) createModuleLink.
    (recoveredValue5) setCommentsLink: (recoveredValue7).
    recoveredValue8 := comments.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) updateDeviceLinksIn: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x20202574; bytecode file offset 0xafee40"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
removeAxisPoint: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAxisPointReferencedByLabels: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := ASAP2StillReferenced.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) monitorWarning: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := axisPoint.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) asap2Remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) removeFrom: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202025b4; bytecode file offset 0xafee80"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
removeCompuMethod: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCompuMethodReferencedByLabels: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := ASAP2StillReferenced.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) monitorWarning: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := compuMethod.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) asap2Remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) removeFrom: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20206378; bytecode file offset 0xb02c48"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
memoryLayout
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) memorySegment.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) modPar.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) memoryLayout.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block280d9878Arg1 | 
    | block280d9878Value0 block280d9878Value1 |
    block280d9878Value0 := block280d9878Arg1.
    block280d9878Value1 := (block280d9878Value0) convertToASD.
    block280d9878Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20207a90; bytecode file offset 0xb043c8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allMeasurementLabelsReferencedByFunctionsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allMeasurementLabelsReferencedByFunctions.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := recoveredLocal1.
    recoveredBlock11Value3 := (recoveredBlock11Value0) labelFor: (recoveredBlock11Value1) in: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20207aac; bytecode file offset 0xb043c8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCalibrationLabelsReferencedByFunctionsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allCalibrationLabelsReferencedByFunctions.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := recoveredLocal1.
    recoveredBlock11Value3 := (recoveredBlock11Value0) labelFor: (recoveredBlock11Value1) in: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20207ac8; bytecode file offset 0xb043c8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCalibrationAndAxisPointLabelsNotReferencedByFunctionsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allCalibrationAndAxisPointLabelsNotReferencedByFunctions.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := recoveredLocal1.
    recoveredBlock11Value3 := (recoveredBlock11Value0) labelFor: (recoveredBlock11Value1) in: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20207ae4; bytecode file offset 0xb043c8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allMeasurementLabelsNotReferencedByFunctionsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allMeasurementLabelsNotReferencedByFunctions.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := recoveredLocal1.
    recoveredBlock11Value3 := (recoveredBlock11Value0) labelFor: (recoveredBlock11Value1) in: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20207b00; bytecode file offset 0xb043c8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCalibrationLabelsNotReferencedByFunctionsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allCalibrationLabelsNotReferencedByFunctions.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := recoveredLocal1.
    recoveredBlock11Value3 := (recoveredBlock11Value0) labelFor: (recoveredBlock11Value1) in: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2021018c; bytecode file offset 0xb0ca44"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isReferencedByAdjustableLabels: recoveredArg1 accessBlock: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := characteristic.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := axisPoint.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202101b8; bytecode file offset 0xb0ca70"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isReferencedByFunction: recoveredArg1 accessBlock: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := function.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := group.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202111ec; bytecode file offset 0xb0dab0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allAsap2Labels
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) noOfLabels.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := characteristic.
    (recoveredValue3) addAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := measurement.
    (recoveredValue5) addAll: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := axisPoint.
    (recoveredValue7) addAll: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := frame.
    (recoveredValue9) addAll: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x202143d4; bytecode file offset 0xb10ca4"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCurveAxisLabelsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := characteristic.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2) sortBlock: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block280daa30Arg1 | 
    | block280daa30Value0 block280daa30Value1 |
    block280daa30Value0 := block280daa30Arg1.
    block280daa30Value1 := (block280daa30Value0) isCurveAxis.
    block280daa30Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) allLabelsFor: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20221f80; bytecode file offset 0xb1e8b8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allMeasurementLabelsReferencedByFunctionsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) sortBlock: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) allMeasurementLabelsReferencedByFunctions.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredArg1.
    recoveredBlock14Value2 := recoveredLocal1.
    recoveredBlock14Value3 := (recoveredBlock14Value0) labelFor: (recoveredBlock14Value1) in: (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    recoveredValue5 := (recoveredValue3) collect: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20221f9c; bytecode file offset 0xb1e8b8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCalibrationLabelsNotReferencedByFunctionsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) sortBlock: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) allCalibrationLabelsNotReferencedByFunctions.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredArg1.
    recoveredBlock14Value2 := recoveredLocal1.
    recoveredBlock14Value3 := (recoveredBlock14Value0) labelFor: (recoveredBlock14Value1) in: (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    recoveredValue5 := (recoveredValue3) collect: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20221fb8; bytecode file offset 0xb1e8b8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allMeasurementLabelsNotReferencedByFunctionsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) sortBlock: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) allMeasurementLabelsNotReferencedByFunctions.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredArg1.
    recoveredBlock14Value2 := recoveredLocal1.
    recoveredBlock14Value3 := (recoveredBlock14Value0) labelFor: (recoveredBlock14Value1) in: (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    recoveredValue5 := (recoveredValue3) collect: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20221fd4; bytecode file offset 0xb1e8b8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCalibrationLabelsReferencedByFunctionsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) sortBlock: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) allCalibrationLabelsReferencedByFunctions.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredArg1.
    recoveredBlock14Value2 := recoveredLocal1.
    recoveredBlock14Value3 := (recoveredBlock14Value0) labelFor: (recoveredBlock14Value1) in: (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    recoveredValue5 := (recoveredValue3) collect: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20221ff0; bytecode file offset 0xb1e8b8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCalibrationAndAxisPointLabelsNotReferencedByFunctionsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) sortBlock: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) allCalibrationAndAxisPointLabelsNotReferencedByFunctions.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredArg1.
    recoveredBlock14Value2 := recoveredLocal1.
    recoveredBlock14Value3 := (recoveredBlock14Value0) labelFor: (recoveredBlock14Value1) in: (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    recoveredValue5 := (recoveredValue3) collect: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202243fc; bytecode file offset 0xb20cc0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
createRangeCompuMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := compuMethod.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) changeType.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local1.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) = (recoveredBlock7Stack3).
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 30] ifFalse: [recoveredBlock7PC := 24].
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Local1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) replaceCompuMethod: (recoveredBlock7Stack2) with: (recoveredBlock7Stack3).
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202346d0; bytecode file offset 0xb30f9c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
compareOf: recoveredArg1 block: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg2.
    (self) doWithAllCollectionsSelectorAndAssign: (recoveredValue0).
    recoveredValue1 := (self) modPar.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) modPar.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue1) compareOf: (recoveredValue3) block: (recoveredValue4).
    (self) modPar: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue6) methodContext.
    (recoveredValue7) instVarAt: (7) put: (self).
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue8) methodContext.
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) instVarAt: (8) put: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x202362c0; bytecode file offset 0xb32b88"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allLabels
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) noOfLabels.
    recoveredValue2 := (self) noOfDevices.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := (recoveredValue0) new: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := characteristic.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) collectAllLabelsIn: (recoveredValue6).
    recoveredValue7 := measurement.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) collectAllLabelsIn: (recoveredValue8).
    recoveredValue9 := axisPoint.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue9) collectAllLabelsIn: (recoveredValue10).
    recoveredValue11 := frame.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue11) collectAllLabelsIn: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20236a44; bytecode file offset 0xb33314"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCalibrationAndAxisPointLabelsNotReferencedByFunctions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) characteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dd778Arg1 | 
    | block280dd778Value0 block280dd778Value1 block280dd778Value2 |
    block280dd778Value0 := block280dd778Arg1.
    block280dd778Value1 := (block280dd778Value0) hasFunctionReference.
    block280dd778Value2 := (block280dd778Value1) not.
    block280dd778Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisPoint.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280dd79cArg1 | 
    | block280dd79cValue0 block280dd79cValue1 block280dd79cValue2 |
    block280dd79cValue0 := block280dd79cArg1.
    block280dd79cValue1 := (block280dd79cValue0) hasFunctionReference.
    block280dd79cValue2 := (block280dd79cValue1) not.
    block280dd79cValue2
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20237aac; bytecode file offset 0xb34374"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCalibrationAndAxisPointLabelsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := characteristic.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := axisPoint.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (recoveredValue0) new: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := characteristic.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue7) allLabelsFor: (recoveredValue8) in: (recoveredValue9).
    recoveredValue10 := axisPoint.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue10) allLabelsFor: (recoveredValue11) in: (recoveredValue12).
    recoveredValue13 := characteristic.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := recoveredLocal1.
    (recoveredValue13) allSlewsFor: (recoveredValue14) in: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !

"ASDBase.ic method 0x20237c60; bytecode file offset 0xb34538"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
moduleFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) noOfDevices.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) labelFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) setDeviceLink: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) moduleFor: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstOrNil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20241764; bytecode file offset 0xb3e020"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isReferencedByLabels: recoveredArg1 accessBlock: recoveredArg2 in: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg1.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) value: (recoveredBlock7Stack3) value: (recoveredBlock7Stack4).
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 28] ifFalse: [recoveredBlock7PC := 31].
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack1 := true.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x20241798; bytecode file offset 0xb3e054"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
referencesFromLabelsTo: recoveredArg1 accessMethod: recoveredArg2 in: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg1.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) = (recoveredBlock7Stack4).
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) perform: (recoveredBlock7Stack3).
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 28] ifFalse: [recoveredBlock7PC := 31].
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack1 := true.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x202434c4; bytecode file offset 0xb3fd88"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allLabelsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) noOfLabels.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := characteristic.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue3) allLabelsFor: (recoveredValue4) in: (recoveredValue5).
    recoveredValue6 := measurement.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue6) allLabelsFor: (recoveredValue7) in: (recoveredValue8).
    recoveredValue9 := axisPoint.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue9) allLabelsFor: (recoveredValue10) in: (recoveredValue11).
    recoveredValue12 := frame.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue12) allLabelsFor: (recoveredValue13) in: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x20247970; bytecode file offset 0xb44248"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
checkFlatAfterCollect
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := flat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280de4d4Arg1 :block280de4d4Arg2 | 
    | block280de4d4Stack0 block280de4d4Stack1 block280de4d4Stack2 block280de4d4Stack3 block280de4d4Stack4 block280de4d4PC block280de4d4Step block280de4d4Done block280de4d4Result |
    block280de4d4Stack0 := self.
    block280de4d4PC := 4.
    block280de4d4Done := false.
    [block280de4d4Done not] whileTrue: [
        block280de4d4Step := block280de4d4PC.
        block280de4d4Step = 4 ifTrue: [
            block280de4d4Stack1 := nil.
            block280de4d4PC := 5.
        ].
        block280de4d4Step = 5 ifTrue: [
            block280de4d4Stack2 := block280de4d4Arg1.
            block280de4d4PC := 6.
        ].
        block280de4d4Step = 6 ifTrue: [
            block280de4d4Stack2 := (block280de4d4Stack2) comments.
            block280de4d4PC := 7.
        ].
        block280de4d4Step = 7 ifTrue: [
            block280de4d4Stack3 := block280de4d4Arg2.
            block280de4d4PC := 8.
        ].
        block280de4d4Step = 8 ifTrue: [
            block280de4d4Stack2 := (block280de4d4Stack2) = (block280de4d4Stack3).
            block280de4d4PC := 9.
        ].
        block280de4d4Step = 9 ifTrue: [
            (block280de4d4Stack2) ifTrue: [block280de4d4PC := 25] ifFalse: [block280de4d4PC := 12].
        ].
        block280de4d4Step = 12 ifTrue: [
            block280de4d4PC := 13.
        ].
        block280de4d4Step = 13 ifTrue: [
            block280de4d4Stack1 := SGMonitorStreamDummy.
            block280de4d4PC := 15.
        ].
        block280de4d4Step = 15 ifTrue: [
            block280de4d4Stack1 := (block280de4d4Stack1) create.
            block280de4d4PC := 16.
        ].
        block280de4d4Step = 16 ifTrue: [
            block280de4d4Stack2 := 'invalid index '.
            block280de4d4PC := 18.
        ].
        block280de4d4Step = 18 ifTrue: [
            block280de4d4Stack3 := block280de4d4Arg2.
            block280de4d4PC := 19.
        ].
        block280de4d4Step = 19 ifTrue: [
            block280de4d4Stack3 := (block280de4d4Stack3) printString.
            block280de4d4PC := 21.
        ].
        block280de4d4Step = 21 ifTrue: [
            block280de4d4Stack2 := (block280de4d4Stack2) , (block280de4d4Stack3).
            block280de4d4PC := 23.
        ].
        block280de4d4Step = 23 ifTrue: [
            block280de4d4Stack1 := (block280de4d4Stack1) addText: (block280de4d4Stack2).
            block280de4d4PC := 25.
        ].
        block280de4d4Step = 25 ifTrue: [
            block280de4d4Result := block280de4d4Stack1.
            block280de4d4Done := true.
        ].
    ].
    block280de4d4Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202505cc; bytecode file offset 0xb4ce94"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCalibrationAndAxisPointLabelsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := characteristic.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := axisPoint.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue0) new: (recoveredValue5) sortBlock: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := characteristic.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue8) allLabelsFor: (recoveredValue9) in: (recoveredValue10).
    recoveredValue11 := axisPoint.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue11) allLabelsFor: (recoveredValue12) in: (recoveredValue13).
    recoveredValue14 := characteristic.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := recoveredLocal1.
    (recoveredValue14) allSlewsFor: (recoveredValue15) in: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"ASDBase.ic method 0x2025bb70; bytecode file offset 0xb58434"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allLabelsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (self) noOfLabels.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue1) sortBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := characteristic.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue4) allLabelsFor: (recoveredValue5) in: (recoveredValue6).
    recoveredValue7 := measurement.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue7) allLabelsFor: (recoveredValue8) in: (recoveredValue9).
    recoveredValue10 := axisPoint.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue10) allLabelsFor: (recoveredValue11) in: (recoveredValue12).
    recoveredValue13 := frame.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := recoveredLocal1.
    (recoveredValue13) allLabelsFor: (recoveredValue14) in: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !

"ASDBase.ic method 0x20262870; bytecode file offset 0xb5f144"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
updateSpecificationModule: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := [:recoveredBlock4Block11Arg1 | 
    | recoveredBlock4Block11Value0 recoveredBlock4Block11Value1 recoveredBlock4Block11Value2 |
    recoveredBlock4Block11Value0 := recoveredBlock4Block11Arg1.
    recoveredBlock4Block11Value1 := recoveredArg1.
    recoveredBlock4Block11Value2 := (recoveredBlock4Block11Value0) updateSpecificationModule: (recoveredBlock4Block11Value1).
    recoveredBlock4Block11Value2
].
    (recoveredBlock4Value0) do: (recoveredBlock4Value1).
    true
].
    (self) doWithAllCollections: (recoveredValue0).
    recoveredValue1 := modPar.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) updateSpecificationModule: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20262884; bytecode file offset 0xb5f144"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addToSpecificationModule: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := [:recoveredBlock4Block11Arg1 | 
    | recoveredBlock4Block11Value0 recoveredBlock4Block11Value1 recoveredBlock4Block11Value2 |
    recoveredBlock4Block11Value0 := recoveredBlock4Block11Arg1.
    recoveredBlock4Block11Value1 := recoveredArg1.
    recoveredBlock4Block11Value2 := (recoveredBlock4Block11Value0) addToSpecificationModule: (recoveredBlock4Block11Value1).
    recoveredBlock4Block11Value2
].
    (recoveredBlock4Value0) do: (recoveredBlock4Value1).
    true
].
    (self) doWithAllCollections: (recoveredValue0).
    recoveredValue1 := modPar.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addToSpecificationModule: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202634f8; bytecode file offset 0xb5fdc0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putIn: recoveredArg1 a2ml: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) a2ml.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := AMLalwaysState.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := (self) a2ml.
    recoveredBlock10Value1 := (self) sorted: (recoveredBlock10Value0).
    recoveredBlock10Value2 := [:recoveredBlock10Block19Arg1 | 
    | recoveredBlock10Block19Value0 recoveredBlock10Block19Value1 recoveredBlock10Block19Value2 |
    recoveredBlock10Block19Value0 := recoveredBlock10Block19Arg1.
    recoveredBlock10Block19Value1 := recoveredArg1.
    recoveredBlock10Block19Value2 := (recoveredBlock10Block19Value0) putIn: (recoveredBlock10Block19Value1).
    recoveredBlock10Block19Value2
].
    recoveredBlock10Value3 := (recoveredBlock10Value1) do: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026c7b4; bytecode file offset 0xb69084"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
renameCharacteristicsUsing: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredBlock5Arg2.
    recoveredBlock5Value2 := (self) rename: (recoveredBlock5Value0) to: (recoveredBlock5Value1) in: ('characteristic').
    recoveredBlock5Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDictionary.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            characteristic := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026c800; bytecode file offset 0xb690d0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
renameMeasurementsUsing: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredBlock5Arg2.
    recoveredBlock5Value2 := (self) rename: (recoveredBlock5Value0) to: (recoveredBlock5Value1) in: ('measurement').
    recoveredBlock5Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := measurement.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDictionary.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := measurement.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            measurement := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026c84c; bytecode file offset 0xb6911c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
renameRecordLayoutsUsing: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredBlock5Arg2.
    recoveredBlock5Value2 := (self) rename: (recoveredBlock5Value0) to: (recoveredBlock5Value1) in: ('recordLayout').
    recoveredBlock5Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recordLayout.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDictionary.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recordLayout.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recordLayout := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026c898; bytecode file offset 0xb69168"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
renameCompuMethodUsing: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredBlock5Arg2.
    recoveredBlock5Value2 := (self) rename: (recoveredBlock5Value0) to: (recoveredBlock5Value1) in: ('compuMethod').
    recoveredBlock5Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := compuMethod.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDictionary.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := compuMethod.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            compuMethod := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026c8e4; bytecode file offset 0xb691b4"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
renameGroupsUsing: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredBlock5Arg2.
    recoveredBlock5Value2 := (self) rename: (recoveredBlock5Value0) to: (recoveredBlock5Value1) in: ('group').
    recoveredBlock5Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := group.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDictionary.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := group.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            group := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026d434; bytecode file offset 0xb69cf0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
resetDataElementsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) comments.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) resetDataElementsFor: (recoveredValue1).
    recoveredValue2 := characteristic.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) resetDataElementsFor: (recoveredValue3).
    recoveredValue4 := measurement.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) resetDataElementsFor: (recoveredValue5).
    recoveredValue6 := axisPoint.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) resetDataElementsFor: (recoveredValue7).
    recoveredValue8 := frame.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) resetDataElementsFor: (recoveredValue9).
    recoveredValue10 := function.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) resetDataElementsFor: (recoveredValue11).
    recoveredValue12 := group.
    recoveredValue13 := recoveredArg1.
    (recoveredValue12) resetDataElementsFor: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x20276b50; bytecode file offset 0xb73418"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
referencesFromLabelsToRecordLayout: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280e0cc4Arg1 :block280e0cc4Arg2 | 
    | block280e0cc4Value0 block280e0cc4Value1 block280e0cc4Value2 block280e0cc4Value3 |
    block280e0cc4Value0 := block280e0cc4Arg1.
    block280e0cc4Value1 := (block280e0cc4Value0) recordLayout.
    block280e0cc4Value2 := block280e0cc4Arg2.
    block280e0cc4Value3 := (block280e0cc4Value1) = (block280e0cc4Value2).
    block280e0cc4Value3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := characteristic.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsTo: (recoveredStack1) accessBlock: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [:block280e0ce8Arg1 :block280e0ce8Arg2 | 
    | block280e0ce8Value0 block280e0ce8Value1 block280e0ce8Value2 block280e0ce8Value3 |
    block280e0ce8Value0 := block280e0ce8Arg1.
    block280e0ce8Value1 := (block280e0ce8Value0) recordLayout.
    block280e0ce8Value2 := block280e0ce8Arg2.
    block280e0ce8Value3 := (block280e0ce8Value1) = (block280e0ce8Value2).
    block280e0ce8Value3
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := axisPoint.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencesFromLabelsTo: (recoveredStack2) accessBlock: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20276b98; bytecode file offset 0xb73464"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
referencesFromLabelsToFunction: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280e0d0cArg1 :block280e0d0cArg2 | 
    | block280e0d0cValue0 block280e0d0cValue1 block280e0d0cValue2 block280e0d0cValue3 |
    block280e0d0cValue0 := block280e0d0cArg1.
    block280e0d0cValue1 := (block280e0d0cValue0) subFunction.
    block280e0d0cValue2 := block280e0d0cArg2.
    block280e0d0cValue3 := (block280e0d0cValue1) includes: (block280e0d0cValue2).
    block280e0d0cValue3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := function.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsTo: (recoveredStack1) accessBlock: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [:block280e0d30Arg1 :block280e0d30Arg2 | 
    | block280e0d30Value0 block280e0d30Value1 block280e0d30Value2 block280e0d30Value3 |
    block280e0d30Value0 := block280e0d30Arg1.
    block280e0d30Value1 := (block280e0d30Value0) subFunction.
    block280e0d30Value2 := block280e0d30Arg2.
    block280e0d30Value3 := (block280e0d30Value1) includes: (block280e0d30Value2).
    block280e0d30Value3
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := group.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencesFromLabelsTo: (recoveredStack2) accessBlock: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20276ea8; bytecode file offset 0xb73778"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
renameAxisPointsUsing: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredBlock5Arg2.
    recoveredBlock5Value2 := (self) rename: (recoveredBlock5Value0) to: (recoveredBlock5Value1) in: ('axisPoint').
    recoveredBlock5Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisPoint.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDictionary.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := axisPoint.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            axisPoint := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20276ef8; bytecode file offset 0xb737c8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
renameFunctionsUsing: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredBlock5Arg2.
    recoveredBlock5Value2 := (self) rename: (recoveredBlock5Value0) to: (recoveredBlock5Value1) in: ('function').
    recoveredBlock5Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) function.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDictionary.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := function.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            function := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20278788; bytecode file offset 0xb75050"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
putIn: recoveredArg1 ifData: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifData.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := AMLalwaysState.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := (self) ifData.
    recoveredBlock10Value1 := (self) sorted: (recoveredBlock10Value0).
    recoveredBlock10Value2 := [:recoveredBlock10Block19Arg1 | 
    | recoveredBlock10Block19Value0 recoveredBlock10Block19Value1 recoveredBlock10Block19Value2 |
    recoveredBlock10Block19Value0 := recoveredBlock10Block19Arg1.
    recoveredBlock10Block19Value1 := recoveredArg1.
    recoveredBlock10Block19Value2 := (recoveredBlock10Block19Value0) putIn: (recoveredBlock10Block19Value1) parent: (self).
    recoveredBlock10Block19Value2
].
    recoveredBlock10Value3 := (recoveredBlock10Value1) do: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028a84c; bytecode file offset 0xb87150"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
replaceFrame: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCommentObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getHardwareObject.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) comments.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) comments: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) frame.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) replace: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) removeCommentAndHardware.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) updateCommentObject: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) updateHardwareObject: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028a878; bytecode file offset 0xb87150"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
replaceGroup: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCommentObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getHardwareObject.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) comments.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) comments: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) group.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) replace: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) removeCommentAndHardware.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) updateCommentObject: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) updateHardwareObject: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202989a0; bytecode file offset 0xb95268"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
removeCompuTab: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := compuMethod.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) compuTabRef.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue2 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 |
    recoveredBlock19Value0 := compuTab.
    recoveredBlock19Value1 := recoveredArg1.
    recoveredBlock19Value2 := [].
    (recoveredBlock19Value0) asap2Remove: (recoveredBlock19Value1) ifAbsent: (recoveredBlock19Value2).
    recoveredBlock19Value3 := recoveredArg1.
    recoveredBlock19Value4 := (recoveredBlock19Value3) removeFrom: (self).
    recoveredBlock19Value4
].
    (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2029b208; bytecode file offset 0xb97ad8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allAxisDescriptions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280e36acArg1 | 
    | block280e36acValue0 block280e36acValue1 block280e36acValue2 |
    block280e36acValue0 := block280e36acArg1.
    block280e36acValue1 := (block280e36acValue0) axisDescription.
    block280e36acValue2 := (block280e36acValue1) notNil.
    block280e36acValue2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredLocal1.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (recoveredBlock24Value1) axisDescription.
    recoveredBlock24Value3 := (recoveredBlock24Value0) addAll: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202b416c; bytecode file offset 0xbb0a34"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
referencesFromLabelsToAxisDescription: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280e4e04Arg1 :block280e4e04Arg2 | 
    | block280e4e04Stack0 block280e4e04Stack1 block280e4e04Stack2 block280e4e04Stack3 block280e4e04Stack4 block280e4e04PC block280e4e04Step block280e4e04Done block280e4e04Result |
    block280e4e04Stack0 := self.
    block280e4e04PC := 4.
    block280e4e04Done := false.
    [block280e4e04Done not] whileTrue: [
        block280e4e04Step := block280e4e04PC.
        block280e4e04Step = 4 ifTrue: [
            block280e4e04Stack1 := block280e4e04Arg1.
            block280e4e04PC := 7.
        ].
        block280e4e04Step = 7 ifTrue: [
            block280e4e04Stack1 := (block280e4e04Stack1) axisDescription.
            block280e4e04PC := 8.
        ].
        block280e4e04Step = 8 ifTrue: [
            (block280e4e04Stack1 ~~ nil) ifTrue: [block280e4e04PC := 16] ifFalse: [block280e4e04PC := 12].
        ].
        block280e4e04Step = 12 ifTrue: [
            block280e4e04Stack1 := false.
            block280e4e04PC := 13.
        ].
        block280e4e04Step = 13 ifTrue: [
            block280e4e04PC := 37.
        ].
        block280e4e04Step = 16 ifTrue: [
            block280e4e04Stack1 := block280e4e04Arg1.
            block280e4e04PC := 19.
        ].
        block280e4e04Step = 19 ifTrue: [
            block280e4e04Stack1 := (block280e4e04Stack1) axisDescription.
            block280e4e04PC := 20.
        ].
        block280e4e04Step = 20 ifTrue: [
            block280e4e04Stack2 := [:block280e4e04Block20Arg1 | 
    | block280e4e04Block20Value0 block280e4e04Block20Value1 block280e4e04Block20Value2 |
    block280e4e04Block20Value0 := block280e4e04Block20Arg1.
    block280e4e04Block20Value1 := block280e4e04Arg2.
    block280e4e04Block20Value2 := (block280e4e04Block20Value0) = (block280e4e04Block20Value1).
    block280e4e04Block20Value2
].
            block280e4e04PC := 32.
        ].
        block280e4e04Step = 32 ifTrue: [
            block280e4e04Stack3 := [].
            block280e4e04PC := 34.
        ].
        block280e4e04Step = 34 ifTrue: [
            block280e4e04Stack1 := (block280e4e04Stack1) detect: (block280e4e04Stack2) ifNone: (block280e4e04Stack3).
            block280e4e04PC := 36.
        ].
        block280e4e04Step = 36 ifTrue: [
            block280e4e04Stack1 := (block280e4e04Stack1) notNil.
            block280e4e04PC := 37.
        ].
        block280e4e04Step = 37 ifTrue: [
            block280e4e04Result := block280e4e04Stack1.
            block280e4e04Done := true.
        ].
    ].
    block280e4e04Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsTo: (recoveredStack1) accessBlock: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b4e20; bytecode file offset 0xbb16f0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
removeGroup: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGroupReferencedByLabels: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := group.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) asap2Remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) removeFrom: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) group.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 |
    recoveredBlock30Value0 := recoveredBlock30Arg1.
    recoveredBlock30Value1 := recoveredArg1.
    recoveredBlock30Value2 := (recoveredBlock30Value0) removeSubGroup: (recoveredBlock30Value1).
    recoveredBlock30Value2
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b5e6c; bytecode file offset 0xbb2740"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addSelectedLabels: recoveredArg1 from: recoveredArg2 progressWindow: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    (recoveredBlock5Value0) addToSpecificationModule: (self).
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (self) getCommentModule.
    (recoveredBlock5Value1) addToCommentModule: (recoveredBlock5Value2).
    recoveredBlock5Value3 := recoveredBlock5Arg1.
    recoveredBlock5Value4 := (self) getHardwareModule.
    recoveredBlock5Value5 := (recoveredBlock5Value3) addToHardwareModule: (recoveredBlock5Value4).
    recoveredBlock5Value5
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 |
    recoveredBlock30Value0 := recoveredBlock30Arg1.
    recoveredBlock30Value1 := parent.
    recoveredBlock30Value2 := (recoveredBlock30Value1) createModuleLink.
    recoveredBlock30Value3 := (recoveredBlock30Value0) setCommentsLink: (recoveredBlock30Value2).
    recoveredBlock30Value3
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202b92b0; bytecode file offset 0xbb5b78"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
referencesFromLabelsTo: recoveredArg1 accessBlock: recoveredArg2 in: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredArg2.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack4 := recoveredArg1.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) value: (recoveredBlock13Stack3) value: (recoveredBlock13Stack4).
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 34] ifFalse: [recoveredBlock13PC := 40].
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202f1b9c; bytecode file offset 0xbee488"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
compareRemoveAllOf: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) comparePrepare: (self).
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 recoveredBlock9Value8 |
    recoveredBlock9Value0 := recoveredLocal2.
    recoveredBlock9Value1 := recoveredBlock9Arg1.
    recoveredBlock9Value2 := (recoveredBlock9Value0) perform: (recoveredBlock9Value1).
    recoveredBlock9Value3 := recoveredBlock9Value2.
    recoveredBlock9Local1 := recoveredBlock9Value3.
    recoveredBlock9Value4 := recoveredArg1.
    recoveredBlock9Value5 := recoveredBlock9Arg1.
    recoveredBlock9Value6 := (recoveredBlock9Value4) perform: (recoveredBlock9Value5).
    recoveredBlock9Value7 := [].
    (recoveredBlock9Value2) removeAll: (recoveredBlock9Value6) ifAbsent: (recoveredBlock9Value7) compare: ('isEqual:').
    recoveredBlock9Value8 := recoveredBlock9Local1.
    recoveredBlock9Value8
].
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue2) compareOf: (recoveredValue3) block: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202f1bbc; bytecode file offset 0xbee488"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
compareKeepDifferentOf: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) comparePrepare: (self).
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 recoveredBlock9Value8 |
    recoveredBlock9Value0 := recoveredLocal2.
    recoveredBlock9Value1 := recoveredBlock9Arg1.
    recoveredBlock9Value2 := (recoveredBlock9Value0) perform: (recoveredBlock9Value1).
    recoveredBlock9Value3 := recoveredBlock9Value2.
    recoveredBlock9Local1 := recoveredBlock9Value3.
    recoveredBlock9Value4 := recoveredArg1.
    recoveredBlock9Value5 := recoveredBlock9Arg1.
    recoveredBlock9Value6 := (recoveredBlock9Value4) perform: (recoveredBlock9Value5).
    recoveredBlock9Value7 := [].
    (recoveredBlock9Value2) removeAll: (recoveredBlock9Value6) ifAbsent: (recoveredBlock9Value7) compare: ('compareWith:').
    recoveredBlock9Value8 := recoveredBlock9Local1.
    recoveredBlock9Value8
].
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue2) compareOf: (recoveredValue3) block: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202f2694; bytecode file offset 0xbeef74"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addASAP2: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBytesObjectValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCommentObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createHardwareObject.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) addToSpecificationModule: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) getCommentModule.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) addToCommentModule: (recoveredStack2) commentObject: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) getHardwareModule.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) addToHardwareModule: (recoveredStack2) hardwareObject: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := parent.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) createModuleLink.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) setCommentsLink: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := comments.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) updateDeviceLinksIn: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202f3f94; bytecode file offset 0xbf0870"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
setFileDefaults
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) characteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e86f8Arg1 | 
    | block280e86f8Stack0 block280e86f8Stack1 block280e86f8Stack2 block280e86f8Stack3 block280e86f8PC block280e86f8Step block280e86f8Done block280e86f8Result |
    block280e86f8Stack0 := self.
    block280e86f8PC := 4.
    block280e86f8Done := false.
    [block280e86f8Done not] whileTrue: [
        block280e86f8Step := block280e86f8PC.
        block280e86f8Step = 4 ifTrue: [
            block280e86f8Stack1 := block280e86f8Arg1.
            block280e86f8PC := 5.
        ].
        block280e86f8Step = 5 ifTrue: [
            (block280e86f8Stack1) setFileDefaults.
            block280e86f8PC := 7.
        ].
        block280e86f8Step = 7 ifTrue: [
            block280e86f8Stack1 := block280e86f8Arg1.
            block280e86f8PC := 8.
        ].
        block280e86f8Step = 8 ifTrue: [
            block280e86f8Stack1 := (block280e86f8Stack1) axisDescription.
            block280e86f8PC := 9.
        ].
        block280e86f8Step = 9 ifTrue: [
            block280e86f8Stack2 := [:block280e871cArg1 | 
    | block280e871cStack0 block280e871cStack1 block280e871cStack2 block280e871cStack3 block280e871cPC block280e871cStep block280e871cDone block280e871cResult |
    block280e871cStack0 := self.
    block280e871cPC := 4.
    block280e871cDone := false.
    [block280e871cDone not] whileTrue: [
        block280e871cStep := block280e871cPC.
        block280e871cStep = 4 ifTrue: [
            block280e871cStack1 := block280e871cArg1.
            block280e871cPC := 5.
        ].
        block280e871cStep = 5 ifTrue: [
            block280e871cStack2 := [:block280e8740Arg1 | 
    | block280e8740Value0 block280e8740Value1 |
    block280e8740Value0 := block280e8740Arg1.
    block280e8740Value1 := (block280e8740Value0) setFileDefaults.
    block280e8740Value1
].
            block280e871cPC := 7.
        ].
        block280e871cStep = 7 ifTrue: [
            block280e871cPC := 13.
        ].
        block280e871cStep = 13 ifTrue: [
            block280e871cStack1 := (block280e871cStack1) do: (block280e871cStack2).
            block280e871cPC := 15.
        ].
        block280e871cStep = 15 ifTrue: [
            block280e871cResult := block280e871cStack1.
            block280e871cDone := true.
        ].
    ].
    block280e871cResult
].
            block280e86f8PC := 11.
        ].
        block280e86f8Step = 11 ifTrue: [
            block280e86f8PC := 26.
        ].
        block280e86f8Step = 26 ifTrue: [
            block280e86f8Stack1 := (block280e86f8Stack1) ifNotNil: (block280e86f8Stack2).
            block280e86f8PC := 28.
        ].
        block280e86f8Step = 28 ifTrue: [
            block280e86f8Result := block280e86f8Stack1.
            block280e86f8Done := true.
        ].
    ].
    block280e86f8Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisPoint.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:block280e8764Arg1 | 
    | block280e8764Value0 block280e8764Value1 |
    block280e8764Value0 := block280e8764Arg1.
    block280e8764Value1 := (block280e8764Value0) setFileDefaults.
    block280e8764Value1
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f82e0; bytecode file offset 0xbf4bb0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
emWriteObjectOn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dumpVersion.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) dumpVersion.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            parent := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := flat.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) collectObjectsFlat.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            super emWriteObjectOn: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) selectObjectsFrom.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            super emWriteObjectOn: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            parent := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fba64; bytecode file offset 0xbf8350"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
removeFunctionListReference
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := measurement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280e8fd4Arg1 | 
    | block280e8fd4Value0 block280e8fd4Value1 |
    block280e8fd4Value0 := block280e8fd4Arg1.
    block280e8fd4Value1 := (block280e8fd4Value0) removeFunctionListReference.
    block280e8fd4Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block280e8ff8Arg1 | 
    | block280e8ff8Value0 block280e8ff8Value1 |
    block280e8ff8Value0 := block280e8ff8Arg1.
    block280e8ff8Value1 := (block280e8ff8Value0) removeFunctionListReference.
    block280e8ff8Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := axisPoint.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:block280e901cArg1 | 
    | block280e901cValue0 block280e901cValue1 |
    block280e901cValue0 := block280e901cArg1.
    block280e901cValue1 := (block280e901cValue0) removeFunctionListReference.
    block280e901cValue1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := frame.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [:block280e9040Arg1 | 
    | block280e9040Value0 block280e9040Value1 |
    block280e9040Value0 := block280e9040Arg1.
    block280e9040Value1 := (block280e9040Value0) removeFunctionListReference.
    block280e9040Value1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fba84; bytecode file offset 0xbf8350"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
minimizeFunctionList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := measurement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280e9064Arg1 | 
    | block280e9064Value0 block280e9064Value1 |
    block280e9064Value0 := block280e9064Arg1.
    block280e9064Value1 := (block280e9064Value0) minimizeFunctionList.
    block280e9064Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block280e9088Arg1 | 
    | block280e9088Value0 block280e9088Value1 |
    block280e9088Value0 := block280e9088Arg1.
    block280e9088Value1 := (block280e9088Value0) minimizeFunctionList.
    block280e9088Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := axisPoint.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:block280e90acArg1 | 
    | block280e90acValue0 block280e90acValue1 |
    block280e90acValue0 := block280e90acArg1.
    block280e90acValue1 := (block280e90acValue0) minimizeFunctionList.
    block280e90acValue1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := frame.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [:block280e90d0Arg1 | 
    | block280e90d0Value0 block280e90d0Value1 |
    block280e90d0Value0 := block280e90d0Arg1.
    block280e90d0Value1 := (block280e90d0Value0) minimizeFunctionList.
    block280e90d0Value1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030dfb8; bytecode file offset 0xc0a8a0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
initializeCollections
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (self) sortBlock.
    recoveredValue2 := (recoveredValue0) sortBlock: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) copy.
    (self) characteristic: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) copy.
    (self) measurement: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) copy.
    (self) axisPoint: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) copy.
    (self) frame: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) copy.
    (self) function: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) copy.
    (self) compuTab: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) copy.
    (self) compuMethod: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (recoveredValue17) copy.
    (self) group: (recoveredValue18).
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (recoveredValue19) copy.
    (self) recordLayout: (recoveredValue20).
    ^self
! !

"ASDBase.ic method 0x203114c8; bytecode file offset 0xc0dda8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
ctVariableNames
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) allFunctions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [:block280ea894Arg1 | 
    | block280ea894Value0 block280ea894Value1 block280ea894Value2 |
    block280ea894Value0 := block280ea894Arg1.
    block280ea894Value1 := (block280ea894Value0) name.
    block280ea894Value2 := (block280ea894Value1) = ('CT_Function').
    block280ea894Value2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) defCharacteristic.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) defCharacteristic.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:block280ea8b8Arg1 | 
    | block280ea8b8Value0 block280ea8b8Value1 |
    block280ea8b8Value0 := block280ea8b8Arg1.
    block280ea8b8Value1 := (block280ea8b8Value0) name.
    block280ea8b8Value1
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031ce34; bytecode file offset 0xc196f4"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
removeDeviceLink: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) removeLabel: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := characteristic.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) removeDeviceLink: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := measurement.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) removeDeviceLink: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := axisPoint.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) removeDeviceLink: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := frame.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) removeDeviceLink: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := function.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) removeDeviceLink: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := group.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) removeDeviceLink: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := compuMethod.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) removeDeviceLink: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := modPar.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) removeDeviceLink: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203242a4; bytecode file offset 0xc20b74"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
referencesFromLabelsToAxisPoint: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280ebd64Arg1 :block280ebd64Arg2 | 
    | block280ebd64Stack0 block280ebd64Stack1 block280ebd64Stack2 block280ebd64Stack3 block280ebd64Stack4 block280ebd64PC block280ebd64Step block280ebd64Done block280ebd64Result |
    block280ebd64Stack0 := self.
    block280ebd64PC := 4.
    block280ebd64Done := false.
    [block280ebd64Done not] whileTrue: [
        block280ebd64Step := block280ebd64PC.
        block280ebd64Step = 4 ifTrue: [
            block280ebd64Stack1 := block280ebd64Arg1.
            block280ebd64PC := 7.
        ].
        block280ebd64Step = 7 ifTrue: [
            block280ebd64Stack1 := (block280ebd64Stack1) axisDescription.
            block280ebd64PC := 8.
        ].
        block280ebd64Step = 8 ifTrue: [
            (block280ebd64Stack1 ~~ nil) ifTrue: [block280ebd64PC := 16] ifFalse: [block280ebd64PC := 12].
        ].
        block280ebd64Step = 12 ifTrue: [
            block280ebd64Stack1 := false.
            block280ebd64PC := 13.
        ].
        block280ebd64Step = 13 ifTrue: [
            block280ebd64PC := 49.
        ].
        block280ebd64Step = 16 ifTrue: [
            block280ebd64Stack1 := block280ebd64Arg1.
            block280ebd64PC := 19.
        ].
        block280ebd64Step = 19 ifTrue: [
            block280ebd64Stack1 := (block280ebd64Stack1) axisDescription.
            block280ebd64PC := 20.
        ].
        block280ebd64Step = 20 ifTrue: [
            block280ebd64Stack2 := [:block280ebd64Block20Arg1 | 
    | block280ebd64Block20Stack0 block280ebd64Block20Stack1 block280ebd64Block20Stack2 block280ebd64Block20Stack3 block280ebd64Block20Stack4 block280ebd64Block20PC block280ebd64Block20Step block280ebd64Block20Done block280ebd64Block20Result |
    block280ebd64Block20Stack0 := nil.
    block280ebd64Block20PC := 26.
    block280ebd64Block20Done := false.
    [block280ebd64Block20Done not] whileTrue: [
        block280ebd64Block20Step := block280ebd64Block20PC.
        block280ebd64Block20Step = 26 ifTrue: [
            block280ebd64Block20Stack1 := true.
            block280ebd64Block20PC := 27.
        ].
        block280ebd64Block20Step = 27 ifTrue: [
            block280ebd64Block20Stack2 := block280ebd64Block20Arg1.
            block280ebd64Block20PC := 28.
        ].
        block280ebd64Block20Step = 28 ifTrue: [
            block280ebd64Block20Stack2 := (block280ebd64Block20Stack2) axisPtsRef.
            block280ebd64Block20PC := 29.
        ].
        block280ebd64Block20Step = 29 ifTrue: [
            block280ebd64Block20Stack3 := block280ebd64Arg2.
            block280ebd64Block20PC := 32.
        ].
        block280ebd64Block20Step = 32 ifTrue: [
            block280ebd64Block20Stack2 := (block280ebd64Block20Stack2) = (block280ebd64Block20Stack3).
            block280ebd64Block20PC := 33.
        ].
        block280ebd64Block20Step = 33 ifTrue: [
            (block280ebd64Block20Stack2) ifTrue: [block280ebd64Block20PC := 43] ifFalse: [block280ebd64Block20PC := 36].
        ].
        block280ebd64Block20Step = 36 ifTrue: [
            block280ebd64Block20PC := 37.
        ].
        block280ebd64Block20Step = 37 ifTrue: [
            block280ebd64Block20Stack1 := block280ebd64Block20Arg1.
            block280ebd64Block20PC := 38.
        ].
        block280ebd64Block20Step = 38 ifTrue: [
            block280ebd64Block20Stack1 := (block280ebd64Block20Stack1) curveAxisRef.
            block280ebd64Block20PC := 39.
        ].
        block280ebd64Block20Step = 39 ifTrue: [
            block280ebd64Block20Stack2 := block280ebd64Arg2.
            block280ebd64Block20PC := 42.
        ].
        block280ebd64Block20Step = 42 ifTrue: [
            block280ebd64Block20Stack1 := (block280ebd64Block20Stack1) = (block280ebd64Block20Stack2).
            block280ebd64Block20PC := 43.
        ].
        block280ebd64Block20Step = 43 ifTrue: [
            block280ebd64Block20Result := block280ebd64Block20Stack1.
            block280ebd64Block20Done := true.
        ].
    ].
    block280ebd64Block20Result
].
            block280ebd64PC := 44.
        ].
        block280ebd64Step = 44 ifTrue: [
            block280ebd64Stack3 := [].
            block280ebd64PC := 46.
        ].
        block280ebd64Step = 46 ifTrue: [
            block280ebd64Stack1 := (block280ebd64Stack1) detect: (block280ebd64Stack2) ifNone: (block280ebd64Stack3).
            block280ebd64PC := 48.
        ].
        block280ebd64Step = 48 ifTrue: [
            block280ebd64Stack1 := (block280ebd64Stack1) notNil.
            block280ebd64PC := 49.
        ].
        block280ebd64Step = 49 ifTrue: [
            block280ebd64Result := block280ebd64Stack1.
            block280ebd64Done := true.
        ].
    ].
    block280ebd64Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsTo: (recoveredStack1) accessBlock: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20326afc; bytecode file offset 0xc233d8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCalibrationLabelsReferencedByFunctions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) characteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 8192.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := LargeCapacitySet.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) characteristic.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) function.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 |
    recoveredBlock37Value0 := recoveredLocal1.
    recoveredBlock37Value1 := recoveredBlock37Arg1.
    recoveredBlock37Value2 := (recoveredBlock37Value1) allCalibrationLabels.
    recoveredBlock37Value3 := (recoveredBlock37Value0) addAll: (recoveredBlock37Value2).
    recoveredBlock37Value3
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20326b68; bytecode file offset 0xc23448"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allMeasurementLabelsReferencedByFunctions
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) measurement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 8192.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := LargeCapacitySet.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) characteristic.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) function.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 |
    recoveredBlock38Value0 := recoveredLocal1.
    recoveredBlock38Value1 := recoveredBlock38Arg1.
    recoveredBlock38Value2 := (recoveredBlock38Value1) allMeasurementLabels.
    recoveredBlock38Value3 := (recoveredBlock38Value0) addAll: (recoveredBlock38Value2).
    recoveredBlock38Value3
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032f810; bytecode file offset 0xc2c0e8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
collectObjectsFlat: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := super collectObjectsFlat: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifData.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectObjectsFlat: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectObjectsFlat: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifData.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:block280ecc28Arg1 | 
    | block280ecc28Value0 block280ecc28Value1 |
    block280ecc28Value0 := block280ecc28Arg1.
    block280ecc28Value1 := (block280ecc28Value0) comments.
    block280ecc28Value1
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifData: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) modPar.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) comments.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) modPar: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033f5ac; bytecode file offset 0xc3beb0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allCalibrationLabelsNotReferencedByFunctions
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allCalibrationLabelsReferencedByFunctions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) characteristic.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDictionary.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 |
    recoveredBlock25Value0 := recoveredLocal1.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value1) name.
    recoveredBlock25Value3 := [].
    recoveredBlock25Value4 := (recoveredBlock25Value0) removeKey: (recoveredBlock25Value2) ifAbsent: (recoveredBlock25Value3).
    recoveredBlock25Value4
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) removeAll: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033f5d8; bytecode file offset 0xc3beb0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
allMeasurementLabelsNotReferencedByFunctions
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMeasurementLabelsReferencedByFunctions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) characteristic.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDictionary.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 |
    recoveredBlock25Value0 := recoveredLocal1.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value1) name.
    recoveredBlock25Value3 := [].
    recoveredBlock25Value4 := (recoveredBlock25Value0) removeKey: (recoveredBlock25Value2) ifAbsent: (recoveredBlock25Value3).
    recoveredBlock25Value4
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) removeAll: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203469bc; bytecode file offset 0xc4328c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
checkSupportedRecordLayouts
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) characteristic.
    recoveredValue1 := (self) axisPoint.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) recordLayout.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) isRecordLayoutSupported.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 58] ifFalse: [recoveredBlock13PC := 30].
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block34Arg1 | 
    | recoveredBlock13Block34Value0 recoveredBlock13Block34Value1 recoveredBlock13Block34Value2 recoveredBlock13Block34Value3 |
    recoveredBlock13Block34Value0 := recoveredBlock13Block34Arg1.
    recoveredBlock13Block34Value1 := (recoveredBlock13Block34Value0) recordLayout.
    recoveredBlock13Block34Value2 := recoveredBlock13Arg1.
    recoveredBlock13Block34Value3 := (recoveredBlock13Block34Value1) = (recoveredBlock13Block34Value2).
    recoveredBlock13Block34Value3
].
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            recoveredBlock13Stack3 := [:recoveredBlock13Block47Arg1 | 
    ^false
].
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) detect: (recoveredBlock13Stack2) ifOne: (recoveredBlock13Stack3).
            recoveredBlock13PC := 58.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue3) do: (recoveredValue4).
    ^true
! !

"ASDBase.ic method 0x20353378; bytecode file offset 0xc4fc3c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
setDeviceLink: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) restoreInstVars.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) addLabel: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := characteristic.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) setDeviceLink: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := measurement.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) setDeviceLink: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := axisPoint.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) setDeviceLink: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := frame.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) setDeviceLink: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := function.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) setDeviceLink: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := group.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) setDeviceLink: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := compuMethod.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) setDeviceLink: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := modPar.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) setDeviceLink: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recordLayout.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) setDeviceLink: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035a2e4; bytecode file offset 0xc56bb8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
referencesFromLabelsToCompuMethod: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280effc4Arg1 :block280effc4Arg2 | 
    | block280effc4Value0 block280effc4Value1 block280effc4Value2 block280effc4Value3 |
    block280effc4Value0 := block280effc4Arg1.
    block280effc4Value1 := (block280effc4Value0) compuMethod.
    block280effc4Value2 := block280effc4Arg2.
    block280effc4Value3 := (block280effc4Value1) = (block280effc4Value2).
    block280effc4Value3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsTo: (recoveredStack1) accessBlock: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [:block280effe8Arg1 :block280effe8Arg2 | 
    | block280effe8Stack0 block280effe8Stack1 block280effe8Stack2 block280effe8Stack3 block280effe8Stack4 block280effe8PC block280effe8Step block280effe8Done block280effe8Result |
    block280effe8Stack0 := self.
    block280effe8PC := 4.
    block280effe8Done := false.
    [block280effe8Done not] whileTrue: [
        block280effe8Step := block280effe8PC.
        block280effe8Step = 4 ifTrue: [
            block280effe8Stack1 := block280effe8Arg1.
            block280effe8PC := 7.
        ].
        block280effe8Step = 7 ifTrue: [
            block280effe8Stack1 := (block280effe8Stack1) axisDescription.
            block280effe8PC := 9.
        ].
        block280effe8Step = 9 ifTrue: [
            (block280effe8Stack1 ~~ nil) ifTrue: [block280effe8PC := 16] ifFalse: [block280effe8PC := 12].
        ].
        block280effe8Step = 12 ifTrue: [
            block280effe8Stack1 := false.
            block280effe8PC := 13.
        ].
        block280effe8Step = 13 ifTrue: [
            block280effe8PC := 40.
        ].
        block280effe8Step = 16 ifTrue: [
            block280effe8Stack1 := block280effe8Arg1.
            block280effe8PC := 19.
        ].
        block280effe8Step = 19 ifTrue: [
            block280effe8Stack1 := (block280effe8Stack1) axisDescription.
            block280effe8PC := 21.
        ].
        block280effe8Step = 21 ifTrue: [
            block280effe8Stack2 := [:block280effe8Block21Arg1 | 
    | block280effe8Block21Value0 block280effe8Block21Value1 block280effe8Block21Value2 block280effe8Block21Value3 |
    block280effe8Block21Value0 := block280effe8Block21Arg1.
    block280effe8Block21Value1 := (block280effe8Block21Value0) compuMethod.
    block280effe8Block21Value2 := block280effe8Arg2.
    block280effe8Block21Value3 := (block280effe8Block21Value1) = (block280effe8Block21Value2).
    block280effe8Block21Value3
].
            block280effe8PC := 35.
        ].
        block280effe8Step = 35 ifTrue: [
            block280effe8Stack3 := [].
            block280effe8PC := 37.
        ].
        block280effe8Step = 37 ifTrue: [
            block280effe8Stack1 := (block280effe8Stack1) detect: (block280effe8Stack2) ifNone: (block280effe8Stack3).
            block280effe8PC := 39.
        ].
        block280effe8Step = 39 ifTrue: [
            block280effe8Stack1 := (block280effe8Stack1) notNil.
            block280effe8PC := 40.
        ].
        block280effe8Step = 40 ifTrue: [
            block280effe8Result := block280effe8Stack1.
            block280effe8Done := true.
        ].
    ].
    block280effe8Result
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencesFromLabelsTo: (recoveredStack2) accessBlock: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203625d0; bytecode file offset 0xc5eeb8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
setASAP2Modified
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parent.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) dbObject.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            (recoveredBlock6Stack1 ~~ nil) ifTrue: [recoveredBlock6PC := 20] ifFalse: [recoveredBlock6PC := 18].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isModified.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 60] ifFalse: [recoveredBlock6PC := 26].
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) dbObject.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) readIsReferencedByOnly.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack2 := [:block280f099cArg1 | 
    | block280f099cStack0 block280f099cStack1 block280f099cStack2 block280f099cStack3 block280f099cPC block280f099cStep block280f099cDone block280f099cResult |
    block280f099cStack0 := self.
    block280f099cPC := 4.
    block280f099cDone := false.
    [block280f099cDone not] whileTrue: [
        block280f099cStep := block280f099cPC.
        block280f099cStep = 4 ifTrue: [
            block280f099cStack1 := block280f099cArg1.
            block280f099cPC := 5.
        ].
        block280f099cStep = 5 ifTrue: [
            block280f099cStack1 := (block280f099cStack1) isReferencedBys.
            block280f099cPC := 7.
        ].
        block280f099cStep = 7 ifTrue: [
            block280f099cStack2 := [:block280f09c0Arg1 | 
    | block280f09c0Stack0 block280f09c0Stack1 block280f09c0Stack2 block280f09c0Stack3 block280f09c0PC block280f09c0Step block280f09c0Done block280f09c0Result |
    block280f09c0Stack0 := self.
    block280f09c0PC := 4.
    block280f09c0Done := false.
    [block280f09c0Done not] whileTrue: [
        block280f09c0Step := block280f09c0PC.
        block280f09c0Step = 4 ifTrue: [
            block280f09c0Stack1 := block280f09c0Arg1.
            block280f09c0PC := 5.
        ].
        block280f09c0Step = 5 ifTrue: [
            block280f09c0Stack2 := [:block280f09e4Arg1 | 
    | block280f09e4Value0 block280f09e4Value1 |
    block280f09e4Value0 := block280f09e4Arg1.
    block280f09e4Value1 := (block280f09e4Value0) initializeAsap2Infos.
    block280f09e4Value1
].
            block280f09c0PC := 7.
        ].
        block280f09c0Step = 7 ifTrue: [
            block280f09c0PC := 14.
        ].
        block280f09c0Step = 14 ifTrue: [
            block280f09c0Stack1 := (block280f09c0Stack1) getObjectIfDefined: (block280f09c0Stack2).
            block280f09c0PC := 16.
        ].
        block280f09c0Step = 16 ifTrue: [
            block280f09c0Result := block280f09c0Stack1.
            block280f09c0Done := true.
        ].
    ].
    block280f09c0Result
].
            block280f099cPC := 9.
        ].
        block280f099cStep = 9 ifTrue: [
            block280f099cPC := 25.
        ].
        block280f099cStep = 25 ifTrue: [
            block280f099cStack1 := (block280f099cStack1) do: (block280f099cStack2).
            block280f099cPC := 27.
        ].
        block280f099cStep = 27 ifTrue: [
            block280f099cResult := block280f099cStack1.
            block280f099cDone := true.
        ].
    ].
    block280f099cResult
].
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6PC := 58.
        ].
        recoveredBlock6Step = 58 ifTrue: [
            (recoveredBlock6Stack1) ifNoError: (recoveredBlock6Stack2).
            recoveredBlock6PC := 60.
        ].
        recoveredBlock6Step = 60 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 61.
        ].
        recoveredBlock6Step = 61 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) modified.
            recoveredBlock6PC := 63.
        ].
        recoveredBlock6Step = 63 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203792f8; bytecode file offset 0xc75bf4"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
createTempModuleSelectLabels: recoveredArg1 progressWindow: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASAP2BaseObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) Persistent: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault: (recoveredStack1).
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
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) modPar.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [:block280f22a4Arg1 | 
    | block280f22a4Value0 block280f22a4Value1 |
    block280f22a4Value0 := block280f22a4Arg1.
    block280f22a4Value1 := (block280f22a4Value0) asap2Copy.
    block280f22a4Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) ifNotNil: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) modPar: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) modCommon.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := [:block280f22c8Arg1 | 
    | block280f22c8Value0 block280f22c8Value1 |
    block280f22c8Value0 := block280f22c8Arg1.
    block280f22c8Value1 := (block280f22c8Value0) asap2Copy.
    block280f22c8Value1
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) ifNotNil: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) modCommon: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifData.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifData: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) changeToLookupTable.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) addSelectedLabels: (recoveredStack1) from: (recoveredStack2) progressWindow: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037d178; bytecode file offset 0xc79a58"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
doWithAllCollectionsSelectorAndAssign: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'characteristic'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            characteristic := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'measurement'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            measurement := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'axisPoint'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            axisPoint := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'frame'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            frame := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'group'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            group := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'function'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            function := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'compuTab'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            compuTab := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'compuMethod'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            compuMethod := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'recordLayout'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recordLayout := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := unit.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'unit'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            unit := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037d67c; bytecode file offset 0xc79f54"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
removeCharacteristic: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCharacteristicReferencedByLabels: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := characteristic.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) asap2Remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) removeFrom: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) function.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 recoveredBlock30Value4 |
    recoveredBlock30Value0 := recoveredBlock30Arg1.
    recoveredBlock30Value1 := recoveredArg1.
    (recoveredBlock30Value0) removeRefCharacteristic: (recoveredBlock30Value1).
    recoveredBlock30Value2 := recoveredBlock30Arg1.
    recoveredBlock30Value3 := recoveredArg1.
    recoveredBlock30Value4 := (recoveredBlock30Value2) removeDefCharacteristic: (recoveredBlock30Value3).
    recoveredBlock30Value4
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) group.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 |
    recoveredBlock54Value0 := recoveredBlock54Arg1.
    recoveredBlock54Value1 := recoveredArg1.
    recoveredBlock54Value2 := (recoveredBlock54Value0) removeRefCharacteristic: (recoveredBlock54Value1).
    recoveredBlock54Value2
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038fc14; bytecode file offset 0xc8c4e0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isReferencedByLabels: recoveredArg1 accessBlock: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := characteristic.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := axisPoint.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := measurement.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := frame.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) allAxisDescriptions.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReferencedByLabels: (recoveredStack1) accessBlock: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038fc24; bytecode file offset 0xc8c4e0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
referencesFromLabelsTo: recoveredArg1 accessMethod: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := characteristic.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsTo: (recoveredStack1) accessMethod: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := axisPoint.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsTo: (recoveredStack1) accessMethod: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := measurement.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsTo: (recoveredStack1) accessMethod: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := frame.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsTo: (recoveredStack1) accessMethod: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) selectAxisDescriptions.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsTo: (recoveredStack1) accessMethod: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20395820; bytecode file offset 0xc92100"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
removeFunction: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFunctionReferencedByLabels: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ASAP2StillReferenced.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) monitorWarning: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := function.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) asap2Remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) removeFrom: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) group.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 |
    recoveredBlock40Value0 := recoveredBlock40Arg1.
    recoveredBlock40Value1 := recoveredArg1.
    recoveredBlock40Value2 := (recoveredBlock40Value0) removeFunction: (recoveredBlock40Value1).
    recoveredBlock40Value2
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) function.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 |
    recoveredBlock58Value0 := recoveredBlock58Arg1.
    recoveredBlock58Value1 := recoveredArg1.
    recoveredBlock58Value2 := (recoveredBlock58Value0) removeSubFunction: (recoveredBlock58Value1).
    recoveredBlock58Value2
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039cee0; bytecode file offset 0xc997dc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
checkValueBooleans
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) characteristic.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) checkValueBoolean.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 71] ifFalse: [recoveredBlock8PC := 20].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := ASAP2BytesCharacteristicValue.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) dataType.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) create: (recoveredBlock8Stack2).
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            (recoveredBlock8Stack1) copyBytesObjectIn: (recoveredBlock8Stack2).
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) bitMask.
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) createBytesObjectsBitMask: (recoveredBlock8Stack2).
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 40.
        ].
        recoveredBlock8Step = 40 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 43.
        ].
        recoveredBlock8Step = 43 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) recordLayout.
            recoveredBlock8PC := 45.
        ].
        recoveredBlock8Step = 45 ifTrue: [
            (recoveredBlock8Stack2) recordLayout: (recoveredBlock8Stack3).
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 48.
        ].
        recoveredBlock8Step = 48 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) compuMethod.
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            (recoveredBlock8Stack2) compuMethod: (recoveredBlock8Stack3).
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 54.
        ].
        recoveredBlock8Step = 54 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 55.
        ].
        recoveredBlock8Step = 55 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) variants.
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            (recoveredBlock8Stack2) variants: (recoveredBlock8Stack3).
            recoveredBlock8PC := 59.
        ].
        recoveredBlock8Step = 59 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 60.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) bitMask.
            recoveredBlock8PC := 62.
        ].
        recoveredBlock8Step = 62 ifTrue: [
            (recoveredBlock8Stack1) bitMask: (recoveredBlock8Stack2).
            recoveredBlock8PC := 64.
        ].
        recoveredBlock8Step = 64 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 65.
        ].
        recoveredBlock8Step = 65 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Local1.
            recoveredBlock8PC := 67.
        ].
        recoveredBlock8Step = 67 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) replaceCharacteristic: (recoveredBlock8Stack2) with: (recoveredBlock8Stack3).
            recoveredBlock8PC := 69.
        ].
        recoveredBlock8Step = 69 ifTrue: [
            recoveredBlock8Stack2 := nil.
            recoveredBlock8PC := 70.
        ].
        recoveredBlock8Step = 70 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack2.
            recoveredBlock8PC := 71.
        ].
        recoveredBlock8Step = 71 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x203a1e28; bytecode file offset 0xc9e708"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
removeMeasurement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMeasurementReferencedByLabels: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := measurement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) asap2Remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) removeFrom: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) function.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 recoveredBlock30Value4 recoveredBlock30Value5 recoveredBlock30Value6 |
    recoveredBlock30Value0 := recoveredBlock30Arg1.
    recoveredBlock30Value1 := recoveredArg1.
    (recoveredBlock30Value0) removeInMeasurement: (recoveredBlock30Value1).
    recoveredBlock30Value2 := recoveredBlock30Arg1.
    recoveredBlock30Value3 := recoveredArg1.
    (recoveredBlock30Value2) removeLocMeasurement: (recoveredBlock30Value3).
    recoveredBlock30Value4 := recoveredBlock30Arg1.
    recoveredBlock30Value5 := recoveredArg1.
    recoveredBlock30Value6 := (recoveredBlock30Value4) removeOutMeasurement: (recoveredBlock30Value5).
    recoveredBlock30Value6
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) group.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 |
    recoveredBlock60Value0 := recoveredBlock60Arg1.
    recoveredBlock60Value1 := recoveredArg1.
    recoveredBlock60Value2 := (recoveredBlock60Value0) removeRefMeasurement: (recoveredBlock60Value1).
    recoveredBlock60Value2
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a9644; bytecode file offset 0xca5f18"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
isValidAddress: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) modPar.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryLayout.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) includesAddress: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) modPar.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) memorySegment.
            recoveredBlock26PC := 34.
        ].
        recoveredBlock26Step = 34 ifTrue: [
            recoveredBlock26Stack1 := [:recoveredBlock26Block34Arg1 | 
    | recoveredBlock26Block34Value0 recoveredBlock26Block34Value1 recoveredBlock26Block34Value2 |
    recoveredBlock26Block34Value0 := recoveredBlock26Block34Arg1.
    recoveredBlock26Block34Value1 := recoveredArg1.
    recoveredBlock26Block34Value2 := (recoveredBlock26Block34Value0) includesAddress: (recoveredBlock26Block34Value1).
    recoveredBlock26Block34Value2
].
            recoveredBlock26PC := 46.
        ].
        recoveredBlock26Step = 46 ifTrue: [
            recoveredBlock26Stack2 := [
    false
].
            recoveredBlock26PC := 48.
        ].
        recoveredBlock26Step = 48 ifTrue: [
            recoveredBlock26PC := 54.
        ].
        recoveredBlock26Step = 54 ifTrue: [
            recoveredBlock26Stack3 := [:block280f510cArg1 | 
    true
].
            recoveredBlock26PC := 56.
        ].
        recoveredBlock26Step = 56 ifTrue: [
            recoveredBlock26PC := 62.
        ].
        recoveredBlock26Step = 62 ifTrue: [
            recoveredBlock26Stack0 := (recoveredBlock26Stack0) detect: (recoveredBlock26Stack1) ifNone: (recoveredBlock26Stack2) ifOne: (recoveredBlock26Stack3).
            recoveredBlock26PC := 65.
        ].
        recoveredBlock26Step = 65 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack0.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := [:block280f5130Arg1 | 
    true
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2) ifOne: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203bffbc; bytecode file offset 0xcbc888"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
createAccessorIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) characteristic.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) createAccessor: (self) in: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) measurement.
    recoveredValue3 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredArg1.
    recoveredBlock24Value2 := (recoveredBlock24Value0) createAccessor: (self) in: (recoveredBlock24Value1).
    recoveredBlock24Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) axisPoint.
    recoveredValue5 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 |
    recoveredBlock43Value0 := recoveredBlock43Arg1.
    recoveredBlock43Value1 := recoveredArg1.
    recoveredBlock43Value2 := (recoveredBlock43Value0) createAccessor: (self) in: (recoveredBlock43Value1).
    recoveredBlock43Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) frame.
    recoveredValue7 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 |
    recoveredBlock63Value0 := recoveredBlock63Arg1.
    recoveredBlock63Value1 := recoveredArg1.
    recoveredBlock63Value2 := (recoveredBlock63Value0) createAccessor: (self) in: (recoveredBlock63Value1).
    recoveredBlock63Value2
].
    (recoveredValue6) do: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x203eb7ac; bytecode file offset 0xce8088"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
referencesFromLabelsTo: recoveredArg1 accessBlock: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) characteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 8192.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := LargeCapacitySet.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) characteristic.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := characteristic.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencesFromLabelsTo: (recoveredStack2) accessBlock: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := axisPoint.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencesFromLabelsTo: (recoveredStack2) accessBlock: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := measurement.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencesFromLabelsTo: (recoveredStack2) accessBlock: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := frame.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencesFromLabelsTo: (recoveredStack2) accessBlock: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := (recoveredStack4) allAxisDescriptions.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencesFromLabelsTo: (recoveredStack2) accessBlock: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f12d8; bytecode file offset 0xcedbb4"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
compareKeepEqualOf: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) comparePrepare: (self).
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 |
    recoveredBlock9Value0 := recoveredLocal2.
    recoveredBlock9Value1 := recoveredBlock9Arg1.
    recoveredBlock9Value2 := (recoveredBlock9Value0) perform: (recoveredBlock9Value1).
    recoveredBlock9Value3 := recoveredBlock9Value2.
    recoveredBlock9Local1 := recoveredBlock9Value3.
    recoveredBlock9Value4 := (recoveredBlock9Value2) copy.
    recoveredBlock9Value5 := [:recoveredBlock9Block28Arg1 :recoveredBlock9Block28Arg2 | 
    | recoveredBlock9Block28Stack0 recoveredBlock9Block28Stack1 recoveredBlock9Block28Stack2 recoveredBlock9Block28Stack3 recoveredBlock9Block28Stack4 recoveredBlock9Block28Stack5 recoveredBlock9Block28Stack6 recoveredBlock9Block28PC recoveredBlock9Block28Step recoveredBlock9Block28Done recoveredBlock9Block28Result |
    recoveredBlock9Block28Stack0 := self.
    recoveredBlock9Block28PC := 34.
    recoveredBlock9Block28Done := false.
    [recoveredBlock9Block28Done not] whileTrue: [
        recoveredBlock9Block28Step := recoveredBlock9Block28PC.
        recoveredBlock9Block28Step = 34 ifTrue: [
            recoveredBlock9Block28Stack1 := nil.
            recoveredBlock9Block28PC := 35.
        ].
        recoveredBlock9Block28Step = 35 ifTrue: [
            recoveredBlock9Block28Stack2 := recoveredBlock9Block28Arg1.
            recoveredBlock9Block28PC := 36.
        ].
        recoveredBlock9Block28Step = 36 ifTrue: [
            recoveredBlock9Block28Stack3 := recoveredArg1.
            recoveredBlock9Block28PC := 39.
        ].
        recoveredBlock9Block28Step = 39 ifTrue: [
            recoveredBlock9Block28Stack4 := recoveredBlock9Arg1.
            recoveredBlock9Block28PC := 42.
        ].
        recoveredBlock9Block28Step = 42 ifTrue: [
            recoveredBlock9Block28Stack3 := (recoveredBlock9Block28Stack3) perform: (recoveredBlock9Block28Stack4).
            recoveredBlock9Block28PC := 43.
        ].
        recoveredBlock9Block28Step = 43 ifTrue: [
            recoveredBlock9Block28Stack4 := recoveredBlock9Block28Arg2.
            recoveredBlock9Block28PC := 44.
        ].
        recoveredBlock9Block28Step = 44 ifTrue: [
            recoveredBlock9Block28Stack5 := [
    | recoveredBlock9Block28Block44Value0 |
    recoveredBlock9Block28Block44Value0 := (self) etasDevHalt.
    recoveredBlock9Block28Block44Value0
].
            recoveredBlock9Block28PC := 52.
        ].
        recoveredBlock9Block28Step = 52 ifTrue: [
            recoveredBlock9Block28Stack3 := (recoveredBlock9Block28Stack3) at: (recoveredBlock9Block28Stack4) ifAbsent: (recoveredBlock9Block28Stack5).
            recoveredBlock9Block28PC := 54.
        ].
        recoveredBlock9Block28Step = 54 ifTrue: [
            recoveredBlock9Block28Stack2 := (recoveredBlock9Block28Stack2) compareWith: (recoveredBlock9Block28Stack3).
            recoveredBlock9Block28PC := 56.
        ].
        recoveredBlock9Block28Step = 56 ifTrue: [
            (recoveredBlock9Block28Stack2) ifTrue: [recoveredBlock9Block28PC := 69] ifFalse: [recoveredBlock9Block28PC := 60].
        ].
        recoveredBlock9Block28Step = 60 ifTrue: [
            recoveredBlock9Block28PC := 61.
        ].
        recoveredBlock9Block28Step = 61 ifTrue: [
            recoveredBlock9Block28Stack1 := recoveredBlock9Local1.
            recoveredBlock9Block28PC := 64.
        ].
        recoveredBlock9Block28Step = 64 ifTrue: [
            recoveredBlock9Block28Stack2 := recoveredBlock9Block28Arg1.
            recoveredBlock9Block28PC := 65.
        ].
        recoveredBlock9Block28Step = 65 ifTrue: [
            recoveredBlock9Block28Stack3 := [].
            recoveredBlock9Block28PC := 67.
        ].
        recoveredBlock9Block28Step = 67 ifTrue: [
            recoveredBlock9Block28Stack1 := (recoveredBlock9Block28Stack1) remove: (recoveredBlock9Block28Stack2) ifAbsent: (recoveredBlock9Block28Stack3).
            recoveredBlock9Block28PC := 69.
        ].
        recoveredBlock9Block28Step = 69 ifTrue: [
            recoveredBlock9Block28Result := recoveredBlock9Block28Stack1.
            recoveredBlock9Block28Done := true.
        ].
    ].
    recoveredBlock9Block28Result
].
    (recoveredBlock9Value4) doWithIndex: (recoveredBlock9Value5).
    recoveredBlock9Value6 := recoveredBlock9Local1.
    recoveredBlock9Value6
].
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue2) compareOf: (recoveredValue3) block: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x204045e8; bytecode file offset 0xd00edc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
createXMLElementOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := ASAP2BaseObject.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) xmLElementTagOn: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyWord.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := $(.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := $).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := ASAP2BaseObject.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) xmlEndTagOn: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) putXMLAttributListOn: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 1024.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) instSize.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVarAt: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) createXMLElementOn: (recoveredStack2) visitedClasses: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 70] ifFalse: [recoveredLocal1 := nil. recoveredPC := 92]] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20404cd8; bytecode file offset 0xd015a8"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
objectNamed: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDictionary.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) changeToLookupTable.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Stack0 recoveredBlock70Stack1 recoveredBlock70Stack2 recoveredBlock70Stack3 recoveredBlock70PC recoveredBlock70Step recoveredBlock70Done recoveredBlock70Result |
    recoveredBlock70Stack0 := self.
    recoveredBlock70PC := 76.
    recoveredBlock70Done := false.
    [recoveredBlock70Done not] whileTrue: [
        recoveredBlock70Step := recoveredBlock70PC.
        recoveredBlock70Step = 76 ifTrue: [
            recoveredBlock70Stack1 := recoveredBlock70Arg1.
            recoveredBlock70PC := 77.
        ].
        recoveredBlock70Step = 77 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) shortName.
            recoveredBlock70PC := 79.
        ].
        recoveredBlock70Step = 79 ifTrue: [
            recoveredBlock70Stack2 := recoveredArg1.
            recoveredBlock70PC := 82.
        ].
        recoveredBlock70Step = 82 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) = (recoveredBlock70Stack2).
            recoveredBlock70PC := 83.
        ].
        recoveredBlock70Step = 83 ifTrue: [
            (recoveredBlock70Stack1) ifTrue: [recoveredBlock70PC := 86] ifFalse: [recoveredBlock70PC := 90].
        ].
        recoveredBlock70Step = 86 ifTrue: [
            recoveredBlock70Stack1 := recoveredBlock70Arg1.
            recoveredBlock70PC := 87.
        ].
        recoveredBlock70Step = 87 ifTrue: [
            recoveredBlock70PC := 91.
        ].
        recoveredBlock70Step = 90 ifTrue: [
            recoveredBlock70Stack1 := nil.
            recoveredBlock70PC := 91.
        ].
        recoveredBlock70Step = 91 ifTrue: [
            recoveredBlock70Result := recoveredBlock70Stack1.
            recoveredBlock70Done := true.
        ].
    ].
    recoveredBlock70Result
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifPresent: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040995c; bytecode file offset 0xd06278"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
replaceCompuTab: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) compuMethod.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) replaceLabel: (recoveredBlock5Value1) with: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCommentObject.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) getHardwareObject.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) comments.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) compuTab.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) replace: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) removeCommentAndHardware.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) updateCommentObject: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) updateHardwareObject: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20409994; bytecode file offset 0xd06278"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
replaceAxisPoint: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) function.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) replaceLabel: (recoveredBlock5Value1) with: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCommentObject.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) getHardwareObject.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) comments.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisPoint.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) replace: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) removeCommentAndHardware.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) updateCommentObject: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) updateHardwareObject: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040ec88; bytecode file offset 0xd0b568"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
copyObjectGraph
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := super copyObjectGraph.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := super copyObjectGraph.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbInterface.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := super copyObjectGraph.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) allDevices.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbInterface.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) dumpObject: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbInterface.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLoadedObjectFrom: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Value0 recoveredBlock75Value1 recoveredBlock75Value2 |
    recoveredBlock75Value0 := recoveredLocal3.
    recoveredBlock75Value1 := recoveredBlock75Arg1.
    recoveredBlock75Value2 := (recoveredBlock75Value0) setDeviceLink: (recoveredBlock75Value1).
    recoveredBlock75Value2
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041abd4; bytecode file offset 0xd174b0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
compareKeepAllOf: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) comparePrepare: (self).
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 |
    recoveredBlock9Value0 := recoveredLocal2.
    recoveredBlock9Value1 := recoveredBlock9Arg1.
    recoveredBlock9Value2 := (recoveredBlock9Value0) perform: (recoveredBlock9Value1).
    recoveredBlock9Local1 := recoveredBlock9Value2.
    recoveredBlock9Value3 := recoveredBlock9Local1.
    recoveredBlock9Value4 := (recoveredBlock9Value3) copy.
    recoveredBlock9Value5 := [:recoveredBlock9Block30Arg1 | 
    | recoveredBlock9Block30Stack0 recoveredBlock9Block30Stack1 recoveredBlock9Block30Stack2 recoveredBlock9Block30Stack3 recoveredBlock9Block30Stack4 recoveredBlock9Block30Stack5 recoveredBlock9Block30Stack6 recoveredBlock9Block30Stack7 recoveredBlock9Block30PC recoveredBlock9Block30Step recoveredBlock9Block30Done recoveredBlock9Block30Result |
    recoveredBlock9Block30Stack0 := nil.
    recoveredBlock9Block30PC := 36.
    recoveredBlock9Block30Done := false.
    [recoveredBlock9Block30Done not] whileTrue: [
        recoveredBlock9Block30Step := recoveredBlock9Block30PC.
        recoveredBlock9Block30Step = 36 ifTrue: [
            recoveredBlock9Block30Stack1 := nil.
            recoveredBlock9Block30PC := 37.
        ].
        recoveredBlock9Block30Step = 37 ifTrue: [
            recoveredBlock9Block30Stack2 := recoveredArg1.
            recoveredBlock9Block30PC := 40.
        ].
        recoveredBlock9Block30Step = 40 ifTrue: [
            recoveredBlock9Block30Stack3 := recoveredBlock9Arg1.
            recoveredBlock9Block30PC := 43.
        ].
        recoveredBlock9Block30Step = 43 ifTrue: [
            recoveredBlock9Block30Stack2 := (recoveredBlock9Block30Stack2) perform: (recoveredBlock9Block30Stack3).
            recoveredBlock9Block30PC := 44.
        ].
        recoveredBlock9Block30Step = 44 ifTrue: [
            recoveredBlock9Block30Stack3 := recoveredBlock9Block30Arg1.
            recoveredBlock9Block30PC := 45.
        ].
        recoveredBlock9Block30Step = 45 ifTrue: [
            recoveredBlock9Block30Stack4 := 1.
            recoveredBlock9Block30PC := 47.
        ].
        recoveredBlock9Block30Step = 47 ifTrue: [
            recoveredBlock9Block30Stack5 := [
    0
].
            recoveredBlock9Block30PC := 49.
        ].
        recoveredBlock9Block30Step = 49 ifTrue: [
            recoveredBlock9Block30PC := 55.
        ].
        recoveredBlock9Block30Step = 55 ifTrue: [
            recoveredBlock9Block30Stack6 := 'isEqual:'.
            recoveredBlock9Block30PC := 57.
        ].
        recoveredBlock9Block30Step = 57 ifTrue: [
            recoveredBlock9Block30Stack2 := (recoveredBlock9Block30Stack2) indexOf: (recoveredBlock9Block30Stack3) startingAt: (recoveredBlock9Block30Stack4) ifAbsent: (recoveredBlock9Block30Stack5) compare: (recoveredBlock9Block30Stack6).
            recoveredBlock9Block30PC := 60.
        ].
        recoveredBlock9Block30Step = 60 ifTrue: [
            recoveredBlock9Block30Stack3 := 0.
            recoveredBlock9Block30PC := 62.
        ].
        recoveredBlock9Block30Step = 62 ifTrue: [
            recoveredBlock9Block30Stack2 := (recoveredBlock9Block30Stack2) = (recoveredBlock9Block30Stack3).
            recoveredBlock9Block30PC := 63.
        ].
        recoveredBlock9Block30Step = 63 ifTrue: [
            (recoveredBlock9Block30Stack2) ifTrue: [recoveredBlock9Block30PC := 66] ifFalse: [recoveredBlock9Block30PC := 78].
        ].
        recoveredBlock9Block30Step = 66 ifTrue: [
            recoveredBlock9Block30PC := 67.
        ].
        recoveredBlock9Block30Step = 67 ifTrue: [
            recoveredBlock9Block30Stack1 := recoveredBlock9Local1.
            recoveredBlock9Block30PC := 70.
        ].
        recoveredBlock9Block30Step = 70 ifTrue: [
            recoveredBlock9Block30Stack2 := recoveredBlock9Block30Arg1.
            recoveredBlock9Block30PC := 71.
        ].
        recoveredBlock9Block30Step = 71 ifTrue: [
            recoveredBlock9Block30Stack3 := [].
            recoveredBlock9Block30PC := 73.
        ].
        recoveredBlock9Block30Step = 73 ifTrue: [
            recoveredBlock9Block30Stack4 := 'isEqual:'.
            recoveredBlock9Block30PC := 75.
        ].
        recoveredBlock9Block30Step = 75 ifTrue: [
            recoveredBlock9Block30Stack1 := (recoveredBlock9Block30Stack1) remove: (recoveredBlock9Block30Stack2) ifAbsent: (recoveredBlock9Block30Stack3) compare: (recoveredBlock9Block30Stack4).
            recoveredBlock9Block30PC := 78.
        ].
        recoveredBlock9Block30Step = 78 ifTrue: [
            recoveredBlock9Block30Result := recoveredBlock9Block30Stack1.
            recoveredBlock9Block30Done := true.
        ].
    ].
    recoveredBlock9Block30Result
].
    (recoveredBlock9Value4) do: (recoveredBlock9Value5).
    recoveredBlock9Value6 := recoveredBlock9Local1.
    recoveredBlock9Value6
].
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue2) compareOf: (recoveredValue3) block: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20423738; bytecode file offset 0xd20018"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
makeNamesUnique
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := flat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280fc8dcArg1 | 
    | block280fc8dcValue0 block280fc8dcValue1 |
    block280fc8dcValue0 := block280fc8dcArg1.
    block280fc8dcValue1 := (block280fc8dcValue0) name.
    block280fc8dcValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block280fc900Arg1 | 
    | block280fc900Value0 block280fc900Value1 |
    block280fc900Value0 := block280fc900Arg1.
    block280fc900Value1 := (block280fc900Value0) notNil.
    block280fc900Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := DBLargeDictionary.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := flat.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37Stack4 recoveredBlock37Stack5 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 48.
        ].
        recoveredBlock37Step = 48 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) name.
            recoveredBlock37PC := 49.
        ].
        recoveredBlock37Step = 49 ifTrue: [
            (recoveredBlock37Stack2 == nil) ifTrue: [recoveredBlock37PC := 98] ifFalse: [recoveredBlock37PC := 52].
        ].
        recoveredBlock37Step = 52 ifTrue: [
            recoveredBlock37PC := 53.
        ].
        recoveredBlock37Step = 53 ifTrue: [
            recoveredBlock37Stack1 := recoveredLocal1.
            recoveredBlock37PC := 56.
        ].
        recoveredBlock37Step = 56 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 59.
        ].
        recoveredBlock37Step = 59 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) name.
            recoveredBlock37PC := 60.
        ].
        recoveredBlock37Step = 60 ifTrue: [
            recoveredBlock37Stack3 := [
    | recoveredBlock37Block60Value0 |
    recoveredBlock37Block60Value0 := recoveredBlock37Arg1.
    recoveredBlock37Block60Value0
].
            recoveredBlock37PC := 70.
        ].
        recoveredBlock37Step = 70 ifTrue: [
            recoveredBlock37Stack4 := [:recoveredBlock37Block70Arg1 | 
    | recoveredBlock37Block70Value0 recoveredBlock37Block70Value1 recoveredBlock37Block70Value2 recoveredBlock37Block70Value3 recoveredBlock37Block70Value4 recoveredBlock37Block70Value5 recoveredBlock37Block70Value6 |
    recoveredBlock37Block70Value0 := recoveredBlock37Arg1.
    recoveredBlock37Block70Value1 := recoveredBlock37Arg1.
    recoveredBlock37Block70Value2 := (recoveredBlock37Block70Value1) name.
    recoveredBlock37Block70Value3 := recoveredLocal2.
    recoveredBlock37Block70Value4 := (recoveredBlock37Block70Value2) addDuplicatePostFixIn: (recoveredBlock37Block70Value3).
    (recoveredBlock37Block70Value0) name: (recoveredBlock37Block70Value4).
    recoveredBlock37Block70Value5 := parent.
    recoveredBlock37Block70Value6 := (recoveredBlock37Block70Value5) modified.
    recoveredBlock37Block70Value6
].
            recoveredBlock37PC := 95.
        ].
        recoveredBlock37Step = 95 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) at: (recoveredBlock37Stack2) ifAbsentPut: (recoveredBlock37Stack3) ifPresent: (recoveredBlock37Stack4).
            recoveredBlock37PC := 98.
        ].
        recoveredBlock37Step = 98 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20434e14; bytecode file offset 0xd316fc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
replaceCompuMethod: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280fdb34Arg1 :block280fdb34Arg2 | 
    | block280fdb34Value0 block280fdb34Value1 block280fdb34Value2 block280fdb34Value3 |
    block280fdb34Value0 := block280fdb34Arg1.
    block280fdb34Value1 := (block280fdb34Value0) compuMethod.
    block280fdb34Value2 := block280fdb34Arg2.
    block280fdb34Value3 := (block280fdb34Value1) = (block280fdb34Value2).
    block280fdb34Value3
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsTo: (recoveredStack1) accessBlock: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := recoveredArg2.
    recoveredBlock19Value2 := (recoveredBlock19Value0) compuMethod: (recoveredBlock19Value1).
    recoveredBlock19Value2
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCommentObject.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) getHardwareObject.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) comments.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) compuMethod.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) replace: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) removeCommentAndHardware.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) updateCommentObject: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) updateHardwareObject: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20438bf8; bytecode file offset 0xd354dc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addNamedObject: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDictionary.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asap2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) addTo: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) asap2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) addTo: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) addDuplicatePostFixInCol: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) asap2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) addTo: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20442864; bytecode file offset 0xd3f144"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
replaceTabVerbWithTabVerbRange
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) compuMethod.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:recoveredBlock9Arg1 :recoveredBlock9Arg2 | 
    | recoveredBlock9Local1 recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) emMutate.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Local1.
            recoveredBlock9PC := 27.
        ].
        recoveredBlock9Step = 27 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Arg1.
            recoveredBlock9PC := 30.
        ].
        recoveredBlock9Step = 30 ifTrue: [
            (recoveredBlock9Stack2 == recoveredBlock9Stack3) ifTrue: [recoveredBlock9PC := 81] ifFalse: [recoveredBlock9PC := 34].
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9PC := 35.
        ].
        recoveredBlock9Step = 35 ifTrue: [
            recoveredBlock9Stack1 := true.
            recoveredBlock9PC := 36.
        ].
        recoveredBlock9Step = 36 ifTrue: [
            recoveredLocal1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 39.
        ].
        recoveredBlock9Step = 39 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 40.
        ].
        recoveredBlock9Step = 40 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) compuMethod.
            recoveredBlock9PC := 41.
        ].
        recoveredBlock9Step = 41 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg2.
            recoveredBlock9PC := 44.
        ].
        recoveredBlock9Step = 44 ifTrue: [
            recoveredBlock9Stack3 := recoveredBlock9Local1.
            recoveredBlock9PC := 47.
        ].
        recoveredBlock9Step = 47 ifTrue: [
            (recoveredBlock9Stack1) at: (recoveredBlock9Stack2) put: (recoveredBlock9Stack3).
            recoveredBlock9PC := 49.
        ].
        recoveredBlock9Step = 49 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 50.
        ].
        recoveredBlock9Step = 50 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 53.
        ].
        recoveredBlock9Step = 53 ifTrue: [
            recoveredBlock9Stack3 := [:block280fe8b4Arg1 :block280fe8b4Arg2 | 
    | block280fe8b4Value0 block280fe8b4Value1 block280fe8b4Value2 block280fe8b4Value3 |
    block280fe8b4Value0 := block280fe8b4Arg1.
    block280fe8b4Value1 := (block280fe8b4Value0) compuMethod.
    block280fe8b4Value2 := block280fe8b4Arg2.
    block280fe8b4Value3 := (block280fe8b4Value1) = (block280fe8b4Value2).
    block280fe8b4Value3
].
            recoveredBlock9PC := 55.
        ].
        recoveredBlock9Step = 55 ifTrue: [
            recoveredBlock9PC := 63.
        ].
        recoveredBlock9Step = 63 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) referencesFromLabelsTo: (recoveredBlock9Stack2) accessBlock: (recoveredBlock9Stack3).
            recoveredBlock9PC := 65.
        ].
        recoveredBlock9Step = 65 ifTrue: [
            recoveredBlock9Stack2 := [:recoveredBlock9Block65Arg1 | 
    | recoveredBlock9Block65Value0 recoveredBlock9Block65Value1 recoveredBlock9Block65Value2 |
    recoveredBlock9Block65Value0 := recoveredBlock9Block65Arg1.
    recoveredBlock9Block65Value1 := recoveredBlock9Local1.
    recoveredBlock9Block65Value2 := (recoveredBlock9Block65Value0) compuMethod: (recoveredBlock9Block65Value1).
    recoveredBlock9Block65Value2
].
            recoveredBlock9PC := 79.
        ].
        recoveredBlock9Step = 79 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) do: (recoveredBlock9Stack2).
            recoveredBlock9PC := 81.
        ].
        recoveredBlock9Step = 81 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) compuMethod.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := [:block280fe8d8Arg1 | 
    | block280fe8d8Value0 block280fe8d8Value1 |
    block280fe8d8Value0 := block280fe8d8Arg1.
    block280fe8d8Value1 := (block280fe8d8Value0) resolveOverlapping.
    block280fe8d8Value1
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := parent.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204471a8; bytecode file offset 0xd43a90"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
rename: recoveredArg1 to: recoveredArg2 in: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDictionary.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) shortName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) asap2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCommentModule.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 recoveredBlock43Value4 recoveredBlock43Value5 recoveredBlock43Value6 recoveredBlock43Value7 |
    recoveredBlock43Value0 := recoveredBlock43Arg1.
    recoveredBlock43Value1 := recoveredArg1.
    recoveredBlock43Value2 := recoveredArg2.
    recoveredBlock43Value3 := recoveredBlock43Arg1.
    recoveredBlock43Value4 := recoveredArg3.
    recoveredBlock43Value5 := (recoveredBlock43Value3) perform: (recoveredBlock43Value4).
    (recoveredBlock43Value0) renameLabel: (recoveredBlock43Value1) to: (recoveredBlock43Value2) in: (recoveredBlock43Value5).
    recoveredBlock43Value6 := recoveredBlock43Arg1.
    recoveredBlock43Value7 := (recoveredBlock43Value6) modified.
    recoveredBlock43Value7
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) getHardwareModule.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Value0 recoveredBlock74Value1 recoveredBlock74Value2 recoveredBlock74Value3 recoveredBlock74Value4 recoveredBlock74Value5 recoveredBlock74Value6 recoveredBlock74Value7 |
    recoveredBlock74Value0 := recoveredBlock74Arg1.
    recoveredBlock74Value1 := recoveredArg1.
    recoveredBlock74Value2 := recoveredArg2.
    recoveredBlock74Value3 := recoveredBlock74Arg1.
    recoveredBlock74Value4 := recoveredArg3.
    recoveredBlock74Value5 := (recoveredBlock74Value3) perform: (recoveredBlock74Value4).
    (recoveredBlock74Value0) renameLabel: (recoveredBlock74Value1) to: (recoveredBlock74Value2) in: (recoveredBlock74Value5).
    recoveredBlock74Value6 := recoveredBlock74Arg1.
    recoveredBlock74Value7 := (recoveredBlock74Value6) modified.
    recoveredBlock74Value7
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) shortNameBase: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20458ab4; bytecode file offset 0xd55388"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
updateA2lFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 :recoveredBlock11Arg3 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := [:recoveredBlock11Block21Arg1 | 
    | recoveredBlock11Block21Stack0 recoveredBlock11Block21Stack1 recoveredBlock11Block21Stack2 recoveredBlock11Block21Stack3 recoveredBlock11Block21Stack4 recoveredBlock11Block21Stack5 recoveredBlock11Block21PC recoveredBlock11Block21Step recoveredBlock11Block21Done recoveredBlock11Block21Result |
    recoveredBlock11Block21Stack0 := self.
    recoveredBlock11Block21PC := 28.
    recoveredBlock11Block21Done := false.
    [recoveredBlock11Block21Done not] whileTrue: [
        recoveredBlock11Block21Step := recoveredBlock11Block21PC.
        recoveredBlock11Block21Step = 28 ifTrue: [
            recoveredBlock11Block21Stack1 := false.
            recoveredBlock11Block21PC := 29.
        ].
        recoveredBlock11Block21Step = 29 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredLocal1.
            recoveredBlock11Block21PC := 32.
        ].
        recoveredBlock11Block21Step = 32 ifTrue: [
            (recoveredBlock11Block21Stack2) ifTrue: [recoveredBlock11Block21PC := 36] ifFalse: [recoveredBlock11Block21PC := 70].
        ].
        recoveredBlock11Block21Step = 36 ifTrue: [
            recoveredBlock11Block21PC := 37.
        ].
        recoveredBlock11Block21Step = 37 ifTrue: [
            recoveredBlock11Block21Stack1 := recoveredBlock11Arg2.
            recoveredBlock11Block21PC := 40.
        ].
        recoveredBlock11Block21Step = 40 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredBlock11Block21Arg1.
            recoveredBlock11Block21PC := 43.
        ].
        recoveredBlock11Block21Step = 43 ifTrue: [
            recoveredBlock11Block21Stack2 := (recoveredBlock11Block21Stack2) shortName.
            recoveredBlock11Block21PC := 44.
        ].
        recoveredBlock11Block21Step = 44 ifTrue: [
            recoveredBlock11Block21Stack3 := [
    false
].
            recoveredBlock11Block21PC := 46.
        ].
        recoveredBlock11Block21Step = 46 ifTrue: [
            recoveredBlock11Block21PC := 52.
        ].
        recoveredBlock11Block21Step = 52 ifTrue: [
            recoveredBlock11Block21Stack4 := [:recoveredBlock11Block21Block52Arg1 | 
    | recoveredBlock11Block21Block52Value0 recoveredBlock11Block21Block52Value1 recoveredBlock11Block21Block52Value2 |
    recoveredBlock11Block21Block52Value0 := recoveredBlock11Block21Arg1.
    recoveredBlock11Block21Block52Value1 := recoveredBlock11Block21Block52Arg1.
    recoveredBlock11Block21Block52Value2 := (recoveredBlock11Block21Block52Value0) updateA2lFrom: (recoveredBlock11Block21Block52Value1) in: (self).
    recoveredBlock11Block21Block52Value2
].
            recoveredBlock11Block21PC := 66.
        ].
        recoveredBlock11Block21Step = 66 ifTrue: [
            (recoveredBlock11Block21Stack1) at: (recoveredBlock11Block21Stack2) ifAbsent: (recoveredBlock11Block21Stack3) ifPresent: (recoveredBlock11Block21Stack4).
            recoveredBlock11Block21PC := 69.
        ].
        recoveredBlock11Block21Step = 69 ifTrue: [
            recoveredBlock11Block21Stack1 := true.
            recoveredBlock11Block21PC := 70.
        ].
        recoveredBlock11Block21Step = 70 ifTrue: [
            recoveredBlock11Block21Stack2 := recoveredBlock11Block21Stack1.
            recoveredBlock11Block21PC := 71.
        ].
        recoveredBlock11Block21Step = 71 ifTrue: [
            recoveredLocal1 := recoveredBlock11Block21Stack2.
            recoveredBlock11Block21PC := 74.
        ].
        recoveredBlock11Block21Step = 74 ifTrue: [
            recoveredBlock11Block21Result := recoveredBlock11Block21Stack1.
            recoveredBlock11Block21Done := true.
        ].
    ].
    recoveredBlock11Block21Result
].
    (recoveredBlock11Value0) do: (recoveredBlock11Value1).
    recoveredBlock11Value2 := recoveredLocal1.
    recoveredBlock11Value2
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) doWith: (recoveredStack1) forAllCollections: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := modPar.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) modPar.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) updateA2lFrom: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := modCommon.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := modCommon.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) modCommon.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) updateA2lFrom: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20459e2c; bytecode file offset 0xd56714"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
replaceRecordLayout: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) characteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) replaceLabel: (recoveredBlock5Value1) with: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisPoint.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredArg1.
    recoveredBlock26Value2 := recoveredArg2.
    recoveredBlock26Value3 := (recoveredBlock26Value0) replaceLabel: (recoveredBlock26Value1) with: (recoveredBlock26Value2).
    recoveredBlock26Value3
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCommentObject.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) getHardwareObject.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) comments.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) recordLayout.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) replace: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) removeCommentAndHardware.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) updateCommentObject: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) updateHardwareObject: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045bea0; bytecode file offset 0xd58798"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
selectObjectsFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 |
    recoveredBlock4Value0 := (self) ifData.
    recoveredBlock4Value1 := [:recoveredBlock4Block12Arg1 | 
    | recoveredBlock4Block12Value0 recoveredBlock4Block12Value1 recoveredBlock4Block12Value2 |
    recoveredBlock4Block12Value0 := recoveredBlock4Block12Arg1.
    recoveredBlock4Block12Value1 := [:recoveredBlock4Block12Block19Arg1 | 
    | recoveredBlock4Block12Block19Value0 recoveredBlock4Block12Block19Value1 recoveredBlock4Block12Block19Value2 |
    recoveredBlock4Block12Block19Value0 := recoveredArg1.
    recoveredBlock4Block12Block19Value1 := recoveredBlock4Block12Block19Arg1.
    recoveredBlock4Block12Block19Value2 := (recoveredBlock4Block12Block19Value0) at: (recoveredBlock4Block12Block19Value1).
    recoveredBlock4Block12Block19Value2
].
    recoveredBlock4Block12Value2 := (recoveredBlock4Block12Value0) ifInteger: (recoveredBlock4Block12Value1).
    recoveredBlock4Block12Value2
].
    recoveredBlock4Value2 := (recoveredBlock4Value0) inject: (recoveredBlock4Value1).
    (self) ifData: (recoveredBlock4Value2).
    recoveredBlock4Value3 := (self) ifData.
    recoveredBlock4Value4 := [:recoveredBlock4Block39Arg1 | 
    | recoveredBlock4Block39Value0 recoveredBlock4Block39Value1 recoveredBlock4Block39Value2 |
    recoveredBlock4Block39Value0 := recoveredBlock4Block39Arg1.
    recoveredBlock4Block39Value1 := recoveredArg1.
    recoveredBlock4Block39Value2 := (recoveredBlock4Block39Value0) selectObjectsFrom: (recoveredBlock4Block39Value1).
    recoveredBlock4Block39Value2
].
    (recoveredBlock4Value3) do: (recoveredBlock4Value4).
    recoveredBlock4Value5 := (self) modPar.
    recoveredBlock4Value6 := [:recoveredBlock4Block59Arg1 | 
    | recoveredBlock4Block59Value0 recoveredBlock4Block59Value1 recoveredBlock4Block59Value2 |
    recoveredBlock4Block59Value0 := recoveredArg1.
    recoveredBlock4Block59Value1 := recoveredBlock4Block59Arg1.
    recoveredBlock4Block59Value2 := (recoveredBlock4Block59Value0) at: (recoveredBlock4Block59Value1).
    recoveredBlock4Block59Value2
].
    recoveredBlock4Value7 := (recoveredBlock4Value5) ifInteger: (recoveredBlock4Value6).
    (self) modPar: (recoveredBlock4Value7).
    recoveredBlock4Value8 := (self) modPar.
    recoveredBlock4Value9 := recoveredArg1.
    (recoveredBlock4Value8) selectObjectsFrom: (recoveredBlock4Value9).
    recoveredBlock4Value10 := recoveredArg1.
    recoveredBlock4Value11 := super selectObjectsFrom: (recoveredBlock4Value10).
    recoveredBlock4Value11
].
    recoveredValue1 := [
    | recoveredBlock92Value0 recoveredBlock92Value1 recoveredBlock92Value2 |
    recoveredBlock92Value0 := (self) dbObject.
    (recoveredBlock92Value0) removeFromCache.
    recoveredBlock92Value1 := DBLinDeLinError.
    recoveredBlock92Value2 := (recoveredBlock92Value1) create: ('selectObjectsFrom: failed').
    recoveredBlock92Value2
].
    recoveredValue2 := (self) exspectedStackSize.
    (self) executeWithStackHandling: (recoveredValue0) error: (recoveredValue1) exspectedStackSize: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2045bf64; bytecode file offset 0xd58860"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
selectObjectsFromWithNameCheck: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 |
    recoveredBlock4Value0 := (self) ifData.
    recoveredBlock4Value1 := [:recoveredBlock4Block12Arg1 | 
    | recoveredBlock4Block12Value0 recoveredBlock4Block12Value1 recoveredBlock4Block12Value2 |
    recoveredBlock4Block12Value0 := recoveredBlock4Block12Arg1.
    recoveredBlock4Block12Value1 := [:recoveredBlock4Block12Block19Arg1 | 
    | recoveredBlock4Block12Block19Value0 recoveredBlock4Block12Block19Value1 recoveredBlock4Block12Block19Value2 |
    recoveredBlock4Block12Block19Value0 := recoveredArg1.
    recoveredBlock4Block12Block19Value1 := recoveredBlock4Block12Block19Arg1.
    recoveredBlock4Block12Block19Value2 := (recoveredBlock4Block12Block19Value0) at: (recoveredBlock4Block12Block19Value1).
    recoveredBlock4Block12Block19Value2
].
    recoveredBlock4Block12Value2 := (recoveredBlock4Block12Value0) ifInteger: (recoveredBlock4Block12Value1).
    recoveredBlock4Block12Value2
].
    recoveredBlock4Value2 := (recoveredBlock4Value0) inject: (recoveredBlock4Value1).
    (self) ifData: (recoveredBlock4Value2).
    recoveredBlock4Value3 := (self) ifData.
    recoveredBlock4Value4 := [:recoveredBlock4Block39Arg1 | 
    | recoveredBlock4Block39Value0 recoveredBlock4Block39Value1 recoveredBlock4Block39Value2 |
    recoveredBlock4Block39Value0 := recoveredBlock4Block39Arg1.
    recoveredBlock4Block39Value1 := recoveredArg1.
    recoveredBlock4Block39Value2 := (recoveredBlock4Block39Value0) selectObjectsFrom: (recoveredBlock4Block39Value1).
    recoveredBlock4Block39Value2
].
    (recoveredBlock4Value3) do: (recoveredBlock4Value4).
    recoveredBlock4Value5 := (self) modPar.
    recoveredBlock4Value6 := [:recoveredBlock4Block59Arg1 | 
    | recoveredBlock4Block59Value0 recoveredBlock4Block59Value1 recoveredBlock4Block59Value2 |
    recoveredBlock4Block59Value0 := recoveredArg1.
    recoveredBlock4Block59Value1 := recoveredBlock4Block59Arg1.
    recoveredBlock4Block59Value2 := (recoveredBlock4Block59Value0) at: (recoveredBlock4Block59Value1).
    recoveredBlock4Block59Value2
].
    recoveredBlock4Value7 := (recoveredBlock4Value5) ifInteger: (recoveredBlock4Value6).
    (self) modPar: (recoveredBlock4Value7).
    recoveredBlock4Value8 := (self) modPar.
    recoveredBlock4Value9 := recoveredArg1.
    (recoveredBlock4Value8) selectObjectsFrom: (recoveredBlock4Value9).
    recoveredBlock4Value10 := recoveredArg1.
    recoveredBlock4Value11 := super selectObjectsFromWithNameCheck: (recoveredBlock4Value10).
    recoveredBlock4Value11
].
    recoveredValue1 := [
    | recoveredBlock92Value0 recoveredBlock92Value1 recoveredBlock92Value2 |
    recoveredBlock92Value0 := (self) dbObject.
    (recoveredBlock92Value0) removeFromCache.
    recoveredBlock92Value1 := DBLinDeLinError.
    recoveredBlock92Value2 := (recoveredBlock92Value1) create: ('selectObjectsFrom: failed').
    recoveredBlock92Value2
].
    recoveredValue2 := (self) exspectedStackSize.
    (self) executeWithStackHandling: (recoveredValue0) error: (recoveredValue1) exspectedStackSize: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20460598; bytecode file offset 0xd5ce70"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
setCommentsLink: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) comments: (recoveredValue0).
    recoveredValue1 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 recoveredBlock10Value6 recoveredBlock10Value7 recoveredBlock10Value8 recoveredBlock10Value9 recoveredBlock10Value10 recoveredBlock10Value11 recoveredBlock10Value12 recoveredBlock10Value13 recoveredBlock10Value14 recoveredBlock10Value15 recoveredBlock10Value16 recoveredBlock10Value17 recoveredBlock10Value18 recoveredBlock10Value19 recoveredBlock10Value20 recoveredBlock10Value21 recoveredBlock10Value22 |
    recoveredBlock10Value0 := characteristic.
    recoveredBlock10Value1 := recoveredArg1.
    (recoveredBlock10Value0) setCommentsLink: (recoveredBlock10Value1).
    recoveredBlock10Value2 := measurement.
    recoveredBlock10Value3 := recoveredArg1.
    (recoveredBlock10Value2) setCommentsLink: (recoveredBlock10Value3).
    recoveredBlock10Value4 := axisPoint.
    recoveredBlock10Value5 := recoveredArg1.
    (recoveredBlock10Value4) setCommentsLink: (recoveredBlock10Value5).
    recoveredBlock10Value6 := frame.
    recoveredBlock10Value7 := recoveredArg1.
    (recoveredBlock10Value6) setCommentsLink: (recoveredBlock10Value7).
    recoveredBlock10Value8 := group.
    recoveredBlock10Value9 := recoveredArg1.
    (recoveredBlock10Value8) setCommentsLink: (recoveredBlock10Value9).
    recoveredBlock10Value10 := function.
    recoveredBlock10Value11 := recoveredArg1.
    (recoveredBlock10Value10) setCommentsLink: (recoveredBlock10Value11).
    recoveredBlock10Value12 := compuMethod.
    recoveredBlock10Value13 := recoveredArg1.
    (recoveredBlock10Value12) setCommentsLink: (recoveredBlock10Value13).
    recoveredBlock10Value14 := compuTab.
    recoveredBlock10Value15 := recoveredArg1.
    (recoveredBlock10Value14) setCommentsLink: (recoveredBlock10Value15).
    recoveredBlock10Value16 := modPar.
    recoveredBlock10Value17 := recoveredArg1.
    (recoveredBlock10Value16) setCommentsLink: (recoveredBlock10Value17).
    recoveredBlock10Value18 := modCommon.
    recoveredBlock10Value19 := recoveredArg1.
    (recoveredBlock10Value18) setCommentsLink: (recoveredBlock10Value19).
    recoveredBlock10Value20 := recordLayout.
    recoveredBlock10Value21 := recoveredArg1.
    recoveredBlock10Value22 := (recoveredBlock10Value20) setCommentsLink: (recoveredBlock10Value21).
    recoveredBlock10Value22
].
    recoveredValue2 := [
    | recoveredBlock93Value0 recoveredBlock93Value1 recoveredBlock93Value2 |
    recoveredBlock93Value0 := (self) dbObject.
    (recoveredBlock93Value0) removeFromCache.
    recoveredBlock93Value1 := DBLinDeLinError.
    recoveredBlock93Value2 := (recoveredBlock93Value1) create: ('setCommentsLink: failed').
    recoveredBlock93Value2
].
    recoveredValue3 := (self) exspectedStackSize.
    (self) executeWithStackHandling: (recoveredValue1) error: (recoveredValue2) exspectedStackSize: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x204a158c; bytecode file offset 0xd9de60"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
labelHash32Dictionary
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := AbtHighCapacityLookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := characteristic.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) name.
    recoveredBlock12Value3 := (recoveredBlock12Value2) abtHash32.
    recoveredBlock12Value4 := recoveredBlock12Arg1.
    recoveredBlock12Value5 := (recoveredBlock12Value0) at: (recoveredBlock12Value3) put: (recoveredBlock12Value4).
    recoveredBlock12Value5
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := axisPoint.
    recoveredValue5 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 recoveredBlock32Value5 |
    recoveredBlock32Value0 := recoveredLocal1.
    recoveredBlock32Value1 := recoveredBlock32Arg1.
    recoveredBlock32Value2 := (recoveredBlock32Value1) name.
    recoveredBlock32Value3 := (recoveredBlock32Value2) abtHash32.
    recoveredBlock32Value4 := recoveredBlock32Arg1.
    recoveredBlock32Value5 := (recoveredBlock32Value0) at: (recoveredBlock32Value3) put: (recoveredBlock32Value4).
    recoveredBlock32Value5
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := measurement.
    recoveredValue7 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 recoveredBlock52Value3 recoveredBlock52Value4 recoveredBlock52Value5 |
    recoveredBlock52Value0 := recoveredLocal1.
    recoveredBlock52Value1 := recoveredBlock52Arg1.
    recoveredBlock52Value2 := (recoveredBlock52Value1) name.
    recoveredBlock52Value3 := (recoveredBlock52Value2) abtHash32.
    recoveredBlock52Value4 := recoveredBlock52Arg1.
    recoveredBlock52Value5 := (recoveredBlock52Value0) at: (recoveredBlock52Value3) put: (recoveredBlock52Value4).
    recoveredBlock52Value5
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := frame.
    recoveredValue9 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 recoveredBlock72Value3 recoveredBlock72Value4 recoveredBlock72Value5 |
    recoveredBlock72Value0 := recoveredLocal1.
    recoveredBlock72Value1 := recoveredBlock72Arg1.
    recoveredBlock72Value2 := (recoveredBlock72Value1) name.
    recoveredBlock72Value3 := (recoveredBlock72Value2) abtHash32.
    recoveredBlock72Value4 := recoveredBlock72Arg1.
    recoveredBlock72Value5 := (recoveredBlock72Value0) at: (recoveredBlock72Value3) put: (recoveredBlock72Value4).
    recoveredBlock72Value5
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := characteristic.
    recoveredValue11 := [:recoveredBlock92Arg1 | 
    | recoveredBlock92Value0 recoveredBlock92Value1 recoveredBlock92Value2 recoveredBlock92Value3 |
    recoveredBlock92Value0 := recoveredBlock92Arg1.
    recoveredBlock92Value1 := (recoveredBlock92Value0) axisDescription.
    recoveredBlock92Value2 := [:recoveredBlock92Block101Arg1 | 
    | recoveredBlock92Block101Value0 recoveredBlock92Block101Value1 recoveredBlock92Block101Value2 |
    recoveredBlock92Block101Value0 := recoveredBlock92Block101Arg1.
    recoveredBlock92Block101Value1 := [:recoveredBlock92Block101Block109Arg1 | 
    | recoveredBlock92Block101Block109Value0 recoveredBlock92Block101Block109Value1 recoveredBlock92Block101Block109Value2 recoveredBlock92Block101Block109Value3 recoveredBlock92Block101Block109Value4 recoveredBlock92Block101Block109Value5 |
    recoveredBlock92Block101Block109Value0 := recoveredLocal1.
    recoveredBlock92Block101Block109Value1 := recoveredBlock92Block101Block109Arg1.
    recoveredBlock92Block101Block109Value2 := (recoveredBlock92Block101Block109Value1) name.
    recoveredBlock92Block101Block109Value3 := (recoveredBlock92Block101Block109Value2) abtHash32.
    recoveredBlock92Block101Block109Value4 := recoveredBlock92Block101Block109Arg1.
    recoveredBlock92Block101Block109Value5 := (recoveredBlock92Block101Block109Value0) at: (recoveredBlock92Block101Block109Value3) put: (recoveredBlock92Block101Block109Value4).
    recoveredBlock92Block101Block109Value5
].
    recoveredBlock92Block101Value2 := (recoveredBlock92Block101Value0) do: (recoveredBlock92Block101Value1).
    recoveredBlock92Block101Value2
].
    recoveredBlock92Value3 := (recoveredBlock92Value1) ifNotNil: (recoveredBlock92Value2).
    recoveredBlock92Value3
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x204a2054; bytecode file offset 0xd9e93c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
replaceCharacteristic: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) function.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) replaceCharacteristic: (recoveredBlock5Value1) with: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) group.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredArg1.
    recoveredBlock26Value2 := recoveredArg2.
    recoveredBlock26Value3 := (recoveredBlock26Value0) replaceCharacteristic: (recoveredBlock26Value1) with: (recoveredBlock26Value2).
    recoveredBlock26Value3
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCommentObject.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) getHardwareObject.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) comments.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) characteristic.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := [:recoveredBlock73Arg1 | 
    | recoveredBlock73Value0 recoveredBlock73Value1 recoveredBlock73Value2 recoveredBlock73Value3 |
    recoveredBlock73Value0 := recoveredBlock73Arg1.
    recoveredBlock73Value1 := recoveredArg1.
    recoveredBlock73Value2 := recoveredArg2.
    recoveredBlock73Value3 := (recoveredBlock73Value0) replaceCharacteristic: (recoveredBlock73Value1) with: (recoveredBlock73Value2).
    recoveredBlock73Value3
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) characteristic.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) replace: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) removeCommentAndHardware.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) updateCommentObject: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) updateHardwareObject: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a211c; bytecode file offset 0xd9ea08"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
replaceFunction: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) measurement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) replaceFunction: (recoveredBlock5Value1) with: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) characteristic.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredArg1.
    recoveredBlock26Value2 := recoveredArg2.
    recoveredBlock26Value3 := (recoveredBlock26Value0) replaceFunction: (recoveredBlock26Value1) with: (recoveredBlock26Value2).
    recoveredBlock26Value3
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisPoint.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 recoveredBlock47Value3 |
    recoveredBlock47Value0 := recoveredBlock47Arg1.
    recoveredBlock47Value1 := recoveredArg1.
    recoveredBlock47Value2 := recoveredArg2.
    recoveredBlock47Value3 := (recoveredBlock47Value0) replaceFunction: (recoveredBlock47Value1) with: (recoveredBlock47Value2).
    recoveredBlock47Value3
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCommentObject.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) getHardwareObject.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) comments.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) function.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) replace: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) removeCommentAndHardware.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) updateCommentObject: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) updateHardwareObject: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ad83c; bytecode file offset 0xdaa100"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
labelHash32: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := characteristic.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) name.
    recoveredBlock6Value2 := (recoveredBlock6Value1) abtHash32.
    recoveredBlock6Value3 := recoveredArg1.
    recoveredBlock6Value4 := (recoveredBlock6Value2) = (recoveredBlock6Value3).
    recoveredBlock6Value4
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := axisPoint.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 recoveredBlock40Value4 |
    recoveredBlock40Value0 := recoveredBlock40Arg1.
    recoveredBlock40Value1 := (recoveredBlock40Value0) name.
    recoveredBlock40Value2 := (recoveredBlock40Value1) abtHash32.
    recoveredBlock40Value3 := recoveredArg1.
    recoveredBlock40Value4 := (recoveredBlock40Value2) = (recoveredBlock40Value3).
    recoveredBlock40Value4
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := measurement.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Value0 recoveredBlock74Value1 recoveredBlock74Value2 recoveredBlock74Value3 recoveredBlock74Value4 |
    recoveredBlock74Value0 := recoveredBlock74Arg1.
    recoveredBlock74Value1 := (recoveredBlock74Value0) name.
    recoveredBlock74Value2 := (recoveredBlock74Value1) abtHash32.
    recoveredBlock74Value3 := recoveredArg1.
    recoveredBlock74Value4 := (recoveredBlock74Value2) = (recoveredBlock74Value3).
    recoveredBlock74Value4
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := frame.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := [:recoveredBlock108Arg1 | 
    | recoveredBlock108Value0 recoveredBlock108Value1 recoveredBlock108Value2 recoveredBlock108Value3 recoveredBlock108Value4 |
    recoveredBlock108Value0 := recoveredBlock108Arg1.
    recoveredBlock108Value1 := (recoveredBlock108Value0) name.
    recoveredBlock108Value2 := (recoveredBlock108Value1) abtHash32.
    recoveredBlock108Value3 := recoveredArg1.
    recoveredBlock108Value4 := (recoveredBlock108Value2) = (recoveredBlock108Value3).
    recoveredBlock108Value4
].
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204d9180; bytecode file offset 0xdd5a68"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
doWith: recoveredArg1 forAllCollections: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := characteristic.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := (recoveredStack4) characteristic.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := measurement.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) measurement.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := axisPoint.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) axisPoint.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := frame.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) frame.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := group.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := (recoveredStack4) group.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := function.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := (recoveredStack4) function.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := compuTab.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := (recoveredStack4) compuTab.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := compuMethod.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := (recoveredStack4) compuMethod.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := recordLayout.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := (recoveredStack4) recordLayout.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := unit.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := unit.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := (recoveredStack4) unit.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := userRights.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 157] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := userRights.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := (recoveredStack4) userRights.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20532024; bytecode file offset 0xe2e914"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
createCurveAxisCharacteristics
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) characteristic.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) axisDescription.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 199] ifFalse: [recoveredBlock5PC := 18].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) axisDescription.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := [:recoveredBlock5Block21Arg1 | 
    | recoveredBlock5Block21Local1 recoveredBlock5Block21Local2 recoveredBlock5Block21Local3 recoveredBlock5Block21Local4 recoveredBlock5Block21Local5 recoveredBlock5Block21Stack0 recoveredBlock5Block21Stack1 recoveredBlock5Block21Stack2 recoveredBlock5Block21Stack3 recoveredBlock5Block21Stack4 recoveredBlock5Block21PC recoveredBlock5Block21Step recoveredBlock5Block21Done recoveredBlock5Block21Result |
    recoveredBlock5Block21Stack0 := self.
    recoveredBlock5Block21PC := 28.
    recoveredBlock5Block21Done := false.
    [recoveredBlock5Block21Done not] whileTrue: [
        recoveredBlock5Block21Step := recoveredBlock5Block21PC.
        recoveredBlock5Block21Step = 28 ifTrue: [
            recoveredBlock5Block21Stack1 := nil.
            recoveredBlock5Block21PC := 29.
        ].
        recoveredBlock5Block21Step = 29 ifTrue: [
            recoveredBlock5Block21Stack2 := recoveredBlock5Block21Arg1.
            recoveredBlock5Block21PC := 32.
        ].
        recoveredBlock5Block21Step = 32 ifTrue: [
            recoveredBlock5Block21Stack2 := (recoveredBlock5Block21Stack2) isCurveAxis.
            recoveredBlock5Block21PC := 33.
        ].
        recoveredBlock5Block21Step = 33 ifTrue: [
            (recoveredBlock5Block21Stack2) ifTrue: [recoveredBlock5Block21PC := 36] ifFalse: [recoveredBlock5Block21PC := 196].
        ].
        recoveredBlock5Block21Step = 36 ifTrue: [
            recoveredBlock5Block21PC := 37.
        ].
        recoveredBlock5Block21Step = 37 ifTrue: [
            recoveredBlock5Block21Stack1 := nil.
            recoveredBlock5Block21PC := 38.
        ].
        recoveredBlock5Block21Step = 38 ifTrue: [
            recoveredBlock5Block21Stack2 := recoveredBlock5Block21Arg1.
            recoveredBlock5Block21PC := 41.
        ].
        recoveredBlock5Block21Step = 41 ifTrue: [
            recoveredBlock5Block21Stack2 := (recoveredBlock5Block21Stack2) curveAxisRef.
            recoveredBlock5Block21PC := 42.
        ].
        recoveredBlock5Block21Step = 42 ifTrue: [
            recoveredBlock5Block21Stack3 := recoveredBlock5Block21Stack2.
            recoveredBlock5Block21PC := 43.
        ].
        recoveredBlock5Block21Step = 43 ifTrue: [
            recoveredBlock5Block21Local5 := recoveredBlock5Block21Stack3.
            recoveredBlock5Block21PC := 46.
        ].
        recoveredBlock5Block21Step = 46 ifTrue: [
            recoveredBlock5Block21Stack2 := (recoveredBlock5Block21Stack2) isASAP2.
            recoveredBlock5Block21PC := 48.
        ].
        recoveredBlock5Block21Step = 48 ifTrue: [
            (recoveredBlock5Block21Stack2) ifTrue: [recoveredBlock5Block21PC := 52] ifFalse: [recoveredBlock5Block21PC := 192].
        ].
        recoveredBlock5Block21Step = 52 ifTrue: [
            recoveredBlock5Block21PC := 53.
        ].
        recoveredBlock5Block21Step = 53 ifTrue: [
            recoveredBlock5Block21Stack1 := self.
            recoveredBlock5Block21PC := 54.
        ].
        recoveredBlock5Block21Step = 54 ifTrue: [
            recoveredBlock5Block21Stack2 := recoveredBlock5Block21Local5.
            recoveredBlock5Block21PC := 57.
        ].
        recoveredBlock5Block21Step = 57 ifTrue: [
            recoveredBlock5Block21Stack2 := (recoveredBlock5Block21Stack2) name.
            recoveredBlock5Block21PC := 59.
        ].
        recoveredBlock5Block21Step = 59 ifTrue: [
            recoveredBlock5Block21Stack3 := self.
            recoveredBlock5Block21PC := 60.
        ].
        recoveredBlock5Block21Step = 60 ifTrue: [
            recoveredBlock5Block21Stack3 := (recoveredBlock5Block21Stack3) characteristic.
            recoveredBlock5Block21PC := 61.
        ].
        recoveredBlock5Block21Step = 61 ifTrue: [
            recoveredBlock5Block21Stack1 := (recoveredBlock5Block21Stack1) indexOf: (recoveredBlock5Block21Stack2) in: (recoveredBlock5Block21Stack3).
            recoveredBlock5Block21PC := 63.
        ].
        recoveredBlock5Block21Step = 63 ifTrue: [
            recoveredBlock5Block21Stack2 := recoveredBlock5Block21Stack1.
            recoveredBlock5Block21PC := 64.
        ].
        recoveredBlock5Block21Step = 64 ifTrue: [
            recoveredBlock5Block21Local4 := recoveredBlock5Block21Stack2.
            recoveredBlock5Block21PC := 67.
        ].
        recoveredBlock5Block21Step = 67 ifTrue: [
            recoveredBlock5Block21Stack2 := 0.
            recoveredBlock5Block21PC := 69.
        ].
        recoveredBlock5Block21Step = 69 ifTrue: [
            recoveredBlock5Block21Stack1 := (recoveredBlock5Block21Stack1) = (recoveredBlock5Block21Stack2).
            recoveredBlock5Block21PC := 70.
        ].
        recoveredBlock5Block21Step = 70 ifTrue: [
            (recoveredBlock5Block21Stack1) ifTrue: [recoveredBlock5Block21PC := 168] ifFalse: [recoveredBlock5Block21PC := 74].
        ].
        recoveredBlock5Block21Step = 74 ifTrue: [
            recoveredBlock5Block21Stack1 := self.
            recoveredBlock5Block21PC := 75.
        ].
        recoveredBlock5Block21Step = 75 ifTrue: [
            recoveredBlock5Block21Stack1 := (recoveredBlock5Block21Stack1) characteristic.
            recoveredBlock5Block21PC := 76.
        ].
        recoveredBlock5Block21Step = 76 ifTrue: [
            recoveredBlock5Block21Stack2 := recoveredBlock5Block21Local4.
            recoveredBlock5Block21PC := 79.
        ].
        recoveredBlock5Block21Step = 79 ifTrue: [
            recoveredBlock5Block21Stack1 := (recoveredBlock5Block21Stack1) at: (recoveredBlock5Block21Stack2).
            recoveredBlock5Block21PC := 81.
        ].
        recoveredBlock5Block21Step = 81 ifTrue: [
            recoveredBlock5Block21Stack2 := recoveredBlock5Block21Stack1.
            recoveredBlock5Block21PC := 82.
        ].
        recoveredBlock5Block21Step = 82 ifTrue: [
            recoveredBlock5Block21Local5 := recoveredBlock5Block21Stack2.
            recoveredBlock5Block21PC := 85.
        ].
        recoveredBlock5Block21Step = 85 ifTrue: [
            recoveredBlock5Block21Local3 := recoveredBlock5Block21Stack1.
            recoveredBlock5Block21PC := 88.
        ].
        recoveredBlock5Block21Step = 88 ifTrue: [
            recoveredBlock5Block21Stack1 := self.
            recoveredBlock5Block21PC := 89.
        ].
        recoveredBlock5Block21Step = 89 ifTrue: [
            recoveredBlock5Block21Stack2 := recoveredBlock5Block21Local5.
            recoveredBlock5Block21PC := 92.
        ].
        recoveredBlock5Block21Step = 92 ifTrue: [
            recoveredBlock5Block21Stack1 := (recoveredBlock5Block21Stack1) functionsReferencing: (recoveredBlock5Block21Stack2).
            recoveredBlock5Block21PC := 94.
        ].
        recoveredBlock5Block21Step = 94 ifTrue: [
            recoveredBlock5Block21Local2 := recoveredBlock5Block21Stack1.
            recoveredBlock5Block21PC := 97.
        ].
        recoveredBlock5Block21Step = 97 ifTrue: [
            recoveredBlock5Block21Stack1 := self.
            recoveredBlock5Block21PC := 98.
        ].
        recoveredBlock5Block21Step = 98 ifTrue: [
            recoveredBlock5Block21Stack2 := recoveredBlock5Block21Local5.
            recoveredBlock5Block21PC := 101.
        ].
        recoveredBlock5Block21Step = 101 ifTrue: [
            recoveredBlock5Block21Stack1 := (recoveredBlock5Block21Stack1) groupsReferencing: (recoveredBlock5Block21Stack2).
            recoveredBlock5Block21PC := 103.
        ].
        recoveredBlock5Block21Step = 103 ifTrue: [
            recoveredBlock5Block21Local1 := recoveredBlock5Block21Stack1.
            recoveredBlock5Block21PC := 106.
        ].
        recoveredBlock5Block21Step = 106 ifTrue: [
            recoveredBlock5Block21Stack1 := recoveredBlock5Block21Local5.
            recoveredBlock5Block21PC := 109.
        ].
        recoveredBlock5Block21Step = 109 ifTrue: [
            recoveredBlock5Block21Stack1 := (recoveredBlock5Block21Stack1) changeToCurveAxis.
            recoveredBlock5Block21PC := 111.
        ].
        recoveredBlock5Block21Step = 111 ifTrue: [
            recoveredBlock5Block21Local5 := recoveredBlock5Block21Stack1.
            recoveredBlock5Block21PC := 114.
        ].
        recoveredBlock5Block21Step = 114 ifTrue: [
            recoveredBlock5Block21Stack1 := self.
            recoveredBlock5Block21PC := 115.
        ].
        recoveredBlock5Block21Step = 115 ifTrue: [
            recoveredBlock5Block21Stack1 := (recoveredBlock5Block21Stack1) characteristic.
            recoveredBlock5Block21PC := 116.
        ].
        recoveredBlock5Block21Step = 116 ifTrue: [
            recoveredBlock5Block21Stack2 := recoveredBlock5Block21Local4.
            recoveredBlock5Block21PC := 119.
        ].
        recoveredBlock5Block21Step = 119 ifTrue: [
            recoveredBlock5Block21Stack3 := recoveredBlock5Block21Local5.
            recoveredBlock5Block21PC := 122.
        ].
        recoveredBlock5Block21Step = 122 ifTrue: [
            (recoveredBlock5Block21Stack1) at: (recoveredBlock5Block21Stack2) put: (recoveredBlock5Block21Stack3).
            recoveredBlock5Block21PC := 124.
        ].
        recoveredBlock5Block21Step = 124 ifTrue: [
            recoveredBlock5Block21Stack1 := recoveredBlock5Block21Local2.
            recoveredBlock5Block21PC := 127.
        ].
        recoveredBlock5Block21Step = 127 ifTrue: [
            recoveredBlock5Block21Stack2 := [:recoveredBlock5Block21Block127Arg1 | 
    | recoveredBlock5Block21Block127Value0 recoveredBlock5Block21Block127Value1 recoveredBlock5Block21Block127Value2 recoveredBlock5Block21Block127Value3 |
    recoveredBlock5Block21Block127Value0 := recoveredBlock5Block21Block127Arg1.
    recoveredBlock5Block21Block127Value1 := recoveredBlock5Block21Local3.
    recoveredBlock5Block21Block127Value2 := recoveredBlock5Block21Local5.
    recoveredBlock5Block21Block127Value3 := (recoveredBlock5Block21Block127Value0) replaceLabel: (recoveredBlock5Block21Block127Value1) with: (recoveredBlock5Block21Block127Value2).
    recoveredBlock5Block21Block127Value3
].
            recoveredBlock5Block21PC := 144.
        ].
        recoveredBlock5Block21Step = 144 ifTrue: [
            (recoveredBlock5Block21Stack1) do: (recoveredBlock5Block21Stack2).
            recoveredBlock5Block21PC := 146.
        ].
        recoveredBlock5Block21Step = 146 ifTrue: [
            recoveredBlock5Block21Stack1 := recoveredBlock5Block21Local1.
            recoveredBlock5Block21PC := 149.
        ].
        recoveredBlock5Block21Step = 149 ifTrue: [
            recoveredBlock5Block21Stack2 := [:recoveredBlock5Block21Block149Arg1 | 
    | recoveredBlock5Block21Block149Value0 recoveredBlock5Block21Block149Value1 recoveredBlock5Block21Block149Value2 recoveredBlock5Block21Block149Value3 |
    recoveredBlock5Block21Block149Value0 := recoveredBlock5Block21Block149Arg1.
    recoveredBlock5Block21Block149Value1 := recoveredBlock5Block21Local3.
    recoveredBlock5Block21Block149Value2 := recoveredBlock5Block21Local5.
    recoveredBlock5Block21Block149Value3 := (recoveredBlock5Block21Block149Value0) replaceLabel: (recoveredBlock5Block21Block149Value1) with: (recoveredBlock5Block21Block149Value2).
    recoveredBlock5Block21Block149Value3
].
            recoveredBlock5Block21PC := 166.
        ].
        recoveredBlock5Block21Step = 166 ifTrue: [
            (recoveredBlock5Block21Stack1) do: (recoveredBlock5Block21Stack2).
            recoveredBlock5Block21PC := 168.
        ].
        recoveredBlock5Block21Step = 168 ifTrue: [
            recoveredBlock5Block21Stack1 := recoveredBlock5Block21Arg1.
            recoveredBlock5Block21PC := 171.
        ].
        recoveredBlock5Block21Step = 171 ifTrue: [
            recoveredBlock5Block21Stack2 := recoveredBlock5Block21Local5.
            recoveredBlock5Block21PC := 174.
        ].
        recoveredBlock5Block21Step = 174 ifTrue: [
            recoveredBlock5Block21Stack1 := (recoveredBlock5Block21Stack1) curveAxisRef: (recoveredBlock5Block21Stack2).
            recoveredBlock5Block21PC := 176.
        ].
        recoveredBlock5Block21Step = 176 ifTrue: [
            recoveredBlock5Block21Stack2 := nil.
            recoveredBlock5Block21PC := 177.
        ].
        recoveredBlock5Block21Step = 177 ifTrue: [
            recoveredBlock5Block21Stack3 := recoveredBlock5Block21Stack2.
            recoveredBlock5Block21PC := 178.
        ].
        recoveredBlock5Block21Step = 178 ifTrue: [
            recoveredBlock5Block21Local4 := recoveredBlock5Block21Stack3.
            recoveredBlock5Block21PC := 181.
        ].
        recoveredBlock5Block21Step = 181 ifTrue: [
            recoveredBlock5Block21Stack3 := recoveredBlock5Block21Stack2.
            recoveredBlock5Block21PC := 182.
        ].
        recoveredBlock5Block21Step = 182 ifTrue: [
            recoveredBlock5Block21Local3 := recoveredBlock5Block21Stack3.
            recoveredBlock5Block21PC := 185.
        ].
        recoveredBlock5Block21Step = 185 ifTrue: [
            recoveredBlock5Block21Stack3 := recoveredBlock5Block21Stack2.
            recoveredBlock5Block21PC := 186.
        ].
        recoveredBlock5Block21Step = 186 ifTrue: [
            recoveredBlock5Block21Local2 := recoveredBlock5Block21Stack3.
            recoveredBlock5Block21PC := 189.
        ].
        recoveredBlock5Block21Step = 189 ifTrue: [
            recoveredBlock5Block21Local1 := recoveredBlock5Block21Stack2.
            recoveredBlock5Block21PC := 192.
        ].
        recoveredBlock5Block21Step = 192 ifTrue: [
            recoveredBlock5Block21Stack2 := nil.
            recoveredBlock5Block21PC := 193.
        ].
        recoveredBlock5Block21Step = 193 ifTrue: [
            recoveredBlock5Block21Local5 := recoveredBlock5Block21Stack2.
            recoveredBlock5Block21PC := 196.
        ].
        recoveredBlock5Block21Step = 196 ifTrue: [
            recoveredBlock5Block21Result := recoveredBlock5Block21Stack1.
            recoveredBlock5Block21Done := true.
        ].
    ].
    recoveredBlock5Block21Result
].
            recoveredBlock5PC := 197.
        ].
        recoveredBlock5Step = 197 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) do: (recoveredBlock5Stack2).
            recoveredBlock5PC := 199.
        ].
        recoveredBlock5Step = 199 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x205364c0; bytecode file offset 0xe32dbc"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
replaceMeasurement: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) function.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) replaceLabel: (recoveredBlock5Value1) with: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) group.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredArg1.
    recoveredBlock26Value2 := recoveredArg2.
    recoveredBlock26Value3 := (recoveredBlock26Value0) replaceLabel: (recoveredBlock26Value1) with: (recoveredBlock26Value2).
    recoveredBlock26Value3
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) frame.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 recoveredBlock47Value3 |
    recoveredBlock47Value0 := recoveredBlock47Arg1.
    recoveredBlock47Value1 := recoveredArg1.
    recoveredBlock47Value2 := recoveredArg2.
    recoveredBlock47Value3 := (recoveredBlock47Value0) replaceLabel: (recoveredBlock47Value1) with: (recoveredBlock47Value2).
    recoveredBlock47Value3
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisPoint.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Value0 recoveredBlock69Value1 recoveredBlock69Value2 recoveredBlock69Value3 |
    recoveredBlock69Value0 := recoveredBlock69Arg1.
    recoveredBlock69Value1 := recoveredArg1.
    recoveredBlock69Value2 := recoveredArg2.
    recoveredBlock69Value3 := (recoveredBlock69Value0) replaceLabel: (recoveredBlock69Value1) with: (recoveredBlock69Value2).
    recoveredBlock69Value3
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) characteristic.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Value0 recoveredBlock91Value1 recoveredBlock91Value2 recoveredBlock91Value3 |
    recoveredBlock91Value0 := recoveredBlock91Arg1.
    recoveredBlock91Value1 := (recoveredBlock91Value0) axisDescription.
    recoveredBlock91Value2 := [:recoveredBlock91Block101Arg1 | 
    | recoveredBlock91Block101Value0 recoveredBlock91Block101Value1 recoveredBlock91Block101Value2 |
    recoveredBlock91Block101Value0 := recoveredBlock91Block101Arg1.
    recoveredBlock91Block101Value1 := [:recoveredBlock91Block101Block109Arg1 | 
    | recoveredBlock91Block101Block109Value0 recoveredBlock91Block101Block109Value1 recoveredBlock91Block101Block109Value2 recoveredBlock91Block101Block109Value3 |
    recoveredBlock91Block101Block109Value0 := recoveredBlock91Block101Block109Arg1.
    recoveredBlock91Block101Block109Value1 := recoveredArg1.
    recoveredBlock91Block101Block109Value2 := recoveredArg2.
    recoveredBlock91Block101Block109Value3 := (recoveredBlock91Block101Block109Value0) replaceLabel: (recoveredBlock91Block101Block109Value1) with: (recoveredBlock91Block101Block109Value2).
    recoveredBlock91Block101Block109Value3
].
    recoveredBlock91Block101Value2 := (recoveredBlock91Block101Value0) do: (recoveredBlock91Block101Value1).
    recoveredBlock91Block101Value2
].
    recoveredBlock91Value3 := (recoveredBlock91Value1) ifNotNil: (recoveredBlock91Value2).
    recoveredBlock91Value3
].
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCommentObject.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) getHardwareObject.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) comments.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) measurement.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) replace: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) removeCommentAndHardware.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) updateCommentObject: (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) updateHardwareObject: (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058a638; bytecode file offset 0xe86fd0"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
addInspectorMenuEntriesIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super addInspectorMenuEntriesIn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'selectAxisDescriptions'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'axisDesc'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'createAccessors'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 'createAccessors'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'checkModelConsistency'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := 'checkModelConsistency'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'selectAxisPoints'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := 'axisPoints'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 'selectMeasurements'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := 'meas'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 'selectMeasurementArrays'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := 'measArrays'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := 'selectMeasurementBooleans'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := 'measBooleans'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'selectMeasurementBooleanArrays'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := 'measBooleanArrays'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 'selectCharacteristicAsciis'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := 'charAsciis'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 'selectCharacteristicCuboids'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := 'charCubiods'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := 'selectCharacteristicCurves'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := 'charCurves'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := 'selectCharacteristicMaps'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := 'charMaps'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := 'selectCharacteristicValblks'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := 'charValblks'.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := 'selectCharacteristicValues'.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := 'charValues'.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := 'selectCharacteristicValueBooleans'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := 'charBooleans'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := 'getHardwareModule'.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := 'getHardwareModule'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := 'getCommentModule'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := 'getCommentModule'.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := 'viewOriginalFile'.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := 'viewOriginalFile'.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock253Value0 recoveredBlock253Value1 recoveredBlock253Value2 |
    recoveredBlock253Value0 := parent.
    recoveredBlock253Value1 := (recoveredBlock253Value0) fileContents.
    recoveredBlock253Value2 := (recoveredBlock253Value1) notNil.
    recoveredBlock253Value2
].
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b8478; bytecode file offset 0xeb4d48"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
labelNamed: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := characteristic.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := characteristic.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := axisPoint.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := axisPoint.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := measurement.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := measurement.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := frame.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := frame.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := characteristic.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := [:recoveredBlock166Arg1 | 
    | recoveredBlock166Value0 recoveredBlock166Value1 recoveredBlock166Value2 recoveredBlock166Value3 |
    recoveredBlock166Value0 := recoveredBlock166Arg1.
    recoveredBlock166Value1 := (recoveredBlock166Value0) name.
    recoveredBlock166Value2 := recoveredArg1.
    recoveredBlock166Value3 := (recoveredBlock166Value1) = (recoveredBlock166Value2).
    recoveredBlock166Value3
].
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock187Value0 |
    (self) etasDevHalt.
    recoveredBlock187Value0 := recoveredLocal1.
    ^recoveredBlock187Value0
].
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := axisPoint.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := [:recoveredBlock204Arg1 | 
    | recoveredBlock204Value0 recoveredBlock204Value1 recoveredBlock204Value2 recoveredBlock204Value3 |
    recoveredBlock204Value0 := recoveredBlock204Arg1.
    recoveredBlock204Value1 := (recoveredBlock204Value0) name.
    recoveredBlock204Value2 := recoveredArg1.
    recoveredBlock204Value3 := (recoveredBlock204Value1) = (recoveredBlock204Value2).
    recoveredBlock204Value3
].
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock225Value0 |
    (self) etasDevHalt.
    recoveredBlock225Value0 := recoveredLocal1.
    ^recoveredBlock225Value0
].
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := measurement.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := [:recoveredBlock242Arg1 | 
    | recoveredBlock242Value0 recoveredBlock242Value1 recoveredBlock242Value2 recoveredBlock242Value3 |
    recoveredBlock242Value0 := recoveredBlock242Arg1.
    recoveredBlock242Value1 := (recoveredBlock242Value0) name.
    recoveredBlock242Value2 := recoveredArg1.
    recoveredBlock242Value3 := (recoveredBlock242Value1) = (recoveredBlock242Value2).
    recoveredBlock242Value3
].
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock263Value0 |
    (self) etasDevHalt.
    recoveredBlock263Value0 := recoveredLocal1.
    ^recoveredBlock263Value0
].
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := frame.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := [:recoveredBlock280Arg1 | 
    | recoveredBlock280Value0 recoveredBlock280Value1 recoveredBlock280Value2 recoveredBlock280Value3 |
    recoveredBlock280Value0 := recoveredBlock280Arg1.
    recoveredBlock280Value1 := (recoveredBlock280Value0) name.
    recoveredBlock280Value2 := recoveredArg1.
    recoveredBlock280Value3 := (recoveredBlock280Value1) = (recoveredBlock280Value2).
    recoveredBlock280Value3
].
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock301Value0 |
    (self) etasDevHalt.
    recoveredBlock301Value0 := recoveredLocal1.
    ^recoveredBlock301Value0
].
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d2530; bytecode file offset 0xecee5c"
!ASAP2DBSpecificationModule methodsFor: 'recovered'!
countObjects
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 recoveredBlock4Value13 |
    recoveredBlock4Value0 := OrderedCollection.
    recoveredBlock4Value1 := (recoveredBlock4Value0) new.
    recoveredLocal3 := recoveredBlock4Value1.
    (self) clearId.
    recoveredBlock4Value2 := recoveredLocal3.
    (self) collectObjectsFlat: (1) in: (recoveredBlock4Value2).
    recoveredBlock4Value3 := recoveredLocal3.
    recoveredBlock4Value4 := (recoveredBlock4Value3) countObjects.
    recoveredLocal1 := recoveredBlock4Value4.
    recoveredBlock4Value5 := recoveredLocal1.
    recoveredBlock4Value6 := [:recoveredBlock4Block39Arg1 | 
    | recoveredBlock4Block39Local1 recoveredBlock4Block39Local2 recoveredBlock4Block39Value0 recoveredBlock4Block39Value1 recoveredBlock4Block39Value2 recoveredBlock4Block39Value3 recoveredBlock4Block39Value4 recoveredBlock4Block39Value5 recoveredBlock4Block39Value6 recoveredBlock4Block39Value7 |
    recoveredBlock4Block39Local1 := 0.
    recoveredBlock4Block39Local2 := 0.
    recoveredBlock4Block39Value0 := recoveredBlock4Block39Arg1.
    recoveredBlock4Block39Value1 := [:recoveredBlock4Block39Block58Arg1 :recoveredBlock4Block39Block58Arg2 | 
    | recoveredBlock4Block39Block58Value0 recoveredBlock4Block39Block58Value1 recoveredBlock4Block39Block58Value2 recoveredBlock4Block39Block58Value3 recoveredBlock4Block39Block58Value4 recoveredBlock4Block39Block58Value5 recoveredBlock4Block39Block58Value6 recoveredBlock4Block39Block58Value7 recoveredBlock4Block39Block58Value8 recoveredBlock4Block39Block58Value9 recoveredBlock4Block39Block58Value10 recoveredBlock4Block39Block58Value11 recoveredBlock4Block39Block58Value12 recoveredBlock4Block39Block58Value13 recoveredBlock4Block39Block58Value14 recoveredBlock4Block39Block58Value15 recoveredBlock4Block39Block58Value16 |
    recoveredBlock4Block39Block58Value0 := recoveredBlock4Block39Local2.
    recoveredBlock4Block39Block58Value1 := recoveredBlock4Block39Block58Arg1.
    recoveredBlock4Block39Block58Value2 := (recoveredBlock4Block39Block58Value1) key.
    recoveredBlock4Block39Block58Value3 := (recoveredBlock4Block39Block58Value2) dumpSize.
    recoveredBlock4Block39Block58Value4 := recoveredBlock4Block39Block58Arg1.
    recoveredBlock4Block39Block58Value5 := (recoveredBlock4Block39Block58Value4) value.
    recoveredBlock4Block39Block58Value6 := (recoveredBlock4Block39Block58Value3) * (recoveredBlock4Block39Block58Value5).
    recoveredBlock4Block39Block58Value7 := (recoveredBlock4Block39Block58Value0) + (recoveredBlock4Block39Block58Value6).
    recoveredBlock4Block39Local2 := recoveredBlock4Block39Block58Value7.
    recoveredBlock4Block39Block58Value8 := recoveredBlock4Block39Local1.
    recoveredBlock4Block39Block58Value9 := recoveredBlock4Block39Block58Arg2.
    recoveredBlock4Block39Block58Value10 := (recoveredBlock4Block39Block58Value9) dumpSize.
    recoveredBlock4Block39Block58Value11 := (recoveredBlock4Block39Block58Value8) + (recoveredBlock4Block39Block58Value10).
    recoveredBlock4Block39Block58Value12 := recoveredBlock4Block39Block58Arg1.
    recoveredBlock4Block39Block58Value13 := (recoveredBlock4Block39Block58Value12) key.
    recoveredBlock4Block39Block58Value14 := (recoveredBlock4Block39Block58Value13) dumpSize.
    recoveredBlock4Block39Block58Value15 := (recoveredBlock4Block39Block58Value11) + (recoveredBlock4Block39Block58Value14).
    recoveredBlock4Block39Block58Value16 := recoveredBlock4Block39Block58Value15.
    recoveredBlock4Block39Local1 := recoveredBlock4Block39Block58Value16.
    recoveredBlock4Block39Block58Value15
].
    (recoveredBlock4Block39Value0) doWithIndex: (recoveredBlock4Block39Value1).
    recoveredBlock4Block39Value2 := recoveredLocal1.
    recoveredBlock4Block39Value3 := Array.
    recoveredBlock4Block39Value4 := recoveredBlock4Block39Local2.
    recoveredBlock4Block39Value5 := recoveredBlock4Block39Local1.
    recoveredBlock4Block39Value6 := (recoveredBlock4Block39Value3) with: (recoveredBlock4Block39Value4) with: (recoveredBlock4Block39Value5).
    recoveredBlock4Block39Value7 := (recoveredBlock4Block39Value2) at: ('StringVersEnum') put: (recoveredBlock4Block39Value6).
    recoveredBlock4Block39Value7
].
    (recoveredBlock4Value5) at: ('Strings') ifPresent: (recoveredBlock4Value6).
    recoveredBlock4Value7 := recoveredLocal1.
    recoveredBlock4Value8 := [:recoveredBlock4Block125Arg1 | 
    | recoveredBlock4Block125Local1 recoveredBlock4Block125Local2 recoveredBlock4Block125Local3 recoveredBlock4Block125Value0 recoveredBlock4Block125Value1 recoveredBlock4Block125Value2 recoveredBlock4Block125Value3 recoveredBlock4Block125Value4 recoveredBlock4Block125Value5 recoveredBlock4Block125Value6 recoveredBlock4Block125Value7 |
    recoveredBlock4Block125Local1 := 0.
    recoveredBlock4Block125Local2 := 0.
    recoveredBlock4Block125Local3 := 0.
    recoveredBlock4Block125Value0 := recoveredBlock4Block125Arg1.
    recoveredBlock4Block125Value1 := [:recoveredBlock4Block125Block148Arg1 :recoveredBlock4Block125Block148Arg2 | 
    | recoveredBlock4Block125Block148Value0 recoveredBlock4Block125Block148Value1 recoveredBlock4Block125Block148Value2 recoveredBlock4Block125Block148Value3 recoveredBlock4Block125Block148Value4 recoveredBlock4Block125Block148Value5 recoveredBlock4Block125Block148Value6 recoveredBlock4Block125Block148Value7 recoveredBlock4Block125Block148Value8 recoveredBlock4Block125Block148Value9 recoveredBlock4Block125Block148Value10 recoveredBlock4Block125Block148Value11 recoveredBlock4Block125Block148Value12 recoveredBlock4Block125Block148Value13 recoveredBlock4Block125Block148Value14 recoveredBlock4Block125Block148Value15 |
    recoveredBlock4Block125Block148Value0 := recoveredBlock4Block125Local3.
    recoveredBlock4Block125Block148Value1 := recoveredBlock4Block125Block148Arg1.
    recoveredBlock4Block125Block148Value2 := (recoveredBlock4Block125Block148Value1) dumpSize.
    recoveredBlock4Block125Block148Value3 := recoveredBlock4Block125Block148Arg2.
    recoveredBlock4Block125Block148Value4 := (recoveredBlock4Block125Block148Value2) * (recoveredBlock4Block125Block148Value3).
    recoveredBlock4Block125Block148Value5 := (recoveredBlock4Block125Block148Value0) + (recoveredBlock4Block125Block148Value4).
    recoveredBlock4Block125Local3 := recoveredBlock4Block125Block148Value5.
    recoveredBlock4Block125Block148Value6 := recoveredBlock4Block125Local1.
    recoveredBlock4Block125Block148Value7 := (recoveredBlock4Block125Block148Value6) + (1).
    recoveredBlock4Block125Local1 := recoveredBlock4Block125Block148Value7.
    recoveredBlock4Block125Block148Value8 := recoveredBlock4Block125Local2.
    recoveredBlock4Block125Block148Value9 := recoveredBlock4Block125Local1.
    recoveredBlock4Block125Block148Value10 := (recoveredBlock4Block125Block148Value9) dumpSize.
    recoveredBlock4Block125Block148Value11 := (recoveredBlock4Block125Block148Value8) + (recoveredBlock4Block125Block148Value10).
    recoveredBlock4Block125Block148Value12 := recoveredBlock4Block125Block148Arg1.
    recoveredBlock4Block125Block148Value13 := (recoveredBlock4Block125Block148Value12) dumpSize.
    recoveredBlock4Block125Block148Value14 := (recoveredBlock4Block125Block148Value11) + (recoveredBlock4Block125Block148Value13).
    recoveredBlock4Block125Block148Value15 := recoveredBlock4Block125Block148Value14.
    recoveredBlock4Block125Local2 := recoveredBlock4Block125Block148Value15.
    recoveredBlock4Block125Block148Value14
].
    (recoveredBlock4Block125Value0) keysAndValuesDo: (recoveredBlock4Block125Value1).
    recoveredBlock4Block125Value2 := recoveredLocal1.
    recoveredBlock4Block125Value3 := Array.
    recoveredBlock4Block125Value4 := recoveredBlock4Block125Local3.
    recoveredBlock4Block125Value5 := recoveredBlock4Block125Local2.
    recoveredBlock4Block125Value6 := (recoveredBlock4Block125Value3) with: (recoveredBlock4Block125Value4) with: (recoveredBlock4Block125Value5).
    recoveredBlock4Block125Value7 := (recoveredBlock4Block125Value2) at: ('F4VersEnum') put: (recoveredBlock4Block125Value6).
    recoveredBlock4Block125Value7
].
    (recoveredBlock4Value7) at: ('ASAP2F4ByteArray') ifPresent: (recoveredBlock4Value8).
    recoveredBlock4Value9 := recoveredLocal1.
    recoveredBlock4Value10 := [:recoveredBlock4Block218Arg1 | 
    | recoveredBlock4Block218Local1 recoveredBlock4Block218Local2 recoveredBlock4Block218Local3 recoveredBlock4Block218Value0 recoveredBlock4Block218Value1 recoveredBlock4Block218Value2 recoveredBlock4Block218Value3 recoveredBlock4Block218Value4 recoveredBlock4Block218Value5 recoveredBlock4Block218Value6 recoveredBlock4Block218Value7 |
    recoveredBlock4Block218Local1 := 0.
    recoveredBlock4Block218Local2 := 0.
    recoveredBlock4Block218Local3 := 0.
    recoveredBlock4Block218Value0 := recoveredBlock4Block218Arg1.
    recoveredBlock4Block218Value1 := [:recoveredBlock4Block218Block240Arg1 :recoveredBlock4Block218Block240Arg2 | 
    | recoveredBlock4Block218Block240Value0 recoveredBlock4Block218Block240Value1 recoveredBlock4Block218Block240Value2 recoveredBlock4Block218Block240Value3 recoveredBlock4Block218Block240Value4 recoveredBlock4Block218Block240Value5 recoveredBlock4Block218Block240Value6 recoveredBlock4Block218Block240Value7 recoveredBlock4Block218Block240Value8 recoveredBlock4Block218Block240Value9 recoveredBlock4Block218Block240Value10 recoveredBlock4Block218Block240Value11 recoveredBlock4Block218Block240Value12 recoveredBlock4Block218Block240Value13 recoveredBlock4Block218Block240Value14 recoveredBlock4Block218Block240Value15 |
    recoveredBlock4Block218Block240Value0 := recoveredBlock4Block218Local3.
    recoveredBlock4Block218Block240Value1 := recoveredBlock4Block218Block240Arg1.
    recoveredBlock4Block218Block240Value2 := (recoveredBlock4Block218Block240Value1) dumpSize.
    recoveredBlock4Block218Block240Value3 := recoveredBlock4Block218Block240Arg2.
    recoveredBlock4Block218Block240Value4 := (recoveredBlock4Block218Block240Value2) * (recoveredBlock4Block218Block240Value3).
    recoveredBlock4Block218Block240Value5 := (recoveredBlock4Block218Block240Value0) + (recoveredBlock4Block218Block240Value4).
    recoveredBlock4Block218Local3 := recoveredBlock4Block218Block240Value5.
    recoveredBlock4Block218Block240Value6 := recoveredBlock4Block218Local1.
    recoveredBlock4Block218Block240Value7 := (recoveredBlock4Block218Block240Value6) + (1).
    recoveredBlock4Block218Local1 := recoveredBlock4Block218Block240Value7.
    recoveredBlock4Block218Block240Value8 := recoveredBlock4Block218Local2.
    recoveredBlock4Block218Block240Value9 := recoveredBlock4Block218Local1.
    recoveredBlock4Block218Block240Value10 := (recoveredBlock4Block218Block240Value9) dumpSize.
    recoveredBlock4Block218Block240Value11 := (recoveredBlock4Block218Block240Value8) + (recoveredBlock4Block218Block240Value10).
    recoveredBlock4Block218Block240Value12 := recoveredBlock4Block218Block240Arg1.
    recoveredBlock4Block218Block240Value13 := (recoveredBlock4Block218Block240Value12) dumpSize.
    recoveredBlock4Block218Block240Value14 := (recoveredBlock4Block218Block240Value11) + (recoveredBlock4Block218Block240Value13).
    recoveredBlock4Block218Block240Value15 := recoveredBlock4Block218Block240Value14.
    recoveredBlock4Block218Local2 := recoveredBlock4Block218Block240Value15.
    recoveredBlock4Block218Block240Value14
].
    (recoveredBlock4Block218Value0) keysAndValuesDo: (recoveredBlock4Block218Value1).
    recoveredBlock4Block218Value2 := recoveredLocal1.
    recoveredBlock4Block218Value3 := Array.
    recoveredBlock4Block218Value4 := recoveredBlock4Block218Local3.
    recoveredBlock4Block218Value5 := recoveredBlock4Block218Local2.
    recoveredBlock4Block218Value6 := (recoveredBlock4Block218Value3) with: (recoveredBlock4Block218Value4) with: (recoveredBlock4Block218Value5).
    recoveredBlock4Block218Value7 := (recoveredBlock4Block218Value2) at: ('F8VersEnum') put: (recoveredBlock4Block218Value6).
    recoveredBlock4Block218Value7
].
    (recoveredBlock4Value9) at: ('ASAP2F8ByteArray') ifPresent: (recoveredBlock4Value10).
    recoveredBlock4Value11 := recoveredLocal1.
    (recoveredBlock4Value11) inspect.
    recoveredBlock4Value12 := recoveredLocal3.
    (self) flat: (recoveredBlock4Value12).
    (self) selectObjectsFrom.
    recoveredBlock4Value13 := recoveredLocal1.
    recoveredBlock4Value13
].
    recoveredValue1 := [
    | recoveredBlock323Value0 recoveredBlock323Value1 recoveredBlock323Value2 |
    recoveredBlock323Value0 := (self) dbObject.
    (recoveredBlock323Value0) removeFromCache.
    recoveredBlock323Value1 := DBLinDeLinError.
    recoveredBlock323Value2 := (recoveredBlock323Value1) create: ('countObjects failed').
    recoveredBlock323Value2
].
    recoveredValue2 := (self) exspectedStackSize.
    recoveredValue3 := (self) executeWithStackHandling: (recoveredValue0) error: (recoveredValue1) exspectedStackSize: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

