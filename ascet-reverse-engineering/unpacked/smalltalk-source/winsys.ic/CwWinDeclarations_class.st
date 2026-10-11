"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000040; bytecode file offset 0x7c350"
!CwWinDeclarations class methodsFor: 'recovered'!
_PRAGMA_CwConstantsWin
    ^self
! !

"winsys.ic method 0x20000148; bytecode file offset 0x7c350"
!CwWinDeclarations class methodsFor: 'recovered'!
_PRAGMA_VkToKeySym
    ^self
! !

"winsys.ic method 0x20024e88; bytecode file offset 0xa1070"
!CwWinDeclarations class methodsFor: 'recovered'!
loaded
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredLocal2 := #(#('VkAdd' 'XKKPAdd') #('VkAttn' 'NoSymbol') #('VkBack' 'XKBackSpace') #('VkCancel' 'XKCancel') #('VkCapital' 'XKCapsLock') #('VkClear' 'XKKP5') #('VkControl' 'XKControlL') #('VkCrsel' 'NoSymbol') #('VkDecimal' 'XKKPDecimal') #('VkDelete' 'XKDelete') #('VkDivide' 'XKKPDivide') #('VkDown' 'XKDown') #('VkEnd' 'XKEnd') #('VkEscape' 'XKCancel') #('VkEreof' 'NoSymbol') #('VkExecute' 'XKExecute') #('VkExsel' 'NoSymbol') #('VkF1' 'XKF1') #('VkF10' 'XKF10') #('VkF11' 'XKF11') #('VkF12' 'XKF12') #('VkF13' 'XKF13') #('VkF14' 'XKF14') #('VkF15' 'XKF15') #('VkF16' 'XKF16') #('VkF17' 'XKF17') #('VkF18' 'XKF18') #('VkF19' 'XKF19') #('VkF2' 'XKF2') #('VkF20' 'XKF20') #('VkF21' 'XKF21') #('VkF22' 'XKF22') #('VkF23' 'XKF23') #('VkF24' 'XKF24') #('VkF3' 'XKF3') #('VkF4' 'XKF4') #('VkF5' 'XKF5') #('VkF6' 'XKF6') #('VkF7' 'XKF7') #('VkF8' 'XKF8') #('VkF9' 'XKF9') #('VkHelp' 'XKHelp') #('VkHome' 'XKHome') #('VkInsert' 'XKInsert') #('VkLbutton' 'NoSymbol') #('VkLcontrol' 'XKControlL') #('VkLeft' 'XKLeft') #('VkLmenu' 'XKMetaL') #('VkLshift' 'XKShiftL') #('VkMbutton' 'NoSymbol') #('VkMenu' 'XKMetaL') #('VkMultiply' 'XKKPMultiply') #('VkNext' 'XKNext') #('VkNoname' 'NoSymbol') #('VkNumlock' 'XKNumLock') #('VkNumpad0' 'XKKP0') #('VkNumpad1' 'XKKP1') #('VkNumpad2' 'XKKP2') #('VkNumpad3' 'XKKP3') #('VkNumpad4' 'XKKP4') #('VkNumpad5' 'XKKP5') #('VkNumpad6' 'XKKP6') #('VkNumpad7' 'XKKP7') #('VkNumpad8' 'XKKP8') #('VkNumpad9' 'XKKP9') #('VkOemClear' 'NoSymbol') #('VkPa1' 'NoSymbol') #('VkPause' 'XKPause') #('VkPlay' 'NoSymbol') #('VkPrint' 'XKPrint') #('VkPrior' 'XKPrior') #('VkRbutton' 'NoSymbol') #('VkRcontrol' 'XKControlR') #('VkReturn' 'XKReturn') #('VkRight' 'XKRight') #('VkRmenu' 'XKMetaL') #('VkRshift' 'XKShiftR') #('VkScroll' 'XKScrollLock') #('VkSelect' 'XKSelect') #('VkSeparator' 'NoSymbol') #('VkShift' 'XKShiftL') #('VkSnapshot' 'NoSymbol') #('VkSpace' 'XKspace') #('VkSubtract' 'XKKPSubtract') #('VkTab' 'XKTab') #('VkUp' 'XKUp') #('VkZoom' 'NoSymbol')).
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 recoveredBlock18Value7 recoveredBlock18Value8 recoveredBlock18Value9 recoveredBlock18Value10 recoveredBlock18Value11 |
    recoveredBlock18Value0 := recoveredLocal1.
    recoveredBlock18Value1 := PlatformConstants.
    recoveredBlock18Value2 := recoveredBlock18Arg1.
    recoveredBlock18Value3 := (recoveredBlock18Value2) at: (1).
    recoveredBlock18Value4 := (recoveredBlock18Value3) asPoolKey.
    recoveredBlock18Value5 := (recoveredBlock18Value1) at: (recoveredBlock18Value4).
    recoveredBlock18Value6 := CwConstants.
    recoveredBlock18Value7 := recoveredBlock18Arg1.
    recoveredBlock18Value8 := (recoveredBlock18Value7) at: (2).
    recoveredBlock18Value9 := (recoveredBlock18Value8) asPoolKey.
    recoveredBlock18Value10 := (recoveredBlock18Value6) at: (recoveredBlock18Value9).
    recoveredBlock18Value11 := (recoveredBlock18Value0) at: (recoveredBlock18Value5) put: (recoveredBlock18Value10).
    recoveredBlock18Value11
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    VkToKeySym := recoveredValue4.
    ^self
! !

