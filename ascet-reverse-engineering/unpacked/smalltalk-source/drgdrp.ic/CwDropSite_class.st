"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"drgdrp.ic method 0x20000048; bytecode file offset 0x54d0"
!CwDropSite class methodsFor: 'recovered'!
currentPlatformObject
    | recoveredValue0 |
    recoveredValue0 := CurrentPlatformObject.
    ^recoveredValue0
! !

"drgdrp.ic method 0x20000060; bytecode file offset 0x54d0"
!CwDropSite class methodsFor: 'recovered'!
currentWidget
    | recoveredValue0 |
    recoveredValue0 := CurrentWidget.
    ^recoveredValue0
! !

"drgdrp.ic method 0x20000114; bytecode file offset 0x55a8"
!CwDropSite class methodsFor: 'recovered'!
currentWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CurrentWidget := recoveredValue0.
    ^self
! !

"drgdrp.ic method 0x20000138; bytecode file offset 0x55a8"
!CwDropSite class methodsFor: 'recovered'!
currentPlatformObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CurrentPlatformObject := recoveredValue0.
    ^self
! !

"drgdrp.ic method 0x2000082c; bytecode file offset 0x5c94"
!CwDropSite class methodsFor: 'recovered'!
for: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) createWidget: (recoveredValue2) argBlock: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"drgdrp.ic method 0x200008fc; bytecode file offset 0x5d68"
!CwDropSite class methodsFor: 'recovered'!
cleanUp
    (self) currentWidget: (nil).
    (self) currentPlatformObject: (nil).
    DropData := nil.
    ^self
! !

