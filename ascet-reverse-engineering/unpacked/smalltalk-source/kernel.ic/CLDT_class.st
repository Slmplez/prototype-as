"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x2000006c; bytecode file offset 0x4b1b0"
!CLDT class methodsFor: 'recovered'!
_PRAGMA_NlsGlobals
    ^self
! !

"kernel.ic method 0x2000011c; bytecode file offset 0x4b1b0"
!CLDT class methodsFor: 'recovered'!
_PRAGMA_CldtConstants
    ^self
! !

"kernel.ic method 0x2000023c; bytecode file offset 0x4b1b0"
!CLDT class methodsFor: 'recovered'!
_PRAGMA_NlsConstants
    ^self
! !

"kernel.ic method 0x2000029c; bytecode file offset 0x4b1b0"
!CLDT class methodsFor: 'recovered'!
_PRAGMA_DeclareANSIFloats
    ^self
! !

"kernel.ic method 0x200019b4; bytecode file offset 0x4c9a8"
!CLDT class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('Oct' 'Nov' 'February' 'Jan' 'June' 'Jun' 'Saturday' 'Monday' 'November' 'Friday' 'Feb' 'Thursday' 'September' 'December' 'Aug' 'Wednesday' 'March' 'Sunday' 'August' 'May' 'Mar' 'January' 'Dec' 'July' 'Jul' 'Apr' 'Tuesday' 'October' 'April' 'Sep')
! !

"kernel.ic method 0x200019f0; bytecode file offset 0x4c9a8"
!CLDT class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('format_Y:date:time:' 'format_k:date:time:' 'format_H:date:time:' 'format_p:date:time:' 'format_M:date:time:' 'format_A:date:time:' 'format_B:date:time:' 'format_z:date:time:' 'format_e:date:time:' 'format_d:date:time:' 'format_m:date:time:' 'format_a:date:time:' 'format_S:date:time:' 'format_l:date:time:' 'format_I:date:time:' 'format_b:date:time:' 'format_f:date:time:' 'format_w:date:time:' 'format_y:date:time:' 'format_x:date:time:' 'format_X:date:time:' 'format_R:date:time:' 'format_r:date:time:' 'format_Z:date:time:' 'format_T:date:time:' 'format_C:date:time:' 'format_D:date:time:' 'format_j:date:time:' 'format_n:date:time:' 'format_P:date:time:' 'format_t:date:time:' 'format_u:date:time:' 'formatNegativeSign:on:' 'formatNumber:on:' 'formatPositiveSign:on:' 'formatCurrencySymbol:on:')
! !

"kernel.ic method 0x20001a80; bytecode file offset 0x4c9a8"
!CLDT class methodsFor: 'recovered'!
packagerIgnoreReferencesInSelectors
    ^#('winInfo:language:' 'readSparcInfo:platformLocaleName:')
! !

"kernel.ic method 0x200072e0; bytecode file offset 0x521f8"
!CLDT class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('NlsPath') inClassNamed: ('Locale').
    ^self
! !

"kernel.ic method 0x2000abf4; bytecode file offset 0x55b14"
!CLDT class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Character.
    (recoveredValue0) initialize.
    recoveredValue1 := String.
    (recoveredValue1) initialize.
    recoveredValue2 := Locale.
    (recoveredValue2) initializeCurrentLocale.
    ^self
! !

"kernel.ic method 0x2000c1ac; bytecode file offset 0x570d0"
!CLDT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Float.
    recoveredValue1 := recoveredValue0.
    FloatQ := recoveredValue1.
    recoveredValue2 := recoveredValue0.
    FloatE := recoveredValue2.
    FloatD := recoveredValue0.
    recoveredValue3 := Color.
    (recoveredValue3) initializeOnLoad.
    ^self
! !

"kernel.ic method 0x2000fd90; bytecode file offset 0x5acb8"
!CLDT class methodsFor: 'recovered'!
relocalize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Character.
    (recoveredValue0) relocalize.
    recoveredValue1 := EsLeadEncodedBytes.
    (recoveredValue1) relocalize.
    recoveredValue2 := Date.
    recoveredValue3 := CurrentLCTime.
    (recoveredValue2) formatter: (recoveredValue3).
    recoveredValue4 := Time.
    recoveredValue5 := CurrentLCTime.
    (recoveredValue4) formatter: (recoveredValue5).
    ^self
! !

"kernel.ic method 0x2001124c; bytecode file offset 0x5c178"
!CLDT class methodsFor: 'recovered'!
packagerIncludeDoitMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := Locale.
    recoveredValue4 := (recoveredValue3) class.
    recoveredValue5 := (recoveredValue4) >> ('nlsPath').
    (recoveredValue2) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := Locale.
    recoveredValue8 := (recoveredValue7) class.
    recoveredValue9 := (recoveredValue8) >> ('nlsPath:').
    (recoveredValue6) add: (recoveredValue9).
    ^recoveredValue1
! !

