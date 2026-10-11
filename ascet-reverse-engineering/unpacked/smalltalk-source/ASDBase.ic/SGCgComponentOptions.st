"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009d28; bytecode file offset 0x908be4"
!SGCgComponentOptions methodsFor: 'recovered'!
getCodeGenOptions
    | recoveredValue0 |
    recoveredValue0 := (self) codeGenOptions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001fb2c; bytecode file offset 0x92209c"
!SGCgComponentOptions methodsFor: 'recovered'!
sectionLabel
    ^'Project Options "Build"/"Code"'
! !

"ASDBase.ic method 0x20067464; bytecode file offset 0x9646f8"
!SGCgComponentOptions methodsFor: 'recovered'!
codeGenOptions
    | recoveredValue0 |
    recoveredValue0 := codeGenOptions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20097dd4; bytecode file offset 0x995850"
!SGCgComponentOptions methodsFor: 'recovered'!
addCodeGenOption: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGenOptions.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bf188; bytecode file offset 0x9bc0b4"
!SGCgComponentOptions methodsFor: 'recovered'!
codeGenOptions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codeGenOptions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f9e24; bytecode file offset 0x9f6778"
!SGCgComponentOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    codeGenOptions := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2012e82c; bytecode file offset 0xa2b0f0"
!SGCgComponentOptions methodsFor: 'recovered'!
createSortedGroupLabels
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupedCodeGenOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280cac38Arg1 :block280cac38Arg2 | 
    | block280cac38Value0 block280cac38Value1 block280cac38Value2 |
    block280cac38Value0 := block280cac38Arg1.
    block280cac38Value1 := block280cac38Arg2.
    block280cac38Value2 := (block280cac38Value0) < (block280cac38Value1).
    block280cac38Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20146550; bytecode file offset 0xa42f4c"
!SGCgComponentOptions methodsFor: 'recovered'!
codeGenOptionsGroup: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupedCodeGenOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280cc588Value0 block280cc588Value1 |
    block280cc588Value0 := OrderedCollection.
    block280cc588Value1 := (block280cc588Value0) new.
    block280cc588Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20154c64; bytecode file offset 0xa51528"
!SGCgComponentOptions methodsFor: 'recovered'!
sortedCodeGenOptionsGroup: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) codeGenOptionsGroup: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280cd7f4Arg1 :block280cd7f4Arg2 | 
    | block280cd7f4Value0 block280cd7f4Value1 block280cd7f4Value2 block280cd7f4Value3 block280cd7f4Value4 |
    block280cd7f4Value0 := block280cd7f4Arg1.
    block280cd7f4Value1 := (block280cd7f4Value0) label.
    block280cd7f4Value2 := block280cd7f4Arg2.
    block280cd7f4Value3 := (block280cd7f4Value2) label.
    block280cd7f4Value4 := (block280cd7f4Value1) < (block280cd7f4Value3).
    block280cd7f4Value4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016f45c; bytecode file offset 0xa6bd18"
!SGCgComponentOptions methodsFor: 'recovered'!
groupedCodeGenOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := groupedCodeGenOptions.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) createGroupedCodeGenOptions.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    groupedCodeGenOptions := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := groupedCodeGenOptions.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2016f588; bytecode file offset 0xa6be44"
!SGCgComponentOptions methodsFor: 'recovered'!
sortedGroupLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := sortedGroupLabels.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) createSortedGroupLabels.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    sortedGroupLabels := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := sortedGroupLabels.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2029b2a8; bytecode file offset 0xb97b80"
!SGCgComponentOptions methodsFor: 'recovered'!
createGroupedCodeGenOptions
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) codeGenOptions.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) group.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack3 := [
    | block280e36f4Value0 block280e36f4Value1 |
    block280e36f4Value0 := OrderedCollection.
    block280e36f4Value1 := (block280e36f4Value0) new.
    block280e36f4Value1
].
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) ifAbsentPut: (recoveredBlock11Stack3).
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

