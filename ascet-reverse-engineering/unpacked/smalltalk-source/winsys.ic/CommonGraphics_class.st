"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000848; bytecode file offset 0x7cc7c"
!CommonGraphics class methodsFor: 'recovered'!
imageSupport
    | recoveredValue0 |
    recoveredValue0 := ImageSupport.
    ^recoveredValue0
! !

"winsys.ic method 0x20000b50; bytecode file offset 0x7ce40"
!CommonGraphics class methodsFor: 'recovered'!
allPlanes
    ^4294967295
! !

"winsys.ic method 0x20000c04; bytecode file offset 0x7ce40"
!CommonGraphics class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('cgBusyCursor')
! !

"winsys.ic method 0x20000c90; bytecode file offset 0x7ce54"
!CommonGraphics class methodsFor: 'recovered'!
imageSupportLoaded
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) imageSupport.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"winsys.ic method 0x20001ddc; bytecode file offset 0x7e054"
!CommonGraphics class methodsFor: 'recovered'!
imageSupport: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ImageSupport := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20004f4c; bytecode file offset 0x8112c"
!CommonGraphics class methodsFor: 'recovered'!
cleanUpBeforeWalkback
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CgServer.
    recoveredValue1 := (recoveredValue0) default.
    (recoveredValue1) cleanUpBeforeWalkback.
    ^self
! !

"winsys.ic method 0x2000af54; bytecode file offset 0x87124"
!CommonGraphics class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeClassVariable: ('BitmapPath') to: ('#()') inClassNamed: ('CgScreen').
    ^self
! !

