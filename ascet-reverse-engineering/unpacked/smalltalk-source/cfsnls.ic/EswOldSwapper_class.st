"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000970; bytecode file offset 0x23c4c"
!EswOldSwapper class methodsFor: 'recovered'!
dllName
    | recoveredValue0 |
    recoveredValue0 := DLLName.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001450; bytecode file offset 0x2469c"
!EswOldSwapper class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"cfsnls.ic method 0x2000150c; bytecode file offset 0x24740"
!EswOldSwapper class methodsFor: 'recovered'!
dllName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DLLName := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20003d4c; bytecode file offset 0x26f88"
!EswOldSwapper class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('DLLName') inClassNamed: ('EswOldSwapper').
    ^self
! !

"cfsnls.ic method 0x20004f6c; bytecode file offset 0x281ac"
!EswOldSwapper class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 |
    (self) localize.
    recoveredValue0 := OldObjectSwapper.
    (recoveredValue0) initialize.
    recoveredValue1 := OldObjectLoader.
    (recoveredValue1) initialize.
    ^self
! !

"cfsnls.ic method 0x200081f0; bytecode file offset 0x2b448"
!EswOldSwapper class methodsFor: 'recovered'!
packagerIncludeDoitMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := ('PR') = ('1EUZWOU').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := EswOldSwapper.
    recoveredValue5 := (recoveredValue4) class.
    recoveredValue6 := (recoveredValue5) >> ('dllName').
    (recoveredValue3) add: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := EswOldSwapper.
    recoveredValue9 := (recoveredValue8) class.
    recoveredValue10 := (recoveredValue9) >> ('dllName:').
    (recoveredValue7) add: (recoveredValue10).
    ^recoveredValue2
! !

