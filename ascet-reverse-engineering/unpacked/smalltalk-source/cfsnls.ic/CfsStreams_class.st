"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000040; bytecode file offset 0x232e0"
!CfsStreams class methodsFor: 'recovered'!
_PRAGMA_CfsStreams
    ^self
! !

"cfsnls.ic method 0x20000088; bytecode file offset 0x232e0"
!CfsStreams class methodsFor: 'recovered'!
_PRAGMA_DeclareANSIGlobals
    ^self
! !

"cfsnls.ic method 0x20000ab0; bytecode file offset 0x23de0"
!CfsStreams class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('binary' 'text' 'create' 'append' 'truncate')
! !

"cfsnls.ic method 0x2000145c; bytecode file offset 0x2469c"
!CfsStreams class methodsFor: 'recovered'!
localize
    (self) initializeException.
    ^self
! !

"cfsnls.ic method 0x20002e54; bytecode file offset 0x2608c"
!CfsStreams class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) includeGlobalVariable: ('FileStream').
    ^self
! !

"cfsnls.ic method 0x20003958; bytecode file offset 0x26b94"
!CfsStreams class methodsFor: 'recovered'!
loaded
    | recoveredValue0 |
    (self) localize.
    recoveredValue0 := CfsFileStream.
    FileStream := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x200088e8; bytecode file offset 0x2bb40"
!CfsStreams class methodsFor: 'recovered'!
initializeException
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ExCFSError.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ExCFSError := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ExCFSError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := MxCFS7.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:block280047a8Arg1 | 
    | block280047a8Value0 block280047a8Value1 block280047a8Value2 block280047a8Value3 block280047a8Value4 |
    block280047a8Value0 := block280047a8Arg1.
    block280047a8Value1 := block280047a8Arg1.
    block280047a8Value2 := (block280047a8Value1) argument.
    block280047a8Value3 := (block280047a8Value2) printString.
    block280047a8Value4 := (block280047a8Value0) signalWith: (block280047a8Value3).
    block280047a8Value4
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) defaultHandler: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

