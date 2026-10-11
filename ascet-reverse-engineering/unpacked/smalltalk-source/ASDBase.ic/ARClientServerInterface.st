"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000cc6c; bytecode file offset 0x909658"
!ARClientServerInterface methodsFor: 'recovered'!
allowedToAddComponent: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x20018c98; bytecode file offset 0x92209c"
!ARClientServerInterface methodsFor: 'recovered'!
getComponentType
    ^'AUTOSAR_ClientServerInterface'
! !

"ASDBase.ic method 0x2001a564; bytecode file offset 0x92209c"
!ARClientServerInterface methodsFor: 'recovered'!
itemTypeLabel
    ^'ClientServer Interface'
! !

"ASDBase.ic method 0x2001dab0; bytecode file offset 0x92209c"
!ARClientServerInterface methodsFor: 'recovered'!
sourceModel
    ^'clientserverinterface'
! !

"ASDBase.ic method 0x20023438; bytecode file offset 0x92209c"
!ARClientServerInterface methodsFor: 'recovered'!
iconName
    ^'ComponentsCSInterface'
! !

"ASDBase.ic method 0x200242d8; bytecode file offset 0x92209c"
!ARClientServerInterface methodsFor: 'recovered'!
editorIconName
    ^'ComponentsCSInterface'
! !

"ASDBase.ic method 0x20031ef4; bytecode file offset 0x934580"
!ARClientServerInterface methodsFor: 'recovered'!
typeLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultItemLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003db58; bytecode file offset 0x93bf94"
!ARClientServerInterface methodsFor: 'recovered'!
defaultReturnType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGRTEStandardReturnType.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e128; bytecode file offset 0x93bf94"
!ARClientServerInterface methodsFor: 'recovered'!
filterListForInsertComponent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20078b84; bytecode file offset 0x9757c8"
!ARClientServerInterface methodsFor: 'recovered'!
isClientServerInterface
    ^true
! !

"ASDBase.ic method 0x2007a804; bytecode file offset 0x97c330"
!ARClientServerInterface methodsFor: 'recovered'!
getSetAvailable
    ^false
! !

"ASDBase.ic method 0x20104518; bytecode file offset 0xa00de4"
!ARClientServerInterface methodsFor: 'recovered'!
allowedReturnTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := SGMethodDeclaration.
    recoveredValue2 := (recoveredValue1) enumTypeString.
    recoveredValue3 := SGRTEStandardReturnType.
    recoveredValue4 := (recoveredValue3) createDefault.
    recoveredValue5 := (recoveredValue0) with: (recoveredValue2) with: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201385d4; bytecode file offset 0xa34e9c"
!ARClientServerInterface methodsFor: 'recovered'!
createDefaultMethodNamed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createDefaultMethodNamed: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := SGRTEStandardReturnType.
    recoveredValue4 := (recoveredValue3) createDefault.
    (recoveredValue2) createReturnTemplate: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

