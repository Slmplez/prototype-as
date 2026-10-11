"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001c60; bytecode file offset 0x8ffcfc"
!Magnitude methodsFor: 'recovered'!
asExcludingInterval
    ^self
! !

"ASDBase.ic method 0x20002ad8; bytecode file offset 0x8ffcfc"
!Magnitude methodsFor: 'recovered'!
max
    ^self
! !

"ASDBase.ic method 0x200030f0; bytecode file offset 0x8ffcfc"
!Magnitude methodsFor: 'recovered'!
makeConsistent
    ^self
! !

"ASDBase.ic method 0x20003158; bytecode file offset 0x8ffcfc"
!Magnitude methodsFor: 'recovered'!
asCompuMethodCoeff
    ^self
! !

"ASDBase.ic method 0x20003438; bytecode file offset 0x8ffcfc"
!Magnitude methodsFor: 'recovered'!
min
    ^self
! !

"ASDBase.ic method 0x20003518; bytecode file offset 0x90206c"
!Magnitude methodsFor: 'recovered'!
sgOldDataConfigForElement: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200075d4; bytecode file offset 0x908be4"
!Magnitude methodsFor: 'recovered'!
abtAsBase10Integer
    | recoveredValue0 |
    recoveredValue0 := (self) abtAsInteger.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008c90; bytecode file offset 0x908be4"
!Magnitude methodsFor: 'recovered'!
visualCallBackString
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009e90; bytecode file offset 0x908be4"
!Magnitude methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) printString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20035f84; bytecode file offset 0x934580"
!Magnitude methodsFor: 'recovered'!
asCComment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) printString.
    recoveredValue1 := (recoveredValue0) asCComment.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038414; bytecode file offset 0x934d00"
!Magnitude methodsFor: 'recovered'!
compareDouble: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) = (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003af64; bytecode file offset 0x938608"
!Magnitude methodsFor: 'recovered'!
xmlEquals: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) xmlGenericCompare: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bc3c; bytecode file offset 0x938608"
!Magnitude methodsFor: 'recovered'!
dbXmlDeepCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlGenericDeepCopy: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055050; bytecode file offset 0x952a9c"
!Magnitude methodsFor: 'recovered'!
transformedBy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) appliedToNumber: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055944; bytecode file offset 0x952a9c"
!Magnitude methodsFor: 'recovered'!
transformedByInverse: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) appliedInverseToNumber: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200602c8; bytecode file offset 0x95cbb4"
!Magnitude methodsFor: 'recovered'!
xmlDefaultValue
    (self) etasDevHalt.
    ^'0'
! !

"ASDBase.ic method 0x200749dc; bytecode file offset 0x9757c8"
!Magnitude methodsFor: 'recovered'!
isTypeCDATA_SECTION
    ^true
! !

"ASDBase.ic method 0x2007a4bc; bytecode file offset 0x97c330"
!Magnitude methodsFor: 'recovered'!
isInfinite
    ^false
! !

"ASDBase.ic method 0x2007f254; bytecode file offset 0x97c330"
!Magnitude methodsFor: 'recovered'!
isASDPrimitiveConfigObject
    ^false
! !

"ASDBase.ic method 0x20086908; bytecode file offset 0x983274"
!Magnitude methodsFor: 'recovered'!
abtXmlPrintOn: recoveredArg1 context: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printOn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2009ba80; bytecode file offset 0x99833c"
!Magnitude methodsFor: 'recovered'!
asInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) left: (self) right: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2010541c; bytecode file offset 0xa01ce0"
!Magnitude methodsFor: 'recovered'!
asTempInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) left: (self).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) right: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20121fb0; bytecode file offset 0xa1e864"
!Magnitude methodsFor: 'recovered'!
abtBetweenInOrder: recoveredArg1 and: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) <= (recoveredStack3).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201269b0; bytecode file offset 0xa232bc"
!Magnitude methodsFor: 'recovered'!
asASDPrimitiveDataObjectElement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) sgClass.
    recoveredValue2 := (recoveredValue1) createDataElement.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) setPhysValue: (self).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) sgClass.
    recoveredValue7 := (recoveredValue4) asASDPrimitiveDataObjectModelType: (recoveredValue6).
    ^recoveredValue7
! !

