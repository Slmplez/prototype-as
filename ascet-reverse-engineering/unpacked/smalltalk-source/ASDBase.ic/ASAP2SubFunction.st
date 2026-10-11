"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001e58; bytecode file offset 0x8ffcfc"
!ASAP2SubFunction methodsFor: 'recovered'!
sgClass
    ^self
! !

"ASDBase.ic method 0x20003810; bytecode file offset 0x90206c"
!ASAP2SubFunction methodsFor: 'recovered'!
isSubFunction: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200038e0; bytecode file offset 0x90206c"
!ASAP2SubFunction methodsFor: 'recovered'!
sgClassIfUndefined: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20019fa0; bytecode file offset 0x92209c"
!ASAP2SubFunction methodsFor: 'recovered'!
visualCallBackImageElement
    ^'ElementsTypeVariableLocal'
! !

"ASDBase.ic method 0x2001f49c; bytecode file offset 0x92209c"
!ASAP2SubFunction methodsFor: 'recovered'!
iconString
    ^'ET16_PROJECTDEFINITION'
! !

"ASDBase.ic method 0x2002066c; bytecode file offset 0x92209c"
!ASAP2SubFunction methodsFor: 'recovered'!
iconName
    ^'ET16_PROJECTDEFINITION'
! !

"ASDBase.ic method 0x20021ef0; bytecode file offset 0x92209c"
!ASAP2SubFunction methodsFor: 'recovered'!
getFunctionSetMethod
    ^'subFunction:'
! !

"ASDBase.ic method 0x2007952c; bytecode file offset 0x97c330"
!ASAP2SubFunction methodsFor: 'recovered'!
isPrimitive
    ^false
! !

"ASDBase.ic method 0x20127b1c; bytecode file offset 0xa243dc"
!ASAP2SubFunction methodsFor: 'recovered'!
getAllLabelsForProjectNode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) list.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20207c60; bytecode file offset 0xb04528"
!ASAP2SubFunction methodsFor: 'recovered'!
getAllLabelProxiesForProjectNode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getAllLabelsForProjectNode: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) labelList.
    recoveredValue4 := (recoveredValue3) values.
    recoveredValue5 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (recoveredBlock16Value0) includes: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
    recoveredValue6 := (recoveredValue4) select: (recoveredValue5).
    ^recoveredValue6
! !

