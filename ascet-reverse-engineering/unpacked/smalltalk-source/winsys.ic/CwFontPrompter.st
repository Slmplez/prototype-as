"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2000095c; bytecode file offset 0x7cc7c"
!CwFontPrompter methodsFor: 'recovered'!
defaultTitle
    | recoveredValue0 |
    recoveredValue0 := MxESTa12.
    ^recoveredValue0
! !

"winsys.ic method 0x20001fcc; bytecode file offset 0x7e190"
!CwFontPrompter methodsFor: 'recovered'!
charsetSelect: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) displayFont.
    ^self
! !

"winsys.ic method 0x200023e8; bytecode file offset 0x7e5b0"
!CwFontPrompter methodsFor: 'recovered'!
foundryNames
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := fontAssoc.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (recoveredValue1) asSortedCollection.
    ^recoveredValue2
! !

"winsys.ic method 0x20002570; bytecode file offset 0x7e738"
!CwFontPrompter methodsFor: 'recovered'!
useFontNameCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fontNames.
    recoveredValue1 := (recoveredValue0) = (#('*')).
    ^recoveredValue1
! !

"winsys.ic method 0x20003f98; bytecode file offset 0x80160"
!CwFontPrompter methodsFor: 'recovered'!
fontNames
    | recoveredValue0 |
    recoveredValue0 := fontNames.
    ^recoveredValue0
! !

"winsys.ic method 0x20005450; bytecode file offset 0x81618"
!CwFontPrompter methodsFor: 'recovered'!
showSample
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) display.
    recoveredValue1 := (self) shell.
    recoveredValue2 := (recoveredValue1) display.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x200082a8; bytecode file offset 0x84470"
!CwFontPrompter methodsFor: 'recovered'!
fontName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentFontName := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200083b0; bytecode file offset 0x84580"
!CwFontPrompter methodsFor: 'recovered'!
fontNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fontNames := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200083f4; bytecode file offset 0x845b4"
!CwFontPrompter methodsFor: 'recovered'!
display: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    display := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20009104; bytecode file offset 0x852d4"
!CwFontPrompter methodsFor: 'recovered'!
familyNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := fontAssoc.
    recoveredValue1 := foundryList.
    recoveredValue2 := (recoveredValue1) getString.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) keys.
    recoveredValue5 := (recoveredValue4) asSortedCollection.
    ^recoveredValue5
! !

"winsys.ic method 0x2000a8b0; bytecode file offset 0x86a7c"
!CwFontPrompter methodsFor: 'recovered'!
extStyleSelect: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateSizeInfo.
    (self) updateCharsetInfo.
    (self) displayFont.
    ^self
! !

"winsys.ic method 0x2000b478; bytecode file offset 0x87644"
!CwFontPrompter methodsFor: 'recovered'!
removeSizeCallback
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := sizeList.
    recoveredValue1 := XmNvalueChangedCallback.
    (recoveredValue0) removeCallback: (recoveredValue1) receiver: (self) selector: ('sizeSelect:clientData:callData:') clientData: (nil).
    ^self
! !

"winsys.ic method 0x2000b558; bytecode file offset 0x87748"
!CwFontPrompter methodsFor: 'recovered'!
createBulletinBoard
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (self) bulletinBoardArgs.
    recoveredValue2 := (recoveredValue0) createForm: ('form') argBlock: (recoveredValue1).
    (self) bulletinBoardWidget: (recoveredValue2).
    ^self
! !

"winsys.ic method 0x2000c130; bytecode file offset 0x88300"
!CwFontPrompter methodsFor: 'recovered'!
styles
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := fontAssoc.
    recoveredValue1 := foundryList.
    recoveredValue2 := (recoveredValue1) getString.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2).
    recoveredValue4 := familyList.
    recoveredValue5 := (recoveredValue4) getString.
    recoveredValue6 := (recoveredValue3) at: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) keys.
    recoveredValue8 := (recoveredValue7) asSortedCollection.
    ^recoveredValue8
! !

"winsys.ic method 0x2000c9fc; bytecode file offset 0x88bcc"
!CwFontPrompter methodsFor: 'recovered'!
styleSelect: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateExtStyleInfo.
    (self) updateSizeInfo.
    (self) updateCharsetInfo.
    (self) displayFont.
    ^self
! !

"winsys.ic method 0x2000d758; bytecode file offset 0x89928"
!CwFontPrompter methodsFor: 'recovered'!
cancel: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super cancel: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    recoveredValue3 := currentFont.
    recoveredValue4 := (recoveredValue3) fontStruct.
    (recoveredValue4) freeFont.
    ^self
! !

"winsys.ic method 0x2000dddc; bytecode file offset 0x89fa4"
!CwFontPrompter methodsFor: 'recovered'!
display
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := display.
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
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) display.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := display.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2000e298; bytecode file offset 0x8a468"
!CwFontPrompter methodsFor: 'recovered'!
updateFoundryInfo
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := foundryList.
    recoveredValue1 := (self) foundryNames.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    (recoveredValue0) items: (recoveredValue1).
    recoveredValue3 := foundryList.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) first.
    (recoveredValue3) setString: (recoveredValue5).
    ^self
! !

"winsys.ic method 0x2000ee5c; bytecode file offset 0x8b030"
!CwFontPrompter methodsFor: 'recovered'!
familySelect: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateStyleInfo.
    (self) updateExtStyleInfo.
    (self) updateSizeInfo.
    (self) updateCharsetInfo.
    (self) displayFont.
    ^self
! !

"winsys.ic method 0x2000ef30; bytecode file offset 0x8b10c"
!CwFontPrompter methodsFor: 'recovered'!
fontResolution
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) display.
    recoveredValue1 := (recoveredValue0) defaultFontStruct.
    recoveredValue2 := (recoveredValue1) logicalFontDescription.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) horizontalResolution.
    recoveredValue5 := (recoveredValue4) asNumber.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) verticalResolution.
    recoveredValue8 := (recoveredValue7) asNumber.
    recoveredValue9 := (recoveredValue5) @ (recoveredValue8).
    ^recoveredValue9
! !

"winsys.ic method 0x2000f6cc; bytecode file offset 0x8b89c"
!CwFontPrompter methodsFor: 'recovered'!
addSizeCallback
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := sizeList.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := XmNvalueChangedCallback.
    (recoveredValue1) removeAllCallbacks: (recoveredValue2).
    recoveredValue3 := XmNvalueChangedCallback.
    (recoveredValue0) addCallback: (recoveredValue3) receiver: (self) selector: ('sizeSelect:clientData:callData:') clientData: (nil).
    ^self
! !

"winsys.ic method 0x2000f728; bytecode file offset 0x8b8f8"
!CwFontPrompter methodsFor: 'recovered'!
extStyles
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := fontAssoc.
    recoveredValue1 := foundryList.
    recoveredValue2 := (recoveredValue1) getString.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2).
    recoveredValue4 := familyList.
    recoveredValue5 := (recoveredValue4) getString.
    recoveredValue6 := (recoveredValue3) at: (recoveredValue5).
    recoveredValue7 := styleList.
    recoveredValue8 := (recoveredValue7) getString.
    recoveredValue9 := (recoveredValue6) at: (recoveredValue8).
    recoveredValue10 := (recoveredValue9) keys.
    recoveredValue11 := (recoveredValue10) asSortedCollection.
    ^recoveredValue11
! !

"winsys.ic method 0x200121e8; bytecode file offset 0x8e3c0"
!CwFontPrompter methodsFor: 'recovered'!
initialize
    super initialize.
    (self) display: (nil).
    (self) fontName: (nil).
    (self) fontNames: (#('*')).
    ^self
! !

"winsys.ic method 0x2001253c; bytecode file offset 0x8e714"
!CwFontPrompter methodsFor: 'recovered'!
foundrySelect: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateFamilyInfo.
    (self) updateStyleInfo.
    (self) updateExtStyleInfo.
    (self) updateSizeInfo.
    (self) updateCharsetInfo.
    (self) displayFont.
    ^self
! !

"winsys.ic method 0x200129bc; bytecode file offset 0x8eb88"
!CwFontPrompter methodsFor: 'recovered'!
realSizes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := fontAssoc.
    recoveredValue1 := foundryList.
    recoveredValue2 := (recoveredValue1) getString.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2).
    recoveredValue4 := familyList.
    recoveredValue5 := (recoveredValue4) getString.
    recoveredValue6 := (recoveredValue3) at: (recoveredValue5).
    recoveredValue7 := styleList.
    recoveredValue8 := (recoveredValue7) getString.
    recoveredValue9 := (recoveredValue6) at: (recoveredValue8).
    recoveredValue10 := extStyleList.
    recoveredValue11 := (recoveredValue10) getString.
    recoveredValue12 := (recoveredValue9) at: (recoveredValue11).
    recoveredValue13 := (recoveredValue12) keys.
    ^recoveredValue13
! !

"winsys.ic method 0x20013098; bytecode file offset 0x8f268"
!CwFontPrompter methodsFor: 'recovered'!
sizeAsNumber
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sizeList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) floatFrom: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20013bac; bytecode file offset 0x8fd8c"
!CwFontPrompter methodsFor: 'recovered'!
sizeSelect: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (recoveredValue0) window.
    recoveredValue2 := (self) shell.
    recoveredValue3 := (recoveredValue2) display.
    recoveredValue4 := (recoveredValue3) busyCursor.
    (recoveredValue1) defineCursor: (recoveredValue4).
    (self) updateCharsetInfo.
    (self) displayFont.
    recoveredValue5 := (self) shell.
    recoveredValue6 := (recoveredValue5) window.
    (recoveredValue6) undefineCursor.
    ^self
! !

"winsys.ic method 0x2001633c; bytecode file offset 0x92514"
!CwFontPrompter methodsFor: 'recovered'!
charsetFrom: recoveredArg1 indices: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := '<none>'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20017724; bytecode file offset 0x938f8"
!CwFontPrompter methodsFor: 'recovered'!
foundryFrom: recoveredArg1 indices: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := '<none>'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20017760; bytecode file offset 0x93934"
!CwFontPrompter methodsFor: 'recovered'!
familyFrom: recoveredArg1 indices: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := '<none>'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2001779c; bytecode file offset 0x93970"
!CwFontPrompter methodsFor: 'recovered'!
extStyleFrom: recoveredArg1 indices: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := 7.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := '<none>'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20017b08; bytecode file offset 0x93cdc"
!CwFontPrompter methodsFor: 'recovered'!
bulletinBoardArgs
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredBlock4Value0.
    (recoveredBlock4Value1) marginWidth: (3).
    recoveredBlock4Value2 := recoveredBlock4Value0.
    (recoveredBlock4Value2) marginHeight: (3).
    recoveredBlock4Value3 := recoveredBlock4Value0.
    recoveredBlock4Value4 := (self) dialogStyle.
    (recoveredBlock4Value3) dialogStyle: (recoveredBlock4Value4).
    recoveredBlock4Value5 := (recoveredBlock4Value0) mappedWhenManaged: (true).
    recoveredBlock4Value5
].
    ^recoveredValue0
! !

