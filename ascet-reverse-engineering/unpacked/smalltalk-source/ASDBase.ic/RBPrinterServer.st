"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003835c; bytecode file offset 0x934c18"
!RBPrinterServer methodsFor: 'recovered'!
nearestPixelValue: recoveredArg1
    ^0
! !

"ASDBase.ic method 0x200419c4; bytecode file offset 0x93e414"
!RBPrinterServer methodsFor: 'recovered'!
width
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := printerShell.
    recoveredValue1 := (recoveredValue0) width.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200419dc; bytecode file offset 0x93e414"
!RBPrinterServer methodsFor: 'recovered'!
height
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := printerShell.
    recoveredValue1 := (recoveredValue0) height.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041a3c; bytecode file offset 0x93e414"
!RBPrinterServer methodsFor: 'recovered'!
window
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := printerShell.
    recoveredValue1 := (recoveredValue0) window.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200593f8; bytecode file offset 0x956284"
!RBPrinterServer methodsFor: 'recovered'!
pixelNearestToColor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) palette.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) nearestPixelValue: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005dd20; bytecode file offset 0x95a60c"
!RBPrinterServer methodsFor: 'recovered'!
palette
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := printerShell.
    recoveredValue1 := (recoveredValue0) window.
    recoveredValue2 := (recoveredValue1) getPalette.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200658e4; bytecode file offset 0x963428"
!RBPrinterServer methodsFor: 'recovered'!
done
    | recoveredValue0 |
    recoveredValue0 := done.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200676ac; bytecode file offset 0x9646f8"
!RBPrinterServer methodsFor: 'recovered'!
gc
    | recoveredValue0 |
    recoveredValue0 := gc.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068adc; bytecode file offset 0x965b90"
!RBPrinterServer methodsFor: 'recovered'!
fontStruct
    | recoveredValue0 |
    recoveredValue0 := fontStruct.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069598; bytecode file offset 0x966bdc"
!RBPrinterServer methodsFor: 'recovered'!
paneCtrl
    | recoveredValue0 |
    recoveredValue0 := paneCtrl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ae1c; bytecode file offset 0x967a18"
!RBPrinterServer methodsFor: 'recovered'!
printerShell
    | recoveredValue0 |
    recoveredValue0 := printerShell.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b8d0; bytecode file offset 0x96873c"
!RBPrinterServer methodsFor: 'recovered'!
printRect
    | recoveredValue0 |
    recoveredValue0 := printRect.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006beb4; bytecode file offset 0x9692b0"
!RBPrinterServer methodsFor: 'recovered'!
paneFlag
    | recoveredValue0 |
    recoveredValue0 := paneFlag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cae8; bytecode file offset 0x969c04"
!RBPrinterServer methodsFor: 'recovered'!
scaleFactor
    | recoveredValue0 |
    recoveredValue0 := scaleFactor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d7dc; bytecode file offset 0x96a390"
!RBPrinterServer methodsFor: 'recovered'!
header
    | recoveredValue0 |
    recoveredValue0 := header.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077b84; bytecode file offset 0x9757c8"
!RBPrinterServer methodsFor: 'recovered'!
displayForDocu
    ^true
! !

"ASDBase.ic method 0x20078b54; bytecode file offset 0x9757c8"
!RBPrinterServer methodsFor: 'recovered'!
isRBPrinterServer
    ^true
! !

"ASDBase.ic method 0x20082ecc; bytecode file offset 0x97f798"
!RBPrinterServer methodsFor: 'recovered'!
done: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    done := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200afbac; bytecode file offset 0x9ac468"
!RBPrinterServer methodsFor: 'recovered'!
printPane
    (self) paneFlag: (true).
    (self) print.
    ^self
! !

"ASDBase.ic method 0x200b790c; bytecode file offset 0x9b4208"
!RBPrinterServer methodsFor: 'recovered'!
printOnRect: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printRect: (recoveredValue0).
    (self) print.
    ^self
! !

"ASDBase.ic method 0x200c049c; bytecode file offset 0x9bd228"
!RBPrinterServer methodsFor: 'recovered'!
fontStruct: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fontStruct := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c09c8; bytecode file offset 0x9bdf14"
!RBPrinterServer methodsFor: 'recovered'!
paneCtrl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    paneCtrl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2024; bytecode file offset 0x9beac8"
!RBPrinterServer methodsFor: 'recovered'!
printerShell: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    printerShell := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2720; bytecode file offset 0x9bf474"
!RBPrinterServer methodsFor: 'recovered'!
printRect: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    printRect := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c34f4; bytecode file offset 0x9bfde0"
!RBPrinterServer methodsFor: 'recovered'!
paneFlag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    paneFlag := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c36f8; bytecode file offset 0x9c058c"
!RBPrinterServer methodsFor: 'recovered'!
scaleFactor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scaleFactor := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4244; bytecode file offset 0x9c0bf0"
!RBPrinterServer methodsFor: 'recovered'!
header: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    header := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4608; bytecode file offset 0x9c11bc"
!RBPrinterServer methodsFor: 'recovered'!
scaled: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scaled := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20106304; bytecode file offset 0xa02bb8"
!RBPrinterServer methodsFor: 'recovered'!
scaled
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := scaled.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            scaled := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := scaled.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20107614; bytecode file offset 0xa03edc"
!RBPrinterServer methodsFor: 'recovered'!
print
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('hw') == ('call_84102').
    recoveredValue1 := CgDisplay.
    recoveredValue2 := (recoveredValue1) defaultPrinterDisplayName.
    recoveredValue3 := (self) print: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010c414; bytecode file offset 0xa08cd4"
!RBPrinterServer methodsFor: 'recovered'!
printScale: recoveredArg1
    | recoveredValue0 |
    (self) paneFlag: (true).
    recoveredValue0 := recoveredArg1.
    (self) scaleFactor: (recoveredValue0).
    (self) print.
    ^self
! !

"ASDBase.ic method 0x20152b9c; bytecode file offset 0xa4f45c"
!RBPrinterServer methodsFor: 'recovered'!
initFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) paneCtrl: (recoveredValue0).
    (self) paneFlag: (false).
    (self) scaleFactor: (100).
    ^self
! !

"ASDBase.ic method 0x20210a7c; bytecode file offset 0xb0d34c"
!RBPrinterServer methodsFor: 'recovered'!
destroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) done: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := gc.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) freeGC.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) display.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultFontStruct.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) freeFont.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) display.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d455c; bytecode file offset 0xbd0e24"
!RBPrinterServer methodsFor: 'recovered'!
createString: recoveredArg1 length: recoveredArg2 font: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidth: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := Dots.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := Dots.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidth: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 47].
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

