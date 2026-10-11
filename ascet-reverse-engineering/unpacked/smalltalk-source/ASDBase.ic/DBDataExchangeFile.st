"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200014e0; bytecode file offset 0x8ffcfc"
!DBDataExchangeFile methodsFor: 'recovered'!
commitApplicationHistroy
    ^self
! !

"ASDBase.ic method 0x20004520; bytecode file offset 0x90206c"
!DBDataExchangeFile methodsFor: 'recovered'!
notMatchedParameters: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20033fe4; bytecode file offset 0x934580"
!DBDataExchangeFile methodsFor: 'recovered'!
getFillByteInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fileType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20068a64; bytecode file offset 0x965b90"
!DBDataExchangeFile methodsFor: 'recovered'!
hexFileName
    | recoveredValue0 |
    recoveredValue0 := path.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200794c4; bytecode file offset 0x97c330"
!DBDataExchangeFile methodsFor: 'recovered'!
hasPaco
    ^false
! !

"ASDBase.ic method 0x20125100; bytecode file offset 0xa219c4"
!DBDataExchangeFile methodsFor: 'recovered'!
createFromContents
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) parse.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := ASAP2NameSpaces.
    recoveredValue2 := (recoveredValue1) create.
    labelList := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) addToLabelDict: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x204db9ac; bytecode file offset 0xdd82a4"
