"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20050544; bytecode file offset 0x94d048"
!WbLabeledImage methodsFor: 'recovered'!
freePixmap
    (self) releaseImages.
    ^self
! !

"ASDBase.ic method 0x200691d4; bytecode file offset 0x965b90"
!WbLabeledImage methodsFor: 'recovered'!
image
    | recoveredValue0 |
    recoveredValue0 := image.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069c58; bytecode file offset 0x966bdc"
!WbLabeledImage methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a7b4; bytecode file offset 0x967a18"
!WbLabeledImage methodsFor: 'recovered'!
orientation
    | recoveredValue0 |
    recoveredValue0 := orientation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b750; bytecode file offset 0x96873c"
!WbLabeledImage methodsFor: 'recovered'!
mnemonic
    | recoveredValue0 |
    recoveredValue0 := mnemonic.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c954; bytecode file offset 0x9692b0"
!WbLabeledImage methodsFor: 'recovered'!
separation
    | recoveredValue0 |
    recoveredValue0 := separation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076ae4; bytecode file offset 0x9757c8"
!WbLabeledImage methodsFor: 'recovered'!
isWbLabeledImage
    ^true
! !

"ASDBase.ic method 0x20098634; bytecode file offset 0x995850"
!WbLabeledImage methodsFor: 'recovered'!
drawImageUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) image.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) wbDrawUsing: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c05fc; bytecode file offset 0x9bd228"
!WbLabeledImage methodsFor: 'recovered'!
image: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    image := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0ee8; bytecode file offset 0x9bdf14"
!WbLabeledImage methodsFor: 'recovered'!
label: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    label := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c167c; bytecode file offset 0x9beac8"
!WbLabeledImage methodsFor: 'recovered'!
orientation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    orientation := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c25d0; bytecode file offset 0x9bf474"
!WbLabeledImage methodsFor: 'recovered'!
mnemonic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mnemonic := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2f74; bytecode file offset 0x9bfde0"
!WbLabeledImage methodsFor: 'recovered'!
separation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    separation := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cb62c; bytecode file offset 0x9c7ee4"
!WbLabeledImage methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    recoveredValue0 := XmHORIZONTAL.
    orientation := recoveredValue0.
    separation := 8.
    ^self
! !

"ASDBase.ic method 0x200d6860; bytecode file offset 0x9d3134"
!WbLabeledImage methodsFor: 'recovered'!
release
    super release.
    (self) releaseImages.
    ^self
! !

"ASDBase.ic method 0x200daa8c; bytecode file offset 0x9d734c"
!WbLabeledImage methodsFor: 'recovered'!
verticalHeightUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) image.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) wbHeightUsing: (recoveredValue1).
    recoveredValue3 := (self) label.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) wbHeightUsing: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) + (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200daab0; bytecode file offset 0x9d738c"
!WbLabeledImage methodsFor: 'recovered'!
verticalWidthUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) image.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) wbWidthUsing: (recoveredValue1).
    recoveredValue3 := (self) label.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) wbWidthUsing: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) max: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200daac8; bytecode file offset 0x9d738c"
!WbLabeledImage methodsFor: 'recovered'!
horizontalHeightUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) image.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) wbHeightUsing: (recoveredValue1).
    recoveredValue3 := (self) label.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) wbHeightUsing: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) max: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200de944; bytecode file offset 0x9db320"
