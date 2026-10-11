"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200029e8; bytecode file offset 0x8ffcfc"
!SGPerlCodeStream methodsFor: 'recovered'!
asPerlCodeStream
    ^self
! !

"ASDBase.ic method 0x2001709c; bytecode file offset 0x92209c"
!SGPerlCodeStream methodsFor: 'recovered'!
beginCommentString
    ^'#'
! !

"ASDBase.ic method 0x200190c4; bytecode file offset 0x92209c"
!SGPerlCodeStream methodsFor: 'recovered'!
bannerRowStart
    ^' #'
! !

"ASDBase.ic method 0x20084390; bytecode file offset 0x981ca4"
!SGPerlCodeStream methodsFor: 'recovered'!
sectionBanner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) bannerSectionRowLabel: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a0de0; bytecode file offset 0x99db8c"
!SGPerlCodeStream methodsFor: 'recovered'!
bemNewline
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: ('_BE_newLine();').
    ^self
! !

"ASDBase.ic method 0x200a0e58; bytecode file offset 0x99db8c"
!SGPerlCodeStream methodsFor: 'recovered'!
listSeparator
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: (', ').
    ^self
! !

"ASDBase.ic method 0x200a1218; bytecode file offset 0x99db8c"
!SGPerlCodeStream methodsFor: 'recovered'!
endComment
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: (' #').
    ^self
! !

"ASDBase.ic method 0x200a12b8; bytecode file offset 0x99db8c"
!SGPerlCodeStream methodsFor: 'recovered'!
openComment
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPutAll: (' #').
    ^self
! !

"ASDBase.ic method 0x200abbe4; bytecode file offset 0x9a85bc"
!SGPerlCodeStream methodsFor: 'recovered'!
valueString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) printString.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b31e0; bytecode file offset 0x9afa98"
!SGPerlCodeStream methodsFor: 'recovered'!
endStmnt
    (self) nextPut: ($;).
    ^self
! !

"ASDBase.ic method 0x200b3738; bytecode file offset 0x9b0070"
!SGPerlCodeStream methodsFor: 'recovered'!
closeCompoundStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) decIndent.
    (recoveredValue0) newline.
    ^self
! !

"ASDBase.ic method 0x200b379c; bytecode file offset 0x9b0070"
!SGPerlCodeStream methodsFor: 'recovered'!
openCompoundStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newline.
    (recoveredValue0) incIndent.
    ^self
! !

"ASDBase.ic method 0x200b51e4; bytecode file offset 0x9b1aa0"
!SGPerlCodeStream methodsFor: 'recovered'!
beginArray
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPut: ($[).
    ^self
! !

"ASDBase.ic method 0x200b5200; bytecode file offset 0x9b1abc"
!SGPerlCodeStream methodsFor: 'recovered'!
beginHashRef
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPut: (${).
    ^self
! !

"ASDBase.ic method 0x200b5238; bytecode file offset 0x9b1af4"
!SGPerlCodeStream methodsFor: 'recovered'!
endArray
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPut: ($]).
    ^self
! !

"ASDBase.ic method 0x200b5254; bytecode file offset 0x9b1b10"
!SGPerlCodeStream methodsFor: 'recovered'!
endHashRef
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPut: ($}).
    ^self
! !

"ASDBase.ic method 0x200b5270; bytecode file offset 0x9b1b2c"
!SGPerlCodeStream methodsFor: 'recovered'!
concat
    | recoveredValue0 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPut: ($.).
    ^self
! !

"ASDBase.ic method 0x2010f460; bytecode file offset 0xa0bd24"
!SGPerlCodeStream methodsFor: 'recovered'!
nextPutHashKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) printString.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    (recoveredValue0) nextPutAll: (' => ').
    ^self
! !

