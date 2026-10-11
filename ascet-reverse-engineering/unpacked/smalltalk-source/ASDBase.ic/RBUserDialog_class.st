"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20076e5c; bytecode file offset 0x9757c8"
!RBUserDialog class methodsFor: 'recovered'!
isDialogClass
    ^true
! !

"ASDBase.ic method 0x2008d9a8; bytecode file offset 0x98a26c"
!RBUserDialog class methodsFor: 'recovered'!
minSize
    | recoveredValue0 |
    recoveredValue0 := (20) @ (20).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e2d00; bytecode file offset 0x9df5b8"
!RBUserDialog class methodsFor: 'recovered'!
maxSize
    | recoveredValue0 |
    recoveredValue0 := (1024) @ (768).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ef848; bytecode file offset 0x9ec110"
!RBUserDialog class methodsFor: 'recovered'!
switchFlexibleClassLayoutPrompter
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBUserQuestion.
    recoveredValue1 := (recoveredValue0) confirm: ('Changing this attribute will have an immediately effect to all
occurences of this component in any graphic specification.
In most cases it is necessary to rearrange all occurences
of the component when changing this attribute.').
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cancelOk.
    recoveredValue3 := (recoveredValue1) prompt.
    ^recoveredValue3
! !

