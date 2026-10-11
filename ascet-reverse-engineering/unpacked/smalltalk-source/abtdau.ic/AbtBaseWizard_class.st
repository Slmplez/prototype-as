"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x20000028; bytecode file offset 0xf3ec"
!AbtBaseWizard class methodsFor: 'recovered'!
_PRAGMA_NlsCatABTwiz
    ^self
! !

"abtdau.ic method 0x20000058; bytecode file offset 0xf3ec"
!AbtBaseWizard class methodsFor: 'recovered'!
_PRAGMA_AbtBaseWizardConstants
    ^self
! !

"abtdau.ic method 0x200005d8; bytecode file offset 0xf94c"
!AbtBaseWizard class methodsFor: 'recovered'!
loaded
    | recoveredValue0 |
    (self) localize.
    recoveredValue0 := (self) startUp.
    ^recoveredValue0
! !

"abtdau.ic method 0x20000cac; bytecode file offset 0x10024"
!AbtBaseWizard class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatABTwiz.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"abtdau.ic method 0x20001d9c; bytecode file offset 0x1111c"
!AbtBaseWizard class methodsFor: 'recovered'!
startUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) initializeConstants.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := AbtWizardAbstractController.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := #(268439246 nil 20 8388611 nil nil).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) withAllSubclassesDo: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x200034a4; bytecode file offset 0x1283c"
!AbtBaseWizard class methodsFor: 'recovered'!
initializeConstants
    | recoveredValue0 recoveredValue1 |
    ButtonRowOffset := 10.
    GenericOffset := 15.
    TopFormMarginHeight := 15.
    TopFormMarginWidth := 15.
    BigOffset := 15.
    ButtonWidth := 75.
    MediumOffset := 10.
    SmallOffset := 5.
    WidgetHeight := 22.
    DropDownWidth := 50.
    recoveredValue0 := BigOffset.
    recoveredValue1 := (recoveredValue0) * (2).
    SpaceIncrement := recoveredValue1.
    ^self
! !