"winsys.ic method 0x20019aa0; bytecode file offset 0x95c80"
!CwFontPrompter methodsFor: 'recovered'!
shellArgs
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredBlock4Value0.
    recoveredBlock4Value2 := (self) title.
    (recoveredBlock4Value1) title: (recoveredBlock4Value2).
    recoveredBlock4Value3 := recoveredBlock4Value0.
    recoveredBlock4Value4 := MWMDECORMENU.
    recoveredBlock4Value5 := MWMDECORBORDER.
    recoveredBlock4Value6 := (recoveredBlock4Value4) | (recoveredBlock4Value5).
    recoveredBlock4Value7 := MWMDECORTITLE.
    recoveredBlock4Value8 := (recoveredBlock4Value6) | (recoveredBlock4Value7).
    (recoveredBlock4Value3) mwmDecorations: (recoveredBlock4Value8).
    recoveredBlock4Value9 := (recoveredBlock4Value0) mappedWhenManaged: (false).
    recoveredBlock4Value9
].
    ^recoveredValue0
! !

"winsys.ic method 0x20019dcc; bytecode file offset 0x95f9c"
!CwFontPrompter methodsFor: 'recovered'!
fontResolutionFrom: recoveredArg1 indices: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) at: (9).
    recoveredValue3 := (recoveredValue2) + (1).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) at: (10).
    recoveredValue6 := (recoveredValue5) + (-1).
    recoveredValue7 := (recoveredValue0) copyFrom: (recoveredValue3) to: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) asNumber.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue10) at: (10).
    recoveredValue12 := (recoveredValue11) + (1).
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := (recoveredValue13) at: (11).
    recoveredValue15 := (recoveredValue14) + (-1).
    recoveredValue16 := (recoveredValue9) copyFrom: (recoveredValue12) to: (recoveredValue15).
    recoveredValue17 := (recoveredValue16) asNumber.
    recoveredValue18 := (recoveredValue8) @ (recoveredValue17).
    ^recoveredValue18
! !

"winsys.ic method 0x2001c984; bytecode file offset 0x98b6c"
!CwFontPrompter methodsFor: 'recovered'!
ok: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super ok: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := currentFontName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := currentFont.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) freeFont.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) display.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := CgDisplay.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) result.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            LastFont := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001ca30; bytecode file offset 0x98c14"
!CwFontPrompter methodsFor: 'recovered'!
sizes
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) realSizes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := #(6 7 8 9 10 11 12 13 14 15 16 17 18 20 22 24 26 28 32 48 96).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:block28008f20Arg1 | 
    | block28008f20Value0 block28008f20Value1 |
    block28008f20Value0 := block28008f20Arg1.
    block28008f20Value1 := (block28008f20Value0) printString.
    block28008f20Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001ef7c; bytecode file offset 0x9b158"
!CwFontPrompter methodsFor: 'recovered'!
updateFamilyInfo
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := familyList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := familyList.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) familyNames.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := familyList.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := familyList.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001efcc; bytecode file offset 0x9b1a8"
!CwFontPrompter methodsFor: 'recovered'!
updateCharsetInfo
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := charsetList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := charsetList.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) charsets.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := charsetList.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := charsetList.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2002079c; bytecode file offset 0x9c980"
!CwFontPrompter methodsFor: 'recovered'!
slantString: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'i'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := MxESTa17.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'o'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := MxESTa18.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'ri'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := MxESTa19.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'ro'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := MxESTa20.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200219c4; bytecode file offset 0x9dba0"
!CwFontPrompter methodsFor: 'recovered'!
styleFrom: recoveredArg1 indices: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := 4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := 5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) asLowercase.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) slantString: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := '<none>'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200220e8; bytecode file offset 0x9e2c0"
!CwFontPrompter methodsFor: 'recovered'!
charsets
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fontAssoc.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := foundryList.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := familyList.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := styleList.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := extStyleList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) sizeAsNumber.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200256b4; bytecode file offset 0xa1894"
!CwFontPrompter methodsFor: 'recovered'!
updateStyleInfo
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := styleList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := styleList.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) styles.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := styleList.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'medium'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := styleList.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 'medium'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := styleList.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2002571c; bytecode file offset 0xa18fc"
!CwFontPrompter methodsFor: 'recovered'!
updateExtStyleInfo
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := extStyleList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := extStyleList.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) extStyles.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := extStyleList.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'medium'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := extStyleList.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 'medium'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := extStyleList.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20025ba0; bytecode file offset 0xa1d78"
!CwFontPrompter methodsFor: 'recovered'!
floatFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := $..
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) indexOf: (recoveredStack4).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := $..
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexOf: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 38] ifFalse: [recoveredPC := 53]] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200272a8; bytecode file offset 0xa3494"
!CwFontPrompter methodsFor: 'recovered'!
slant: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := '*'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 recoveredBlock30Value4 recoveredBlock30Value5 recoveredBlock30Value6 |
    recoveredBlock30Value0 := recoveredLocal1.
    recoveredBlock30Value1 := String.
    recoveredBlock30Value2 := recoveredBlock30Arg1.
    recoveredBlock30Value3 := (recoveredBlock30Value2) first.
    recoveredBlock30Value4 := (recoveredBlock30Value1) with: (recoveredBlock30Value3).
    recoveredBlock30Value5 := (recoveredBlock30Value0) , (recoveredBlock30Value4).
    recoveredBlock30Value6 := recoveredBlock30Value5.
    recoveredLocal1 := recoveredBlock30Value6.
    recoveredBlock30Value5
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 'r'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20029734; bytecode file offset 0xa590c"
!CwFontPrompter methodsFor: 'recovered'!
sizeFrom: recoveredArg1 indices: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := 8.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := 9.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := '0'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := '0'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2002bb50; bytecode file offset 0xa7d50"
!CwFontPrompter methodsFor: 'recovered'!
openPrompter
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super openPrompter.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) updateFoundryInfo.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) updateFamilyInfo.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) updateStyleInfo.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) updateExtStyleInfo.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) updateSizeInfo.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) updateCharsetInfo.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := currentFontName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := LastFont.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) display.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := CgDisplay.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := LastFont.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            currentFontName := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := currentFontName.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := lastFontFailed.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            lastFontFailed := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) initUserPreferredFont.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            currentFontName := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            lastFontFailed := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) displayFont.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) mapWidget.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2003323c; bytecode file offset 0xaf444"
!CwFontPrompter methodsFor: 'recovered'!
updateSizeInfo
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sizeList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) realSizes.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) sizes.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := SortedCollection.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:block2800937cArg1 :block2800937cArg2 | 
    | block2800937cValue0 block2800937cValue1 block2800937cValue2 block2800937cValue3 block2800937cValue4 |
    block2800937cValue0 := block2800937cArg1.
    block2800937cValue1 := (block2800937cValue0) asNumber.
    block2800937cValue2 := block2800937cArg2.
    block2800937cValue3 := (block2800937cValue2) asNumber.
    block2800937cValue4 := (block2800937cValue1) < (block2800937cValue3).
    block2800937cValue4
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := sizeList.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := sizeList.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := '14'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := sizeList.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := '14'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := sizeList.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := sizeList.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) addSizeCallback.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := sizeList.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) removeSizeCallback.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200339dc; bytecode file offset 0xafbc4"
!CwFontPrompter methodsFor: 'recovered'!
closestToScreenResFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (5000) @ (5000).
    recoveredValue1 := recoveredValue0.
    recoveredLocal5 := recoveredValue1.
    recoveredLocal4 := recoveredValue0.
    recoveredValue2 := (self) fontResolution.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Local1 recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27Stack5 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := OrderedCollection.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            recoveredBlock27Stack2 := 14.
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) new: (recoveredBlock27Stack2).
            recoveredBlock27PC := 39.
        ].
        recoveredBlock27Step = 39 ifTrue: [
            recoveredLocal1 := recoveredBlock27Stack1.
            recoveredBlock27PC := 42.
        ].
        recoveredBlock27Step = 42 ifTrue: [
            recoveredBlock27Stack1 := 0.
            recoveredBlock27PC := 44.
        ].
        recoveredBlock27Step = 44 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack1.
            recoveredBlock27PC := 45.
        ].
        recoveredBlock27Step = 45 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 46.
        ].
        recoveredBlock27Step = 46 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) size.
            recoveredBlock27PC := 48.
        ].
        recoveredBlock27Step = 48 ifTrue: [
            recoveredBlock27PC := 70.
        ].
        recoveredBlock27Step = 52 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 53.
        ].
        recoveredBlock27Step = 53 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Local1.
            recoveredBlock27PC := 54.
        ].
        recoveredBlock27Step = 54 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) at: (recoveredBlock27Stack3).
            recoveredBlock27PC := 56.
        ].
        recoveredBlock27Step = 56 ifTrue: [
            recoveredBlock27Stack3 := $-.
            recoveredBlock27PC := 60.
        ].
        recoveredBlock27Step = 60 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) = (recoveredBlock27Stack3).
            recoveredBlock27PC := 61.
        ].
        recoveredBlock27Step = 61 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 64] ifFalse: [recoveredBlock27PC := 70].
        ].
        recoveredBlock27Step = 64 ifTrue: [
            recoveredBlock27Stack2 := recoveredLocal1.
            recoveredBlock27PC := 67.
        ].
        recoveredBlock27Step = 67 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Local1.
            recoveredBlock27PC := 68.
        ].
        recoveredBlock27Step = 68 ifTrue: [
            (recoveredBlock27Stack2) add: (recoveredBlock27Stack3).
            recoveredBlock27PC := 70.
        ].
        recoveredBlock27Step = 70 ifTrue: [
            (recoveredBlock27Stack1 isInteger and: [recoveredBlock27Local1 isInteger]) ifTrue: [(recoveredBlock27Local1 + 1 <= recoveredBlock27Stack1) ifTrue: [recoveredBlock27Local1 := recoveredBlock27Local1 + 1. recoveredBlock27PC := 52] ifFalse: [recoveredBlock27Local1 := nil. recoveredBlock27PC := 84]] ifFalse: [recoveredBlock27PC := 74].
        ].
        recoveredBlock27Step = 74 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 75.
        ].
        recoveredBlock27Step = 75 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Local1.
            recoveredBlock27PC := 76.
        ].
        recoveredBlock27Step = 76 ifTrue: [
            recoveredBlock27Stack3 := (recoveredBlock27Stack3) + (1).
            recoveredBlock27PC := 77.
        ].
        recoveredBlock27Step = 77 ifTrue: [
            recoveredBlock27Stack4 := recoveredBlock27Stack3.
            recoveredBlock27PC := 78.
        ].
        recoveredBlock27Step = 78 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack4.
            recoveredBlock27PC := 79.
        ].
        recoveredBlock27Step = 79 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) < (recoveredBlock27Stack3).
            recoveredBlock27PC := 80.
        ].
        recoveredBlock27Step = 80 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 82] ifFalse: [recoveredBlock27PC := 52].
        ].
        recoveredBlock27Step = 82 ifTrue: [
            recoveredBlock27Stack2 := nil.
            recoveredBlock27PC := 83.
        ].
        recoveredBlock27Step = 83 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack2.
            recoveredBlock27PC := 84.
        ].
        recoveredBlock27Step = 84 ifTrue: [
            recoveredBlock27PC := 85.
        ].
        recoveredBlock27Step = 85 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 86.
        ].
        recoveredBlock27Step = 86 ifTrue: [
            recoveredBlock27Stack2 := recoveredLocal1.
            recoveredBlock27PC := 89.
        ].
        recoveredBlock27Step = 89 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) fontResolutionFrom: (recoveredBlock27Stack1) indices: (recoveredBlock27Stack2).
            recoveredBlock27PC := 91.
        ].
        recoveredBlock27Step = 91 ifTrue: [
            recoveredLocal3 := recoveredBlock27Stack0.
            recoveredBlock27PC := 94.
        ].
        recoveredBlock27Step = 94 ifTrue: [
            recoveredBlock27Stack0 := nil.
            recoveredBlock27PC := 95.
        ].
        recoveredBlock27Step = 95 ifTrue: [
            recoveredBlock27Stack1 := recoveredLocal3.
            recoveredBlock27PC := 98.
        ].
        recoveredBlock27Step = 98 ifTrue: [
            recoveredBlock27Stack2 := recoveredLocal2.
            recoveredBlock27PC := 101.
        ].
        recoveredBlock27Step = 101 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) - (recoveredBlock27Stack2).
            recoveredBlock27PC := 102.
        ].
        recoveredBlock27Step = 102 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) abs.
            recoveredBlock27PC := 104.
        ].
        recoveredBlock27Step = 104 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 105.
        ].
        recoveredBlock27Step = 105 ifTrue: [
            recoveredLocal4 := recoveredBlock27Stack2.
            recoveredBlock27PC := 108.
        ].
        recoveredBlock27Step = 108 ifTrue: [
            recoveredBlock27Stack2 := recoveredLocal5.
            recoveredBlock27PC := 111.
        ].
        recoveredBlock27Step = 111 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) < (recoveredBlock27Stack2).
            recoveredBlock27PC := 112.
        ].
        recoveredBlock27Step = 112 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 116] ifFalse: [recoveredBlock27PC := 128].
        ].
        recoveredBlock27Step = 116 ifTrue: [
            recoveredBlock27PC := 117.
        ].
        recoveredBlock27Step = 117 ifTrue: [
            recoveredBlock27Stack0 := recoveredLocal4.
            recoveredBlock27PC := 120.
        ].
        recoveredBlock27Step = 120 ifTrue: [
            recoveredLocal5 := recoveredBlock27Stack0.
            recoveredBlock27PC := 123.
        ].
        recoveredBlock27Step = 123 ifTrue: [
            recoveredBlock27Stack0 := recoveredBlock27Arg1.
            recoveredBlock27PC := 124.
        ].
        recoveredBlock27Step = 124 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Stack0.
            recoveredBlock27PC := 125.
        ].
        recoveredBlock27Step = 125 ifTrue: [
            recoveredLocal6 := recoveredBlock27Stack1.
            recoveredBlock27PC := 128.
        ].
        recoveredBlock27Step = 128 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack0.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal6.
    ^recoveredValue5