!WbLabeledImage methodsFor: 'recovered'!
drawImageUsing: recoveredArg1 backgroundColor: recoveredArg2 style: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) image.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    (recoveredValue0) wbDrawUsing: (recoveredValue1) backgroundColor: (recoveredValue2) style: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20110030; bytecode file offset 0xa0c8f4"
!WbLabeledImage methodsFor: 'recovered'!
horizontalWidthUsing: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) image.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) wbWidthUsing: (recoveredValue1).
    recoveredValue3 := (self) label.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) wbWidthUsing: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) + (recoveredValue5).
    recoveredValue7 := (self) separation.
    recoveredValue8 := (recoveredValue6) + (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201d9ae8; bytecode file offset 0xad63bc"
!WbLabeledImage methodsFor: 'recovered'!
ewWidthUsing: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := orientation.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := XmVERTICAL.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) verticalWidthUsing: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) horizontalWidthUsing: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d9afc; bytecode file offset 0xad63bc"
!WbLabeledImage methodsFor: 'recovered'!
ewHeightUsing: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := orientation.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := XmVERTICAL.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) verticalHeightUsing: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) horizontalHeightUsing: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20201bd4; bytecode file offset 0xafe494"
!WbLabeledImage methodsFor: 'recovered'!
ewDrawUsing: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := orientation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := XmVERTICAL.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) verticalDrawUsing: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) horizontalDrawUsing: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024150c; bytecode file offset 0xb3ddcc"
!WbLabeledImage methodsFor: 'recovered'!
wbDrawUsing: recoveredArg1 backgroundColor: recoveredArg2 style: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := orientation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := XmVERTICAL.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) verticalDrawUsing: (recoveredStack2) backgroundColor: (recoveredStack3) style: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) horizontalDrawUsing: (recoveredStack2) backgroundColor: (recoveredStack3) style: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203336b0; bytecode file offset 0xc2ff7c"
!WbLabeledImage methodsFor: 'recovered'!
releaseImages
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) wbIsPixmapOrIcon.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) autoRelease.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) release.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) image: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) wbIsPixmapOrIcon.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) autoRelease.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) release.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) image: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034aadc; bytecode file offset 0xc473b8"
!WbLabeledImage methodsFor: 'recovered'!
printOn: recoveredArg1
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) tab.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'image: '.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := image.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) tab.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'label: '.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := label.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := orientation.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := XmVERTICAL.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack2) tab.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 'orientation: XmVERTICAL'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20400fd8; bytecode file offset 0xcfd8c4"
!WbLabeledImage methodsFor: 'recovered'!
drawLabelUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) wbDrawUsing: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) mnemonic.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) mnemonic.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) wbWidthUsing: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontStruct.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) ascent.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) mnemonic.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) wbWidthUsing: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawable.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) drawLine: (recoveredStack1) x1: (recoveredStack2) y1: (recoveredStack3) x2: (recoveredStack4) y2: (recoveredStack5).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c0224; bytecode file offset 0xdbcb10"
!WbLabeledImage methodsFor: 'recovered'!
verticalDrawUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) x.
    recoveredLocal9 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) y.
    recoveredLocal8 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) height.
    recoveredLocal7 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) width.
    recoveredLocal6 := recoveredValue7.
    recoveredValue8 := (self) image.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue8) wbHeightUsing: (recoveredValue9).
    recoveredLocal3 := recoveredValue10.
    recoveredValue11 := (self) image.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue11) wbWidthUsing: (recoveredValue12).
    recoveredLocal5 := recoveredValue13.
    recoveredValue14 := (self) label.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue14) wbHeightUsing: (recoveredValue15).
    recoveredLocal2 := recoveredValue16.
    recoveredValue17 := (self) label.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue17) wbWidthUsing: (recoveredValue18).
    recoveredLocal4 := recoveredValue19.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (self) wbWidthUsing: (recoveredValue20).
    recoveredLocal1 := recoveredValue21.
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := recoveredValue22.
    recoveredValue24 := recoveredLocal9.
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := recoveredLocal5.
    recoveredValue27 := (recoveredValue25) - (recoveredValue26).
    recoveredValue28 := (recoveredValue27) // (2).
    recoveredValue29 := (recoveredValue24) + (recoveredValue28).
    (recoveredValue23) x: (recoveredValue29).
    recoveredValue30 := recoveredValue22.
    recoveredValue31 := recoveredLocal7.
    recoveredValue32 := recoveredLocal2.
    recoveredValue33 := (recoveredValue31) - (recoveredValue32).
    (recoveredValue30) height: (recoveredValue33).
    recoveredValue34 := recoveredLocal5.
    (recoveredValue22) width: (recoveredValue34).
    recoveredValue35 := recoveredArg1.
    (self) drawImageUsing: (recoveredValue35).
    recoveredValue36 := recoveredArg1.
    recoveredValue37 := recoveredValue36.
    recoveredValue38 := recoveredLocal9.
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := recoveredLocal4.
    recoveredValue41 := (recoveredValue39) - (recoveredValue40).
    recoveredValue42 := (recoveredValue41) // (2).
    recoveredValue43 := (recoveredValue38) + (recoveredValue42).
    (recoveredValue37) x: (recoveredValue43).
    recoveredValue44 := recoveredValue36.
    recoveredValue45 := recoveredLocal8.
    recoveredValue46 := recoveredLocal3.
    recoveredValue47 := (recoveredValue45) + (recoveredValue46).
    (recoveredValue44) y: (recoveredValue47).
    recoveredValue48 := recoveredValue36.
    recoveredValue49 := recoveredLocal2.
    (recoveredValue48) height: (recoveredValue49).
    recoveredValue50 := recoveredLocal4.
    (recoveredValue36) width: (recoveredValue50).
    recoveredValue51 := recoveredArg1.
    (self) drawLabelUsing: (recoveredValue51).
    recoveredValue52 := recoveredArg1.
    recoveredValue53 := recoveredValue52.
    recoveredValue54 := recoveredLocal9.
    (recoveredValue53) x: (recoveredValue54).
    recoveredValue55 := recoveredValue52.
    recoveredValue56 := recoveredLocal8.
    (recoveredValue55) y: (recoveredValue56).
    recoveredValue57 := recoveredValue52.
    recoveredValue58 := recoveredLocal7.
    (recoveredValue57) height: (recoveredValue58).
    recoveredValue59 := recoveredLocal6.
    (recoveredValue52) width: (recoveredValue59).
    ^self
