"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000110; bytecode file offset 0x7c350"
!CommonPrintingWin class methodsFor: 'recovered'!
_PRAGMA_NlsCatCPsWin
    ^self
! !

"winsys.ic method 0x20005e6c; bytecode file offset 0x820c4"
!CommonPrintingWin class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatCPsWin.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x20006f68; bytecode file offset 0x83134"
!CommonPrintingWin class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('PrinterScreenInfo') inClassNamed: ('CgWinPrinterServer').
    ^self
! !

"winsys.ic method 0x2000a0d0; bytecode file offset 0x862a0"
!CommonPrintingWin class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 |
    (self) localize.
    recoveredValue0 := CgServer.
    recoveredValue1 := CgWinPrinterServer.
    (recoveredValue0) addServerClass: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x2000cec8; bytecode file offset 0x8909c"
!CommonPrintingWin class methodsFor: 'recovered'!
postExiting
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgWinPrinterServer.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allOpenServers.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block28008a58Arg1 | 
    | block28008a58Value0 block28008a58Value1 |
    block28008a58Value0 := block28008a58Arg1.
    block28008a58Value1 := (block28008a58Value0) shutDown.
    block28008a58Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

