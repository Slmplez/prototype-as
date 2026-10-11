"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003ea08; bytecode file offset 0x93bf94"
!AbtDirectoryPrompter class methodsFor: 'recovered'!
workingDirectoryPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CfsDirectoryDescriptor.
    recoveredValue1 := (recoveredValue0) getcwd.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200547f4; bytecode file offset 0x951190"
!AbtDirectoryPrompter class methodsFor: 'recovered'!
defaultSearchPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DefaultSearchPath := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2013a198; bytecode file offset 0xa36a64"
!AbtDirectoryPrompter class methodsFor: 'recovered'!
defaultSearchPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DefaultSearchPath.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) workingDirectoryPath.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := DefaultSearchPath.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2050be80; bytecode file offset 0xe0878c"
!AbtDirectoryPrompter class methodsFor: 'recovered'!
minusIcon
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := CgDeviceIndependentImage.
    recoveredValue1 := (recoveredValue0) basicNew.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) instVarAt: (1) put: (9).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) instVarAt: (2) put: (9).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) instVarAt: (3) put: (4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) instVarAt: (4) put: (4).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) instVarAt: (5) put: (8).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) instVarAt: (6) put: (#[136 136 136 136 112 0 0 0 136 136 136 136 112 0 0 0 136 136 136 136 112 0 0 0 136 136 136 136 112 0 0 0 136 0 0 8 112 0 0 0 136 136 136 136 112 0 0 0 136 136 136 136 112 0 0 0 136 136 136 136 112 0 0 0 119 119 119 119 112 0 0 0]).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := CgIndexedPalette.
    recoveredValue10 := (recoveredValue9) basicNew.
    recoveredValue11 := recoveredValue10.
    (recoveredValue11) instVarAt: (1) put: (nil).
    recoveredValue12 := recoveredValue10.
    (recoveredValue12) instVarAt: (2) put: (#[0 0 0 0 0 0 0 0 128 128 0 0 0 0 0 0 0 0 128 128 0 0 0 0 128 128 128 128 0 0 0 0 0 0 0 0 128 128 0 0 128 128 0 0 128 128 0 0 0 0 128 128 128 128 0 0 128 128 128 128 128 128 0 0 192 192 192 192 192 192 0 0 255 255 0 0 0 0 0 0 0 0 255 255 0 0 0 0 255 255 255 255 0 0 0 0 0 0 0 0 255 255 0 0 255 255 0 0 255 255 0 0 0 0 255 255 255 255 0 0 255 255 255 255 255 255 0 0]).
    recoveredValue13 := recoveredValue10.
    (recoveredValue13) instVarAt: (3) put: (16).
    (recoveredValue8) instVarAt: (7) put: (recoveredValue10).
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) instVarAt: (8) put: (nil).
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) instVarAt: (9) put: (nil).
    recoveredLocal2 := recoveredValue1.
    recoveredValue16 := CgDeviceIndependentImage.
    recoveredValue17 := (recoveredValue16) basicNew.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) instVarAt: (1) put: (9).
    recoveredValue19 := recoveredValue17.
    (recoveredValue19) instVarAt: (2) put: (9).
    recoveredValue20 := recoveredValue17.
    (recoveredValue20) instVarAt: (3) put: (1).
    recoveredValue21 := recoveredValue17.
    (recoveredValue21) instVarAt: (4) put: (4).
    recoveredValue22 := recoveredValue17.
    (recoveredValue22) instVarAt: (5) put: (4).
    recoveredValue23 := recoveredValue17.
    (recoveredValue23) instVarAt: (6) put: (#[255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255]).
    recoveredValue24 := recoveredValue17.
    recoveredValue25 := CgIndexedPalette.
    recoveredValue26 := (recoveredValue25) basicNew.
    recoveredValue27 := recoveredValue26.
    (recoveredValue27) instVarAt: (1) put: (nil).
    recoveredValue28 := recoveredValue26.
    (recoveredValue28) instVarAt: (2) put: (#[0 0 0 0 0 0 0 0 255 255 255 255 255 255 0 0]).
    recoveredValue29 := recoveredValue26.
    (recoveredValue29) instVarAt: (3) put: (2).
    (recoveredValue24) instVarAt: (7) put: (recoveredValue26).
    recoveredValue30 := recoveredValue17.
    (recoveredValue30) instVarAt: (8) put: (nil).
    recoveredValue31 := recoveredValue17.
    (recoveredValue31) instVarAt: (9) put: (nil).
    recoveredLocal1 := recoveredValue17.
    recoveredValue32 := CgIcon.
    recoveredValue33 := recoveredLocal2.
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := (recoveredValue32) fromImage: (recoveredValue33) maskImage: (recoveredValue34).
    ^recoveredValue35
! !

"ASDBase.ic method 0x2050beb0; bytecode file offset 0xe0878c"
!AbtDirectoryPrompter class methodsFor: 'recovered'!
plusIcon
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := CgDeviceIndependentImage.
    recoveredValue1 := (recoveredValue0) basicNew.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) instVarAt: (1) put: (9).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) instVarAt: (2) put: (9).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) instVarAt: (3) put: (4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) instVarAt: (4) put: (4).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) instVarAt: (5) put: (8).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) instVarAt: (6) put: (#[136 136 136 136 112 0 0 0 136 136 136 136 112 0 0 0 136 136 8 136 112 0 0 0 136 136 8 136 112 0 0 0 136 0 0 8 112 0 0 0 136 136 8 136 112 0 0 0 136 136 8 136 112 0 0 0 136 136 136 136 112 0 0 0 119 119 119 119 112 0 0 0]).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := CgIndexedPalette.
    recoveredValue10 := (recoveredValue9) basicNew.
    recoveredValue11 := recoveredValue10.
    (recoveredValue11) instVarAt: (1) put: (nil).
    recoveredValue12 := recoveredValue10.
    (recoveredValue12) instVarAt: (2) put: (#[0 0 0 0 0 0 0 0 128 128 0 0 0 0 0 0 0 0 128 128 0 0 0 0 128 128 128 128 0 0 0 0 0 0 0 0 128 128 0 0 128 128 0 0 128 128 0 0 0 0 128 128 128 128 0 0 128 128 128 128 128 128 0 0 192 192 192 192 192 192 0 0 255 255 0 0 0 0 0 0 0 0 255 255 0 0 0 0 255 255 255 255 0 0 0 0 0 0 0 0 255 255 0 0 255 255 0 0 255 255 0 0 0 0 255 255 255 255 0 0 255 255 255 255 255 255 0 0]).
    recoveredValue13 := recoveredValue10.
    (recoveredValue13) instVarAt: (3) put: (16).
    (recoveredValue8) instVarAt: (7) put: (recoveredValue10).
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) instVarAt: (8) put: (nil).
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) instVarAt: (9) put: (nil).
    recoveredLocal2 := recoveredValue1.
    recoveredValue16 := CgDeviceIndependentImage.
    recoveredValue17 := (recoveredValue16) basicNew.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) instVarAt: (1) put: (9).
    recoveredValue19 := recoveredValue17.
    (recoveredValue19) instVarAt: (2) put: (9).
    recoveredValue20 := recoveredValue17.
    (recoveredValue20) instVarAt: (3) put: (1).
    recoveredValue21 := recoveredValue17.
    (recoveredValue21) instVarAt: (4) put: (4).
    recoveredValue22 := recoveredValue17.
    (recoveredValue22) instVarAt: (5) put: (4).
    recoveredValue23 := recoveredValue17.
    (recoveredValue23) instVarAt: (6) put: (#[255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255]).
    recoveredValue24 := recoveredValue17.
    recoveredValue25 := CgIndexedPalette.
    recoveredValue26 := (recoveredValue25) basicNew.
    recoveredValue27 := recoveredValue26.
    (recoveredValue27) instVarAt: (1) put: (nil).
    recoveredValue28 := recoveredValue26.
    (recoveredValue28) instVarAt: (2) put: (#[0 0 0 0 0 0 0 0 255 255 255 255 255 255 0 0]).
    recoveredValue29 := recoveredValue26.
    (recoveredValue29) instVarAt: (3) put: (2).
    (recoveredValue24) instVarAt: (7) put: (recoveredValue26).
    recoveredValue30 := recoveredValue17.
    (recoveredValue30) instVarAt: (8) put: (nil).
    recoveredValue31 := recoveredValue17.
    (recoveredValue31) instVarAt: (9) put: (nil).
    recoveredLocal1 := recoveredValue17.
    recoveredValue32 := CgIcon.
    recoveredValue33 := recoveredLocal2.
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := (recoveredValue32) fromImage: (recoveredValue33) maskImage: (recoveredValue34).
    ^recoveredValue35
! !

"ASDBase.ic method 0x2050bf98; bytecode file offset 0xe08874"
!AbtDirectoryPrompter class methodsFor: 'recovered'!
directoryIcon
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := CgDeviceIndependentImage.
    recoveredValue1 := (recoveredValue0) basicNew.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) instVarAt: (1) put: (16).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) instVarAt: (2) put: (16).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) instVarAt: (3) put: (4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) instVarAt: (4) put: (4).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) instVarAt: (5) put: (8).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) instVarAt: (6) put: (#[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8 184 176 0 0 0 0 0 139 139 139 0 0 0 0 0 143 255 255 255 255 135 0 0 251 139 139 139 139 135 0 0 248 184 184 184 184 183 0 0 251 139 139 139 139 135 0 0 248 184 184 184 184 183 0 0 251 139 139 139 139 135 0 0 248 184 184 184 184 183 0 0 251 139 139 139 139 135 0 0 135 119 119 119 119 112 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := CgIndexedPalette.
    recoveredValue10 := (recoveredValue9) basicNew.
    recoveredValue11 := recoveredValue10.
    (recoveredValue11) instVarAt: (1) put: (nil).
    recoveredValue12 := recoveredValue10.
    (recoveredValue12) instVarAt: (2) put: (#[0 0 0 0 0 0 0 0 128 128 0 0 0 0 0 0 0 0 128 128 0 0 0 0 128 128 128 128 0 0 0 0 0 0 0 0 128 128 0 0 128 128 0 0 128 128 0 0 0 0 128 128 128 128 0 0 128 128 128 128 128 128 0 0 192 192 192 192 192 192 0 0 255 255 0 0 0 0 0 0 0 0 255 255 0 0 0 0 255 255 255 255 0 0 0 0 0 0 0 0 255 255 0 0 255 255 0 0 255 255 0 0 0 0 255 255 255 255 0 0 255 255 255 255 255 255 0 0]).
    recoveredValue13 := recoveredValue10.
    (recoveredValue13) instVarAt: (3) put: (16).
    (recoveredValue8) instVarAt: (7) put: (recoveredValue10).
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) instVarAt: (8) put: (nil).
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) instVarAt: (9) put: (nil).
    recoveredLocal2 := recoveredValue1.
    recoveredValue16 := CgDeviceIndependentImage.
    recoveredValue17 := (recoveredValue16) basicNew.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) instVarAt: (1) put: (16).
    recoveredValue19 := recoveredValue17.
    (recoveredValue19) instVarAt: (2) put: (16).
    recoveredValue20 := recoveredValue17.
    (recoveredValue20) instVarAt: (3) put: (1).
    recoveredValue21 := recoveredValue17.
    (recoveredValue21) instVarAt: (4) put: (4).
    recoveredValue22 := recoveredValue17.
    (recoveredValue22) instVarAt: (5) put: (4).
    recoveredValue23 := recoveredValue17.
    (recoveredValue23) instVarAt: (6) put: (#[0 0 255 255 0 0 255 255 30 0 255 255 63 0 255 255 127 252 255 255 127 254 255 255 127 254 255 255 127 254 255 255 127 254 255 255 127 254 255 255 127 254 255 255 127 254 255 255 127 254 255 255 127 254 255 255 63 252 255 255 0 0 255 255]).
    recoveredValue24 := recoveredValue17.
    recoveredValue25 := CgIndexedPalette.
    recoveredValue26 := (recoveredValue25) basicNew.
    recoveredValue27 := recoveredValue26.
    (recoveredValue27) instVarAt: (1) put: (nil).
    recoveredValue28 := recoveredValue26.
    (recoveredValue28) instVarAt: (2) put: (#[0 0 0 0 0 0 0 0 255 255 255 255 255 255 0 0]).
    recoveredValue29 := recoveredValue26.
    (recoveredValue29) instVarAt: (3) put: (2).
    (recoveredValue24) instVarAt: (7) put: (recoveredValue26).
    recoveredValue30 := recoveredValue17.
    (recoveredValue30) instVarAt: (8) put: (nil).
    recoveredValue31 := recoveredValue17.
    (recoveredValue31) instVarAt: (9) put: (nil).
    recoveredLocal1 := recoveredValue17.
    recoveredValue32 := CgIcon.
    recoveredValue33 := recoveredLocal2.
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := (recoveredValue32) fromImage: (recoveredValue33) maskImage: (recoveredValue34).
    ^recoveredValue35
! !