"ASDBase.ic method 0x20393568; bytecode file offset 0xc8fe54"
!RBPrinterServer methodsFor: 'recovered'!
map: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := gc.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := None.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) createGC: (recoveredStack2) values: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            gc := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) display.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := '*courier*'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) listFonts: (recoveredStack2) maxnames: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultFontStruct.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) loadQueryFont: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) fontStruct: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) startJob.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) done: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) startPage.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) done: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a70e4; bytecode file offset 0xda3a08"
!RBPrinterServer methodsFor: 'recovered'!
expose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneCtrl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneCtrl.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) fontStruct.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) fid.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) setFont: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) prepareForDrawable: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) paneCtrl.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) palette.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) setPalette: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 'WHAT12293'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) paneCtrl.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) pageNumber.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) paneCtrl.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) numberOfPages.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPrintHeaderPage: (recoveredStack2) of: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) header: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) header.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) createHeader: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) printRect.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneCtrl.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) printRect.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) pageNumber.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) printOnPrinter: (recoveredStack1) inRect: (recoveredStack2) pageNumber: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) endPage.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) prepareForDrawable: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) getDC.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) startPage.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneCtrl.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) printOnPrinter: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) endPage.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) done: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) endJob.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) destroyWidget.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205a4260; bytecode file offset 0xea0bd4"
!RBPrinterServer methodsFor: 'recovered'!
printWithPrompter: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) done: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := CgDisplay.
    recoveredBlock9Value1 := (recoveredBlock9Value0) allPrinterDisplayNames.
    recoveredBlock9Value2 := recoveredBlock9Value1.
    recoveredLocal1 := recoveredBlock9Value2.
    recoveredBlock9Value1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'There are no available printers.'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayName.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock58Stack0 recoveredBlock58Stack1 recoveredBlock58Stack2 recoveredBlock58Stack3 recoveredBlock58Stack4 recoveredBlock58Stack5 recoveredBlock58Stack6 recoveredBlock58PC recoveredBlock58Step recoveredBlock58Done recoveredBlock58Result |
    recoveredBlock58Stack0 := self.
    recoveredBlock58PC := 64.
    recoveredBlock58Done := false.
    [recoveredBlock58Done not] whileTrue: [
        recoveredBlock58Step := recoveredBlock58PC.
        recoveredBlock58Step = 64 ifTrue: [
            recoveredBlock58Stack1 := recoveredArg1.
            recoveredBlock58PC := 67.
        ].
        recoveredBlock58Step = 67 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) displayInfo.
            recoveredBlock58PC := 69.
        ].
        recoveredBlock58Step = 69 ifTrue: [
            recoveredBlock58Stack2 := recoveredArg1.
            recoveredBlock58PC := 72.
        ].
        recoveredBlock58Step = 72 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) selectedPosition.
            recoveredBlock58PC := 74.
        ].
        recoveredBlock58Step = 74 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) at: (recoveredBlock58Stack2).
            recoveredBlock58PC := 76.
        ].
        recoveredBlock58Step = 76 ifTrue: [
            recoveredLocal6 := recoveredBlock58Stack1.
            recoveredBlock58PC := 79.
        ].
        recoveredBlock58Step = 79 ifTrue: [
            recoveredBlock58Stack1 := recoveredArg1.
            recoveredBlock58PC := 82.
        ].
        recoveredBlock58Step = 82 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) jobAttributes.
            recoveredBlock58PC := 84.
        ].
        recoveredBlock58Step = 84 ifTrue: [
            recoveredLocal3 := recoveredBlock58Stack1.
            recoveredBlock58PC := 87.
        ].
        recoveredBlock58Step = 87 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal3.
            recoveredBlock58PC := 90.
        ].
        recoveredBlock58Step = 90 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) driverData.
            recoveredBlock58PC := 92.
        ].
        recoveredBlock58Step = 92 ifTrue: [
            recoveredLocal2 := recoveredBlock58Stack1.
            recoveredBlock58PC := 95.
        ].
        recoveredBlock58Step = 95 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) paneCtrl.
            recoveredBlock58PC := 97.
        ].
        recoveredBlock58Step = 97 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) printingSize.
            recoveredBlock58PC := 99.
        ].
        recoveredBlock58Step = 99 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) y.
            recoveredBlock58PC := 101.
        ].
        recoveredBlock58Step = 101 ifTrue: [
            recoveredBlock58Stack1 := self.
            recoveredBlock58PC := 102.
        ].
        recoveredBlock58Step = 102 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) paneCtrl.
            recoveredBlock58PC := 104.
        ].
        recoveredBlock58Step = 104 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) printingSize.
            recoveredBlock58PC := 106.
        ].
        recoveredBlock58Step = 106 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) x.
            recoveredBlock58PC := 108.
        ].
        recoveredBlock58Step = 108 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) >= (recoveredBlock58Stack1).
            recoveredBlock58PC := 109.
        ].
        recoveredBlock58Step = 109 ifTrue: [
            (recoveredBlock58Stack0) ifTrue: [recoveredBlock58PC := 112] ifFalse: [recoveredBlock58PC := 122].
        ].
        recoveredBlock58Step = 112 ifTrue: [
            recoveredBlock58Stack0 := recoveredLocal2.
            recoveredBlock58PC := 115.
        ].
        recoveredBlock58Step = 115 ifTrue: [
            recoveredBlock58Stack1 := 1.
            recoveredBlock58PC := 117.
        ].
        recoveredBlock58Step = 117 ifTrue: [
            (recoveredBlock58Stack0) dmOrientation: (recoveredBlock58Stack1).
            recoveredBlock58PC := 119.
        ].
        recoveredBlock58Step = 119 ifTrue: [
            recoveredBlock58PC := 129.
        ].
        recoveredBlock58Step = 122 ifTrue: [
            recoveredBlock58Stack0 := recoveredLocal2.
            recoveredBlock58PC := 125.
        ].
        recoveredBlock58Step = 125 ifTrue: [
            recoveredBlock58Stack1 := 2.
            recoveredBlock58PC := 127.
        ].
        recoveredBlock58Step = 127 ifTrue: [
            (recoveredBlock58Stack0) dmOrientation: (recoveredBlock58Stack1).
            recoveredBlock58PC := 129.
        ].
        recoveredBlock58Step = 129 ifTrue: [
            recoveredBlock58Stack0 := CgPrintJobAttributes.
            recoveredBlock58PC := 131.
        ].
        recoveredBlock58Step = 131 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal6.
            recoveredBlock58PC := 134.
        ].
        recoveredBlock58Step = 134 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) driverName.
            recoveredBlock58PC := 136.
        ].
        recoveredBlock58Step = 136 ifTrue: [
            recoveredBlock58Stack2 := recoveredLocal6.
            recoveredBlock58PC := 139.
        ].
        recoveredBlock58Step = 139 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) deviceName.
            recoveredBlock58PC := 141.
        ].
        recoveredBlock58Step = 141 ifTrue: [
            recoveredBlock58Stack3 := recoveredLocal6.
            recoveredBlock58PC := 144.
        ].
        recoveredBlock58Step = 144 ifTrue: [
            recoveredBlock58Stack3 := (recoveredBlock58Stack3) outputMedium.
            recoveredBlock58PC := 146.
        ].
        recoveredBlock58Step = 146 ifTrue: [
            recoveredBlock58Stack4 := DmCopy.
            recoveredBlock58PC := 148.
        ].
        recoveredBlock58Step = 148 ifTrue: [
            recoveredBlock58Stack5 := DmModify.
            recoveredBlock58PC := 150.
        ].
        recoveredBlock58Step = 150 ifTrue: [
            recoveredBlock58Stack4 := (recoveredBlock58Stack4) bitOr: (recoveredBlock58Stack5).
            recoveredBlock58PC := 152.
        ].
        recoveredBlock58Step = 152 ifTrue: [
            recoveredBlock58Stack5 := DmUpdate.
            recoveredBlock58PC := 154.
        ].
        recoveredBlock58Step = 154 ifTrue: [
            recoveredBlock58Stack4 := (recoveredBlock58Stack4) bitOr: (recoveredBlock58Stack5).
            recoveredBlock58PC := 156.
        ].
        recoveredBlock58Step = 156 ifTrue: [
            recoveredBlock58Stack5 := recoveredLocal2.
            recoveredBlock58PC := 159.
        ].
        recoveredBlock58Step = 159 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) devModeDriver: (recoveredBlock58Stack1) devName: (recoveredBlock58Stack2) devMedium: (recoveredBlock58Stack3) flags: (recoveredBlock58Stack4) oldDeviceMode: (recoveredBlock58Stack5).
            recoveredBlock58PC := 162.
        ].
        recoveredBlock58Step = 162 ifTrue: [
            recoveredLocal4 := recoveredBlock58Stack0.
            recoveredBlock58PC := 165.
        ].
        recoveredBlock58Step = 165 ifTrue: [
            recoveredBlock58Stack0 := recoveredLocal4.
            recoveredBlock58PC := 168.
        ].
        recoveredBlock58Step = 168 ifTrue: [
            (recoveredBlock58Stack0 ~~ nil) ifTrue: [recoveredBlock58PC := 182] ifFalse: [recoveredBlock58PC := 172].
        ].
        recoveredBlock58Step = 172 ifTrue: [
            recoveredBlock58Stack0 := recoveredLocal3.
            recoveredBlock58PC := 175.
        ].
        recoveredBlock58Step = 175 ifTrue: [
            recoveredLocal5 := recoveredBlock58Stack0.
            recoveredBlock58PC := 178.
        ].
        recoveredBlock58Step = 178 ifTrue: [
            recoveredBlock58PC := 194.
        ].
        recoveredBlock58Step = 182 ifTrue: [
            recoveredBlock58Stack0 := CgPrintJobAttributes.
            recoveredBlock58PC := 184.
        ].
        recoveredBlock58Step = 184 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) new.
            recoveredBlock58PC := 186.
        ].
        recoveredBlock58Step = 186 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal4.
            recoveredBlock58PC := 189.
        ].
        recoveredBlock58Step = 189 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) initialize: (recoveredBlock58Stack1).
            recoveredBlock58PC := 191.
        ].
        recoveredBlock58Step = 191 ifTrue: [
            recoveredLocal5 := recoveredBlock58Stack0.
            recoveredBlock58PC := 194.
        ].
        recoveredBlock58Step = 194 ifTrue: [
            recoveredBlock58Stack0 := CwAppContext.
            recoveredBlock58PC := 196.
        ].
        recoveredBlock58Step = 196 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) default.
            recoveredBlock58PC := 198.
        ].
        recoveredBlock58Step = 198 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal8.
            recoveredBlock58PC := 201.
        ].
        recoveredBlock58Step = 201 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) openDisplay: (recoveredBlock58Stack1).
            recoveredBlock58PC := 203.
        ].
        recoveredBlock58Step = 203 ifTrue: [
            recoveredBlock58Stack1 := recoveredBlock58Stack0.
            recoveredBlock58PC := 204.
        ].
        recoveredBlock58Step = 204 ifTrue: [
            recoveredLocal7 := recoveredBlock58Stack1.
            recoveredBlock58PC := 207.
        ].
        recoveredBlock58Step = 207 ifTrue: [
            (recoveredBlock58Stack0 ~~ nil) ifTrue: [recoveredBlock58PC := 212] ifFalse: [recoveredBlock58PC := 210].
        ].
        recoveredBlock58Step = 210 ifTrue: [
            recoveredBlock58Stack0 := nil.
            recoveredBlock58PC := 211.
        ].
        recoveredBlock58Step = 211 ifTrue: [
            ^recoveredBlock58Stack0
        ].
        recoveredBlock58Step = 212 ifTrue: [
            recoveredBlock58Stack0 := RBPrinterShell.
            recoveredBlock58PC := 214.
        ].
        recoveredBlock58Step = 214 ifTrue: [
            recoveredBlock58Stack1 := self.
            recoveredBlock58PC := 215.
        ].
        recoveredBlock58Step = 215 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) class.
            recoveredBlock58PC := 217.
        ].
        recoveredBlock58Step = 217 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) name.
            recoveredBlock58PC := 219.
        ].
        recoveredBlock58Step = 219 ifTrue: [
            recoveredBlock58Stack2 := nil.
            recoveredBlock58PC := 220.
        ].
        recoveredBlock58Step = 220 ifTrue: [
            recoveredBlock58Stack3 := recoveredLocal7.
            recoveredBlock58PC := 223.
        ].
        recoveredBlock58Step = 223 ifTrue: [
            recoveredBlock58Stack4 := [:recoveredBlock58Block223Arg1 | 
    | recoveredBlock58Block223Value0 recoveredBlock58Block223Value1 recoveredBlock58Block223Value2 |
    recoveredBlock58Block223Value0 := recoveredBlock58Block223Arg1.
    recoveredBlock58Block223Value1 := recoveredLocal5.
    recoveredBlock58Block223Value2 := (recoveredBlock58Block223Value0) jobAttributes: (recoveredBlock58Block223Value1).
    recoveredBlock58Block223Value2
].
            recoveredBlock58PC := 237.
        ].
        recoveredBlock58Step = 237 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) appCreateShell: (recoveredBlock58Stack1) applicationClass: (recoveredBlock58Stack2) display: (recoveredBlock58Stack3) argBlock: (recoveredBlock58Stack4).
            recoveredBlock58PC := 240.
        ].
        recoveredBlock58Step = 240 ifTrue: [
            printerShell := recoveredBlock58Stack0.
            recoveredBlock58PC := 242.
        ].
        recoveredBlock58Step = 242 ifTrue: [
            recoveredBlock58Stack0 := printerShell.
            recoveredBlock58PC := 244.
        ].
        recoveredBlock58Step = 244 ifTrue: [
            recoveredBlock58Stack1 := recoveredBlock58Stack0.
            recoveredBlock58PC := 245.
        ].
        recoveredBlock58Step = 245 ifTrue: [
            recoveredBlock58Stack2 := XmNmapCallback.
            recoveredBlock58PC := 247.
        ].
        recoveredBlock58Step = 247 ifTrue: [
            recoveredBlock58Stack3 := self.
            recoveredBlock58PC := 248.
        ].
        recoveredBlock58Step = 248 ifTrue: [
            recoveredBlock58Stack4 := 'map:clientData:callData:'.
            recoveredBlock58PC := 250.
        ].
        recoveredBlock58Step = 250 ifTrue: [
            recoveredBlock58Stack5 := nil.
            recoveredBlock58PC := 251.
        ].
        recoveredBlock58Step = 251 ifTrue: [
            (recoveredBlock58Stack1) addCallback: (recoveredBlock58Stack2) receiver: (recoveredBlock58Stack3) selector: (recoveredBlock58Stack4) clientData: (recoveredBlock58Stack5).
            recoveredBlock58Stack1 := recoveredBlock58Stack0.
            recoveredBlock58PC := 254.
        ].
        recoveredBlock58Step = 254 ifTrue: [
            recoveredBlock58Stack2 := XmNdestroyCallback.
            recoveredBlock58PC := 256.
        ].
        recoveredBlock58Step = 256 ifTrue: [
            recoveredBlock58Stack3 := self.
            recoveredBlock58PC := 257.
        ].
        recoveredBlock58Step = 257 ifTrue: [
            recoveredBlock58Stack4 := 'destroy:clientData:callData:'.
            recoveredBlock58PC := 259.
        ].
        recoveredBlock58Step = 259 ifTrue: [
            recoveredBlock58Stack5 := nil.
            recoveredBlock58PC := 260.
        ].
        recoveredBlock58Step = 260 ifTrue: [
            (recoveredBlock58Stack1) addCallback: (recoveredBlock58Stack2) receiver: (recoveredBlock58Stack3) selector: (recoveredBlock58Stack4) clientData: (recoveredBlock58Stack5).
            recoveredBlock58Stack1 := recoveredBlock58Stack0.
            recoveredBlock58PC := 263.
        ].
        recoveredBlock58Step = 263 ifTrue: [
            recoveredBlock58Stack2 := XmNexposeCallback.
            recoveredBlock58PC := 265.
        ].
        recoveredBlock58Step = 265 ifTrue: [
            recoveredBlock58Stack3 := self.
            recoveredBlock58PC := 266.
        ].
        recoveredBlock58Step = 266 ifTrue: [
            recoveredBlock58Stack4 := 'expose:clientData:callData:'.
            recoveredBlock58PC := 268.
        ].
        recoveredBlock58Step = 268 ifTrue: [
            recoveredBlock58Stack5 := nil.
            recoveredBlock58PC := 269.
        ].
        recoveredBlock58Step = 269 ifTrue: [
            (recoveredBlock58Stack1) addCallback: (recoveredBlock58Stack2) receiver: (recoveredBlock58Stack3) selector: (recoveredBlock58Stack4) clientData: (recoveredBlock58Stack5).
            recoveredBlock58PC := 272.
        ].
        recoveredBlock58Step = 272 ifTrue: [
            (recoveredBlock58Stack0) realizeWidget.
            recoveredBlock58PC := 274.
        ].
        recoveredBlock58Step = 274 ifTrue: [
            recoveredBlock58PC := 284.
        ].
        recoveredBlock58Step = 278 ifTrue: [
            recoveredBlock58Stack0 := CwAppContext.
            recoveredBlock58PC := 280.
        ].
        recoveredBlock58Step = 280 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) default.
            recoveredBlock58PC := 282.
        ].
        recoveredBlock58Step = 282 ifTrue: [
            (recoveredBlock58Stack0) readAndDispatch.
            recoveredBlock58PC := 284.
        ].
        recoveredBlock58Step = 284 ifTrue: [
            recoveredBlock58Stack0 := self.
            recoveredBlock58PC := 285.
        ].
        recoveredBlock58Step = 285 ifTrue: [
            recoveredBlock58Stack0 := (recoveredBlock58Stack0) done.
            recoveredBlock58PC := 287.
        ].
        recoveredBlock58Step = 287 ifTrue: [
            (recoveredBlock58Stack0) ifTrue: [recoveredBlock58PC := 289] ifFalse: [recoveredBlock58PC := 278].
        ].
        recoveredBlock58Step = 289 ifTrue: [
            recoveredBlock58Stack0 := nil.
            recoveredBlock58PC := 290.
        ].
        recoveredBlock58Step = 290 ifTrue: [
            recoveredBlock58Result := recoveredBlock58Stack0.
            recoveredBlock58Done := true.
        ].
    ].
    recoveredBlock58Result
].
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205bc128; bytecode file offset 0xeb8ab4"
!RBPrinterServer methodsFor: 'recovered'!
print: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_84102'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) done: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := CgDisplay.
    recoveredBlock15Value1 := (recoveredBlock15Value0) allPrinterDisplayNames.
    recoveredBlock15Value2 := recoveredBlock15Value1.
    recoveredLocal1 := recoveredBlock15Value2.
    recoveredBlock15Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := RBSystemError.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) noPrinter.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := CwPrinterPrompter.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'Call_45170'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) displayName: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock84Stack0 recoveredBlock84Stack1 recoveredBlock84Stack2 recoveredBlock84Stack3 recoveredBlock84Stack4 recoveredBlock84Stack5 recoveredBlock84Stack6 recoveredBlock84PC recoveredBlock84Step recoveredBlock84Done recoveredBlock84Result |
    recoveredBlock84Stack0 := self.
    recoveredBlock84PC := 90.
    recoveredBlock84Done := false.
    [recoveredBlock84Done not] whileTrue: [
        recoveredBlock84Step := recoveredBlock84PC.
        recoveredBlock84Step = 90 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal9.
            recoveredBlock84PC := 93.
        ].
        recoveredBlock84Step = 93 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) displayInfo.
            recoveredBlock84PC := 95.
        ].
        recoveredBlock84Step = 95 ifTrue: [
            recoveredBlock84Stack2 := recoveredLocal9.
            recoveredBlock84PC := 98.
        ].
        recoveredBlock84Step = 98 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) selectedPosition.
            recoveredBlock84PC := 100.
        ].
        recoveredBlock84Step = 100 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) at: (recoveredBlock84Stack2).
            recoveredBlock84PC := 102.
        ].
        recoveredBlock84Step = 102 ifTrue: [
            recoveredLocal6 := recoveredBlock84Stack1.
            recoveredBlock84PC := 105.
        ].
        recoveredBlock84Step = 105 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal9.
            recoveredBlock84PC := 108.
        ].
        recoveredBlock84Step = 108 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) jobAttributes.
            recoveredBlock84PC := 110.
        ].
        recoveredBlock84Step = 110 ifTrue: [
            recoveredLocal3 := recoveredBlock84Stack1.
            recoveredBlock84PC := 113.
        ].
        recoveredBlock84Step = 113 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal3.
            recoveredBlock84PC := 116.
        ].
        recoveredBlock84Step = 116 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) driverData.
            recoveredBlock84PC := 118.
        ].
        recoveredBlock84Step = 118 ifTrue: [
            recoveredLocal2 := recoveredBlock84Stack1.
            recoveredBlock84PC := 121.
        ].
        recoveredBlock84Step = 121 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) paneCtrl.
            recoveredBlock84PC := 123.
        ].
        recoveredBlock84Step = 123 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) printingSize.
            recoveredBlock84PC := 125.
        ].
        recoveredBlock84Step = 125 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) y.
            recoveredBlock84PC := 127.
        ].
        recoveredBlock84Step = 127 ifTrue: [
            recoveredBlock84Stack1 := self.
            recoveredBlock84PC := 128.
        ].
        recoveredBlock84Step = 128 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) paneCtrl.
            recoveredBlock84PC := 130.
        ].
        recoveredBlock84Step = 130 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) printingSize.
            recoveredBlock84PC := 132.
        ].
        recoveredBlock84Step = 132 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) x.
            recoveredBlock84PC := 134.
        ].
        recoveredBlock84Step = 134 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) >= (recoveredBlock84Stack1).
            recoveredBlock84PC := 135.
        ].
        recoveredBlock84Step = 135 ifTrue: [
            (recoveredBlock84Stack0) ifTrue: [recoveredBlock84PC := 138] ifFalse: [recoveredBlock84PC := 148].
        ].
        recoveredBlock84Step = 138 ifTrue: [
            recoveredBlock84Stack0 := recoveredLocal2.
            recoveredBlock84PC := 141.
        ].
        recoveredBlock84Step = 141 ifTrue: [
            recoveredBlock84Stack1 := 1.
            recoveredBlock84PC := 143.
        ].
        recoveredBlock84Step = 143 ifTrue: [
            (recoveredBlock84Stack0) dmOrientation: (recoveredBlock84Stack1).
            recoveredBlock84PC := 145.
        ].
        recoveredBlock84Step = 145 ifTrue: [
            recoveredBlock84PC := 155.
        ].
        recoveredBlock84Step = 148 ifTrue: [
            recoveredBlock84Stack0 := recoveredLocal2.
            recoveredBlock84PC := 151.
        ].
        recoveredBlock84Step = 151 ifTrue: [
            recoveredBlock84Stack1 := 2.
            recoveredBlock84PC := 153.
        ].
        recoveredBlock84Step = 153 ifTrue: [
            (recoveredBlock84Stack0) dmOrientation: (recoveredBlock84Stack1).
            recoveredBlock84PC := 155.
        ].
        recoveredBlock84Step = 155 ifTrue: [
            recoveredBlock84Stack0 := CgPrintJobAttributes.
            recoveredBlock84PC := 157.
        ].
        recoveredBlock84Step = 157 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal6.
            recoveredBlock84PC := 160.
        ].
        recoveredBlock84Step = 160 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) driverName.
            recoveredBlock84PC := 162.
        ].
        recoveredBlock84Step = 162 ifTrue: [
            recoveredBlock84Stack2 := recoveredLocal6.
            recoveredBlock84PC := 165.
        ].
        recoveredBlock84Step = 165 ifTrue: [
            recoveredBlock84Stack2 := (recoveredBlock84Stack2) deviceName.
            recoveredBlock84PC := 167.
        ].
        recoveredBlock84Step = 167 ifTrue: [
            recoveredBlock84Stack3 := recoveredLocal6.
            recoveredBlock84PC := 170.
        ].
        recoveredBlock84Step = 170 ifTrue: [
            recoveredBlock84Stack3 := (recoveredBlock84Stack3) outputMedium.
            recoveredBlock84PC := 172.
        ].
        recoveredBlock84Step = 172 ifTrue: [
            recoveredBlock84Stack4 := DmCopy.
            recoveredBlock84PC := 174.
        ].
        recoveredBlock84Step = 174 ifTrue: [
            recoveredBlock84Stack5 := DmModify.
            recoveredBlock84PC := 176.
        ].
        recoveredBlock84Step = 176 ifTrue: [
            recoveredBlock84Stack4 := (recoveredBlock84Stack4) bitOr: (recoveredBlock84Stack5).
            recoveredBlock84PC := 178.
        ].
        recoveredBlock84Step = 178 ifTrue: [
            recoveredBlock84Stack5 := DmUpdate.
            recoveredBlock84PC := 180.
        ].
        recoveredBlock84Step = 180 ifTrue: [
            recoveredBlock84Stack4 := (recoveredBlock84Stack4) bitOr: (recoveredBlock84Stack5).
            recoveredBlock84PC := 182.
        ].
        recoveredBlock84Step = 182 ifTrue: [
            recoveredBlock84Stack5 := recoveredLocal2.
            recoveredBlock84PC := 185.
        ].
        recoveredBlock84Step = 185 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) devModeDriver: (recoveredBlock84Stack1) devName: (recoveredBlock84Stack2) devMedium: (recoveredBlock84Stack3) flags: (recoveredBlock84Stack4) oldDeviceMode: (recoveredBlock84Stack5).
            recoveredBlock84PC := 188.
        ].
        recoveredBlock84Step = 188 ifTrue: [
            recoveredLocal4 := recoveredBlock84Stack0.
            recoveredBlock84PC := 191.
        ].
        recoveredBlock84Step = 191 ifTrue: [
            recoveredBlock84Stack0 := recoveredLocal4.
            recoveredBlock84PC := 194.
        ].
        recoveredBlock84Step = 194 ifTrue: [
            (recoveredBlock84Stack0 ~~ nil) ifTrue: [recoveredBlock84PC := 208] ifFalse: [recoveredBlock84PC := 198].
        ].
        recoveredBlock84Step = 198 ifTrue: [
            recoveredBlock84Stack0 := recoveredLocal3.
            recoveredBlock84PC := 201.
        ].
        recoveredBlock84Step = 201 ifTrue: [
            recoveredLocal5 := recoveredBlock84Stack0.
            recoveredBlock84PC := 204.
        ].
        recoveredBlock84Step = 204 ifTrue: [
            recoveredBlock84PC := 220.
        ].
        recoveredBlock84Step = 208 ifTrue: [
            recoveredBlock84Stack0 := CgPrintJobAttributes.
            recoveredBlock84PC := 210.
        ].
        recoveredBlock84Step = 210 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) new.
            recoveredBlock84PC := 212.
        ].
        recoveredBlock84Step = 212 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal4.
            recoveredBlock84PC := 215.
        ].
        recoveredBlock84Step = 215 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) initialize: (recoveredBlock84Stack1).
            recoveredBlock84PC := 217.
        ].
        recoveredBlock84Step = 217 ifTrue: [
            recoveredLocal5 := recoveredBlock84Stack0.
            recoveredBlock84PC := 220.
        ].
        recoveredBlock84Step = 220 ifTrue: [
            recoveredBlock84Stack0 := CwAppContext.
            recoveredBlock84PC := 222.
        ].
        recoveredBlock84Step = 222 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) default.
            recoveredBlock84PC := 224.
        ].
        recoveredBlock84Step = 224 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal8.
            recoveredBlock84PC := 227.
        ].
        recoveredBlock84Step = 227 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) openDisplay: (recoveredBlock84Stack1).
            recoveredBlock84PC := 229.
        ].
        recoveredBlock84Step = 229 ifTrue: [
            recoveredBlock84Stack1 := recoveredBlock84Stack0.
            recoveredBlock84PC := 230.
        ].
        recoveredBlock84Step = 230 ifTrue: [
            recoveredLocal7 := recoveredBlock84Stack1.
            recoveredBlock84PC := 233.
        ].
        recoveredBlock84Step = 233 ifTrue: [
            (recoveredBlock84Stack0 ~~ nil) ifTrue: [recoveredBlock84PC := 238] ifFalse: [recoveredBlock84PC := 236].
        ].
        recoveredBlock84Step = 236 ifTrue: [
            recoveredBlock84Stack0 := nil.
            recoveredBlock84PC := 237.
        ].
        recoveredBlock84Step = 237 ifTrue: [
            ^recoveredBlock84Stack0
        ].
        recoveredBlock84Step = 238 ifTrue: [
            recoveredBlock84Stack0 := RBPrinterShell.
            recoveredBlock84PC := 240.
        ].
        recoveredBlock84Step = 240 ifTrue: [
            recoveredBlock84Stack1 := self.
            recoveredBlock84PC := 241.
        ].
        recoveredBlock84Step = 241 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) class.
            recoveredBlock84PC := 243.
        ].
        recoveredBlock84Step = 243 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) name.
            recoveredBlock84PC := 245.
        ].
        recoveredBlock84Step = 245 ifTrue: [
            recoveredBlock84Stack2 := nil.
            recoveredBlock84PC := 246.
        ].
        recoveredBlock84Step = 246 ifTrue: [
            recoveredBlock84Stack3 := recoveredLocal7.
            recoveredBlock84PC := 249.
        ].
        recoveredBlock84Step = 249 ifTrue: [
            recoveredBlock84Stack4 := [:recoveredBlock84Block249Arg1 | 
    | recoveredBlock84Block249Value0 recoveredBlock84Block249Value1 recoveredBlock84Block249Value2 |
    recoveredBlock84Block249Value0 := recoveredBlock84Block249Arg1.
    recoveredBlock84Block249Value1 := recoveredLocal5.
    recoveredBlock84Block249Value2 := (recoveredBlock84Block249Value0) jobAttributes: (recoveredBlock84Block249Value1).
    recoveredBlock84Block249Value2
].
            recoveredBlock84PC := 263.
        ].
        recoveredBlock84Step = 263 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) appCreateShell: (recoveredBlock84Stack1) applicationClass: (recoveredBlock84Stack2) display: (recoveredBlock84Stack3) argBlock: (recoveredBlock84Stack4).
            recoveredBlock84PC := 266.
        ].
        recoveredBlock84Step = 266 ifTrue: [
            printerShell := recoveredBlock84Stack0.
            recoveredBlock84PC := 268.
        ].
        recoveredBlock84Step = 268 ifTrue: [
            recoveredBlock84Stack0 := printerShell.
            recoveredBlock84PC := 270.
        ].
        recoveredBlock84Step = 270 ifTrue: [
            recoveredBlock84Stack1 := recoveredBlock84Stack0.
            recoveredBlock84PC := 271.
        ].
        recoveredBlock84Step = 271 ifTrue: [
            recoveredBlock84Stack2 := XmNmapCallback.
            recoveredBlock84PC := 273.
        ].
        recoveredBlock84Step = 273 ifTrue: [
            recoveredBlock84Stack3 := self.
            recoveredBlock84PC := 274.
        ].
        recoveredBlock84Step = 274 ifTrue: [
            recoveredBlock84Stack4 := 'map:clientData:callData:'.
            recoveredBlock84PC := 276.
        ].
        recoveredBlock84Step = 276 ifTrue: [
            recoveredBlock84Stack5 := nil.
            recoveredBlock84PC := 277.
        ].
        recoveredBlock84Step = 277 ifTrue: [
            (recoveredBlock84Stack1) addCallback: (recoveredBlock84Stack2) receiver: (recoveredBlock84Stack3) selector: (recoveredBlock84Stack4) clientData: (recoveredBlock84Stack5).
            recoveredBlock84Stack1 := recoveredBlock84Stack0.
            recoveredBlock84PC := 280.
        ].
        recoveredBlock84Step = 280 ifTrue: [
            recoveredBlock84Stack2 := XmNdestroyCallback.
            recoveredBlock84PC := 282.
        ].
        recoveredBlock84Step = 282 ifTrue: [
            recoveredBlock84Stack3 := self.
            recoveredBlock84PC := 283.
        ].
        recoveredBlock84Step = 283 ifTrue: [
            recoveredBlock84Stack4 := 'destroy:clientData:callData:'.
            recoveredBlock84PC := 285.
        ].
        recoveredBlock84Step = 285 ifTrue: [
            recoveredBlock84Stack5 := nil.
            recoveredBlock84PC := 286.
        ].
        recoveredBlock84Step = 286 ifTrue: [
            (recoveredBlock84Stack1) addCallback: (recoveredBlock84Stack2) receiver: (recoveredBlock84Stack3) selector: (recoveredBlock84Stack4) clientData: (recoveredBlock84Stack5).
            recoveredBlock84Stack1 := recoveredBlock84Stack0.
            recoveredBlock84PC := 289.
        ].
        recoveredBlock84Step = 289 ifTrue: [
            recoveredBlock84Stack2 := XmNexposeCallback.
            recoveredBlock84PC := 291.
        ].
        recoveredBlock84Step = 291 ifTrue: [
            recoveredBlock84Stack3 := self.
            recoveredBlock84PC := 292.
        ].
        recoveredBlock84Step = 292 ifTrue: [
            recoveredBlock84Stack4 := 'expose:clientData:callData:'.
            recoveredBlock84PC := 294.
        ].
        recoveredBlock84Step = 294 ifTrue: [
            recoveredBlock84Stack5 := nil.
            recoveredBlock84PC := 295.
        ].
        recoveredBlock84Step = 295 ifTrue: [
            (recoveredBlock84Stack1) addCallback: (recoveredBlock84Stack2) receiver: (recoveredBlock84Stack3) selector: (recoveredBlock84Stack4) clientData: (recoveredBlock84Stack5).
            recoveredBlock84PC := 298.
        ].
        recoveredBlock84Step = 298 ifTrue: [
            (recoveredBlock84Stack0) realizeWidget.
            recoveredBlock84PC := 300.
        ].
        recoveredBlock84Step = 300 ifTrue: [
            recoveredBlock84PC := 310.
        ].
        recoveredBlock84Step = 304 ifTrue: [
            recoveredBlock84Stack0 := CwAppContext.
            recoveredBlock84PC := 306.
        ].
        recoveredBlock84Step = 306 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) default.
            recoveredBlock84PC := 308.
        ].
        recoveredBlock84Step = 308 ifTrue: [
            (recoveredBlock84Stack0) readAndDispatch.
            recoveredBlock84PC := 310.
        ].
        recoveredBlock84Step = 310 ifTrue: [
            recoveredBlock84Stack0 := self.
            recoveredBlock84PC := 311.
        ].
        recoveredBlock84Step = 311 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) done.
            recoveredBlock84PC := 313.
        ].
        recoveredBlock84Step = 313 ifTrue: [
            (recoveredBlock84Stack0) ifTrue: [recoveredBlock84PC := 315] ifFalse: [recoveredBlock84PC := 304].
        ].
        recoveredBlock84Step = 315 ifTrue: [
            recoveredBlock84Stack0 := nil.
            recoveredBlock84PC := 316.
        ].
        recoveredBlock84Step = 316 ifTrue: [
            recoveredBlock84Result := recoveredBlock84Stack0.
            recoveredBlock84Done := true.
        ].
    ].
    recoveredBlock84Result
].
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20630020; bytecode file offset 0xf2c99c"
!RBPrinterServer methodsFor: 'recovered'!
createHeader: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) boundingBox.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) extent.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) extent: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) paneCtrl.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) printingSize.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) paneCtrl.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) printingSize.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) extent.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) header.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) frameProportion.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := Rectangle.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) corner.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin: (recoveredStack1) corner: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 133.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) extent.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := (recoveredStack3) header.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) frameProportion.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) transpose.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := Rectangle.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) corner.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin: (recoveredStack1) corner: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) corner.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := (recoveredStack2) extent.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := (recoveredStack3) header.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := (recoveredStack3) headerProportion.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := Rectangle.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin: (recoveredStack1) corner: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := Rectangle.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := (recoveredStack2) corner.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin: (recoveredStack1) corner: (recoveredStack2).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) origin: (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) drawRectangles: (recoveredStack1) rectangles: (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolution.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolution.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := (recoveredStack0) header.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := (recoveredStack0) font.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 365] ifFalse: [recoveredPC := 280].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := (recoveredStack0) header.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := (recoveredStack0) font.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := (recoveredStack0) queryFont.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := (recoveredStack0) winHdc.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := MmIsotropic.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack1) setMapMode: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack1) setWindowOrgEx: (recoveredStack2) nY: (recoveredStack3) lpPoint: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack3 := 100.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack1) setWindowExtEx: (recoveredStack2) nY: (recoveredStack3) lpSize: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            (recoveredStack1) setViewportOrgEx: (recoveredStack2) nY: (recoveredStack3) lpPoint: (recoveredStack4).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack0) setViewportExtEx: (recoveredStack1) nY: (recoveredStack2) lpSize: (recoveredStack3).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack2 := (recoveredStack2) header.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := (recoveredStack2) font.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack1) setFont: (recoveredStack2).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack0) prepareForDrawable: (recoveredStack1).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := 100.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack0 := (recoveredStack0) header.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack0 := (recoveredStack0) columns.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := [:recoveredBlock407Arg1 | 
    | recoveredBlock407Stack0 recoveredBlock407Stack1 recoveredBlock407Stack2 recoveredBlock407Stack3 recoveredBlock407Stack4 recoveredBlock407Stack5 recoveredBlock407Stack6 recoveredBlock407Stack7 recoveredBlock407Stack8 recoveredBlock407PC recoveredBlock407Step recoveredBlock407Done recoveredBlock407Result |
    recoveredBlock407Stack0 := self.
    recoveredBlock407PC := 414.
    recoveredBlock407Done := false.
    [recoveredBlock407Done not] whileTrue: [
        recoveredBlock407Step := recoveredBlock407PC.
        recoveredBlock407Step = 414 ifTrue: [
            recoveredBlock407Stack1 := recoveredLocal7.
            recoveredBlock407PC := 417.
        ].
        recoveredBlock407Step = 417 ifTrue: [
            recoveredBlock407Stack2 := recoveredLocal11.
            recoveredBlock407PC := 420.
        ].
        recoveredBlock407Step = 420 ifTrue: [
            recoveredBlock407Stack2 := (recoveredBlock407Stack2) extent.
            recoveredBlock407PC := 421.
        ].
        recoveredBlock407Step = 421 ifTrue: [
            recoveredBlock407Stack2 := (recoveredBlock407Stack2) x.
            recoveredBlock407PC := 423.
        ].
        recoveredBlock407Step = 423 ifTrue: [
            recoveredBlock407Stack3 := recoveredBlock407Arg1.
            recoveredBlock407PC := 424.
        ].
        recoveredBlock407Step = 424 ifTrue: [
            recoveredBlock407Stack3 := (recoveredBlock407Stack3) proportion.
            recoveredBlock407PC := 426.
        ].
        recoveredBlock407Step = 426 ifTrue: [
            recoveredBlock407Stack2 := (recoveredBlock407Stack2) * (recoveredBlock407Stack3).
            recoveredBlock407PC := 427.
        ].
        recoveredBlock407Step = 427 ifTrue: [
            recoveredBlock407Stack3 := recoveredLocal2.
            recoveredBlock407PC := 430.
        ].
        recoveredBlock407Step = 430 ifTrue: [
            recoveredBlock407Stack2 := (recoveredBlock407Stack2) / (recoveredBlock407Stack3).
            recoveredBlock407PC := 432.
        ].
        recoveredBlock407Step = 432 ifTrue: [
            recoveredBlock407Stack2 := (recoveredBlock407Stack2) truncated.
            recoveredBlock407PC := 434.
        ].
        recoveredBlock407Step = 434 ifTrue: [
            recoveredBlock407Stack1 := (recoveredBlock407Stack1) + (recoveredBlock407Stack2).
            recoveredBlock407PC := 435.
        ].
        recoveredBlock407Step = 435 ifTrue: [
            recoveredLocal5 := recoveredBlock407Stack1.
            recoveredBlock407PC := 438.
        ].
        recoveredBlock407Step = 438 ifTrue: [
            recoveredBlock407Stack1 := recoveredLocal6.
            recoveredBlock407PC := 441.
        ].
        recoveredBlock407Step = 441 ifTrue: [
            recoveredBlock407Stack2 := recoveredLocal4.
            recoveredBlock407PC := 444.
        ].
        recoveredBlock407Step = 444 ifTrue: [
            recoveredBlock407Stack2 := (recoveredBlock407Stack2) height.
            recoveredBlock407PC := 446.
        ].
        recoveredBlock407Step = 446 ifTrue: [
            recoveredBlock407Stack1 := (recoveredBlock407Stack1) + (recoveredBlock407Stack2).
            recoveredBlock407PC := 447.
        ].
        recoveredBlock407Step = 447 ifTrue: [
            recoveredLocal3 := recoveredBlock407Stack1.
            recoveredBlock407PC := 450.
        ].
        recoveredBlock407Step = 450 ifTrue: [
            recoveredBlock407Stack1 := 20.
            recoveredBlock407PC := 452.
        ].
        recoveredBlock407Step = 452 ifTrue: [
            recoveredBlock407Stack2 := recoveredLocal2.
            recoveredBlock407PC := 455.
        ].
        recoveredBlock407Step = 455 ifTrue: [
            recoveredBlock407Stack1 := (recoveredBlock407Stack1) / (recoveredBlock407Stack2).
            recoveredBlock407PC := 457.
        ].
        recoveredBlock407Step = 457 ifTrue: [
            recoveredBlock407Stack1 := (recoveredBlock407Stack1) truncated.
            recoveredBlock407PC := 459.
        ].
        recoveredBlock407Step = 459 ifTrue: [
            recoveredLocal1 := recoveredBlock407Stack1.
            recoveredBlock407PC := 462.
        ].
        recoveredBlock407Step = 462 ifTrue: [
            recoveredBlock407Stack1 := recoveredBlock407Arg1.
            recoveredBlock407PC := 463.
        ].
        recoveredBlock407Step = 463 ifTrue: [
            recoveredBlock407Stack1 := (recoveredBlock407Stack1) lines.
            recoveredBlock407PC := 465.
        ].
        recoveredBlock407Step = 465 ifTrue: [
            recoveredBlock407Stack2 := [:recoveredBlock407Block465Arg1 | 
    | recoveredBlock407Block465Local1 recoveredBlock407Block465Local2 recoveredBlock407Block465Value0 recoveredBlock407Block465Value1 recoveredBlock407Block465Value2 recoveredBlock407Block465Value3 recoveredBlock407Block465Value4 recoveredBlock407Block465Value5 recoveredBlock407Block465Value6 recoveredBlock407Block465Value7 recoveredBlock407Block465Value8 recoveredBlock407Block465Value9 recoveredBlock407Block465Value10 recoveredBlock407Block465Value11 recoveredBlock407Block465Value12 recoveredBlock407Block465Value13 recoveredBlock407Block465Value14 recoveredBlock407Block465Value15 recoveredBlock407Block465Value16 recoveredBlock407Block465Value17 recoveredBlock407Block465Value18 recoveredBlock407Block465Value19 recoveredBlock407Block465Value20 recoveredBlock407Block465Value21 recoveredBlock407Block465Value22 |
    recoveredBlock407Block465Value0 := recoveredLocal7.
    recoveredBlock407Block465Value1 := recoveredLocal1.
    recoveredBlock407Block465Value2 := (recoveredBlock407Block465Value0) + (recoveredBlock407Block465Value1).
    recoveredBlock407Block465Local1 := recoveredBlock407Block465Value2.
    recoveredBlock407Block465Value3 := recoveredBlock407Block465Arg1.
    recoveredBlock407Block465Value4 := recoveredLocal5.
    recoveredBlock407Block465Value5 := recoveredBlock407Block465Local1.
    recoveredBlock407Block465Value6 := (recoveredBlock407Block465Value4) - (recoveredBlock407Block465Value5).
    recoveredBlock407Block465Value7 := recoveredLocal1.
    recoveredBlock407Block465Value8 := (4) * (recoveredBlock407Block465Value7).
    recoveredBlock407Block465Value9 := (recoveredBlock407Block465Value6) - (recoveredBlock407Block465Value8).
    recoveredBlock407Block465Value10 := recoveredLocal4.
    recoveredBlock407Block465Value11 := (self) createString: (recoveredBlock407Block465Value3) length: (recoveredBlock407Block465Value9) font: (recoveredBlock407Block465Value10).
    recoveredBlock407Block465Local2 := recoveredBlock407Block465Value11.
    recoveredBlock407Block465Value12 := recoveredArg1.
    recoveredBlock407Block465Value13 := (recoveredBlock407Block465Value12) window.
    recoveredBlock407Block465Value14 := (self) gc.
    recoveredBlock407Block465Value15 := recoveredBlock407Block465Local1.
    recoveredBlock407Block465Value16 := recoveredLocal3.
    recoveredBlock407Block465Value17 := recoveredBlock407Block465Local2.
    (recoveredBlock407Block465Value13) drawString: (recoveredBlock407Block465Value14) x: (recoveredBlock407Block465Value15) y: (recoveredBlock407Block465Value16) string: (recoveredBlock407Block465Value17).
    recoveredBlock407Block465Value18 := recoveredLocal3.
    recoveredBlock407Block465Value19 := recoveredLocal4.
    recoveredBlock407Block465Value20 := (recoveredBlock407Block465Value19) height.
    recoveredBlock407Block465Value21 := (recoveredBlock407Block465Value18) + (recoveredBlock407Block465Value20).
    recoveredBlock407Block465Value22 := recoveredBlock407Block465Value21.
    recoveredLocal3 := recoveredBlock407Block465Value22.
    recoveredBlock407Block465Value21
].
            recoveredBlock407PC := 530.
        ].
        recoveredBlock407Step = 530 ifTrue: [
            (recoveredBlock407Stack1) do: (recoveredBlock407Stack2).
            recoveredBlock407PC := 532.
        ].
        recoveredBlock407Step = 532 ifTrue: [
            recoveredBlock407Stack1 := recoveredLocal5.
            recoveredBlock407PC := 535.
        ].
        recoveredBlock407Step = 535 ifTrue: [
            recoveredBlock407Stack2 := recoveredLocal10.
            recoveredBlock407PC := 538.
        ].
        recoveredBlock407Step = 538 ifTrue: [
            recoveredBlock407Stack2 := (recoveredBlock407Stack2) corner.
            recoveredBlock407PC := 540.
        ].
        recoveredBlock407Step = 540 ifTrue: [
            recoveredBlock407Stack2 := (recoveredBlock407Stack2) x.
            recoveredBlock407PC := 542.
        ].
        recoveredBlock407Step = 542 ifTrue: [
            recoveredBlock407Stack3 := recoveredLocal2.
            recoveredBlock407PC := 545.
        ].
        recoveredBlock407Step = 545 ifTrue: [
            recoveredBlock407Stack2 := (recoveredBlock407Stack2) / (recoveredBlock407Stack3).
            recoveredBlock407PC := 547.
        ].
        recoveredBlock407Step = 547 ifTrue: [
            recoveredBlock407Stack2 := (recoveredBlock407Stack2) truncated.
            recoveredBlock407PC := 549.
        ].
        recoveredBlock407Step = 549 ifTrue: [
            recoveredBlock407Stack1 := (recoveredBlock407Stack1) - (recoveredBlock407Stack2).
            recoveredBlock407PC := 550.
        ].
        recoveredBlock407Step = 550 ifTrue: [
            recoveredBlock407Stack1 := (recoveredBlock407Stack1) abs.
            recoveredBlock407PC := 552.
        ].
        recoveredBlock407Step = 552 ifTrue: [
            recoveredBlock407Stack2 := 50.
            recoveredBlock407PC := 554.
        ].
        recoveredBlock407Step = 554 ifTrue: [
            recoveredBlock407Stack1 := (recoveredBlock407Stack1) > (recoveredBlock407Stack2).
            recoveredBlock407PC := 555.
        ].
        recoveredBlock407Step = 555 ifTrue: [
            (recoveredBlock407Stack1) ifTrue: [recoveredBlock407PC := 558] ifFalse: [recoveredBlock407PC := 603].
        ].
        recoveredBlock407Step = 558 ifTrue: [
            recoveredBlock407Stack1 := recoveredArg1.
            recoveredBlock407PC := 561.
        ].
        recoveredBlock407Step = 561 ifTrue: [
            recoveredBlock407Stack1 := (recoveredBlock407Stack1) window.
            recoveredBlock407PC := 563.
        ].
        recoveredBlock407Step = 563 ifTrue: [
            recoveredBlock407Stack2 := self.
            recoveredBlock407PC := 564.
        ].
        recoveredBlock407Step = 564 ifTrue: [
            recoveredBlock407Stack2 := (recoveredBlock407Stack2) gc.
            recoveredBlock407PC := 566.
        ].
        recoveredBlock407Step = 566 ifTrue: [
            recoveredBlock407Stack3 := recoveredLocal5.
            recoveredBlock407PC := 569.
        ].
        recoveredBlock407Step = 569 ifTrue: [
            recoveredBlock407Stack4 := recoveredLocal11.
            recoveredBlock407PC := 572.
        ].
        recoveredBlock407Step = 572 ifTrue: [
            recoveredBlock407Stack4 := (recoveredBlock407Stack4) origin.
            recoveredBlock407PC := 574.
        ].
        recoveredBlock407Step = 574 ifTrue: [
            recoveredBlock407Stack4 := (recoveredBlock407Stack4) y.
            recoveredBlock407PC := 576.
        ].
        recoveredBlock407Step = 576 ifTrue: [
            recoveredBlock407Stack5 := recoveredLocal2.
            recoveredBlock407PC := 579.
        ].
        recoveredBlock407Step = 579 ifTrue: [
            recoveredBlock407Stack4 := (recoveredBlock407Stack4) / (recoveredBlock407Stack5).
            recoveredBlock407PC := 581.
        ].
        recoveredBlock407Step = 581 ifTrue: [
            recoveredBlock407Stack4 := (recoveredBlock407Stack4) truncated.
            recoveredBlock407PC := 583.
        ].
        recoveredBlock407Step = 583 ifTrue: [
            recoveredBlock407Stack5 := recoveredLocal5.
            recoveredBlock407PC := 586.
        ].
        recoveredBlock407Step = 586 ifTrue: [
            recoveredBlock407Stack6 := recoveredLocal11.
            recoveredBlock407PC := 589.
        ].
        recoveredBlock407Step = 589 ifTrue: [
            recoveredBlock407Stack6 := (recoveredBlock407Stack6) corner.
            recoveredBlock407PC := 591.
        ].
        recoveredBlock407Step = 591 ifTrue: [
            recoveredBlock407Stack6 := (recoveredBlock407Stack6) y.
            recoveredBlock407PC := 593.
        ].
        recoveredBlock407Step = 593 ifTrue: [
            recoveredBlock407Stack7 := recoveredLocal2.
            recoveredBlock407PC := 596.
        ].
        recoveredBlock407Step = 596 ifTrue: [
            recoveredBlock407Stack6 := (recoveredBlock407Stack6) / (recoveredBlock407Stack7).
            recoveredBlock407PC := 598.
        ].
        recoveredBlock407Step = 598 ifTrue: [
            recoveredBlock407Stack6 := (recoveredBlock407Stack6) truncated.
            recoveredBlock407PC := 600.
        ].
        recoveredBlock407Step = 600 ifTrue: [
            (recoveredBlock407Stack1) drawLine: (recoveredBlock407Stack2) x1: (recoveredBlock407Stack3) y1: (recoveredBlock407Stack4) x2: (recoveredBlock407Stack5) y2: (recoveredBlock407Stack6).
            recoveredBlock407PC := 603.
        ].
        recoveredBlock407Step = 603 ifTrue: [
            recoveredBlock407Stack1 := recoveredLocal5.
            recoveredBlock407PC := 606.
        ].
        recoveredBlock407Step = 606 ifTrue: [
            recoveredBlock407Stack2 := recoveredBlock407Stack1.
            recoveredBlock407PC := 607.
        ].
        recoveredBlock407Step = 607 ifTrue: [
            recoveredLocal7 := recoveredBlock407Stack2.
            recoveredBlock407PC := 610.
        ].
        recoveredBlock407Step = 610 ifTrue: [
            recoveredBlock407Result := recoveredBlock407Stack1.
            recoveredBlock407Done := true.
        ].
    ].
    recoveredBlock407Result
].
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            (recoveredStack0) printRect: (recoveredStack1).
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

