"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200179c0; bytecode file offset 0x92209c"
!EtasToolAPISetting methodsFor: 'recovered'!
codeGenerationOptions
    ^'Code'
! !

"ASDBase.ic method 0x200294a4; bytecode file offset 0x934580"
!EtasToolAPISetting methodsFor: 'recovered'!
codeGenLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGenerator.
    recoveredValue1 := (recoveredValue0) codeGenLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036394; bytecode file offset 0x934580"
!EtasToolAPISetting methodsFor: 'recovered'!
codeGenPathName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeGenerator.
    recoveredValue1 := (recoveredValue0) codeGenPathName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004998c; bytecode file offset 0x947128"
!EtasToolAPISetting methodsFor: 'recovered'!
get
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getMethod.
    recoveredValue1 := (self) perform: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20051e5c; bytecode file offset 0x94f0e0"
!EtasToolAPISetting methodsFor: 'recovered'!
codeGenPathsReduced
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) codeGenerator.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) codeGenPathsReduced.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051fec; bytecode file offset 0x94f0e0"
!EtasToolAPISetting methodsFor: 'recovered'!
fixedPointCodeGenerationOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) codeGenerator.
    recoveredValue1 := (recoveredValue0) iaSettingsCreateIfAbsent.
    recoveredValue2 := (recoveredValue1) fixedPointCodeGenerationOptions.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005217c; bytecode file offset 0x94f0e0"
!EtasToolAPISetting methodsFor: 'recovered'!
maximumBitLengthLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) codeGenerator.
    recoveredValue1 := (recoveredValue0) iaSettingsCreateIfAbsent.
    recoveredValue2 := (recoveredValue1) maximumBitLengthLabel.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058678; bytecode file offset 0x956284"
!EtasToolAPISetting methodsFor: 'recovered'!
setCodeGenPath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) codeGenerator.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) setCodeGenPath: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006535c; bytecode file offset 0x961e78"
!EtasToolAPISetting methodsFor: 'recovered'!
representableBits
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) codeGenerator.
    recoveredValue1 := (recoveredValue0) iaSettingsCreateIfAbsent.
    recoveredValue2 := (recoveredValue1) representableBits.
    recoveredValue3 := (recoveredValue2) printString.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200658bc; bytecode file offset 0x963428"
!EtasToolAPISetting methodsFor: 'recovered'!
category
    | recoveredValue0 |
    recoveredValue0 := category.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067a14; bytecode file offset 0x9646f8"
!EtasToolAPISetting methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006804c; bytecode file offset 0x965b90"
!EtasToolAPISetting methodsFor: 'recovered'!
availableValues
    | recoveredValue0 |
    recoveredValue0 := availableValues.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a100; bytecode file offset 0x966bdc"
!EtasToolAPISetting methodsFor: 'recovered'!
setMethod
    | recoveredValue0 |
    recoveredValue0 := setMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a3ec; bytecode file offset 0x967a18"
!EtasToolAPISetting methodsFor: 'recovered'!
getMethod
    | recoveredValue0 |
    recoveredValue0 := getMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b340; bytecode file offset 0x96873c"
!EtasToolAPISetting methodsFor: 'recovered'!
codeGenerator
    | recoveredValue0 |
    recoveredValue0 := codeGenerator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200939e0; bytecode file offset 0x9904ac"
!EtasToolAPISetting methodsFor: 'recovered'!
set: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) setMethod.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) perform: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bd8fc; bytecode file offset 0x9ba1c0"
!EtasToolAPISetting methodsFor: 'recovered'!
representableBits: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) codeGenerator.
    recoveredValue1 := (recoveredValue0) iaSettingsCreateIfAbsent.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asInteger.
    (recoveredValue1) representableBits: (recoveredValue3).
    ^true
! !

"ASDBase.ic method 0x200be7c4; bytecode file offset 0x9bb178"
!EtasToolAPISetting methodsFor: 'recovered'!
category: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    category := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf628; bytecode file offset 0x9bc0b4"
!EtasToolAPISetting methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c085c; bytecode file offset 0x9bd228"
!EtasToolAPISetting methodsFor: 'recovered'!
availableValues: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    availableValues := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c09a0; bytecode file offset 0x9bdf14"
!EtasToolAPISetting methodsFor: 'recovered'!
setMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    setMethod := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c19bc; bytecode file offset 0x9beac8"
!EtasToolAPISetting methodsFor: 'recovered'!
getMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    getMethod := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2698; bytecode file offset 0x9bf474"
!EtasToolAPISetting methodsFor: 'recovered'!
codeGenerator: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codeGenerator := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f1e34; bytecode file offset 0x9ee6fc"
!EtasToolAPISetting methodsFor: 'recovered'!
codeGenPaths
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Shikhar') = ('APITestSuite').
    recoveredValue1 := (self) codeGenerator.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue2) codeGenPaths.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2014025c; bytecode file offset 0xa3cb28"
!EtasToolAPISetting methodsFor: 'recovered'!
availableMaximumBitLengths
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeGenerator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) iaSettingsCreateIfAbsent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) repBitsValues.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block280cbfe8Arg1 | 
    | block280cbfe8Value0 block280cbfe8Value1 |
    block280cbfe8Value0 := block280cbfe8Arg1.
    block280cbfe8Value1 := (block280cbfe8Value0) printString.
    block280cbfe8Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20217244; bytecode file offset 0xb13b20"
!EtasToolAPISetting methodsFor: 'recovered'!
initMaximumBitLength
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fixedPointCodeGenerationOptions.
    (self) category: (recoveredValue0).
    recoveredValue1 := (self) maximumBitLengthLabel.
    (self) name: (recoveredValue1).
    recoveredValue2 := (self) availableMaximumBitLengths.
    (self) availableValues: (recoveredValue2).
    (self) getMethod: ('representableBits').
    (self) setMethod: ('representableBits:').
    ^self
! !

"ASDBase.ic method 0x20269e70; bytecode file offset 0xb66754"
!EtasToolAPISetting methodsFor: 'recovered'!
initCodeGenerationPath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Shikhar') = ('APITestSuite').
    recoveredValue1 := (self) codeGenerationOptions.
    (self) category: (recoveredValue1).
    recoveredValue2 := (self) codeGenLabel.
    (self) name: (recoveredValue2).
    recoveredValue3 := (self) codeGenPaths.
    (self) availableValues: (recoveredValue3).
    (self) getMethod: ('codeGenPathName').
    (self) setMethod: ('setCodeGenPath:').
    ^self
! !

