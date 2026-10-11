"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20024ce0; bytecode file offset 0x92209c"
!SGCgInitValue methodsFor: 'recovered'!
dependentFormulaPlaceHolder
    ^'X'
! !

"ASDBase.ic method 0x2002dd44; bytecode file offset 0x934580"
!SGCgInitValue methodsFor: 'recovered'!
xDistribution
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) xDistribution.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e9e4; bytecode file offset 0x934580"
!SGCgInitValue methodsFor: 'recovered'!
interpolation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) interpolation.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f294; bytecode file offset 0x934580"
!SGCgInitValue methodsFor: 'recovered'!
ileExtrapolationValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) ileExtrapolationValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f824; bytecode file offset 0x934580"
!SGCgInitValue methodsFor: 'recovered'!
yDistribution
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) yDistribution.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fcb4; bytecode file offset 0x934580"
!SGCgInitValue methodsFor: 'recovered'!
values
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) values.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036a84; bytecode file offset 0x934580"
!SGCgInitValue methodsFor: 'recovered'!
isMdlGroupTableInitValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) isMdlGroupTableInitValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200617a8; bytecode file offset 0x95e838"
!SGCgInitValue methodsFor: 'recovered'!
hasDependencies
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dependencies.
    recoveredValue1 := (recoveredValue0) includesKey: ('ASD_DEPENDENT_LIST_MAPPING').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200663ac; bytecode file offset 0x963428"
!SGCgInitValue methodsFor: 'recovered'!
plainValue
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006691c; bytecode file offset 0x963428"
!SGCgInitValue methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := value.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067bec; bytecode file offset 0x9646f8"
!SGCgInitValue methodsFor: 'recovered'!
dependencies
    | recoveredValue0 |
    recoveredValue0 := dependencies.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067f9c; bytecode file offset 0x965b90"
!SGCgInitValue methodsFor: 'recovered'!
formula
    | recoveredValue0 |
    recoveredValue0 := formula.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078bf4; bytecode file offset 0x9757c8"
!SGCgInitValue methodsFor: 'recovered'!
isCgInitValue
    ^true
! !

"ASDBase.ic method 0x2007e674; bytecode file offset 0x97c330"
!SGCgInitValue methodsFor: 'recovered'!
isNonLinearInitValue
    ^false
! !

"ASDBase.ic method 0x20085558; bytecode file offset 0x981e1c"
!SGCgInitValue methodsFor: 'recovered'!
formula: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) copy.
    formula := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2009508c; bytecode file offset 0x991c58"
!SGCgInitValue methodsFor: 'recovered'!
dependentFormulaPlaceHolder: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dependencyList.
    recoveredValue2 := (self) dependentFormulaPlaceHolder: (recoveredValue0) in: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aaf60; bytecode file offset 0x9a7960"
!SGCgInitValue methodsFor: 'recovered'!
updatedDependencyList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dependencies.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('ASD_UPDATED_DEPENDENT_LIST') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aafd8; bytecode file offset 0x9a7960"
!SGCgInitValue methodsFor: 'recovered'!
updatedFormula: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dependencies.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('ASD_UPDATED_FORMULA') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bbec8; bytecode file offset 0x9b8ddc"
!SGCgInitValue methodsFor: 'recovered'!
dependencyListMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dependencies.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('ASD_DEPENDENT_LIST_MAPPING') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc198; bytecode file offset 0x9b8ddc"
!SGCgInitValue methodsFor: 'recovered'!
dependencyList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dependencies.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('ASD_DEPENDENT_LIST') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be20c; bytecode file offset 0x9bb178"
!SGCgInitValue methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    value := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf5c8; bytecode file offset 0x9bc0b4"
!SGCgInitValue methodsFor: 'recovered'!
dependencies: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dependencies := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f9ddc; bytecode file offset 0x9f6778"
!SGCgInitValue methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    dependencies := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2012ccbc; bytecode file offset 0xa29840"
!SGCgInitValue methodsFor: 'recovered'!
updatedFormula
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependencies.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'ASD_UPDATED_FORMULA'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014f6b0; bytecode file offset 0xa4c0bc"
!SGCgInitValue methodsFor: 'recovered'!
dependencyListMapping
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependencies.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'ASD_DEPENDENT_LIST_MAPPING'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cd1c4Value0 block280cd1c4Value1 |
    block280cd1c4Value0 := LookupTable.
    block280cd1c4Value1 := (block280cd1c4Value0) new.
    block280cd1c4Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014f770; bytecode file offset 0xa4c0bc"
!SGCgInitValue methodsFor: 'recovered'!
dependencyList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependencies.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'ASD_DEPENDENT_LIST'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cd29cValue0 block280cd29cValue1 |
    block280cd29cValue0 := OrderedCollection.
    block280cd29cValue1 := (block280cd29cValue0) new.
    block280cd29cValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014f7b0; bytecode file offset 0xa4c0bc"
!SGCgInitValue methodsFor: 'recovered'!
updatedDependencyList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependencies.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'ASD_UPDATED_DEPENDENT_LIST'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cd2e4Value0 block280cd2e4Value1 |
    block280cd2e4Value0 := OrderedCollection.
    block280cd2e4Value1 := (block280cd2e4Value0) new.
    block280cd2e4Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a89c0; bytecode file offset 0xaa52a4"
!SGCgInitValue methodsFor: 'recovered'!
dependentFormulaPlaceHolder: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentFormulaPlaceHolder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

