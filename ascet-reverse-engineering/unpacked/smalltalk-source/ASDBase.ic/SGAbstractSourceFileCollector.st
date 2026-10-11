"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20035834; bytecode file offset 0x934580"
!SGAbstractSourceFileCollector methodsFor: 'recovered'!
preprocessorCommandsNoGlobals
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileStructureStrategy.
    recoveredValue1 := (recoveredValue0) preprocessorCommandsNoGlobals.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004f728; bytecode file offset 0x94d048"
!SGAbstractSourceFileCollector methodsFor: 'recovered'!
getAllRequiresSources
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20065dcc; bytecode file offset 0x963428"
!SGAbstractSourceFileCollector methodsFor: 'recovered'!
fileStructureStrategy
    | recoveredValue0 |
    recoveredValue0 := fileStructureStrategy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067fc4; bytecode file offset 0x965b90"
!SGAbstractSourceFileCollector methodsFor: 'recovered'!
fileNameMap
    | recoveredValue0 |
    recoveredValue0 := fileNameMap.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be48c; bytecode file offset 0x9bb178"
!SGAbstractSourceFileCollector methodsFor: 'recovered'!
fileStructureStrategy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileStructureStrategy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9710; bytecode file offset 0x9c600c"
!SGAbstractSourceFileCollector methodsFor: 'recovered'!
addFileName: recoveredArg1 sourceObject: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) fileNameMap.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asUppercase.
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200da948; bytecode file offset 0x9d7254"
!SGAbstractSourceFileCollector methodsFor: 'recovered'!
removeFileName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) fileNameMap.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asUppercase.
    recoveredValue3 := [].
    (recoveredValue0) removeKey: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200f9f24; bytecode file offset 0x9f6878"
!SGAbstractSourceFileCollector methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    fileNameMap := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20128a08; bytecode file offset 0xa25378"
!SGAbstractSourceFileCollector methodsFor: 'recovered'!
allAdditionalECCOSourceCollectors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGAbstractSourceFileCollector.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubclasses.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280c930cArg1 | 
    | block280c930cValue0 block280c930cValue1 |
    block280c930cValue0 := block280c930cArg1.
    block280c930cValue1 := (block280c930cValue0) isAdditionalECCOSourceCollector.
    block280c930cValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20128a5c; bytecode file offset 0xa25378"
!SGAbstractSourceFileCollector methodsFor: 'recovered'!
allAdditionalANSICSourceCollectors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGAbstractSourceFileCollector.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubclasses.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280c9378Arg1 | 
    | block280c9378Value0 block280c9378Value1 |
    block280c9378Value0 := block280c9378Arg1.
    block280c9378Value1 := (block280c9378Value0) isAdditionalANSICSourceCollector.
    block280c9378Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016f3b4; bytecode file offset 0xa6bc70"
!SGAbstractSourceFileCollector methodsFor: 'recovered'!
sources
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := sources.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) getAllRequiresSources.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    sources := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := sources.
    ^recoveredValue2
! !