"abtdau.ic method 0x200059d4; bytecode file offset 0x14dc8"
!AbtBaseWizard class methodsFor: 'recovered'!
vaJavaIcon
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := CgRGBColor.
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
    (recoveredValue7) instVarAt: (6) put: (#[51 51 51 51 51 51 51 51 48 80 80 87 0 80 80 83 53 5 5 118 16 5 5 3 48 80 86 102 113 0 80 83 53 5 102 233 121 16 5 3 48 86 126 118 17 113 0 83 53 103 230 0 0 113 112 3 54 103 118 0 1 1 119 3 51 51 112 16 0 7 0 3 48 51 179 7 0 127 240 3 53 3 187 51 119 207 240 3 48 80 59 252 188 255 0 83 53 5 3 191 255 112 5 3 48 80 80 55 119 0 80 83 53 5 5 3 112 5 5 3 51 51 51 51 51 51 51 51]).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := CommonPrinting.
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
    recoveredValue16 := CgRGBColor.
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
    (recoveredValue23) instVarAt: (6) put: (#[255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255]).
    recoveredValue24 := recoveredValue17.
    recoveredValue25 := CommonPrinting.
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
    recoveredValue32 := CwDoubleListSelectionPrompter.
    recoveredValue33 := recoveredLocal2.
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := (recoveredValue32) fromImage: (recoveredValue33) maskImage: (recoveredValue34).
    ^recoveredValue35
! !

"abtdau.ic method 0x20005a04; bytecode file offset 0x14dc8"
!AbtBaseWizard class methodsFor: 'recovered'!
vaSmalltalkIcon
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := CgRGBColor.
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
    (recoveredValue7) instVarAt: (6) put: (#[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 15 255 255 255 0 0 0 8 255 255 255 246 96 0 0 15 255 244 15 255 132 0 0 15 240 0 0 0 7 244 0 0 0 79 0 0 255 15 240 15 96 15 0 0 255 6 128 15 255 112 88 240 8 255 240 15 255 255 255 255 255 255 240 15 255 255 255 255 255 255 240 15 255 255 255 255 255 255 240 15 255 255 255 255 255 255 240 0 0 0 0 0 0 0 0]).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := CommonPrinting.
    recoveredValue10 := (recoveredValue9) basicNew.
    recoveredValue11 := recoveredValue10.
    (recoveredValue11) instVarAt: (1) put: (nil).
    recoveredValue12 := recoveredValue10.
    (recoveredValue12) instVarAt: (2) put: (#[0 0 0 0 0 0 0 0 191 191 0 0 0 0 0 0 0 0 191 191 0 0 0 0 191 191 191 191 0 0 0 0 0 0 0 0 191 191 0 0 191 191 0 0 191 191 0 0 0 0 191 191 191 191 0 0 192 192 192 192 192 192 0 0 128 128 128 128 128 128 0 0 255 255 0 0 0 0 0 0 0 0 255 255 0 0 0 0 255 255 255 255 0 0 0 0 0 0 0 0 255 255 0 0 255 255 0 0 255 255 0 0 0 0 255 255 255 255 0 0 255 255 255 255 255 255 0 0]).
    recoveredValue13 := recoveredValue10.
    (recoveredValue13) instVarAt: (3) put: (16).
    (recoveredValue8) instVarAt: (7) put: (recoveredValue10).
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) instVarAt: (8) put: (nil).
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) instVarAt: (9) put: (nil).
    recoveredLocal2 := recoveredValue1.
    recoveredValue16 := CgRGBColor.
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
    (recoveredValue23) instVarAt: (6) put: (#[255 255 0 0 255 255 0 0 255 255 0 0 255 255 0 0 255 255 0 0 255 255 0 0 255 255 0 0 255 255 0 0 255 255 0 0 255 255 0 0 255 255 0 0 255 255 0 0 255 255 0 0 255 255 0 0 255 255 0 0 255 255 0 0]).
    recoveredValue24 := recoveredValue17.
    recoveredValue25 := CommonPrinting.
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
    recoveredValue32 := CwDoubleListSelectionPrompter.
    recoveredValue33 := recoveredLocal2.
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := (recoveredValue32) fromImage: (recoveredValue33) maskImage: (recoveredValue34).
    ^recoveredValue35
! !

"abtdau.ic method 0x20005a34; bytecode file offset 0x14dc8"
!AbtBaseWizard class methodsFor: 'recovered'!
newFolderIcon
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := CgRGBColor.
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
    (recoveredValue7) instVarAt: (6) put: (#[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 15 255 0 0 0 0 0 0 248 184 255 248 0 0 0 0 251 139 139 135 0 0 0 0 248 184 184 183 0 0 0 0 251 139 139 135 0 0 0 0 248 184 184 183 0 0 0 0 247 119 119 119 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := CommonPrinting.
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
    recoveredValue16 := CgRGBColor.
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
    (recoveredValue23) instVarAt: (6) put: (#[0 0 255 255 0 32 255 255 0 32 255 255 2 34 255 255 1 36 255 255 28 8 255 255 63 192 255 255 127 231 255 255 127 224 255 255 127 232 255 255 127 228 255 255 127 226 255 255 127 224 255 255 63 192 255 255 0 0 255 255 0 0 255 255]).
    recoveredValue24 := recoveredValue17.
    recoveredValue25 := CommonPrinting.
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
    recoveredValue32 := CwDoubleListSelectionPrompter.
    recoveredValue33 := recoveredLocal2.
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := (recoveredValue32) fromImage: (recoveredValue33) maskImage: (recoveredValue34).
    ^recoveredValue35
! !

"abtdau.ic method 0x20005b1c; bytecode file offset 0x14eb0"
!AbtBaseWizard class methodsFor: 'recovered'!
lightBulbIcon
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) basicNew.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) instVarAt: (1) put: (32).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) instVarAt: (2) put: (32).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) instVarAt: (3) put: (4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) instVarAt: (4) put: (4).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) instVarAt: (5) put: (16).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) instVarAt: (6) put: (#[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 136 136 128 0 0 0 0 0 0 0 0 0 0 0 0 8 143 191 136 0 0 0 0 0 0 0 0 0 0 0 0 139 255 251 251 128 0 0 0 0 0 0 0 0 0 0 8 191 255 191 191 184 0 0 0 0 0 0 0 0 0 0 0 255 251 251 251 240 0 0 0 0 0 0 0 0 0 0 143 255 191 191 191 191 128 0 0 0 0 0 0 0 0 0 139 251 251 251 251 251 128 0 0 0 0 0 0 0 0 0 143 255 191 191 191 191 128 0 0 0 0 0 0 0 0 0 139 251 251 139 251 251 128 0 0 0 0 0 0 0 0 0 8 255 187 139 191 184 0 0 0 0 0 0 0 0 0 0 0 15 251 139 251 0 0 0 0 0 0 0 0 0 0 0 0 139 187 139 187 128 0 0 0 0 0 0 0 0 0 0 0 8 187 139 184 0 0 0 0 0 0 0 0 0 0 0 0 0 11 139 0 0 0 0 0 0 0 0 0 0 0 0 0 0 139 139 128 0 0 0 0 0 0 0 0 0 0 0 0 0 59 123 48 0 0 0 0 0 0 0 0 0 0 0 0 0 59 59 0 0 0 0 0 0 0 0 0 0 0 0 0 0 56 51 0 0 0 0 0 0 0 0 0 0 0 0 0 0 63 136 0 0 0 0 0 0 0 0 0 0 0 0 0 0 63 51 0 0 0 0 0 0 0 0 0 0 0 0 0 0 56 136 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8 51 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 112 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8 56 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := CommonPrinting.
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
    recoveredValue16 := CgRGBColor.
    recoveredValue17 := (recoveredValue16) basicNew.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) instVarAt: (1) put: (32).
    recoveredValue19 := recoveredValue17.
    (recoveredValue19) instVarAt: (2) put: (32).
    recoveredValue20 := recoveredValue17.
    (recoveredValue20) instVarAt: (3) put: (1).
    recoveredValue21 := recoveredValue17.
    (recoveredValue21) instVarAt: (4) put: (4).
    recoveredValue22 := recoveredValue17.
    (recoveredValue22) instVarAt: (5) put: (4).
    recoveredValue23 := recoveredValue17.
    (recoveredValue23) instVarAt: (6) put: (#[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 224 0 0 7 240 0 0 15 248 0 0 31 252 0 0 15 248 0 0 63 254 0 0 63 254 0 0 63 254 0 0 63 254 0 0 31 252 0 0 7 240 0 0 15 248 0 0 7 240 0 0 1 192 0 0 3 224 0 0 3 224 0 0 3 224 0 0 3 224 0 0 3 224 0 0 3 224 0 0 3 224 0 0 3 224 0 0 1 192 0 0 1 192 0 0 0 0 0 0 0 0 0 0 0 0 0]).
    recoveredValue24 := recoveredValue17.
    recoveredValue25 := CommonPrinting.
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
    recoveredValue32 := CwDoubleListSelectionPrompter.
    recoveredValue33 := recoveredLocal2.
    recoveredValue34 := recoveredLocal1.
    recoveredValue35 := (recoveredValue32) fromImage: (recoveredValue33) maskImage: (recoveredValue34).
    ^recoveredValue35
! !