! !

"ASDBase.ic method 0x204ceef0; bytecode file offset 0xdcb7dc"
!WbLabeledImage methodsFor: 'recovered'!
verticalDrawUsing: recoveredArg1 backgroundColor: recoveredArg2 style: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) x.
    recoveredLocal9 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) y.
    recoveredLocal8 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) height.
    recoveredLocal7 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) width.
    recoveredLocal6 := recoveredValue7.
    recoveredValue8 := (self) image.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue8) wbHeightUsing: (recoveredValue9).
    recoveredLocal3 := recoveredValue10.
    recoveredValue11 := (self) image.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue11) wbWidthUsing: (recoveredValue12).
    recoveredLocal5 := recoveredValue13.
    recoveredValue14 := (self) label.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue14) wbHeightUsing: (recoveredValue15).
    recoveredLocal2 := recoveredValue16.
    recoveredValue17 := (self) label.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue17) wbWidthUsing: (recoveredValue18).
    recoveredLocal4 := recoveredValue19.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (self) wbWidthUsing: (recoveredValue20).
    recoveredLocal1 := recoveredValue21.
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := recoveredValue22.
    recoveredValue24 := recoveredLocal9.
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := recoveredLocal5.
    recoveredValue27 := (recoveredValue25) - (recoveredValue26).
    recoveredValue28 := (recoveredValue27) // (2).
    recoveredValue29 := (recoveredValue24) + (recoveredValue28).
    (recoveredValue23) x: (recoveredValue29).
    recoveredValue30 := recoveredValue22.
    recoveredValue31 := recoveredLocal7.
    recoveredValue32 := recoveredLocal2.
    recoveredValue33 := (recoveredValue31) - (recoveredValue32).
    (recoveredValue30) height: (recoveredValue33).
    recoveredValue34 := recoveredLocal5.
    (recoveredValue22) width: (recoveredValue34).
    recoveredValue35 := recoveredArg1.
    (self) drawImageUsing: (recoveredValue35).
    recoveredValue36 := recoveredArg1.
    recoveredValue37 := recoveredValue36.
    recoveredValue38 := recoveredLocal9.
    recoveredValue39 := recoveredLocal1.
    recoveredValue40 := recoveredLocal4.
    recoveredValue41 := (recoveredValue39) - (recoveredValue40).
    recoveredValue42 := (recoveredValue41) // (2).
    recoveredValue43 := (recoveredValue38) + (recoveredValue42).
    (recoveredValue37) x: (recoveredValue43).
    recoveredValue44 := recoveredValue36.
    recoveredValue45 := recoveredLocal8.
    recoveredValue46 := recoveredLocal3.
    recoveredValue47 := (recoveredValue45) + (recoveredValue46).
    (recoveredValue44) y: (recoveredValue47).
    recoveredValue48 := recoveredValue36.
    recoveredValue49 := recoveredLocal2.
    (recoveredValue48) height: (recoveredValue49).
    recoveredValue50 := recoveredLocal4.
    (recoveredValue36) width: (recoveredValue50).
    recoveredValue51 := recoveredArg1.
    recoveredValue52 := recoveredArg2.
    recoveredValue53 := recoveredArg3.
    (self) drawLabelUsing: (recoveredValue51) backgroundColor: (recoveredValue52) style: (recoveredValue53).
    recoveredValue54 := recoveredArg1.
    recoveredValue55 := recoveredValue54.
    recoveredValue56 := recoveredLocal9.
    (recoveredValue55) x: (recoveredValue56).
    recoveredValue57 := recoveredValue54.
    recoveredValue58 := recoveredLocal8.
    (recoveredValue57) y: (recoveredValue58).
    recoveredValue59 := recoveredValue54.
    recoveredValue60 := recoveredLocal7.
    (recoveredValue59) height: (recoveredValue60).
    recoveredValue61 := recoveredLocal6.
    (recoveredValue54) width: (recoveredValue61).
    ^self
