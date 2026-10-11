"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000028; bytecode file offset 0x156c4"
!EsParsing class methodsFor: 'recovered'!
_PRAGMA_BytecodeValues
    ^self
! !

"parse.ic method 0x20000038; bytecode file offset 0x156c4"
!EsParsing class methodsFor: 'recovered'!
_PRAGMA_CompilerConstants
    ^self
! !

"parse.ic method 0x20000048; bytecode file offset 0x156c4"
!EsParsing class methodsFor: 'recovered'!
_PRAGMA_NlsCatESc
    ^self
! !

"parse.ic method 0x200001ac; bytecode file offset 0x15834"
!EsParsing class methodsFor: 'recovered'!
packagerIgnoreSelectors
    ^#('parseError:sourcePosition:')
! !

"parse.ic method 0x200001d0; bytecode file offset 0x15834"
!EsParsing class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('ATOM' 'BINARYSELECTOR' 'CHARACTER' 'CLOSEPAREN' 'CLOSESQUAREBRACKET' 'COLON' 'COLONCOLON' 'COLONEQUAL' 'COMPILETIMECONSTANTHEADER' 'EOM' 'EXTENDEDATOM' 'EXTENDEDSYMBOL' 'HASH' 'HASHOPENPAREN' 'HASHOPENSQUAREBRACKET' 'IDENTIFIER' 'KEYWORD' 'MULTIKEYWORD' 'NUMBER' 'OPENPAREN' 'OPENSQUAREBRACKET' 'PERIOD' 'SEMICOLON' 'STRING' 'SYMBOL' 'UPARROW' 'ERRORTOKEN')
! !

"parse.ic method 0x20002290; bytecode file offset 0x178f8"
!EsParsing class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := NlsCatESc.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    recoveredValue2 := CompilerError.
    (recoveredValue2) relocalize.
    ^self
! !

"parse.ic method 0x200047c8; bytecode file offset 0x19e38"
!EsParsing class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) localize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) defined.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := [:block28002c64Arg1 | 
    | block28002c64Stack0 block28002c64Stack1 block28002c64Stack2 block28002c64Stack3 block28002c64Stack4 block28002c64PC block28002c64Step block28002c64Done block28002c64Result |
    block28002c64Stack0 := self.
    block28002c64PC := 4.
    block28002c64Done := false.
    [block28002c64Done not] whileTrue: [
        block28002c64Step := block28002c64PC.
        block28002c64Step = 4 ifTrue: [
            block28002c64Stack1 := nil.
            block28002c64PC := 5.
        ].
        block28002c64Step = 5 ifTrue: [
            block28002c64Stack2 := block28002c64Arg1.
            block28002c64PC := 6.
        ].
        block28002c64Step = 6 ifTrue: [
            block28002c64Stack2 := (block28002c64Stack2) class.
            block28002c64PC := 7.
        ].
        block28002c64Step = 7 ifTrue: [
            block28002c64Stack3 := 'initializeOnLoad'.
            block28002c64PC := 9.
        ].
        block28002c64Step = 9 ifTrue: [
            block28002c64Stack2 := (block28002c64Stack2) includesSelector: (block28002c64Stack3).
            block28002c64PC := 11.
        ].
        block28002c64Step = 11 ifTrue: [
            (block28002c64Stack2) ifTrue: [block28002c64PC := 14] ifFalse: [block28002c64PC := 18].
        ].
        block28002c64Step = 14 ifTrue: [
            block28002c64PC := 15.
        ].
        block28002c64Step = 15 ifTrue: [
            block28002c64Stack1 := block28002c64Arg1.
            block28002c64PC := 16.
        ].
        block28002c64Step = 16 ifTrue: [
            block28002c64Stack1 := (block28002c64Stack1) initializeOnLoad.
            block28002c64PC := 18.
        ].
        block28002c64Step = 18 ifTrue: [
            block28002c64Result := block28002c64Stack1.
            block28002c64Done := true.
        ].
    ].
    block28002c64Result
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
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

"parse.ic method 0x20005330; bytecode file offset 0x1a9a4"
!EsParsing class methodsFor: 'recovered'!
removing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) defined.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28002cd0Arg1 | 
    | block28002cd0Stack0 block28002cd0Stack1 block28002cd0Stack2 block28002cd0Stack3 block28002cd0Stack4 block28002cd0PC block28002cd0Step block28002cd0Done block28002cd0Result |
    block28002cd0Stack0 := self.
    block28002cd0PC := 4.
    block28002cd0Done := false.
    [block28002cd0Done not] whileTrue: [
        block28002cd0Step := block28002cd0PC.
        block28002cd0Step = 4 ifTrue: [
            block28002cd0Stack1 := block28002cd0Arg1.
            block28002cd0PC := 5.
        ].
        block28002cd0Step = 5 ifTrue: [
            block28002cd0Stack2 := 'cleanUpBeforeRemove'.
            block28002cd0PC := 7.
        ].
        block28002cd0Step = 7 ifTrue: [
            block28002cd0Stack1 := (block28002cd0Stack1) respondsTo: (block28002cd0Stack2).
            block28002cd0PC := 8.
        ].
        block28002cd0Step = 8 ifTrue: [
            (block28002cd0Stack1) ifTrue: [block28002cd0PC := 12] ifFalse: [block28002cd0PC := 15].
        ].
        block28002cd0Step = 12 ifTrue: [
            block28002cd0Stack1 := block28002cd0Arg1.
            block28002cd0PC := 13.
        ].
        block28002cd0Step = 13 ifTrue: [
            (block28002cd0Stack1) cleanUpBeforeRemove.
            block28002cd0PC := 15.
        ].
        block28002cd0Step = 15 ifTrue: [
            block28002cd0Stack1 := nil.
            block28002cd0PC := 16.
        ].
        block28002cd0Step = 16 ifTrue: [
            block28002cd0Stack2 := block28002cd0Arg1.
            block28002cd0PC := 17.
        ].
        block28002cd0Step = 17 ifTrue: [
            block28002cd0Stack2 := (block28002cd0Stack2) class.
            block28002cd0PC := 19.
        ].
        block28002cd0Step = 19 ifTrue: [
            block28002cd0Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block28002cd0PC := 21.
        ].
        block28002cd0Step = 21 ifTrue: [
            block28002cd0Stack2 := (block28002cd0Stack2) includesSelector: (block28002cd0Stack3).
            block28002cd0PC := 23.
        ].
        block28002cd0Step = 23 ifTrue: [
            (block28002cd0Stack2) ifTrue: [block28002cd0PC := 26] ifFalse: [block28002cd0PC := 30].
        ].
        block28002cd0Step = 26 ifTrue: [
            block28002cd0PC := 27.
        ].
        block28002cd0Step = 27 ifTrue: [
            block28002cd0Stack1 := block28002cd0Arg1.
            block28002cd0PC := 28.
        ].
        block28002cd0Step = 28 ifTrue: [
            block28002cd0Stack1 := (block28002cd0Stack1) cleanUpBeforeRemoveNonInherited.
            block28002cd0PC := 30.
        ].
        block28002cd0Step = 30 ifTrue: [
            block28002cd0Result := block28002cd0Stack1.
            block28002cd0Done := true.
        ].
    ].
    block28002cd0Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

