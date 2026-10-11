"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b860; bytecode file offset 0x92209c"
!AbtOleObjectWrapper class methodsFor: 'recovered'!
IS_automationObject
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (OleAutomationObject); getSelector: ('automationObject'); setSelector: ('automationObject:'); changeSymbol: ('automationObject'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002d2f4; bytecode file offset 0x934580"
!AbtOleObjectWrapper class methodsFor: 'recovered'!
createObjectWithEvents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) createObjectWithEvents.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034574; bytecode file offset 0x934580"
!AbtOleObjectWrapper class methodsFor: 'recovered'!
createObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) createObject.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20073fe8; bytecode file offset 0x970b34"
!AbtOleObjectWrapper class methodsFor: 'recovered'!
clientName
    ^nil
! !

"ASDBase.ic method 0x20091358; bytecode file offset 0x98de70"
!AbtOleObjectWrapper class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20096ef0; bytecode file offset 0x9937fc"
!AbtOleObjectWrapper class methodsFor: 'recovered'!
createWithAutomationObject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) automationObject: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e0c40; bytecode file offset 0x9dd578"
!AbtOleObjectWrapper class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) IS_automationObject.
    recoveredValue3 := (recoveredValue1) featureNamed: ('automationObject') put: (recoveredValue2).
    ^recoveredValue3
! !