! !

"ASDBase.ic method 0x204d37d8; bytecode file offset 0xdd00c8"
!WbLabeledImage methodsFor: 'recovered'!
horizontalDrawUsing: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) x.
    recoveredLocal9 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) y.
    recoveredLocal8 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) height.
    recoveredLocal7 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) width.
    recoveredLocal6 := recoveredValue7.
    recoveredValue8 := (self) image.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue8) wbHeightUsing: (recoveredValue9).
    recoveredLocal3 := recoveredValue10.
    recoveredValue11 := (self) image.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue11) wbWidthUsing: (recoveredValue12).
    recoveredLocal5 := recoveredValue13.
    recoveredValue14 := (self) label.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue14) wbHeightUsing: (recoveredValue15).
    recoveredLocal2 := recoveredValue16.
    recoveredValue17 := (self) label.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue17) wbWidthUsing: (recoveredValue18).
    recoveredLocal4 := recoveredValue19.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (self) wbHeightUsing: (recoveredValue20).
    recoveredLocal1 := recoveredValue21.
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := recoveredValue22.
    recoveredValue24 := recoveredLocal8.
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := recoveredLocal3.
    recoveredValue27 := (recoveredValue25) - (recoveredValue26).
    recoveredValue28 := (recoveredValue27) // (2).
    recoveredValue29 := (recoveredValue24) + (recoveredValue28).
    (recoveredValue23) y: (recoveredValue29).
    recoveredValue30 := recoveredValue22.
    recoveredValue31 := recoveredLocal3.
    (recoveredValue30) height: (recoveredValue31).
    recoveredValue32 := recoveredLocal6.
    recoveredValue33 := recoveredLocal4.
    recoveredValue34 := (recoveredValue32) - (recoveredValue33).
    (recoveredValue22) width: (recoveredValue34).
    recoveredValue35 := recoveredArg1.
    (self) drawImageUsing: (recoveredValue35).
    recoveredValue36 := recoveredArg1.
    recoveredValue37 := recoveredValue36.
    recoveredValue38 := recoveredLocal9.
    recoveredValue39 := recoveredLocal5.
    recoveredValue40 := (recoveredValue38) + (recoveredValue39).
    recoveredValue41 := (self) separation.
    recoveredValue42 := (recoveredValue40) + (recoveredValue41).
    recoveredValue43 := (recoveredValue42) + (-2).
    (recoveredValue37) x: (recoveredValue43).
    recoveredValue44 := recoveredValue36.
    recoveredValue45 := recoveredLocal8.
    recoveredValue46 := recoveredLocal1.
    recoveredValue47 := recoveredLocal2.
    recoveredValue48 := (recoveredValue46) - (recoveredValue47).
    recoveredValue49 := (recoveredValue48) // (2).
    recoveredValue50 := (recoveredValue45) + (recoveredValue49).
    (recoveredValue44) y: (recoveredValue50).
    recoveredValue51 := recoveredValue36.
    recoveredValue52 := recoveredLocal2.
    (recoveredValue51) height: (recoveredValue52).
    recoveredValue53 := recoveredLocal4.
    recoveredValue54 := (recoveredValue53) + (2).
    (recoveredValue36) width: (recoveredValue54).
    recoveredValue55 := recoveredArg1.
    (self) drawLabelUsing: (recoveredValue55).
    recoveredValue56 := recoveredArg1.
    recoveredValue57 := recoveredValue56.
    recoveredValue58 := recoveredLocal9.
    (recoveredValue57) x: (recoveredValue58).
    recoveredValue59 := recoveredValue56.
    recoveredValue60 := recoveredLocal8.
    (recoveredValue59) y: (recoveredValue60).
    recoveredValue61 := recoveredValue56.
    recoveredValue62 := recoveredLocal7.
    (recoveredValue61) height: (recoveredValue62).
    recoveredValue63 := recoveredLocal6.
    (recoveredValue56) width: (recoveredValue63).
    ^self
