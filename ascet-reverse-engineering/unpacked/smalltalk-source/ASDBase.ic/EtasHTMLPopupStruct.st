"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004ada8; bytecode file offset 0x947768"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
cbStruct
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b814; bytecode file offset 0x948384"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
hinst
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c5f0; bytecode file offset 0x949118"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
idString
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ceec; bytecode file offset 0x949804"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
pText
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d804; bytecode file offset 0x94a0c8"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
clrForeground
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d950; bytecode file offset 0x94a238"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
clrBackground
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004dc54; bytecode file offset 0x94a518"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
pFont
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (48).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20093f10; bytecode file offset 0x9907c8"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
hinst: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (4) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093fac; bytecode file offset 0x990888"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
idString: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (8) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009412c; bytecode file offset 0x9909e4"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
clrForeground: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (24) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20094144; bytecode file offset 0x990a08"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
clrBackground: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) uint32At: (28) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a5cf8; bytecode file offset 0x9a25bc"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
cbStruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200ba53c; bytecode file offset 0x9b6dfc"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
pszText: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) copyToOSMemory.
    recoveredValue2 := (recoveredValue1) address.
    recoveredValue3 := (self) uint32At: (12) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ba594; bytecode file offset 0x9b6e54"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
pszFont: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) copyToOSMemory.
    recoveredValue2 := (recoveredValue1) address.
    recoveredValue3 := (self) uint32At: (48) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20137088; bytecode file offset 0xa33950"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
pt
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (16) type: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) x.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) y.
    recoveredValue6 := (recoveredValue3) @ (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20181fec; bytecode file offset 0xa7e8d0"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
pszFont
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pFont.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := OSStringZ.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) pFont.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) address: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20182008; bytecode file offset 0xa7e8d0"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
pszText
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pText.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := OSStringZ.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) pText.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) address: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ab4f4; bytecode file offset 0xaa7dc4"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
pt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) x.
    (recoveredValue2) x: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) y.
    recoveredValue7 := (recoveredValue1) y: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    (self) structAt: (16) put: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201ddb7c; bytecode file offset 0xada450"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
rcMargins
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := OSRect.
    recoveredValue1 := (self) structAt: (32) type: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := Rectangle.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) left.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) right.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) top.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) bottom.
    recoveredValue11 := (recoveredValue2) left: (recoveredValue4) right: (recoveredValue6) top: (recoveredValue8) bottom: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x20253e8c; bytecode file offset 0xb50754"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
freeElements
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pFont.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := OSPtr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) pFont.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) address: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) pText.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := OSPtr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) pText.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) address: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f8098; bytecode file offset 0xbf4980"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
rcMargins: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRectangle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OSRect.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) top.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) top: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) left: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) right.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) bottom.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) bottom: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) structAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) uint32At: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032b278; bytecode file offset 0xc27b6c"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super initialize.
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) fixedSize.
    (self) cbStruct: (recoveredValue1).
    (self) hinst: (0).
    (self) idString: (0).
    (self) pszText: ('').
    recoveredValue2 := (0) @ (0).
    (self) pt: (recoveredValue2).
    (self) clrForeground: (-1).
    (self) clrBackground: (-1).
    (self) rcMargins: (-1).
    (self) pszFont: ('Helvetica, 10, , ').
    ^self
! !

"ASDBase.ic method 0x204bbeb0; bytecode file offset 0xdb87cc"
!EtasHTMLPopupStruct methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := (recoveredValue3) , (' (').
    (recoveredValue1) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := (self) cbStruct.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('  cbStruct: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) cr.
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := (self) hinst.
    recoveredValue13 := (recoveredValue12) printString.
    recoveredValue14 := ('  hinst: ') , (recoveredValue13).
    (recoveredValue11) nextPutAll: (recoveredValue14).
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) cr.
    recoveredValue16 := recoveredValue0.
    recoveredValue17 := (self) idString.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := ('  idString: ') , (recoveredValue18).
    (recoveredValue16) nextPutAll: (recoveredValue19).
    recoveredValue20 := recoveredValue0.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue0.
    recoveredValue22 := (self) pszText.
    recoveredValue23 := (recoveredValue22) printString.
    recoveredValue24 := ('  pszText: ') , (recoveredValue23).
    (recoveredValue21) nextPutAll: (recoveredValue24).
    recoveredValue25 := recoveredValue0.
    (recoveredValue25) cr.
    recoveredValue26 := recoveredValue0.
    recoveredValue27 := (self) pt.
    recoveredValue28 := (recoveredValue27) printString.
    recoveredValue29 := ('  pt: ') , (recoveredValue28).
    (recoveredValue26) nextPutAll: (recoveredValue29).
    recoveredValue30 := recoveredValue0.
    (recoveredValue30) cr.
    recoveredValue31 := recoveredValue0.
    recoveredValue32 := (self) clrForeground.
    recoveredValue33 := (recoveredValue32) printString.
    recoveredValue34 := ('  clrForeground: ') , (recoveredValue33).
    (recoveredValue31) nextPutAll: (recoveredValue34).
    recoveredValue35 := recoveredValue0.
    (recoveredValue35) cr.
    recoveredValue36 := recoveredValue0.
    recoveredValue37 := (self) clrBackground.
    recoveredValue38 := (recoveredValue37) printString.
    recoveredValue39 := ('  clrBackground: ') , (recoveredValue38).
    (recoveredValue36) nextPutAll: (recoveredValue39).
    recoveredValue40 := recoveredValue0.
    (recoveredValue40) cr.
    recoveredValue41 := recoveredValue0.
    recoveredValue42 := (self) rcMargins.
    recoveredValue43 := (recoveredValue42) printString.
    recoveredValue44 := ('  rcMargins: ') , (recoveredValue43).
    (recoveredValue41) nextPutAll: (recoveredValue44).
    recoveredValue45 := recoveredValue0.
    (recoveredValue45) cr.
    recoveredValue46 := recoveredValue0.
    recoveredValue47 := (self) pszFont.
    recoveredValue48 := (recoveredValue47) printString.
    recoveredValue49 := ('  pszFont: ') , (recoveredValue48).
    (recoveredValue46) nextPutAll: (recoveredValue49).
    recoveredValue50 := recoveredValue0.
    (recoveredValue50) cr.
    (recoveredValue0) nextPutAll: (')').
    ^self
! !