"ASDBase.ic method 0x201195e4; bytecode file offset 0xa15ed8"
!SGPerlCodeStream methodsFor: 'recovered'!
endHandwritten
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('_BE_endHandwritten();').
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x20119614; bytecode file offset 0xa15ed8"
!SGPerlCodeStream methodsFor: 'recovered'!
beginHandwritten
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('_BE_beginHandwritten();').
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x2012c6bc; bytecode file offset 0xa28f80"
!SGPerlCodeStream methodsFor: 'recovered'!
endPlainOutLine
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPut: ($').
    (recoveredValue0) nextPutAll: (');').
    ^self
! !

"ASDBase.ic method 0x2014bf14; bytecode file offset 0xa487d8"
!SGPerlCodeStream methodsFor: 'recovered'!
getContentsWithReturnValue
    | recoveredValue0 |
    (self) cr.
    (self) nextPutAll: ('1;').
    (self) cr.
    (self) cr.
    recoveredValue0 := (self) contents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2014f1b8; bytecode file offset 0xa4ba80"
!SGPerlCodeStream methodsFor: 'recovered'!
beginPlainOutLine
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('_BE_plainOutLine (').
    (recoveredValue0) nextPut: ($').
    ^self
! !

"ASDBase.ic method 0x2018c9d0; bytecode file offset 0xa89294"
!SGPerlCodeStream methodsFor: 'recovered'!
endPlainCode
    (self) cr.
    (self) nextPutAll: ('_PLAIN_CODE').
    (self) cr.
    (self) nextPutAll: ('textout::putRaw($plain_code);').
    (self) cr.
    ^self
! !

"ASDBase.ic method 0x20191d74; bytecode file offset 0xa8e634"
!SGPerlCodeStream methodsFor: 'recovered'!
paragraphBanner: recoveredArg1
    | recoveredValue0 |
    (self) cr.
    (self) openComment.
    recoveredValue0 := recoveredArg1.
    (self) bannerSectionRowLabel: (recoveredValue0).
    (self) cr.
    (self) openComment.
    (self) cr.
    ^self
! !

"ASDBase.ic method 0x201adfd8; bytecode file offset 0xaaa894"
!SGPerlCodeStream methodsFor: 'recovered'!
wrapUpCharacters
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ($,) with: ($() with: ($)) with: ($ ).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201b5a80; bytecode file offset 0xab2364"
!SGPerlCodeStream methodsFor: 'recovered'!
dbaConfigItem: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    (self) newlinePutAll: ('addConfigItem(').
    recoveredValue0 := recoveredArg1.
    (self) nextPutAll: (recoveredValue0).
    (self) listSeparator.
    recoveredValue1 := recoveredArg2.
    (self) nextPutAll: (recoveredValue1).
    (self) nextPutAll: (');').
    ^self
! !

"ASDBase.ic method 0x201b5a9c; bytecode file offset 0xab2364"
!SGPerlCodeStream methodsFor: 'recovered'!
dbaCGenOption: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    (self) newlinePutAll: ('addGenOptionsItem(').
    recoveredValue0 := recoveredArg1.
    (self) nextPutAll: (recoveredValue0).
    (self) listSeparator.
    recoveredValue1 := recoveredArg2.
    (self) nextPutAll: (recoveredValue1).
    (self) nextPutAll: (');').
    ^self
! !

"ASDBase.ic method 0x201f16cc; bytecode file offset 0xaedf9c"
!SGPerlCodeStream methodsFor: 'recovered'!
beginPlainCode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('$plain_code = <<').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := ('_PLAIN_CODE') printString.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) nextPut: ($;).
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x2020dcf8; bytecode file offset 0xb0a5c4"
!SGPerlCodeStream methodsFor: 'recovered'!
nextPutAllLineMarker: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := '_BE_origin ('.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := ');'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
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

"ASDBase.ic method 0x20227a14; bytecode file offset 0xb242dc"
!SGPerlCodeStream methodsFor: 'recovered'!
bemPlainOut: recoveredArg1
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := '_BE_plainOut ('.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := ');'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023e2a8; bytecode file offset 0xb3ab74"
!SGPerlCodeStream methodsFor: 'recovered'!
bemPlainOutLine: recoveredArg1
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := '_BE_plainOutLine ('.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := ');'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026c724; bytecode file offset 0xb68ff0"
!SGPerlCodeStream methodsFor: 'recovered'!
bemPlainOutRawExpr: recoveredArg1
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := '_BE_plainOutRawLine'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := $(.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := ');'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202840f4; bytecode file offset 0xb809c4"
!SGPerlCodeStream methodsFor: 'recovered'!
bemPlainOutRaw: recoveredArg1
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := '_BE_plainOutRaw'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := $(.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) nextPutAllStringArgument: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) stream.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := ');'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034b2c4; bytecode file offset 0xc47b84"
!SGPerlCodeStream methodsFor: 'recovered'!
nextPutAllStringArgument: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    (recoveredValue0) nextPut: ($').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := $'.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            (recoveredBlock11Stack1 == recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 34] ifFalse: [recoveredBlock11PC := 26].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack2 := $\.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            (recoveredBlock11Stack1 ~~ recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 48] ifFalse: [recoveredBlock11PC := 34].
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) stream.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack3 := $\.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            (recoveredBlock11Stack2) nextPut: (recoveredBlock11Stack3).
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) nextPut: (recoveredBlock11Stack2).
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11PC := 52.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) stream.
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 51.
        ].
        recoveredBlock11Step = 51 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) nextPut: (recoveredBlock11Stack2).
            recoveredBlock11PC := 52.
        ].
        recoveredBlock11Step = 52 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) stream.
    (recoveredValue3) nextPut: ($').
    ^self
! !

