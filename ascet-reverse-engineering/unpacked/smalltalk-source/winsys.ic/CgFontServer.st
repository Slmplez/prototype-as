"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200000c8; bytecode file offset 0x7c350"
!CgFontServer methodsFor: 'recovered'!
startUp
    ^self
! !

"winsys.ic method 0x200004e4; bytecode file offset 0x7c6d8"
!CgFontServer methodsFor: 'recovered'!
fontResourceClass
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"winsys.ic method 0x20000594; bytecode file offset 0x7c77c"
!CgFontServer methodsFor: 'recovered'!
createOSFont: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"winsys.ic method 0x200005f0; bytecode file offset 0x7c7c0"
!CgFontServer methodsFor: 'recovered'!
scaledLogFont: recoveredArg1 vals: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"winsys.ic method 0x20001cc4; bytecode file offset 0x7deb8"
!CgFontServer methodsFor: 'recovered'!
nameFromOSFont: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"winsys.ic method 0x20002ae8; bytecode file offset 0x7ed00"
!CgFontServer methodsFor: 'recovered'!
server
    | recoveredValue0 |
    recoveredValue0 := server.
    ^recoveredValue0
! !

"winsys.ic method 0x20004c5c; bytecode file offset 0x80e38"
!CgFontServer methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) server: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20005cb8; bytecode file offset 0x81ea0"
!CgFontServer methodsFor: 'recovered'!
loadFont: recoveredArg1 ifAlias: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) fontDirectory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) loadFont: (recoveredValue1) ifAlias: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x20006468; bytecode file offset 0x82630"
!CgFontServer methodsFor: 'recovered'!
getFontResource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) nameFromOSFont: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) getFontResource: (recoveredValue1) osFont: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x2000724c; bytecode file offset 0x8346c"
!CgFontServer methodsFor: 'recovered'!
server: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    server := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200073f4; bytecode file offset 0x836b4"
!CgFontServer methodsFor: 'recovered'!
fontDirectory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fontDirectory := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20008908; bytecode file offset 0x84ad4"
!CgFontServer methodsFor: 'recovered'!
getInfoBitmap: recoveredArg1 entry: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) fileName.
    recoveredValue5 := (self) getInfo: (recoveredValue2) logFont: (recoveredValue4).
    ^recoveredValue5
! !

"winsys.ic method 0x20009b90; bytecode file offset 0x85d5c"
!CgFontServer methodsFor: 'recovered'!
getFontResource: recoveredArg1 osFont: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) fontResourceClass.
    recoveredValue1 := (self) server.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) new: (recoveredValue1) name: (recoveredValue2) osFont: (recoveredValue3).
    ^recoveredValue4
! !

"winsys.ic method 0x2000a98c; bytecode file offset 0x86b64"
!CgFontServer methodsFor: 'recovered'!
listFontsWithInfo: recoveredArg1 max: recoveredArg2 listBlock: recoveredArg3 ifAlias: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) fontDirectory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    (recoveredValue0) listFontsWithInfo: (recoveredValue1) max: (recoveredValue2) listBlock: (recoveredValue3) ifAlias: (recoveredValue4).
    ^self
! !

"winsys.ic method 0x2000a9bc; bytecode file offset 0x86b8c"
!CgFontServer methodsFor: 'recovered'!
openBitmap: recoveredArg1 entry: recoveredArg2 flags: recoveredArg3 format: recoveredArg4 mask: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) fileName.
    recoveredValue5 := (self) createOSFont: (recoveredValue4).
    recoveredValue6 := (self) getFontResource: (recoveredValue2) osFont: (recoveredValue5).
    ^recoveredValue6
! !

"winsys.ic method 0x2000bf54; bytecode file offset 0x88118"
!CgFontServer methodsFor: 'recovered'!
fontDirectory
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fontDirectory.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFontDirectory.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            fontDirectory := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := fontDirectory.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2000e4b4; bytecode file offset 0x8a684"
!CgFontServer methodsFor: 'recovered'!
getInfo: recoveredArg1 logFont: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createOSFont: (recoveredValue1).
    recoveredValue3 := (self) getFontResource: (recoveredValue0) osFont: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue4) info.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    (recoveredValue6) unloadFont.
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"winsys.ic method 0x20010ecc; bytecode file offset 0x8d0a4"
!CgFontServer methodsFor: 'recovered'!
getInfoScalable: recoveredArg1 entry: recoveredArg2 vals: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := (recoveredValue0) parseXLFDName: (recoveredValue3) replace: ('value').
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) fileName.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (self) scaledLogFont: (recoveredValue6) vals: (recoveredValue7).
    recoveredValue9 := (self) getInfo: (recoveredValue4) logFont: (recoveredValue8).
    ^recoveredValue9
! !

"winsys.ic method 0x200114e4; bytecode file offset 0x8d6b8"
!CgFontServer methodsFor: 'recovered'!
defaultFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := NlsCatCG.
    recoveredBlock6Value1 := (recoveredBlock6Value0) indexedMsg: (3).
    recoveredBlock6Value2 := (self) error: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    recoveredValue1 := (self) loadFont: ('*') ifAlias: (recoveredValue0).
    ^recoveredValue1
! !

"winsys.ic method 0x20011cf8; bytecode file offset 0x8decc"
!CgFontServer methodsFor: 'recovered'!
listFonts: recoveredArg1 max: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) min: (100).
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) fontDirectory.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue4) listFonts: (recoveredValue5) max: (recoveredValue6) names: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"winsys.ic method 0x20014884; bytecode file offset 0x90a60"
!CgFontServer methodsFor: 'recovered'!
openScalable: recoveredArg1 entry: recoveredArg2 vals: recoveredArg3 flags: recoveredArg4 format: recoveredArg5 mask: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := (recoveredValue0) parseXLFDName: (recoveredValue3) replace: ('value').
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) fileName.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (self) scaledLogFont: (recoveredValue6) vals: (recoveredValue7).
    recoveredValue9 := (self) createOSFont: (recoveredValue8).
    recoveredValue10 := (self) getFontResource: (recoveredValue4) osFont: (recoveredValue9).
    ^recoveredValue10
! !

