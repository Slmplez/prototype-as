"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200206d8; bytecode file offset 0x92209c"
!ASAP2DBProject class methodsFor: 'recovered'!
keyWord
    ^'PROJECT'
! !

"ASDBase.ic method 0x20031e34; bytecode file offset 0x934580"
!ASAP2DBProject class methodsFor: 'recovered'!
createTemp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initializeTemp.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035114; bytecode file offset 0x934580"
!ASAP2DBProject class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200806e0; bytecode file offset 0x97cf94"
!ASAP2DBProject class methodsFor: 'recovered'!
asap2BehaviorId
    ^193
! !

"ASDBase.ic method 0x202113fc; bytecode file offset 0xb0dcd4"
!ASAP2DBProject class methodsFor: 'recovered'!
options
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Association.
    recoveredValue5 := (recoveredValue4) key: ('HEADER') value: ('putIn:header:').
    (recoveredValue3) add: (recoveredValue5).
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('MODULE') value: ('putIn:module:').
    (recoveredValue2) add: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2035be38; bytecode file offset 0xc5871c"
!ASAP2DBProject class methodsFor: 'recovered'!
encodingEnums
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := SCEncodingChineseGB.
    (recoveredValue3) at: (recoveredValue4) put: (54936).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := SCEncodingChineseBig.
    (recoveredValue5) at: (recoveredValue6) put: (950).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := SCEncodingJapanese.
    (recoveredValue7) at: (recoveredValue8) put: (932).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := SCEncodingKorean.
    (recoveredValue9) at: (recoveredValue10) put: (949).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := SCEncodingWesternEurope.
    (recoveredValue11) at: (recoveredValue12) put: (1252).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := SCEncodingUniversal.
    (recoveredValue13) at: (recoveredValue14) put: (65001).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := SCEncodingNoEncoding.
    (recoveredValue15) at: (recoveredValue16) put: (nil).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