! !

"ASDBase.ic method 0x204db464; bytecode file offset 0xdd7d50"
!WbLabeledImage methodsFor: 'recovered'!
horizontalDrawUsing: recoveredArg1 backgroundColor: recoveredArg2 style: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) x.
    recoveredLocal9 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) y.
    recoveredLocal8 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) height.
    recoveredLocal7 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) width.
    recoveredLocal6 := recoveredValue7.
    recoveredValue8 := (self) image.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue8) wbHeightUsing: (recoveredValue9).
    recoveredLocal3 := recoveredValue10.
    recoveredValue11 := (self) image.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue11) wbWidthUsing: (recoveredValue12).
    recoveredLocal5 := recoveredValue13.
    recoveredValue14 := (self) label.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue14) wbHeightUsing: (recoveredValue15).
    recoveredLocal2 := recoveredValue16.
    recoveredValue17 := (self) label.
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue17) wbWidthUsing: (recoveredValue18).
    recoveredLocal4 := recoveredValue19.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (self) wbHeightUsing: (recoveredValue20).
    recoveredLocal1 := recoveredValue21.
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := recoveredValue22.
    recoveredValue24 := recoveredLocal8.
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := recoveredLocal3.
    recoveredValue27 := (recoveredValue25) - (recoveredValue26).
    recoveredValue28 := (recoveredValue27) // (2).
    recoveredValue29 := (recoveredValue24) + (recoveredValue28).
    (recoveredValue23) y: (recoveredValue29).
    recoveredValue30 := recoveredValue22.
    recoveredValue31 := recoveredLocal3.
    (recoveredValue30) height: (recoveredValue31).
    recoveredValue32 := recoveredLocal6.
    recoveredValue33 := recoveredLocal4.
    recoveredValue34 := (recoveredValue32) - (recoveredValue33).
    (recoveredValue22) width: (recoveredValue34).
    recoveredValue35 := recoveredArg1.
    (self) drawImageUsing: (recoveredValue35).
    recoveredValue36 := recoveredArg1.
    recoveredValue37 := recoveredValue36.
    recoveredValue38 := recoveredLocal9.
    recoveredValue39 := recoveredLocal5.
    recoveredValue40 := (recoveredValue38) + (recoveredValue39).
    recoveredValue41 := (recoveredValue40) + (6).
    (recoveredValue37) x: (recoveredValue41).
    recoveredValue42 := recoveredValue36.
    recoveredValue43 := recoveredLocal8.
    recoveredValue44 := recoveredLocal1.
    recoveredValue45 := recoveredLocal2.
    recoveredValue46 := (recoveredValue44) - (recoveredValue45).
    recoveredValue47 := (recoveredValue46) // (2).
    recoveredValue48 := (recoveredValue43) + (recoveredValue47).
    (recoveredValue42) y: (recoveredValue48).
    recoveredValue49 := recoveredValue36.
    recoveredValue50 := recoveredLocal2.
    (recoveredValue49) height: (recoveredValue50).
    recoveredValue51 := recoveredLocal4.
    recoveredValue52 := (recoveredValue51) + (2).
    (recoveredValue36) width: (recoveredValue52).
    recoveredValue53 := recoveredArg1.
    recoveredValue54 := recoveredArg2.
    recoveredValue55 := recoveredArg3.
    (self) drawLabelUsing: (recoveredValue53) backgroundColor: (recoveredValue54) style: (recoveredValue55).
    recoveredValue56 := recoveredArg1.
    recoveredValue57 := recoveredValue56.
    recoveredValue58 := recoveredLocal9.
    (recoveredValue57) x: (recoveredValue58).
    recoveredValue59 := recoveredValue56.
    recoveredValue60 := recoveredLocal8.
    (recoveredValue59) y: (recoveredValue60).
    recoveredValue61 := recoveredValue56.
    recoveredValue62 := recoveredLocal7.
    (recoveredValue61) height: (recoveredValue62).
    recoveredValue63 := recoveredLocal6.
    (recoveredValue56) width: (recoveredValue63).
    ^self
