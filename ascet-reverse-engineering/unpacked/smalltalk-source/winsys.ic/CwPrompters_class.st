"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20001c40; bytecode file offset 0x7de10"
!CwPrompters class methodsFor: 'recovered'!
loaded
    (self) localize.
    ^self
! !

"winsys.ic method 0x200020c4; bytecode file offset 0x7e36c"
!CwPrompters class methodsFor: 'recovered'!
localize
    | recoveredValue0 |
    recoveredValue0 := CwMessagePrompter.
    (recoveredValue0) initializeTitleTable.
    ^self
! !

"winsys.ic method 0x20002144; bytecode file offset 0x7e36c"
!CwPrompters class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 |
    recoveredValue0 := CwFileSelectionPrompter.
    (recoveredValue0) initialize.
    ^self
! !

"winsys.ic method 0x20006f40; bytecode file offset 0x83134"
!CwPrompters class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('DefaultSearchPath') inClassNamed: ('CwFileSelectionPrompter').
    ^self
! !

