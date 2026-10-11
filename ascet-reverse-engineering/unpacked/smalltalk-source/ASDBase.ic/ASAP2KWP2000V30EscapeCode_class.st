"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000038; bytecode file offset 0x8fc8ec"
!ASAP2KWP2000V30EscapeCode class methodsFor: 'recovered'!
members
    ^self
! !

"ASDBase.ic method 0x20026524; bytecode file offset 0x923928"
!ASAP2KWP2000V30EscapeCode class methodsFor: 'recovered'!
keyWord
    ^'ESCAPE_CODE'
! !

"ASDBase.ic method 0x20072680; bytecode file offset 0x96f1c4"
!ASAP2KWP2000V30EscapeCode class methodsFor: 'recovered'!
fixedSize
    ^2
! !

"ASDBase.ic method 0x202ceb88; bytecode file offset 0xbcb474"
!ASAP2KWP2000V30EscapeCode class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initializeKeyWords.
    recoveredValue0 := (self) keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('ESCAPE_CODE_PARA_SET') put: ('getEscapeCodeParameterSet:').
    (recoveredValue0) at: ('ESCAPE_CODE_PARA_GET') put: ('getEscapeCodeParameterGet:').
    recoveredValue2 := (self) options.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Association.
    recoveredValue5 := (recoveredValue4) key: ('ESCAPE_CODE_PARA_SET') value: ('putIn:escapeCodeParameterSet:').
    (recoveredValue3) add: (recoveredValue5).
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('ESCAPE_CODE_PARA_GET') value: ('putIn:escapeCodeParameterGet:').
    (recoveredValue2) add: (recoveredValue7).
    ^self
! !

