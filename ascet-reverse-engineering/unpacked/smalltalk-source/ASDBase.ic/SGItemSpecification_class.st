"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a460; bytecode file offset 0x908be4"
!SGItemSpecification class methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) printString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018f68; bytecode file offset 0x92209c"
!SGItemSpecification class methodsFor: 'recovered'!
type
    ^''
! !

"ASDBase.ic method 0x2001c4d8; bytecode file offset 0x92209c"
!SGItemSpecification class methodsFor: 'recovered'!
apiDiagramTypes
    ^#()
! !

"ASDBase.ic method 0x2002339c; bytecode file offset 0x92209c"
!SGItemSpecification class methodsFor: 'recovered'!
specificationTypeLabel
    ^'<unknown>'
! !

"ASDBase.ic method 0x20054908; bytecode file offset 0x9511bc"
!SGItemSpecification class methodsFor: 'recovered'!
compatibleWithSpecificationType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) = (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005b94c; bytecode file offset 0x958548"
!SGItemSpecification class methodsFor: 'recovered'!
xmlAllowedSubSpecifications
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20102278; bytecode file offset 0x9feb38"
!SGItemSpecification class methodsFor: 'recovered'!
createCT: recoveredArg1 module: recoveredArg2 forClass: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue1) initCT: (recoveredValue2) module: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) owner: (recoveredValue5).
    ^recoveredValue0
! !

