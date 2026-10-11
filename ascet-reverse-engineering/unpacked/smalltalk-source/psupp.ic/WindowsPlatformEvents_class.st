"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2002d174; bytecode file offset 0x180a24"
!WindowsPlatformEvents class methodsFor: 'recovered'!
packagerIncludeSelectors
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := OSEventManager.
    recoveredValue2 := (recoveredValue1) classPool.
    recoveredValue3 := (recoveredValue2) at: ('AcceleratorSelector').
    recoveredValue4 := OSEventManager.
    recoveredValue5 := (recoveredValue4) classPool.
    recoveredValue6 := (recoveredValue5) at: ('TraversalSelector').
    recoveredValue7 := (recoveredValue0) with: (recoveredValue3) with: (recoveredValue6).
    ^recoveredValue7
! !

"psupp.ic method 0x2003255c; bytecode file offset 0x185e10"
!WindowsPlatformEvents class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('HandleID') inClassNamed: ('OSEventManager').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) initializeToNilPoolVariable: ('HInstance') inPoolDictionary: ('PlatformGlobals').
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) initializeToNilPoolVariable: ('HInstanceNull') inPoolDictionary: ('PlatformGlobals').
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) initializeToNilPoolVariable: ('HwndNull') inPoolDictionary: ('PlatformGlobals').
    ^self
! !