!DBDataExchangeFile methodsFor: 'recovered'!
addToLabelDict: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 | 
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11Stack5 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := labelList.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) keyWordDE.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack3 := [
    | block2810798cValue0 block2810798cValue1 |
    block2810798cValue0 := AbtHighCapacityLookupTable.
    block2810798cValue1 := (block2810798cValue0) new.
    block2810798cValue1
].
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) ifAbsentPut: (recoveredBlock11Stack3).
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) shortName.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack3 := [
    | recoveredBlock11Block41Value0 |
    recoveredBlock11Block41Value0 := recoveredBlock11Arg1.
    recoveredBlock11Block41Value0
].
            recoveredBlock11PC := 52.
        ].
        recoveredBlock11Step = 52 ifTrue: [
            recoveredBlock11Stack4 := [:block281079b0Arg1 | 
    nil
].
            recoveredBlock11PC := 54.
        ].
        recoveredBlock11Step = 54 ifTrue: [
            recoveredBlock11PC := 60.
        ].
        recoveredBlock11Step = 60 ifTrue: [
            (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) ifAbsentPut: (recoveredBlock11Stack3) ifPresent: (recoveredBlock11Stack4).
            recoveredBlock11PC := 63.
        ].
        recoveredBlock11Step = 63 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 64.
        ].
        recoveredBlock11Step = 64 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 67.
        ].
        recoveredBlock11Step = 67 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isGroupingElement.
            recoveredBlock11PC := 69.
        ].
        recoveredBlock11Step = 69 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 72] ifFalse: [recoveredBlock11PC := 156].
        ].
        recoveredBlock11Step = 72 ifTrue: [
            recoveredBlock11PC := 73.
        ].
        recoveredBlock11Step = 73 ifTrue: [
            recoveredBlock11Stack1 := Set.
            recoveredBlock11PC := 75.
        ].
        recoveredBlock11Step = 75 ifTrue: [
            recoveredBlock11Stack2 := 128.
            recoveredBlock11PC := 78.
        ].
        recoveredBlock11Step = 78 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) new: (recoveredBlock11Stack2).
            recoveredBlock11PC := 80.
        ].
        recoveredBlock11Step = 80 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 83.
        ].
        recoveredBlock11Step = 83 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 84.
        ].
        recoveredBlock11Step = 84 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) controller.
            recoveredBlock11PC := 86.
        ].
        recoveredBlock11Step = 86 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 89.
        ].
        recoveredBlock11Step = 89 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Local1.
            recoveredBlock11PC := 92.
        ].
        recoveredBlock11Step = 92 ifTrue: [
            (recoveredBlock11Stack1) addAllSubFunctionsOf: (recoveredBlock11Stack2) to: (recoveredBlock11Stack3).
            recoveredBlock11PC := 94.
        ].
        recoveredBlock11Step = 94 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 97.
        ].
        recoveredBlock11Step = 97 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block97Arg1 | 
    | recoveredBlock11Block97Stack0 recoveredBlock11Block97Stack1 recoveredBlock11Block97Stack2 recoveredBlock11Block97Stack3 recoveredBlock11Block97Stack4 recoveredBlock11Block97Stack5 recoveredBlock11Block97PC recoveredBlock11Block97Step recoveredBlock11Block97Done recoveredBlock11Block97Result |
    recoveredBlock11Block97Stack0 := self.
    recoveredBlock11Block97PC := 104.
    recoveredBlock11Block97Done := false.
    [recoveredBlock11Block97Done not] whileTrue: [
        recoveredBlock11Block97Step := recoveredBlock11Block97PC.
        recoveredBlock11Block97Step = 104 ifTrue: [
            recoveredBlock11Block97Stack1 := labelList.
            recoveredBlock11Block97PC := 106.
        ].
        recoveredBlock11Block97Step = 106 ifTrue: [
            recoveredBlock11Block97Stack2 := recoveredBlock11Block97Arg1.
            recoveredBlock11Block97PC := 109.
        ].
        recoveredBlock11Block97Step = 109 ifTrue: [
            recoveredBlock11Block97Stack2 := (recoveredBlock11Block97Stack2) keyWordDE.
            recoveredBlock11Block97PC := 110.
        ].
        recoveredBlock11Block97Step = 110 ifTrue: [
            recoveredBlock11Block97Stack3 := [
    | block281079d4Value0 block281079d4Value1 |
    block281079d4Value0 := AbtHighCapacityLookupTable.
    block281079d4Value1 := (block281079d4Value0) new.
    block281079d4Value1
].
            recoveredBlock11Block97PC := 112.
        ].
        recoveredBlock11Block97Step = 112 ifTrue: [
            recoveredBlock11Block97PC := 120.
        ].
        recoveredBlock11Block97Step = 120 ifTrue: [
            recoveredBlock11Block97Stack1 := (recoveredBlock11Block97Stack1) at: (recoveredBlock11Block97Stack2) ifAbsentPut: (recoveredBlock11Block97Stack3).
            recoveredBlock11Block97PC := 122.
        ].
        recoveredBlock11Block97Step = 122 ifTrue: [
            recoveredBlock11Block97Stack2 := recoveredBlock11Block97Arg1.
            recoveredBlock11Block97PC := 125.
        ].
        recoveredBlock11Block97Step = 125 ifTrue: [
            recoveredBlock11Block97Stack2 := (recoveredBlock11Block97Stack2) shortName.
            recoveredBlock11Block97PC := 127.
        ].
        recoveredBlock11Block97Step = 127 ifTrue: [
            recoveredBlock11Block97Stack3 := [
    | recoveredBlock11Block97Block127Value0 |
    recoveredBlock11Block97Block127Value0 := recoveredBlock11Block97Arg1.
    recoveredBlock11Block97Block127Value0
].
            recoveredBlock11Block97PC := 138.
        ].
        recoveredBlock11Block97Step = 138 ifTrue: [
            recoveredBlock11Block97Stack4 := [:block281079f8Arg1 | 
    nil
].
            recoveredBlock11Block97PC := 140.
        ].
        recoveredBlock11Block97Step = 140 ifTrue: [
            recoveredBlock11Block97PC := 146.
        ].
        recoveredBlock11Block97Step = 146 ifTrue: [
            recoveredBlock11Block97Stack1 := (recoveredBlock11Block97Stack1) at: (recoveredBlock11Block97Stack2) ifAbsentPut: (recoveredBlock11Block97Stack3) ifPresent: (recoveredBlock11Block97Stack4).
            recoveredBlock11Block97PC := 149.
        ].
        recoveredBlock11Block97Step = 149 ifTrue: [
            recoveredBlock11Block97Result := recoveredBlock11Block97Stack1.
            recoveredBlock11Block97Done := true.
        ].
    ].
    recoveredBlock11Block97Result
].
            recoveredBlock11PC := 150.
        ].
        recoveredBlock11Step = 150 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) do: (recoveredBlock11Stack2).
            recoveredBlock11PC := 152.
        ].
        recoveredBlock11Step = 152 ifTrue: [
            recoveredBlock11Stack2 := nil.
            recoveredBlock11PC := 153.
        ].
        recoveredBlock11Step = 153 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 156.
        ].
        recoveredBlock11Step = 156 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