! !

"ASDBase.ic method 0x206119c8; bytecode file offset 0xf0e2d0"
!WbLabeledImage methodsFor: 'recovered'!
drawLabelUsing: recoveredArg1 backgroundColor: recoveredArg2 style: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) wbDrawUsing: (recoveredStack1) backgroundColor: (recoveredStack2) style: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) mnemonic.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) mnemonic.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) wbWidthUsing: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) ascent.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 270.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := Lf.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 270] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := Cr.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) wbWidthUsing: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := XmALIGNMENTCENTER.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredPC := 194.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := XmALIGNMENTEND.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) mnemonic.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 259].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) wbWidthUsing: (recoveredStack2).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawable.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack5 := (recoveredStack5) mnemonic.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack5 := (recoveredStack5) wbWidthUsing: (recoveredStack6).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawLine: (recoveredStack1) x1: (recoveredStack2) y1: (recoveredStack3) x2: (recoveredStack4) y2: (recoveredStack5).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 368] ifFalse: [recoveredPC := 296].
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) mnemonic.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 312] ifFalse: [recoveredPC := 364].
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := (recoveredStack1) wbWidthUsing: (recoveredStack2).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawable.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack5 := (recoveredStack5) mnemonic.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack5 := (recoveredStack5) wbWidthUsing: (recoveredStack6).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawLine: (recoveredStack1) x1: (recoveredStack2) y1: (recoveredStack3) x2: (recoveredStack4) y2: (recoveredStack5).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 364 ifTrue: [
            recoveredPC := 491.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack0 := (recoveredStack0) wbWidthUsing: (recoveredStack1).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := XmALIGNMENTCENTER.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 408] ifFalse: [recoveredPC := 392].
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredPC := 426.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := XmALIGNMENTEND.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 426] ifFalse: [recoveredPC := 416].
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := (recoveredStack1) mnemonic.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 440] ifFalse: [recoveredPC := 491].
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := (recoveredStack1) wbWidthUsing: (recoveredStack2).
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawable.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack5 := (recoveredStack5) mnemonic.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack5 := (recoveredStack5) wbWidthUsing: (recoveredStack6).
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawLine: (recoveredStack1) x1: (recoveredStack2) y1: (recoveredStack3) x2: (recoveredStack4) y2: (recoveredStack5).
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

