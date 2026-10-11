"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200260f8; bytecode file offset 0x923928"
!ASAP2Annotation class methodsFor: 'recovered'!
keyWord
    ^'ANNOTATION'
! !

"ASDBase.ic method 0x20073eb0; bytecode file offset 0x970b34"
!ASAP2Annotation class methodsFor: 'recovered'!
emBehaviorId
    ^nil
! !

"ASDBase.ic method 0x200b6b48; bytecode file offset 0x9b39ac"
!ASAP2Annotation class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('label' 'origin' 'text')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7358; bytecode file offset 0x9b3cb4"
!ASAP2Annotation class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20359d84; bytecode file offset 0xc56740"
!ASAP2Annotation class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('ANNOTATION_LABEL') put: ('getAnnotationLabel:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('ANNOTATION_ORIGIN') put: ('getAnnotationOrigin:').
    (recoveredValue0) at: ('ANNOTATION_TEXT') put: ('getAnnotationText:').
    recoveredValue3 := options.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := Association.
    recoveredValue6 := (recoveredValue5) key: ('ANNOTATION_LABEL') value: ('putIn:annotationLabel:').
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('ANNOTATION_ORIGIN') value: ('putIn:annotationOrigin:').
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('ANNOTATION_TEXT') value: ('putIn:annotationText:').
    (recoveredValue3) add: (recoveredValue11).
    ^self
! !