! !

"winsys.ic method 0x20038734; bytecode file offset 0xb4920"
!CwFontPrompter methodsFor: 'recovered'!
isoName: recoveredArg1 family: recoveredArg2 weight: recoveredArg3 slant: recoveredArg4 extStyle: recoveredArg5 size: recoveredArg6 charset: recoveredArg7
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontResolution.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := '<none>'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := '<none>'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := '<none>'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := '<none>'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredArg7.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := '<none>'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := '*'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredArg7.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := '-'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := '-'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := '-'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := '-'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := '-*-'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := '-*-'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := '-'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := '-'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := '-*-*-'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20041f70; bytecode file offset 0xbe1cc"
!CwFontPrompter methodsFor: 'recovered'!
displayFont
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := currentFont.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := styleList.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) sizeAsNumber.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := fontAssoc.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := foundryList.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := familyList.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := styleList.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := extStyleList.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := charsetList.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := fontLabel.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := MxESTa13.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := charsetList.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) closestToScreenResFrom: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := fontLabel.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := MxESTa14.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := foundryList.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := familyList.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack5 := recoveredLocal9.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := (recoveredStack4) slant: (recoveredStack5).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack5 := extStyleList.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack5 := (recoveredStack5) getString.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack6 := recoveredLocal5.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack7 := 10.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack6 := (recoveredStack6) * (recoveredStack7).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack6 := (recoveredStack6) asInteger.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack6 := (recoveredStack6) printString.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack7 := charsetList.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack7 := (recoveredStack7) getString.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) isoName: (recoveredStack1) family: (recoveredStack2) weight: (recoveredStack3) slant: (recoveredStack4) extStyle: (recoveredStack5) size: (recoveredStack6) charset: (recoveredStack7).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) display.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadQueryFont: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 203] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) showSample.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := sampleText.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := NlsCatESTa.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredPC := 194.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := fontLabel.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := NlsCatESTa.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            lastFontFailed := recoveredStack0.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            currentFont := recoveredStack0.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := CwFontList.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct: (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            currentFont := recoveredStack0.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := spacingLabel.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := CgLogicalFontDescription.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := currentFont.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := (recoveredStack0) spacing.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := 'p'.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := spacingLabel.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := MxESTa51.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := 'm'.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := 'c'.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 274].
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := spacingLabel.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := MxESTa52.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := lastFontFailed.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 280] ifFalse: [recoveredPC := 295].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := (recoveredStack0) showSample.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 292].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := sampleText.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := MxESTa15.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            lastFontFailed := recoveredStack0.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := (recoveredStack0) showSample.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 308].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := sampleText.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := currentFont.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack0) fontList: (recoveredStack1).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 320] ifFalse: [recoveredPC := 314].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack0) freeFont.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := currentFont.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            currentFontName := recoveredStack0.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20046360; bytecode file offset 0xc25b4"
!CwFontPrompter methodsFor: 'recovered'!
initUserPreferredFont
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) display.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := currentFontName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadQueryFont: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            currentFontName := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := CwFontList.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            currentFont := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := currentFontName.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal18 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := $-.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) occurrencesOf: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 14.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 14.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 66] ifFalse: [recoveredLocal1 := nil. recoveredPC := 97]] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) foundryFrom: (recoveredStack1) indices: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal17 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) familyFrom: (recoveredStack1) indices: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal16 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) styleFrom: (recoveredStack1) indices: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) extStyleFrom: (recoveredStack1) indices: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) sizeFrom: (recoveredStack1) indices: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) printString.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := '0'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := '14'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) charsetFrom: (recoveredStack1) indices: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := foundryList.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := familyList.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := styleList.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := extStyleList.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := sizeList.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := charsetList.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := foundryList.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 380].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := foundryList.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) updateFamilyInfo.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := familyList.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 380].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := familyList.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) updateStyleInfo.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := styleList.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 380].
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := styleList.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack0) updateExtStyleInfo.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := extStyleList.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 380].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := extStyleList.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) updateSizeInfo.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := sizeList.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 304] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := (recoveredStack0) realSizes.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 304] ifFalse: [recoveredPC := 380].
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := sizeList.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 352] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := SortedCollection.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := [:block280095bcArg1 :block280095bcArg2 | 
    | block280095bcValue0 block280095bcValue1 block280095bcValue2 block280095bcValue3 block280095bcValue4 |
    block280095bcValue0 := block280095bcArg1.
    block280095bcValue1 := (block280095bcValue0) asNumber.
    block280095bcValue2 := block280095bcArg2.
    block280095bcValue3 := (block280095bcValue2) asNumber.
    block280095bcValue4 := (block280095bcValue1) < (block280095bcValue3).
    block280095bcValue4
].
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := sizeList.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := sizeList.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := sizeList.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack0) updateCharsetInfo.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack0 := charsetList.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 372] ifFalse: [recoveredPC := 380].
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := charsetList.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 384] ifFalse: [recoveredPC := 437].
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack0 := foundryList.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            (recoveredStack0) updateFamilyInfo.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack0 := familyList.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            (recoveredStack0) updateStyleInfo.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := styleList.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            (recoveredStack0) updateExtStyleInfo.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack0 := extStyleList.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack0) updateSizeInfo.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := sizeList.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            (recoveredStack0) updateCharsetInfo.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack0 := charsetList.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20046840; bytecode file offset 0xc2ac0"
!CwFontPrompter methodsFor: 'recovered'!
loadFonts
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) display.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) useFontNameCache.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := DisplayFonts.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := DisplayFonts.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            fontAssoc := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := CwWorkingDialog.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) for: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := MxESTa16.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) open.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal16 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontNames.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Local1 recoveredBlock65Stack0 recoveredBlock65Stack1 recoveredBlock65Stack2 recoveredBlock65Stack3 recoveredBlock65Stack4 recoveredBlock65PC recoveredBlock65Step recoveredBlock65Done recoveredBlock65Result |
    recoveredBlock65Stack0 := self.
    recoveredBlock65PC := 72.
    recoveredBlock65Done := false.
    [recoveredBlock65Done not] whileTrue: [
        recoveredBlock65Step := recoveredBlock65PC.
        recoveredBlock65Step = 72 ifTrue: [
            recoveredBlock65Stack1 := recoveredLocal2.
            recoveredBlock65PC := 75.
        ].
        recoveredBlock65Step = 75 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Arg1.
            recoveredBlock65PC := 76.
        ].
        recoveredBlock65Step = 76 ifTrue: [
            recoveredBlock65Stack3 := 10000.
            recoveredBlock65PC := 80.
        ].
        recoveredBlock65Step = 80 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) listFonts: (recoveredBlock65Stack2) maxnames: (recoveredBlock65Stack3).
            recoveredBlock65PC := 82.
        ].
        recoveredBlock65Step = 82 ifTrue: [
            recoveredBlock65Local1 := recoveredBlock65Stack1.
            recoveredBlock65PC := 83.
        ].
        recoveredBlock65Step = 83 ifTrue: [
            recoveredBlock65Stack1 := recoveredLocal16.
            recoveredBlock65PC := 86.
        ].
        recoveredBlock65Step = 86 ifTrue: [
            (recoveredBlock65Stack1 ~~ nil) ifTrue: [recoveredBlock65PC := 100] ifFalse: [recoveredBlock65PC := 90].
        ].
        recoveredBlock65Step = 90 ifTrue: [
            recoveredBlock65Stack1 := recoveredBlock65Local1.
            recoveredBlock65PC := 91.
        ].
        recoveredBlock65Step = 91 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) asSet.
            recoveredBlock65PC := 93.
        ].
        recoveredBlock65Step = 93 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Stack1.
            recoveredBlock65PC := 94.
        ].
        recoveredBlock65Step = 94 ifTrue: [
            recoveredLocal16 := recoveredBlock65Stack2.
            recoveredBlock65PC := 97.
        ].
        recoveredBlock65Step = 97 ifTrue: [
            recoveredBlock65PC := 106.
        ].
        recoveredBlock65Step = 100 ifTrue: [
            recoveredBlock65Stack1 := recoveredLocal16.
            recoveredBlock65PC := 103.
        ].
        recoveredBlock65Step = 103 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Local1.
            recoveredBlock65PC := 104.
        ].
        recoveredBlock65Step = 104 ifTrue: [
            recoveredBlock65Stack1 := (recoveredBlock65Stack1) addAll: (recoveredBlock65Stack2).
            recoveredBlock65PC := 106.
        ].
        recoveredBlock65Step = 106 ifTrue: [
            recoveredBlock65Result := recoveredBlock65Stack1.
            recoveredBlock65Done := true.
        ].
    ].
    recoveredBlock65Result
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := [:block280095e0Arg1 | 
    | block280095e0Value0 block280095e0Value1 block280095e0Value2 |
    block280095e0Value0 := block280095e0Arg1.
    block280095e0Value1 := (block280095e0Value0) first.
    block280095e0Value2 := (block280095e0Value1) ~= ($-).
    block280095e0Value2
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultFontStruct.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal16 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            fontAssoc := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := [:recoveredBlock169Arg1 | 
    | recoveredBlock169Stack0 recoveredBlock169Stack1 recoveredBlock169Stack2 recoveredBlock169Stack3 recoveredBlock169Stack4 recoveredBlock169PC recoveredBlock169Step recoveredBlock169Done recoveredBlock169Result |
    recoveredBlock169Stack0 := self.
    recoveredBlock169PC := 176.
    recoveredBlock169Done := false.
    [recoveredBlock169Done not] whileTrue: [
        recoveredBlock169Step := recoveredBlock169PC.
        recoveredBlock169Step = 176 ifTrue: [
            recoveredBlock169Stack1 := nil.
            recoveredBlock169PC := 177.
        ].
        recoveredBlock169Step = 177 ifTrue: [
            recoveredBlock169Stack2 := recoveredBlock169Arg1.
            recoveredBlock169PC := 178.
        ].
        recoveredBlock169Step = 178 ifTrue: [
            recoveredBlock169Stack2 := (recoveredBlock169Stack2) first.
            recoveredBlock169PC := 180.
        ].
        recoveredBlock169Step = 180 ifTrue: [
            recoveredBlock169Stack3 := $-.
            recoveredBlock169PC := 184.
        ].
        recoveredBlock169Step = 184 ifTrue: [
            recoveredBlock169Stack2 := (recoveredBlock169Stack2) = (recoveredBlock169Stack3).
            recoveredBlock169PC := 185.
        ].
        recoveredBlock169Step = 185 ifTrue: [
            (recoveredBlock169Stack2) ifTrue: [recoveredBlock169PC := 188] ifFalse: [recoveredBlock169PC := 422].
        ].
        recoveredBlock169Step = 188 ifTrue: [
            recoveredBlock169PC := 189.
        ].
        recoveredBlock169Step = 189 ifTrue: [
            recoveredBlock169Stack1 := OrderedCollection.
            recoveredBlock169PC := 191.
        ].
        recoveredBlock169Step = 191 ifTrue: [
            recoveredBlock169Stack2 := 14.
            recoveredBlock169PC := 193.
        ].
        recoveredBlock169Step = 193 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) new: (recoveredBlock169Stack2).
            recoveredBlock169PC := 195.
        ].
        recoveredBlock169Step = 195 ifTrue: [
            recoveredLocal3 := recoveredBlock169Stack1.
            recoveredBlock169PC := 198.
        ].
        recoveredBlock169Step = 198 ifTrue: [
            recoveredBlock169Stack1 := recoveredBlock169Arg1.
            recoveredBlock169PC := 199.
        ].
        recoveredBlock169Step = 199 ifTrue: [
            recoveredBlock169Stack2 := [:recoveredBlock169Block199Arg1 :recoveredBlock169Block199Arg2 | 
    | recoveredBlock169Block199Stack0 recoveredBlock169Block199Stack1 recoveredBlock169Block199Stack2 recoveredBlock169Block199Stack3 recoveredBlock169Block199Stack4 recoveredBlock169Block199PC recoveredBlock169Block199Step recoveredBlock169Block199Done recoveredBlock169Block199Result |
    recoveredBlock169Block199Stack0 := nil.
    recoveredBlock169Block199PC := 206.
    recoveredBlock169Block199Done := false.
    [recoveredBlock169Block199Done not] whileTrue: [
        recoveredBlock169Block199Step := recoveredBlock169Block199PC.
        recoveredBlock169Block199Step = 206 ifTrue: [
            recoveredBlock169Block199Stack1 := nil.
            recoveredBlock169Block199PC := 207.
        ].
        recoveredBlock169Block199Step = 207 ifTrue: [
            recoveredBlock169Block199Stack2 := recoveredBlock169Block199Arg1.
            recoveredBlock169Block199PC := 208.
        ].
        recoveredBlock169Block199Step = 208 ifTrue: [
            recoveredBlock169Block199Stack3 := $-.
            recoveredBlock169Block199PC := 212.
        ].
        recoveredBlock169Block199Step = 212 ifTrue: [
            (recoveredBlock169Block199Stack2 ~~ recoveredBlock169Block199Stack3) ifTrue: [recoveredBlock169Block199PC := 223] ifFalse: [recoveredBlock169Block199PC := 216].
        ].
        recoveredBlock169Block199Step = 216 ifTrue: [
            recoveredBlock169Block199PC := 217.
        ].
        recoveredBlock169Block199Step = 217 ifTrue: [
            recoveredBlock169Block199Stack1 := recoveredLocal3.
            recoveredBlock169Block199PC := 220.
        ].
        recoveredBlock169Block199Step = 220 ifTrue: [
            recoveredBlock169Block199Stack2 := recoveredBlock169Block199Arg2.
            recoveredBlock169Block199PC := 221.
        ].
        recoveredBlock169Block199Step = 221 ifTrue: [
            recoveredBlock169Block199Stack1 := (recoveredBlock169Block199Stack1) add: (recoveredBlock169Block199Stack2).
            recoveredBlock169Block199PC := 223.
        ].
        recoveredBlock169Block199Step = 223 ifTrue: [
            recoveredBlock169Block199Result := recoveredBlock169Block199Stack1.
            recoveredBlock169Block199Done := true.
        ].
    ].
    recoveredBlock169Block199Result
].
            recoveredBlock169PC := 224.
        ].
        recoveredBlock169Step = 224 ifTrue: [
            (recoveredBlock169Stack1) doWithIndex: (recoveredBlock169Stack2).
            recoveredBlock169PC := 226.
        ].
        recoveredBlock169Step = 226 ifTrue: [
            recoveredBlock169Stack1 := self.
            recoveredBlock169PC := 227.
        ].
        recoveredBlock169Step = 227 ifTrue: [
            recoveredBlock169Stack2 := recoveredBlock169Arg1.
            recoveredBlock169PC := 228.
        ].
        recoveredBlock169Step = 228 ifTrue: [
            recoveredBlock169Stack3 := recoveredLocal3.
            recoveredBlock169PC := 231.
        ].
        recoveredBlock169Step = 231 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) foundryFrom: (recoveredBlock169Stack2) indices: (recoveredBlock169Stack3).
            recoveredBlock169PC := 233.
        ].
        recoveredBlock169Step = 233 ifTrue: [
            recoveredLocal15 := recoveredBlock169Stack1.
            recoveredBlock169PC := 236.
        ].
        recoveredBlock169Step = 236 ifTrue: [
            recoveredBlock169Stack1 := self.
            recoveredBlock169PC := 237.
        ].
        recoveredBlock169Step = 237 ifTrue: [
            recoveredBlock169Stack2 := recoveredBlock169Arg1.
            recoveredBlock169PC := 238.
        ].
        recoveredBlock169Step = 238 ifTrue: [
            recoveredBlock169Stack3 := recoveredLocal3.
            recoveredBlock169PC := 241.
        ].
        recoveredBlock169Step = 241 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) familyFrom: (recoveredBlock169Stack2) indices: (recoveredBlock169Stack3).
            recoveredBlock169PC := 243.
        ].
        recoveredBlock169Step = 243 ifTrue: [
            recoveredLocal14 := recoveredBlock169Stack1.
            recoveredBlock169PC := 246.
        ].
        recoveredBlock169Step = 246 ifTrue: [
            recoveredBlock169Stack1 := self.
            recoveredBlock169PC := 247.
        ].
        recoveredBlock169Step = 247 ifTrue: [
            recoveredBlock169Stack2 := recoveredBlock169Arg1.
            recoveredBlock169PC := 248.
        ].
        recoveredBlock169Step = 248 ifTrue: [
            recoveredBlock169Stack3 := recoveredLocal3.
            recoveredBlock169PC := 251.
        ].
        recoveredBlock169Step = 251 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) styleFrom: (recoveredBlock169Stack2) indices: (recoveredBlock169Stack3).
            recoveredBlock169PC := 253.
        ].
        recoveredBlock169Step = 253 ifTrue: [
            recoveredLocal13 := recoveredBlock169Stack1.
            recoveredBlock169PC := 256.
        ].
        recoveredBlock169Step = 256 ifTrue: [
            recoveredBlock169Stack1 := self.
            recoveredBlock169PC := 257.
        ].
        recoveredBlock169Step = 257 ifTrue: [
            recoveredBlock169Stack2 := recoveredBlock169Arg1.
            recoveredBlock169PC := 258.
        ].
        recoveredBlock169Step = 258 ifTrue: [
            recoveredBlock169Stack3 := recoveredLocal3.
            recoveredBlock169PC := 261.
        ].
        recoveredBlock169Step = 261 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) extStyleFrom: (recoveredBlock169Stack2) indices: (recoveredBlock169Stack3).
            recoveredBlock169PC := 263.
        ].
        recoveredBlock169Step = 263 ifTrue: [
            recoveredLocal12 := recoveredBlock169Stack1.
            recoveredBlock169PC := 266.
        ].
        recoveredBlock169Step = 266 ifTrue: [
            recoveredBlock169Stack1 := self.
            recoveredBlock169PC := 267.
        ].
        recoveredBlock169Step = 267 ifTrue: [
            recoveredBlock169Stack2 := recoveredBlock169Arg1.
            recoveredBlock169PC := 268.
        ].
        recoveredBlock169Step = 268 ifTrue: [
            recoveredBlock169Stack3 := recoveredLocal3.
            recoveredBlock169PC := 271.
        ].
        recoveredBlock169Step = 271 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) sizeFrom: (recoveredBlock169Stack2) indices: (recoveredBlock169Stack3).
            recoveredBlock169PC := 273.
        ].
        recoveredBlock169Step = 273 ifTrue: [
            recoveredLocal11 := recoveredBlock169Stack1.
            recoveredBlock169PC := 276.
        ].
        recoveredBlock169Step = 276 ifTrue: [
            recoveredBlock169Stack1 := self.
            recoveredBlock169PC := 277.
        ].
        recoveredBlock169Step = 277 ifTrue: [
            recoveredBlock169Stack2 := recoveredBlock169Arg1.
            recoveredBlock169PC := 278.
        ].
        recoveredBlock169Step = 278 ifTrue: [
            recoveredBlock169Stack3 := recoveredLocal3.
            recoveredBlock169PC := 281.
        ].
        recoveredBlock169Step = 281 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) charsetFrom: (recoveredBlock169Stack2) indices: (recoveredBlock169Stack3).
            recoveredBlock169PC := 283.
        ].
        recoveredBlock169Step = 283 ifTrue: [
            recoveredLocal10 := recoveredBlock169Stack1.
            recoveredBlock169PC := 286.
        ].
        recoveredBlock169Step = 286 ifTrue: [
            recoveredBlock169Stack1 := fontAssoc.
            recoveredBlock169PC := 288.
        ].
        recoveredBlock169Step = 288 ifTrue: [
            recoveredBlock169Stack2 := recoveredLocal15.
            recoveredBlock169PC := 291.
        ].
        recoveredBlock169Step = 291 ifTrue: [
            recoveredBlock169Stack3 := [
    | block28009604Value0 block28009604Value1 |
    block28009604Value0 := Dictionary.
    block28009604Value1 := (block28009604Value0) new.
    block28009604Value1
].
            recoveredBlock169PC := 293.
        ].
        recoveredBlock169Step = 293 ifTrue: [
            recoveredBlock169PC := 301.
        ].
        recoveredBlock169Step = 301 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) at: (recoveredBlock169Stack2) ifAbsentPut: (recoveredBlock169Stack3).
            recoveredBlock169PC := 303.
        ].
        recoveredBlock169Step = 303 ifTrue: [
            recoveredLocal9 := recoveredBlock169Stack1.
            recoveredBlock169PC := 306.
        ].
        recoveredBlock169Step = 306 ifTrue: [
            recoveredBlock169Stack1 := recoveredLocal9.
            recoveredBlock169PC := 309.
        ].
        recoveredBlock169Step = 309 ifTrue: [
            recoveredBlock169Stack2 := recoveredLocal14.
            recoveredBlock169PC := 312.
        ].
        recoveredBlock169Step = 312 ifTrue: [
            recoveredBlock169Stack3 := [
    | block28009628Value0 block28009628Value1 |
    block28009628Value0 := Dictionary.
    block28009628Value1 := (block28009628Value0) new.
    block28009628Value1
].
            recoveredBlock169PC := 314.
        ].
        recoveredBlock169Step = 314 ifTrue: [
            recoveredBlock169PC := 323.
        ].
        recoveredBlock169Step = 323 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) at: (recoveredBlock169Stack2) ifAbsentPut: (recoveredBlock169Stack3).
            recoveredBlock169PC := 325.
        ].
        recoveredBlock169Step = 325 ifTrue: [
            recoveredLocal8 := recoveredBlock169Stack1.
            recoveredBlock169PC := 328.
        ].
        recoveredBlock169Step = 328 ifTrue: [
            recoveredBlock169Stack1 := recoveredLocal8.
            recoveredBlock169PC := 331.
        ].
        recoveredBlock169Step = 331 ifTrue: [
            recoveredBlock169Stack2 := recoveredLocal13.
            recoveredBlock169PC := 334.
        ].
        recoveredBlock169Step = 334 ifTrue: [
            recoveredBlock169Stack3 := [
    | block2800964cValue0 block2800964cValue1 |
    block2800964cValue0 := Dictionary.
    block2800964cValue1 := (block2800964cValue0) new.
    block2800964cValue1
].
            recoveredBlock169PC := 336.
        ].
        recoveredBlock169Step = 336 ifTrue: [
            recoveredBlock169PC := 345.
        ].
        recoveredBlock169Step = 345 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) at: (recoveredBlock169Stack2) ifAbsentPut: (recoveredBlock169Stack3).
            recoveredBlock169PC := 347.
        ].
        recoveredBlock169Step = 347 ifTrue: [
            recoveredLocal7 := recoveredBlock169Stack1.
            recoveredBlock169PC := 350.
        ].
        recoveredBlock169Step = 350 ifTrue: [
            recoveredBlock169Stack1 := recoveredLocal7.
            recoveredBlock169PC := 353.
        ].
        recoveredBlock169Step = 353 ifTrue: [
            recoveredBlock169Stack2 := recoveredLocal12.
            recoveredBlock169PC := 356.
        ].
        recoveredBlock169Step = 356 ifTrue: [
            recoveredBlock169Stack3 := [
    | block28009670Value0 block28009670Value1 |
    block28009670Value0 := Dictionary.
    block28009670Value1 := (block28009670Value0) new.
    block28009670Value1
].
            recoveredBlock169PC := 358.
        ].
        recoveredBlock169Step = 358 ifTrue: [
            recoveredBlock169PC := 367.
        ].
        recoveredBlock169Step = 367 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) at: (recoveredBlock169Stack2) ifAbsentPut: (recoveredBlock169Stack3).
            recoveredBlock169PC := 369.
        ].
        recoveredBlock169Step = 369 ifTrue: [
            recoveredLocal6 := recoveredBlock169Stack1.
            recoveredBlock169PC := 372.
        ].
        recoveredBlock169Step = 372 ifTrue: [
            recoveredBlock169Stack1 := recoveredLocal6.
            recoveredBlock169PC := 375.
        ].
        recoveredBlock169Step = 375 ifTrue: [
            recoveredBlock169Stack2 := recoveredLocal11.
            recoveredBlock169PC := 378.
        ].
        recoveredBlock169Step = 378 ifTrue: [
            recoveredBlock169Stack3 := [
    | block28009694Value0 block28009694Value1 |
    block28009694Value0 := Dictionary.
    block28009694Value1 := (block28009694Value0) new.
    block28009694Value1
].
            recoveredBlock169PC := 380.
        ].
        recoveredBlock169Step = 380 ifTrue: [
            recoveredBlock169PC := 389.
        ].
        recoveredBlock169Step = 389 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) at: (recoveredBlock169Stack2) ifAbsentPut: (recoveredBlock169Stack3).
            recoveredBlock169PC := 391.
        ].
        recoveredBlock169Step = 391 ifTrue: [
            recoveredLocal5 := recoveredBlock169Stack1.
            recoveredBlock169PC := 394.
        ].
        recoveredBlock169Step = 394 ifTrue: [
            recoveredBlock169Stack1 := recoveredLocal5.
            recoveredBlock169PC := 397.
        ].
        recoveredBlock169Step = 397 ifTrue: [
            recoveredBlock169Stack2 := recoveredLocal10.
            recoveredBlock169PC := 400.
        ].
        recoveredBlock169Step = 400 ifTrue: [
            recoveredBlock169Stack3 := [
    | block280096b8Value0 block280096b8Value1 |
    block280096b8Value0 := OrderedCollection.
    block280096b8Value1 := (block280096b8Value0) new.
    block280096b8Value1
].
            recoveredBlock169PC := 402.
        ].
        recoveredBlock169Step = 402 ifTrue: [
            recoveredBlock169PC := 411.
        ].
        recoveredBlock169Step = 411 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) at: (recoveredBlock169Stack2) ifAbsentPut: (recoveredBlock169Stack3).
            recoveredBlock169PC := 413.
        ].
        recoveredBlock169Step = 413 ifTrue: [
            recoveredLocal4 := recoveredBlock169Stack1.
            recoveredBlock169PC := 416.
        ].
        recoveredBlock169Step = 416 ifTrue: [
            recoveredBlock169Stack1 := recoveredLocal4.
            recoveredBlock169PC := 419.
        ].
        recoveredBlock169Step = 419 ifTrue: [
            recoveredBlock169Stack2 := recoveredBlock169Arg1.
            recoveredBlock169PC := 420.
        ].
        recoveredBlock169Step = 420 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) add: (recoveredBlock169Stack2).
            recoveredBlock169PC := 422.
        ].
        recoveredBlock169Step = 422 ifTrue: [
            recoveredBlock169Result := recoveredBlock169Stack1.
            recoveredBlock169Done := true.
        ].
    ].
    recoveredBlock169Result
].
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 432] ifFalse: [recoveredPC := 453].
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := CgDisplay.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 444] ifFalse: [recoveredPC := 453].
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack0 := DisplayFonts.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := fontAssoc.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 465] ifFalse: [recoveredPC := 460].
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack0 := fontAssoc.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2004c72c; bytecode file offset 0xc8a54"
!CwFontPrompter methodsFor: 'recovered'!
createChildren
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) loadFonts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) bulletinBoardWidget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'foundryLabel'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:block28009af0Arg1 | 
    | block28009af0Value0 block28009af0Value1 block28009af0Value2 |
    block28009af0Value0 := block28009af0Arg1.
    block28009af0Value1 := MxESTa4.
    block28009af0Value2 := (block28009af0Value0) labelString: (block28009af0Value1).
    block28009af0Value2
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'familyLabel'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:block28009b14Arg1 | 
    | block28009b14Value0 block28009b14Value1 block28009b14Value2 |
    block28009b14Value0 := block28009b14Arg1.
    block28009b14Value1 := MxESTa5.
    block28009b14Value2 := (block28009b14Value0) labelString: (block28009b14Value1).
    block28009b14Value2
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'styleLabel'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := [:block28009b38Arg1 | 
    | block28009b38Value0 block28009b38Value1 block28009b38Value2 |
    block28009b38Value0 := block28009b38Arg1.
    block28009b38Value1 := MxESTa6.
    block28009b38Value2 := (block28009b38Value0) labelString: (block28009b38Value1).
    block28009b38Value2
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 'extStyleLabel'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := [:block28009b5cArg1 | 
    | block28009b5cValue0 block28009b5cValue1 block28009b5cValue2 |
    block28009b5cValue0 := block28009b5cArg1.
    block28009b5cValue1 := MxESTa7.
    block28009b5cValue2 := (block28009b5cValue0) labelString: (block28009b5cValue1).
    block28009b5cValue2
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := 'sizeLabel'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := [:block28009b80Arg1 | 
    | block28009b80Value0 block28009b80Value1 block28009b80Value2 |
    block28009b80Value0 := block28009b80Arg1.
    block28009b80Value1 := MxESTa8.
    block28009b80Value2 := (block28009b80Value0) labelString: (block28009b80Value1).
    block28009b80Value2
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := 'charsetLabel'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := [:block28009ba4Arg1 | 
    | block28009ba4Value0 block28009ba4Value1 block28009ba4Value2 |
    block28009ba4Value0 := block28009ba4Arg1.
    block28009ba4Value1 := MxESTa9.
    block28009ba4Value2 := (block28009ba4Value0) labelString: (block28009ba4Value1).
    block28009ba4Value2
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := 'foundryList'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) createComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            foundryList := recoveredStack0.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := foundryList.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := 'foundrySelect:clientData:callData:'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := 'familyList'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) createComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            familyList := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := familyList.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := 'familySelect:clientData:callData:'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := 'styleList'.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) createComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            styleList := recoveredStack0.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := styleList.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := 'styleSelect:clientData:callData:'.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := 'extStyleList'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) createComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            extStyleList := recoveredStack0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := extStyleList.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := 'extStyleSelect:clientData:callData:'.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := 'sizeList'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := [:block28009bc8Arg1 | 
    | block28009bc8Value0 block28009bc8Value1 |
    block28009bc8Value0 := block28009bc8Arg1.
    block28009bc8Value1 := (block28009bc8Value0) editable: (true).
    block28009bc8Value1
].
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := (recoveredStack0) createComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            sizeList := recoveredStack0.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := sizeList.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack3 := 'sizeSelect:clientData:callData:'.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := 'charsetList'.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := (recoveredStack0) createComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            charsetList := recoveredStack0.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := charsetList.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack3 := 'charsetSelect:clientData:callData:'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := 'okButton'.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := [:block28009becArg1 | 
    | block28009becValue0 block28009becValue1 block28009becValue2 |
    block28009becValue0 := block28009becArg1.
    block28009becValue1 := MxESTa10.
    block28009becValue2 := (block28009becValue0) labelString: (block28009becValue1).
    block28009becValue2
].
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            okButton := recoveredStack0.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := okButton.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack4 := 'ok:clientData:callData:'.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := okButton.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            (recoveredStack0) defaultButton: (recoveredStack1).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := 'cancelButton'.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack2 := [:block28009c10Arg1 | 
    | block28009c10Value0 block28009c10Value1 block28009c10Value2 |
    block28009c10Value0 := block28009c10Arg1.
    block28009c10Value1 := MxESTa11.
    block28009c10Value2 := (block28009c10Value0) labelString: (block28009c10Value1).
    block28009c10Value2
].
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            cancelButton := recoveredStack0.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := cancelButton.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack4 := 'cancel:clientData:callData:'.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := 'fontLabel'.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := [:block28009c34Arg1 | 
    | block28009c34Value0 block28009c34Value1 |
    block28009c34Value0 := block28009c34Arg1.
    block28009c34Value1 := (block28009c34Value0) labelString: ('').
    block28009c34Value1
].
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            fontLabel := recoveredStack0.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := 'spacingLabel'.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack2 := [:block28009c58Arg1 | 
    | block28009c58Value0 block28009c58Value1 |
    block28009c58Value0 := block28009c58Arg1.
    block28009c58Value1 := (block28009c58Value0) labelString: ('').
    block28009c58Value1
].
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            spacingLabel := recoveredStack0.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := [:block28009c7cArg1 | 
    | block28009c7cValue0 block28009c7cValue1 block28009c7cValue2 block28009c7cValue3 block28009c7cValue4 |
    block28009c7cValue0 := block28009c7cArg1.
    block28009c7cValue1 := block28009c7cValue0.
    block28009c7cValue2 := XmATTACHFORM.
    (block28009c7cValue1) topAttachment: (block28009c7cValue2).
    block28009c7cValue3 := XmATTACHFORM.
    block28009c7cValue4 := (block28009c7cValue0) leftAttachment: (block28009c7cValue3).
    block28009c7cValue4
].
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := [:recoveredBlock432Arg1 | 
    | recoveredBlock432Value0 recoveredBlock432Value1 recoveredBlock432Value2 recoveredBlock432Value3 recoveredBlock432Value4 recoveredBlock432Value5 recoveredBlock432Value6 |
    recoveredBlock432Value0 := recoveredBlock432Arg1.
    recoveredBlock432Value1 := recoveredBlock432Value0.
    recoveredBlock432Value2 := XmATTACHFORM.
    (recoveredBlock432Value1) topAttachment: (recoveredBlock432Value2).
    recoveredBlock432Value3 := recoveredBlock432Value0.
    recoveredBlock432Value4 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock432Value3) leftAttachment: (recoveredBlock432Value4).
    recoveredBlock432Value5 := familyList.
    recoveredBlock432Value6 := (recoveredBlock432Value0) leftWidget: (recoveredBlock432Value5).
    recoveredBlock432Value6
].
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := [:recoveredBlock472Arg1 | 
    | recoveredBlock472Value0 recoveredBlock472Value1 recoveredBlock472Value2 recoveredBlock472Value3 recoveredBlock472Value4 recoveredBlock472Value5 recoveredBlock472Value6 |
    recoveredBlock472Value0 := recoveredBlock472Arg1.
    recoveredBlock472Value1 := recoveredBlock472Value0.
    recoveredBlock472Value2 := XmATTACHFORM.
    (recoveredBlock472Value1) topAttachment: (recoveredBlock472Value2).
    recoveredBlock472Value3 := recoveredBlock472Value0.
    recoveredBlock472Value4 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock472Value3) leftAttachment: (recoveredBlock472Value4).
    recoveredBlock472Value5 := charsetList.
    recoveredBlock472Value6 := (recoveredBlock472Value0) leftWidget: (recoveredBlock472Value5).
    recoveredBlock472Value6
].
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack0 := foundryList.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := [:recoveredBlock511Arg1 | 
    | recoveredBlock511Value0 recoveredBlock511Value1 recoveredBlock511Value2 recoveredBlock511Value3 recoveredBlock511Value4 recoveredBlock511Value5 recoveredBlock511Value6 |
    recoveredBlock511Value0 := recoveredBlock511Arg1.
    recoveredBlock511Value1 := recoveredBlock511Value0.
    recoveredBlock511Value2 := XmATTACHWIDGET.
    (recoveredBlock511Value1) topAttachment: (recoveredBlock511Value2).
    recoveredBlock511Value3 := recoveredBlock511Value0.
    recoveredBlock511Value4 := recoveredLocal6.
    (recoveredBlock511Value3) topWidget: (recoveredBlock511Value4).
    recoveredBlock511Value5 := XmATTACHFORM.
    recoveredBlock511Value6 := (recoveredBlock511Value0) leftAttachment: (recoveredBlock511Value5).
    recoveredBlock511Value6
].
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack0 := familyList.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack1 := [:recoveredBlock553Arg1 | 
    | recoveredBlock553Value0 recoveredBlock553Value1 recoveredBlock553Value2 recoveredBlock553Value3 recoveredBlock553Value4 recoveredBlock553Value5 recoveredBlock553Value6 recoveredBlock553Value7 recoveredBlock553Value8 recoveredBlock553Value9 |
    recoveredBlock553Value0 := recoveredBlock553Arg1.
    recoveredBlock553Value1 := recoveredBlock553Value0.
    (recoveredBlock553Value1) leftOffset: (5).
    recoveredBlock553Value2 := recoveredBlock553Value0.
    recoveredBlock553Value3 := XmATTACHWIDGET.
    (recoveredBlock553Value2) leftAttachment: (recoveredBlock553Value3).
    recoveredBlock553Value4 := recoveredBlock553Value0.
    recoveredBlock553Value5 := foundryList.
    (recoveredBlock553Value4) leftWidget: (recoveredBlock553Value5).
    recoveredBlock553Value6 := recoveredBlock553Value0.
    recoveredBlock553Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock553Value6) topAttachment: (recoveredBlock553Value7).
    recoveredBlock553Value8 := foundryList.
    recoveredBlock553Value9 := (recoveredBlock553Value0) topWidget: (recoveredBlock553Value8).
    recoveredBlock553Value9
].
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack0 := charsetList.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack1 := [:recoveredBlock605Arg1 | 
    | recoveredBlock605Value0 recoveredBlock605Value1 recoveredBlock605Value2 recoveredBlock605Value3 recoveredBlock605Value4 recoveredBlock605Value5 recoveredBlock605Value6 recoveredBlock605Value7 recoveredBlock605Value8 recoveredBlock605Value9 recoveredBlock605Value10 recoveredBlock605Value11 |
    recoveredBlock605Value0 := recoveredBlock605Arg1.
    recoveredBlock605Value1 := recoveredBlock605Value0.
    (recoveredBlock605Value1) leftOffset: (5).
    recoveredBlock605Value2 := recoveredBlock605Value0.
    recoveredBlock605Value3 := XmATTACHWIDGET.
    (recoveredBlock605Value2) leftAttachment: (recoveredBlock605Value3).
    recoveredBlock605Value4 := recoveredBlock605Value0.
    recoveredBlock605Value5 := familyList.
    (recoveredBlock605Value4) leftWidget: (recoveredBlock605Value5).
    recoveredBlock605Value6 := recoveredBlock605Value0.
    recoveredBlock605Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock605Value6) topAttachment: (recoveredBlock605Value7).
    recoveredBlock605Value8 := recoveredBlock605Value0.
    recoveredBlock605Value9 := familyList.
    (recoveredBlock605Value8) topWidget: (recoveredBlock605Value9).
    recoveredBlock605Value10 := XmATTACHFORM.
    recoveredBlock605Value11 := (recoveredBlock605Value0) rightAttachment: (recoveredBlock605Value10).
    recoveredBlock605Value11
].
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack1 := [:recoveredBlock666Arg1 | 
    | recoveredBlock666Value0 recoveredBlock666Value1 recoveredBlock666Value2 recoveredBlock666Value3 recoveredBlock666Value4 recoveredBlock666Value5 recoveredBlock666Value6 |
    recoveredBlock666Value0 := recoveredBlock666Arg1.
    recoveredBlock666Value1 := recoveredBlock666Value0.
    recoveredBlock666Value2 := XmATTACHWIDGET.
    (recoveredBlock666Value1) topAttachment: (recoveredBlock666Value2).
    recoveredBlock666Value3 := recoveredBlock666Value0.
    recoveredBlock666Value4 := familyList.
    (recoveredBlock666Value3) topWidget: (recoveredBlock666Value4).
    recoveredBlock666Value5 := XmATTACHFORM.
    recoveredBlock666Value6 := (recoveredBlock666Value0) leftAttachment: (recoveredBlock666Value5).
    recoveredBlock666Value6
].
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack1 := [:recoveredBlock706Arg1 | 
    | recoveredBlock706Value0 recoveredBlock706Value1 recoveredBlock706Value2 recoveredBlock706Value3 recoveredBlock706Value4 recoveredBlock706Value5 recoveredBlock706Value6 recoveredBlock706Value7 recoveredBlock706Value8 |
    recoveredBlock706Value0 := recoveredBlock706Arg1.
    recoveredBlock706Value1 := recoveredBlock706Value0.
    recoveredBlock706Value2 := XmATTACHWIDGET.
    (recoveredBlock706Value1) topAttachment: (recoveredBlock706Value2).
    recoveredBlock706Value3 := recoveredBlock706Value0.
    recoveredBlock706Value4 := familyList.
    (recoveredBlock706Value3) topWidget: (recoveredBlock706Value4).
    recoveredBlock706Value5 := recoveredBlock706Value0.
    recoveredBlock706Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock706Value5) leftAttachment: (recoveredBlock706Value6).
    recoveredBlock706Value7 := familyList.
    recoveredBlock706Value8 := (recoveredBlock706Value0) leftWidget: (recoveredBlock706Value7).
    recoveredBlock706Value8
].
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack1 := [:recoveredBlock752Arg1 | 
    | recoveredBlock752Value0 recoveredBlock752Value1 recoveredBlock752Value2 recoveredBlock752Value3 recoveredBlock752Value4 recoveredBlock752Value5 recoveredBlock752Value6 recoveredBlock752Value7 recoveredBlock752Value8 |
    recoveredBlock752Value0 := recoveredBlock752Arg1.
    recoveredBlock752Value1 := recoveredBlock752Value0.
    recoveredBlock752Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock752Value1) leftAttachment: (recoveredBlock752Value2).
    recoveredBlock752Value3 := recoveredBlock752Value0.
    recoveredBlock752Value4 := charsetList.
    (recoveredBlock752Value3) leftWidget: (recoveredBlock752Value4).
    recoveredBlock752Value5 := recoveredBlock752Value0.
    recoveredBlock752Value6 := XmATTACHWIDGET.
    (recoveredBlock752Value5) topAttachment: (recoveredBlock752Value6).
    recoveredBlock752Value7 := charsetList.
    recoveredBlock752Value8 := (recoveredBlock752Value0) topWidget: (recoveredBlock752Value7).
    recoveredBlock752Value8
].
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack0 := styleList.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredStack1 := [:recoveredBlock797Arg1 | 
    | recoveredBlock797Value0 recoveredBlock797Value1 recoveredBlock797Value2 recoveredBlock797Value3 recoveredBlock797Value4 recoveredBlock797Value5 recoveredBlock797Value6 recoveredBlock797Value7 recoveredBlock797Value8 |
    recoveredBlock797Value0 := recoveredBlock797Arg1.
    recoveredBlock797Value1 := recoveredBlock797Value0.
    recoveredBlock797Value2 := XmATTACHWIDGET.
    (recoveredBlock797Value1) topAttachment: (recoveredBlock797Value2).
    recoveredBlock797Value3 := recoveredBlock797Value0.
    recoveredBlock797Value4 := recoveredLocal4.
    (recoveredBlock797Value3) topWidget: (recoveredBlock797Value4).
    recoveredBlock797Value5 := recoveredBlock797Value0.
    recoveredBlock797Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock797Value5) leftAttachment: (recoveredBlock797Value6).
    recoveredBlock797Value7 := recoveredLocal4.
    recoveredBlock797Value8 := (recoveredBlock797Value0) leftWidget: (recoveredBlock797Value7).
    recoveredBlock797Value8
].
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            recoveredStack0 := extStyleList.
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            recoveredStack1 := [:recoveredBlock847Arg1 | 
    | recoveredBlock847Value0 recoveredBlock847Value1 recoveredBlock847Value2 recoveredBlock847Value3 recoveredBlock847Value4 recoveredBlock847Value5 recoveredBlock847Value6 recoveredBlock847Value7 recoveredBlock847Value8 |
    recoveredBlock847Value0 := recoveredBlock847Arg1.
    recoveredBlock847Value1 := recoveredBlock847Value0.
    recoveredBlock847Value2 := XmATTACHWIDGET.
    (recoveredBlock847Value1) topAttachment: (recoveredBlock847Value2).
    recoveredBlock847Value3 := recoveredBlock847Value0.
    recoveredBlock847Value4 := recoveredLocal3.
    (recoveredBlock847Value3) topWidget: (recoveredBlock847Value4).
    recoveredBlock847Value5 := recoveredBlock847Value0.
    recoveredBlock847Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock847Value5) leftAttachment: (recoveredBlock847Value6).
    recoveredBlock847Value7 := recoveredLocal3.
    recoveredBlock847Value8 := (recoveredBlock847Value0) leftWidget: (recoveredBlock847Value7).
    recoveredBlock847Value8
].
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 895.
        ].
        recoveredStep = 895 ifTrue: [
            recoveredStack0 := sizeList.
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            recoveredStack1 := [:recoveredBlock897Arg1 | 
    | recoveredBlock897Value0 recoveredBlock897Value1 recoveredBlock897Value2 recoveredBlock897Value3 recoveredBlock897Value4 recoveredBlock897Value5 recoveredBlock897Value6 recoveredBlock897Value7 recoveredBlock897Value8 recoveredBlock897Value9 recoveredBlock897Value10 |
    recoveredBlock897Value0 := recoveredBlock897Arg1.
    recoveredBlock897Value1 := recoveredBlock897Value0.
    recoveredBlock897Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock897Value1) leftAttachment: (recoveredBlock897Value2).
    recoveredBlock897Value3 := recoveredBlock897Value0.
    recoveredBlock897Value4 := recoveredLocal2.
    (recoveredBlock897Value3) leftWidget: (recoveredBlock897Value4).
    recoveredBlock897Value5 := recoveredBlock897Value0.
    recoveredBlock897Value6 := XmATTACHWIDGET.
    (recoveredBlock897Value5) topAttachment: (recoveredBlock897Value6).
    recoveredBlock897Value7 := recoveredBlock897Value0.
    recoveredBlock897Value8 := recoveredLocal2.
    (recoveredBlock897Value7) topWidget: (recoveredBlock897Value8).
    recoveredBlock897Value9 := XmATTACHFORM.
    recoveredBlock897Value10 := (recoveredBlock897Value0) rightAttachment: (recoveredBlock897Value9).
    recoveredBlock897Value10
].
            recoveredPC := 948.
        ].
        recoveredStep = 948 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 954.
        ].
        recoveredStep = 954 ifTrue: [
            recoveredStack0 := (recoveredStack0) showSample.
            recoveredPC := 959.
        ].
        recoveredStep = 959 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 962] ifFalse: [recoveredPC := 1091].
        ].
        recoveredStep = 962 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 965.
        ].
        recoveredStep = 965 ifTrue: [
            recoveredStack1 := 'sampleText'.
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack2 := [:block28009ca0Arg1 | 
    | block28009ca0Value0 block28009ca0Value1 block28009ca0Value2 block28009ca0Value3 block28009ca0Value4 block28009ca0Value5 |
    block28009ca0Value0 := block28009ca0Arg1.
    block28009ca0Value1 := block28009ca0Value0.
    (block28009ca0Value1) value: ('').
    block28009ca0Value2 := block28009ca0Value0.
    (block28009ca0Value2) wordWrap: (true).
    block28009ca0Value3 := block28009ca0Value0.
    block28009ca0Value4 := XmMULTILINEEDIT.
    (block28009ca0Value3) editMode: (block28009ca0Value4).
    block28009ca0Value5 := (block28009ca0Value0) rows: (6).
    block28009ca0Value5
].
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredPC := 1006.
        ].
        recoveredStep = 1006 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 1011.
        ].
        recoveredStep = 1011 ifTrue: [
            sampleText := recoveredStack0.
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            recoveredStack0 := sampleText.
            recoveredPC := 1015.
        ].
        recoveredStep = 1015 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 1019.
        ].
        recoveredStep = 1019 ifTrue: [
            recoveredStack1 := [:recoveredBlock1019Arg1 | 
    | recoveredBlock1019Value0 recoveredBlock1019Value1 recoveredBlock1019Value2 recoveredBlock1019Value3 recoveredBlock1019Value4 recoveredBlock1019Value5 recoveredBlock1019Value6 recoveredBlock1019Value7 recoveredBlock1019Value8 recoveredBlock1019Value9 recoveredBlock1019Value10 recoveredBlock1019Value11 recoveredBlock1019Value12 recoveredBlock1019Value13 recoveredBlock1019Value14 |
    recoveredBlock1019Value0 := recoveredBlock1019Arg1.
    recoveredBlock1019Value1 := recoveredBlock1019Value0.
    (recoveredBlock1019Value1) topOffset: (5).
    recoveredBlock1019Value2 := recoveredBlock1019Value0.
    recoveredBlock1019Value3 := XmATTACHWIDGET.
    (recoveredBlock1019Value2) topAttachment: (recoveredBlock1019Value3).
    recoveredBlock1019Value4 := recoveredBlock1019Value0.
    recoveredBlock1019Value5 := sizeList.
    (recoveredBlock1019Value4) topWidget: (recoveredBlock1019Value5).
    recoveredBlock1019Value6 := recoveredBlock1019Value0.
    recoveredBlock1019Value7 := XmATTACHFORM.
    (recoveredBlock1019Value6) leftAttachment: (recoveredBlock1019Value7).
    recoveredBlock1019Value8 := recoveredBlock1019Value0.
    recoveredBlock1019Value9 := XmATTACHFORM.
    (recoveredBlock1019Value8) rightAttachment: (recoveredBlock1019Value9).
    recoveredBlock1019Value10 := recoveredBlock1019Value0.
    recoveredBlock1019Value11 := XmATTACHWIDGET.
    (recoveredBlock1019Value10) bottomAttachment: (recoveredBlock1019Value11).
    recoveredBlock1019Value12 := recoveredBlock1019Value0.
    recoveredBlock1019Value13 := okButton.
    (recoveredBlock1019Value12) bottomWidget: (recoveredBlock1019Value13).
    recoveredBlock1019Value14 := (recoveredBlock1019Value0) bottomOffset: (5).
    recoveredBlock1019Value14
].
            recoveredPC := 1086.
        ].
        recoveredStep = 1086 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1091.
        ].
        recoveredStep = 1091 ifTrue: [
            recoveredStack0 := okButton.
            recoveredPC := 1093.
        ].
        recoveredStep = 1093 ifTrue: [
            recoveredStack1 := [:recoveredBlock1093Arg1 | 
    | recoveredBlock1093Stack0 recoveredBlock1093Stack1 recoveredBlock1093Stack2 recoveredBlock1093Stack3 recoveredBlock1093PC recoveredBlock1093Step recoveredBlock1093Done recoveredBlock1093Result |
    recoveredBlock1093Stack0 := self.
    recoveredBlock1093PC := 1100.
    recoveredBlock1093Done := false.
    [recoveredBlock1093Done not] whileTrue: [
        recoveredBlock1093Step := recoveredBlock1093PC.
        recoveredBlock1093Step = 1100 ifTrue: [
            recoveredBlock1093Stack0 := (recoveredBlock1093Stack0) showSample.
            recoveredBlock1093PC := 1105.
        ].
        recoveredBlock1093Step = 1105 ifTrue: [
            (recoveredBlock1093Stack0) ifTrue: [recoveredBlock1093PC := 1131] ifFalse: [recoveredBlock1093PC := 1108].
        ].
        recoveredBlock1093Step = 1108 ifTrue: [
            recoveredBlock1093Stack0 := recoveredBlock1093Arg1.
            recoveredBlock1093PC := 1109.
        ].
        recoveredBlock1093Step = 1109 ifTrue: [
            recoveredBlock1093Stack1 := recoveredBlock1093Stack0.
            recoveredBlock1093PC := 1110.
        ].
        recoveredBlock1093Step = 1110 ifTrue: [
            recoveredBlock1093Stack2 := XmATTACHWIDGET.
            recoveredBlock1093PC := 1114.
        ].
        recoveredBlock1093Step = 1114 ifTrue: [
            (recoveredBlock1093Stack1) topAttachment: (recoveredBlock1093Stack2).
            recoveredBlock1093Stack1 := recoveredBlock1093Stack0.
            recoveredBlock1093PC := 1119.
        ].
        recoveredBlock1093Step = 1119 ifTrue: [
            recoveredBlock1093Stack2 := sizeList.
            recoveredBlock1093PC := 1121.
        ].
        recoveredBlock1093Step = 1121 ifTrue: [
            (recoveredBlock1093Stack1) topWidget: (recoveredBlock1093Stack2).
            recoveredBlock1093PC := 1125.
        ].
        recoveredBlock1093Step = 1125 ifTrue: [
            recoveredBlock1093Stack1 := 10.
            recoveredBlock1093PC := 1127.
        ].
        recoveredBlock1093Step = 1127 ifTrue: [
            (recoveredBlock1093Stack0) topOffset: (recoveredBlock1093Stack1).
            recoveredBlock1093PC := 1131.
        ].
        recoveredBlock1093Step = 1131 ifTrue: [
            recoveredBlock1093Stack0 := recoveredBlock1093Arg1.
            recoveredBlock1093PC := 1132.
        ].
        recoveredBlock1093Step = 1132 ifTrue: [
            recoveredBlock1093Stack1 := recoveredBlock1093Stack0.
            recoveredBlock1093PC := 1133.
        ].
        recoveredBlock1093Step = 1133 ifTrue: [
            recoveredBlock1093Stack2 := XmATTACHPOSITION.
            recoveredBlock1093PC := 1136.
        ].
        recoveredBlock1093Step = 1136 ifTrue: [
            (recoveredBlock1093Stack1) rightAttachment: (recoveredBlock1093Stack2).
            recoveredBlock1093Stack1 := recoveredBlock1093Stack0.
            recoveredBlock1093PC := 1141.
        ].
        recoveredBlock1093Step = 1141 ifTrue: [
            recoveredBlock1093Stack2 := 48.
            recoveredBlock1093PC := 1143.
        ].
        recoveredBlock1093Step = 1143 ifTrue: [
            (recoveredBlock1093Stack1) rightPosition: (recoveredBlock1093Stack2).
            recoveredBlock1093PC := 1147.
        ].
        recoveredBlock1093Step = 1147 ifTrue: [
            recoveredBlock1093Stack1 := XmATTACHFORM.
            recoveredBlock1093PC := 1150.
        ].
        recoveredBlock1093Step = 1150 ifTrue: [
            recoveredBlock1093Stack0 := (recoveredBlock1093Stack0) bottomAttachment: (recoveredBlock1093Stack1).
            recoveredBlock1093PC := 1155.
        ].
        recoveredBlock1093Step = 1155 ifTrue: [
            recoveredBlock1093Result := recoveredBlock1093Stack0.
            recoveredBlock1093Done := true.
        ].
    ].
    recoveredBlock1093Result
].
            recoveredPC := 1156.
        ].
        recoveredStep = 1156 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1161.
        ].
        recoveredStep = 1161 ifTrue: [
            recoveredStack0 := cancelButton.
            recoveredPC := 1163.
        ].
        recoveredStep = 1163 ifTrue: [
            recoveredStack1 := [:block28009cc4Arg1 | 
    | block28009cc4Value0 block28009cc4Value1 block28009cc4Value2 block28009cc4Value3 block28009cc4Value4 block28009cc4Value5 |
    block28009cc4Value0 := block28009cc4Arg1.
    block28009cc4Value1 := block28009cc4Value0.
    block28009cc4Value2 := XmATTACHPOSITION.
    (block28009cc4Value1) leftAttachment: (block28009cc4Value2).
    block28009cc4Value3 := block28009cc4Value0.
    (block28009cc4Value3) leftPosition: (52).
    block28009cc4Value4 := XmATTACHFORM.
    block28009cc4Value5 := (block28009cc4Value0) bottomAttachment: (block28009cc4Value4).
    block28009cc4Value5
].
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            recoveredPC := 1196.
        ].
        recoveredStep = 1196 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1201.
        ].
        recoveredStep = 1201 ifTrue: [
            recoveredStack0 := fontLabel.
            recoveredPC := 1203.
        ].
        recoveredStep = 1203 ifTrue: [
            recoveredStack1 := [:recoveredBlock1203Arg1 | 
    | recoveredBlock1203Value0 recoveredBlock1203Value1 recoveredBlock1203Value2 recoveredBlock1203Value3 recoveredBlock1203Value4 recoveredBlock1203Value5 recoveredBlock1203Value6 recoveredBlock1203Value7 recoveredBlock1203Value8 recoveredBlock1203Value9 recoveredBlock1203Value10 recoveredBlock1203Value11 recoveredBlock1203Value12 recoveredBlock1203Value13 recoveredBlock1203Value14 recoveredBlock1203Value15 |
    recoveredBlock1203Value0 := recoveredBlock1203Arg1.
    recoveredBlock1203Value1 := recoveredBlock1203Value0.
    recoveredBlock1203Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock1203Value1) alignment: (recoveredBlock1203Value2).
    recoveredBlock1203Value3 := recoveredBlock1203Value0.
    recoveredBlock1203Value4 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1203Value3) topAttachment: (recoveredBlock1203Value4).
    recoveredBlock1203Value5 := recoveredBlock1203Value0.
    recoveredBlock1203Value6 := okButton.
    (recoveredBlock1203Value5) topWidget: (recoveredBlock1203Value6).
    recoveredBlock1203Value7 := recoveredBlock1203Value0.
    recoveredBlock1203Value8 := XmATTACHFORM.
    (recoveredBlock1203Value7) leftAttachment: (recoveredBlock1203Value8).
    recoveredBlock1203Value9 := recoveredBlock1203Value0.
    (recoveredBlock1203Value9) leftOffset: (10).
    recoveredBlock1203Value10 := recoveredBlock1203Value0.
    recoveredBlock1203Value11 := XmATTACHWIDGET.
    (recoveredBlock1203Value10) rightAttachment: (recoveredBlock1203Value11).
    recoveredBlock1203Value12 := recoveredBlock1203Value0.
    recoveredBlock1203Value13 := okButton.
    (recoveredBlock1203Value12) rightWidget: (recoveredBlock1203Value13).
    recoveredBlock1203Value14 := XmATTACHFORM.
    recoveredBlock1203Value15 := (recoveredBlock1203Value0) bottomAttachment: (recoveredBlock1203Value14).
    recoveredBlock1203Value15
].
            recoveredPC := 1272.
        ].
        recoveredStep = 1272 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1277.
        ].
        recoveredStep = 1277 ifTrue: [
            recoveredStack0 := spacingLabel.
            recoveredPC := 1279.
        ].
        recoveredStep = 1279 ifTrue: [
            recoveredStack1 := [:recoveredBlock1279Arg1 | 
    | recoveredBlock1279Value0 recoveredBlock1279Value1 recoveredBlock1279Value2 recoveredBlock1279Value3 recoveredBlock1279Value4 recoveredBlock1279Value5 recoveredBlock1279Value6 recoveredBlock1279Value7 recoveredBlock1279Value8 recoveredBlock1279Value9 recoveredBlock1279Value10 recoveredBlock1279Value11 recoveredBlock1279Value12 recoveredBlock1279Value13 recoveredBlock1279Value14 recoveredBlock1279Value15 |
    recoveredBlock1279Value0 := recoveredBlock1279Arg1.
    recoveredBlock1279Value1 := recoveredBlock1279Value0.
    recoveredBlock1279Value2 := XmALIGNMENTEND.
    (recoveredBlock1279Value1) alignment: (recoveredBlock1279Value2).
    recoveredBlock1279Value3 := recoveredBlock1279Value0.
    recoveredBlock1279Value4 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1279Value3) topAttachment: (recoveredBlock1279Value4).
    recoveredBlock1279Value5 := recoveredBlock1279Value0.
    recoveredBlock1279Value6 := cancelButton.
    (recoveredBlock1279Value5) topWidget: (recoveredBlock1279Value6).
    recoveredBlock1279Value7 := recoveredBlock1279Value0.
    recoveredBlock1279Value8 := XmATTACHWIDGET.
    (recoveredBlock1279Value7) leftAttachment: (recoveredBlock1279Value8).
    recoveredBlock1279Value9 := recoveredBlock1279Value0.
    recoveredBlock1279Value10 := cancelButton.
    (recoveredBlock1279Value9) leftWidget: (recoveredBlock1279Value10).
    recoveredBlock1279Value11 := recoveredBlock1279Value0.
    recoveredBlock1279Value12 := XmATTACHFORM.
    (recoveredBlock1279Value11) rightAttachment: (recoveredBlock1279Value12).
    recoveredBlock1279Value13 := recoveredBlock1279Value0.
    (recoveredBlock1279Value13) rightOffset: (10).
    recoveredBlock1279Value14 := XmATTACHFORM.
    recoveredBlock1279Value15 := (recoveredBlock1279Value0) bottomAttachment: (recoveredBlock1279Value14).
    recoveredBlock1279Value15
].
            recoveredPC := 1348.
        ].
        recoveredStep = 1348 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1353.
        ].
        recoveredStep = 1353 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1356.
        ].
        recoveredStep = 1356 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1358.
        ].
        recoveredStep = 1358 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1361.
        ].
        recoveredStep = 1361 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1363.
        ].
        recoveredStep = 1363 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1366.
        ].
        recoveredStep = 1366 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1368.
        ].
        recoveredStep = 1368 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1371.
        ].
        recoveredStep = 1371 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1373.
        ].
        recoveredStep = 1373 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1376.
        ].
        recoveredStep = 1376 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1378.
        ].
        recoveredStep = 1378 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1381.
        ].
        recoveredStep = 1381 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1383.
        ].
        recoveredStep = 1383 ifTrue: [
            recoveredStack0 := foundryList.
            recoveredPC := 1385.
        ].
        recoveredStep = 1385 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1387.
        ].
        recoveredStep = 1387 ifTrue: [
            recoveredStack0 := familyList.
            recoveredPC := 1389.
        ].
        recoveredStep = 1389 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1391.
        ].
        recoveredStep = 1391 ifTrue: [
            recoveredStack0 := styleList.
            recoveredPC := 1393.
        ].
        recoveredStep = 1393 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1395.
        ].
        recoveredStep = 1395 ifTrue: [
            recoveredStack0 := extStyleList.
            recoveredPC := 1397.
        ].
        recoveredStep = 1397 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1399.
        ].
        recoveredStep = 1399 ifTrue: [
            recoveredStack0 := sizeList.
            recoveredPC := 1401.
        ].
        recoveredStep = 1401 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1403.
        ].
        recoveredStep = 1403 ifTrue: [
            recoveredStack0 := charsetList.
            recoveredPC := 1405.
        ].
        recoveredStep = 1405 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1407.
        ].
        recoveredStep = 1407 ifTrue: [
            recoveredStack0 := okButton.
            recoveredPC := 1409.
        ].
        recoveredStep = 1409 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1411.
        ].
        recoveredStep = 1411 ifTrue: [
            recoveredStack0 := cancelButton.
            recoveredPC := 1413.
        ].
        recoveredStep = 1413 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1415.
        ].
        recoveredStep = 1415 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1416.
        ].
        recoveredStep = 1416 ifTrue: [
            recoveredStack0 := (recoveredStack0) showSample.
            recoveredPC := 1421.
        ].
        recoveredStep = 1421 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1424] ifFalse: [recoveredPC := 1428].
        ].
        recoveredStep = 1424 ifTrue: [
            recoveredStack0 := sampleText.
            recoveredPC := 1426.
        ].
        recoveredStep = 1426 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1428.
        ].
        recoveredStep = 1428 ifTrue: [
            recoveredStack0 := fontLabel.
            recoveredPC := 1430.
        ].
        recoveredStep = 1430 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1432.
        ].
        recoveredStep = 1432 ifTrue: [
            recoveredStack0 := spacingLabel.
            recoveredPC := 1434.
        ].
        recoveredStep = 1434 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 1436.
        ].
        recoveredStep = 1436 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1437.
        ].
        recoveredStep = 1437 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

