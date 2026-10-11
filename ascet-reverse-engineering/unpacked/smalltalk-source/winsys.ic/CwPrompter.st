"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000310; bytecode file offset 0x7c6d8"
!CwPrompter methodsFor: 'recovered'!
prompt
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"winsys.ic method 0x20002aa8; bytecode file offset 0x7ed00"
!CwPrompter methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := cwParent.
    ^recoveredValue0
! !

"winsys.ic method 0x20002d90; bytecode file offset 0x7efc0"
!CwPrompter methodsFor: 'recovered'!
title
    | recoveredValue0 |
    recoveredValue0 := cwTitle.
    ^recoveredValue0
! !

"winsys.ic method 0x20002f40; bytecode file offset 0x7f220"
!CwPrompter methodsFor: 'recovered'!
prompterStyle
    | recoveredValue0 |
    recoveredValue0 := cwPrompterStyle.
    ^recoveredValue0
! !

"winsys.ic method 0x20007274; bytecode file offset 0x8346c"
!CwPrompter methodsFor: 'recovered'!
parent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwParent := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007334; bytecode file offset 0x836b4"
!CwPrompter methodsFor: 'recovered'!
title: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwTitle := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000760c; bytecode file offset 0x838d4"
!CwPrompter methodsFor: 'recovered'!
prompterStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwPrompterStyle := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20008ba4; bytecode file offset 0x84d6c"
!CwPrompter methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := MxCW14.
    cwTitle := recoveredValue0.
    recoveredValue1 := DefaultPrompterStyle.
    cwPrompterStyle := recoveredValue1.
    ^self
! !

