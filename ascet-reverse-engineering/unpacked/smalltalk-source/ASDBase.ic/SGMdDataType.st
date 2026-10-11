"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002a6b4; bytecode file offset 0x934580"
!SGMdDataType methodsFor: 'recovered'!
mdlLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interface.
    recoveredValue1 := (recoveredValue0) mdlLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fa54; bytecode file offset 0x934580"
!SGMdDataType methodsFor: 'recovered'!
mdlComponentNeedsIntegerCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interface.
    recoveredValue1 := (recoveredValue0) mdlComponentNeedsIntegerCode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030e24; bytecode file offset 0x934580"
!SGMdDataType methodsFor: 'recovered'!
mdlComponentNeedsIntegerType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interface.
    recoveredValue1 := (recoveredValue0) mdlComponentNeedsIntegerType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033484; bytecode file offset 0x934580"
!SGMdDataType methodsFor: 'recovered'!
genIleType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interface.
    recoveredValue1 := (recoveredValue0) genIleType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200364f4; bytecode file offset 0x934580"
!SGMdDataType methodsFor: 'recovered'!
mdlClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interface.
    recoveredValue1 := (recoveredValue0) mdlClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037324; bytecode file offset 0x934580"
!SGMdDataType methodsFor: 'recovered'!
mdlClassType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interface.
    recoveredValue1 := (recoveredValue0) mdlClassType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041ad8; bytecode file offset 0x93e414"
!SGMdDataType methodsFor: 'recovered'!
hasMethods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := children.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041b70; bytecode file offset 0x93e440"
!SGMdDataType methodsFor: 'recovered'!
allMethodsSorted
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := children.
    recoveredValue1 := (self) sortedMethods: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041b88; bytecode file offset 0x93e440"
!SGMdDataType methodsFor: 'recovered'!
sortedMethods
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := children.
    recoveredValue1 := (self) sortedMethods: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050b30; bytecode file offset 0x94d4ec"
!SGMdDataType methodsFor: 'recovered'!
generateModuleCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generatorFactory.
    recoveredValue1 := (recoveredValue0) generateModuleCode: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055d34; bytecode file offset 0x952a9c"
!SGMdDataType methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlDataType: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069dd0; bytecode file offset 0x966bdc"
!SGMdDataType methodsFor: 'recovered'!
interface
    | recoveredValue0 |
    recoveredValue0 := interface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b850; bytecode file offset 0x96873c"
!SGMdDataType methodsFor: 'recovered'!
importInterfaces
    | recoveredValue0 |
    recoveredValue0 := imports.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c4fc; bytecode file offset 0x9692b0"
!SGMdDataType methodsFor: 'recovered'!
cppInput
    | recoveredValue0 |
    recoveredValue0 := cppInput.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cfc8; bytecode file offset 0x969c04"
!SGMdDataType methodsFor: 'recovered'!
cppOutput
    | recoveredValue0 |
    recoveredValue0 := cppOutput.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075974; bytecode file offset 0x9757c8"
!SGMdDataType methodsFor: 'recovered'!
isMdlDataType
    ^true
! !

"ASDBase.ic method 0x2008ccbc; bytecode file offset 0x989578"
!SGMdDataType methodsFor: 'recovered'!
mdlName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlLabel.
    recoveredValue1 := (self) createNewNameKey: (nil) label: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20092d28; bytecode file offset 0x98f634"
!SGMdDataType methodsFor: 'recovered'!
addMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := children.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addLast: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c0a80; bytecode file offset 0x9bdf14"
!SGMdDataType methodsFor: 'recovered'!
interface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interface := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c32dc; bytecode file offset 0x9bfde0"
!SGMdDataType methodsFor: 'recovered'!
cppInput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cppInput := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3558; bytecode file offset 0x9c058c"
!SGMdDataType methodsFor: 'recovered'!
cppOutput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cppOutput := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20115e14; bytecode file offset 0xa126e8"
!SGMdDataType methodsFor: 'recovered'!
imports
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := imports.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c6e7cArg1 | 
    | block280c6e7cValue0 block280c6e7cValue1 |
    block280c6e7cValue0 := block280c6e7cArg1.
    block280c6e7cValue1 := (block280c6e7cValue0) mdlClassType.
    block280c6e7cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20151a54; bytecode file offset 0xa4e318"
!SGMdDataType methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    children := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    imports := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x204842c8; bytecode file offset 0xd80bb0"
!SGMdDataType methodsFor: 'recovered'!
sortedMethods: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:recoveredBlock31Arg1 :recoveredBlock31Arg2 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 39.
        ].
        recoveredBlock31Step = 39 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) isMdlHeader.
            recoveredBlock31PC := 40.
        ].
        recoveredBlock31Step = 40 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 44] ifFalse: [recoveredBlock31PC := 52].
        ].
        recoveredBlock31Step = 44 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal1.
            recoveredBlock31PC := 47.
        ].
        recoveredBlock31Step = 47 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg1.
            recoveredBlock31PC := 48.
        ].
        recoveredBlock31Step = 48 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) add: (recoveredBlock31Stack2).
            recoveredBlock31PC := 49.
        ].
        recoveredBlock31Step = 49 ifTrue: [
            recoveredBlock31PC := 77.
        ].
        recoveredBlock31Step = 52 ifTrue: [
            recoveredBlock31Stack1 := 'Rl'.
            recoveredBlock31PC := 54.
        ].
        recoveredBlock31Step = 54 ifTrue: [
            recoveredBlock31Stack2 := 'Call_80663'.
            recoveredBlock31PC := 56.
        ].
        recoveredBlock31Step = 56 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) == (recoveredBlock31Stack2).
            recoveredBlock31PC := 57.
        ].
        recoveredBlock31Step = 57 ifTrue: [
            recoveredBlock31PC := 58.
        ].
        recoveredBlock31Step = 58 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 59.
        ].
        recoveredBlock31Step = 59 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) isMdlPrivate.
            recoveredBlock31PC := 61.
        ].
        recoveredBlock31Step = 61 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 64] ifFalse: [recoveredBlock31PC := 72].
        ].
        recoveredBlock31Step = 64 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal3.
            recoveredBlock31PC := 67.
        ].
        recoveredBlock31Step = 67 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg1.
            recoveredBlock31PC := 68.
        ].
        recoveredBlock31Step = 68 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) add: (recoveredBlock31Stack2).
            recoveredBlock31PC := 69.
        ].
        recoveredBlock31Step = 69 ifTrue: [
            recoveredBlock31PC := 77.
        ].
        recoveredBlock31Step = 72 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal2.
            recoveredBlock31PC := 75.
        ].
        recoveredBlock31Step = 75 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg1.
            recoveredBlock31PC := 76.
        ].
        recoveredBlock31Step = 76 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) add: (recoveredBlock31Stack2).
            recoveredBlock31PC := 77.
        ].
        recoveredBlock31Step = 77 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := [:block2810288cArg1 :block2810288cArg2 | 
    | block2810288cValue0 block2810288cValue1 block2810288cValue2 |
    block2810288cValue0 := block2810288cArg1.
    block2810288cValue1 := block2810288cArg2.
    block2810288cValue2 := (block2810288cValue0) position: (block2810288cValue1).
    block2810288cValue2
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) generator.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortElements: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

