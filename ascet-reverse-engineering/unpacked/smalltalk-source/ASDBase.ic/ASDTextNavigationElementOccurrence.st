"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200658f4; bytecode file offset 0x963428"
!ASDTextNavigationElementOccurrence methodsFor: 'recovered'!
element
    | recoveredValue0 |
    recoveredValue0 := element.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200671ec; bytecode file offset 0x9646f8"
!ASDTextNavigationElementOccurrence methodsFor: 'recovered'!
selection
    | recoveredValue0 |
    recoveredValue0 := selection.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200687d4; bytecode file offset 0x965b90"
!ASDTextNavigationElementOccurrence methodsFor: 'recovered'!
line
    | recoveredValue0 |
    recoveredValue0 := line.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069728; bytecode file offset 0x966bdc"
!ASDTextNavigationElementOccurrence methodsFor: 'recovered'!
column
    | recoveredValue0 |
    recoveredValue0 := column.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007660c; bytecode file offset 0x9757c8"
!ASDTextNavigationElementOccurrence methodsFor: 'recovered'!
isTextNavigationElementOccurrence
    ^true
! !

"ASDBase.ic method 0x200be2ec; bytecode file offset 0x9bb178"
!ASDTextNavigationElementOccurrence methodsFor: 'recovered'!
element: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    element := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf700; bytecode file offset 0x9bc0b4"
!ASDTextNavigationElementOccurrence methodsFor: 'recovered'!
selection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selection := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfe3c; bytecode file offset 0x9bd228"
!ASDTextNavigationElementOccurrence methodsFor: 'recovered'!
line: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    line := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c10c0; bytecode file offset 0x9bdf14"
!ASDTextNavigationElementOccurrence methodsFor: 'recovered'!
column: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    column := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2013c96c; bytecode file offset 0xa39238"
!ASDTextNavigationElementOccurrence methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) line.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := ('Line: ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' / Column: ').
    recoveredValue4 := (self) column.
    recoveredValue5 := (recoveredValue4) asString.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    ^recoveredValue6
! !

