"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015878; bytecode file offset 0x92209c"
!ARSenderReceiverInterface methodsFor: 'recovered'!
sourceModel
    ^'senderreceiverinterface'
! !

"ASDBase.ic method 0x200188f0; bytecode file offset 0x92209c"
!ARSenderReceiverInterface methodsFor: 'recovered'!
editorIconName
    ^'ComponentsSRInterface'
! !

"ASDBase.ic method 0x2001af3c; bytecode file offset 0x92209c"
!ARSenderReceiverInterface methodsFor: 'recovered'!
itemTypeLabel
    ^'SenderReceiver Interface'
! !

"ASDBase.ic method 0x20021ecc; bytecode file offset 0x92209c"
!ARSenderReceiverInterface methodsFor: 'recovered'!
iconName
    ^'ComponentsSRInterface'
! !

"ASDBase.ic method 0x200258a0; bytecode file offset 0x923928"
!ARSenderReceiverInterface methodsFor: 'recovered'!
getComponentType
    ^'AUTOSAR_SenderReceiverInterface'
! !

"ASDBase.ic method 0x20035c04; bytecode file offset 0x934580"
!ARSenderReceiverInterface methodsFor: 'recovered'!
typeLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) defaultItemLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007527c; bytecode file offset 0x9757c8"
!ARSenderReceiverInterface methodsFor: 'recovered'!
isARDataInterface
    ^true
! !

"ASDBase.ic method 0x200761cc; bytecode file offset 0x9757c8"
!ARSenderReceiverInterface methodsFor: 'recovered'!
isSenderReceiverInterface
    ^true
! !

"ASDBase.ic method 0x2007a814; bytecode file offset 0x97c330"
!ARSenderReceiverInterface methodsFor: 'recovered'!
getSetAvailable
    ^false
! !

"ASDBase.ic method 0x2007ba5c; bytecode file offset 0x97c330"
!ARSenderReceiverInterface methodsFor: 'recovered'!
isReferenceTypeAPI
    ^false
! !

"ASDBase.ic method 0x200b5a50; bytecode file offset 0x9b2324"
!ARSenderReceiverInterface methodsFor: 'recovered'!
mdlClassTypeAttributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super mdlClassTypeAttributes.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cgOptSRInterfaceType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2010449c; bytecode file offset 0xa00d64"
!ARSenderReceiverInterface methodsFor: 'recovered'!
filterListForInsertComponent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := ASDLibraryInterface.
    recoveredValue2 := SGEnumerationDB.
    recoveredValue3 := ARModeGroupDB.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20174be8; bytecode file offset 0xa714f8"
!ARSenderReceiverInterface methodsFor: 'recovered'!
allowedToAddComponent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSGEnumeration.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) isARModeGroup.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRecord.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

