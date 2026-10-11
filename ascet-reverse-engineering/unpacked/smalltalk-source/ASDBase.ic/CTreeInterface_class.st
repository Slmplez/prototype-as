"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019f4c; bytecode file offset 0x92209c"
!CTreeInterface class methodsFor: 'recovered'!
searchModes
    ^#('setSearch')
! !

"ASDBase.ic method 0x20022bbc; bytecode file offset 0x92209c"
!CTreeInterface class methodsFor: 'recovered'!
defaultUser
    ^'Willi.E.Coyote, genius'
! !

"ASDBase.ic method 0x2003e438; bytecode file offset 0x93bf94"
!CTreeInterface class methodsFor: 'recovered'!
dllClasses
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CTreeDLL.
    recoveredValue1 := (recoveredValue0) allSubclasses.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004f3f8; bytecode file offset 0x94d048"
!CTreeInterface class methodsFor: 'recovered'!
indices
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006f578; bytecode file offset 0x96bf7c"
!CTreeInterface class methodsFor: 'recovered'!
keyMap
    | recoveredValue0 |
    recoveredValue0 := keyMap.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20079a34; bytecode file offset 0x97c330"
!CTreeInterface class methodsFor: 'recovered'!
isSelfClosing
    ^false
! !

"ASDBase.ic method 0x2008bf1c; bytecode file offset 0x9887e8"
!CTreeInterface class methodsFor: 'recovered'!
create
    | recoveredValue0 |
    recoveredValue0 := (self) createWithDefName: ('') recordClass: (nil).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009c154; bytecode file offset 0x998d48"
!CTreeInterface class methodsFor: 'recovered'!
iniFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getAppDataPath.
    recoveredValue2 := (recoveredValue1) , ('ctree.ini').
    ^recoveredValue2
! !

"ASDBase.ic method 0x2012744c; bytecode file offset 0xa23d0c"
!CTreeInterface class methodsFor: 'recovered'!
createWithDefName: recoveredArg1 recordClass: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) createKeyMap.
    keyMap := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) initWithDefName: (recoveredValue3) recordClass: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2021859c; bytecode file offset 0xb14e6c"
!CTreeInterface class methodsFor: 'recovered'!
cleanupAllInstances
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dadd8Arg1 | 
    | block280dadd8Stack0 block280dadd8Stack1 block280dadd8Stack2 block280dadd8Stack3 block280dadd8PC block280dadd8Step block280dadd8Done block280dadd8Result |
    block280dadd8Stack0 := self.
    block280dadd8PC := 4.
    block280dadd8Done := false.
    [block280dadd8Done not] whileTrue: [
        block280dadd8Step := block280dadd8PC.
        block280dadd8Step = 4 ifTrue: [
            block280dadd8Stack1 := block280dadd8Arg1.
            block280dadd8PC := 5.
        ].
        block280dadd8Step = 5 ifTrue: [
            block280dadd8Stack1 := (block280dadd8Stack1) allInstances.
            block280dadd8PC := 6.
        ].
        block280dadd8Step = 6 ifTrue: [
            block280dadd8Stack2 := [:block280dadfcArg1 | 
    | block280dadfcValue0 block280dadfcValue1 block280dadfcValue2 |
    block280dadfcValue0 := block280dadfcArg1.
    (block280dadfcValue0) cleanupInstances.
    block280dadfcValue1 := block280dadfcArg1.
    block280dadfcValue2 := (block280dadfcValue1) become: (nil).
    block280dadfcValue2
].
            block280dadd8PC := 8.
        ].
        block280dadd8Step = 8 ifTrue: [
            block280dadd8PC := 20.
        ].
        block280dadd8Step = 20 ifTrue: [
            block280dadd8Stack1 := (block280dadd8Stack1) do: (block280dadd8Stack2).
            block280dadd8PC := 22.
        ].
        block280dadd8Step = 22 ifTrue: [
            block280dadd8Result := block280dadd8Stack1.
            block280dadd8Done := true.
        ].
    ].
    block280dadd8Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b0ce0; bytecode file offset 0xbad5a8"
!CTreeInterface class methodsFor: 'recovered'!
createKeyMap
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredLocal2 := 0.
    recoveredValue2 := (self) indices.
    recoveredValue3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := recoveredLocal2.
    (recoveredBlock16Value0) at: (recoveredBlock16Value1) put: (recoveredBlock16Value2).
    recoveredBlock16Value3 := recoveredLocal2.
    recoveredBlock16Value4 := (recoveredBlock16Value3) + (1).
    recoveredBlock16Value5 := recoveredBlock16Value4.
    recoveredLocal2 := recoveredBlock16Value5.
    recoveredBlock16Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

