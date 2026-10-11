"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20028354; bytecode file offset 0x934580"
!SGCgStapledSource methodsFor: 'recovered'!
ascetLink
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startSource.
    recoveredValue1 := (recoveredValue0) ascetLink.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031294; bytecode file offset 0x934580"
!SGCgStapledSource methodsFor: 'recovered'!
implInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startSource.
    recoveredValue1 := (recoveredValue0) implInfo.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200328c4; bytecode file offset 0x934580"
!SGCgStapledSource methodsFor: 'recovered'!
commentMarker
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startSource.
    recoveredValue1 := (recoveredValue0) commentMarker.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037bd4; bytecode file offset 0x934580"
!SGCgStapledSource methodsFor: 'recovered'!
isReadableSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startSource.
    recoveredValue1 := (recoveredValue0) isReadableSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057ae8; bytecode file offset 0x956284"
!SGCgStapledSource methodsFor: 'recovered'!
fileOutSourceToXMLWriter: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) startSource.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) fileOutSourceToXMLWriter: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200667ac; bytecode file offset 0x963428"
!SGCgStapledSource methodsFor: 'recovered'!
endSource
    | recoveredValue0 |
    recoveredValue0 := endSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067614; bytecode file offset 0x9646f8"
!SGCgStapledSource methodsFor: 'recovered'!
startSource
    | recoveredValue0 |
    recoveredValue0 := startSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007519c; bytecode file offset 0x9757c8"
!SGCgStapledSource methodsFor: 'recovered'!
isCgStapledSource
    ^true
! !

"ASDBase.ic method 0x2007dea4; bytecode file offset 0x97c330"
!SGCgStapledSource methodsFor: 'recovered'!
isMultiSource
    ^false
! !

"ASDBase.ic method 0x2007ef1c; bytecode file offset 0x97c330"
!SGCgStapledSource methodsFor: 'recovered'!
isAscetLinkSource
    ^false
! !

"ASDBase.ic method 0x20097c44; bytecode file offset 0x995850"
!SGCgStapledSource methodsFor: 'recovered'!
implInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startSource.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) implInfo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bde14; bytecode file offset 0x9bb178"
!SGCgStapledSource methodsFor: 'recovered'!
endSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    endSource := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf198; bytecode file offset 0x9bc0b4"
!SGCgStapledSource methodsFor: 'recovered'!
startSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startSource := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f08b8; bytecode file offset 0x9ed170"
!SGCgStapledSource methodsFor: 'recovered'!
display
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := startSource.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := startSource.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) display.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20239838; bytecode file offset 0xb36114"
!SGCgStapledSource methodsFor: 'recovered'!
asDOM: recoveredArg1 method: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ownerDocument.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) xmlName.
    recoveredValue4 := (recoveredValue1) createElement: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (self) startSource.
    recoveredValue8 := (recoveredValue6) getSourceId: (recoveredValue7).
    (recoveredValue5) setAttribute: ('startId') value: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := (self) endSource.
    recoveredValue12 := (recoveredValue10) getSourceId: (recoveredValue11).
    (recoveredValue9) setAttribute: ('endId') value: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x2027d8f4; bytecode file offset 0xb7a1f0"
!SGCgStapledSource methodsFor: 'recovered'!
createMultiSource: recoveredArg1 labels: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := SGMultiSource.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) source: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) sources: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) labels: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202a724c; bytecode file offset 0xba3b1c"
!SGCgStapledSource methodsFor: 'recovered'!
asXMLKey: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) startSource.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSourceId: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) endSource.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSourceId: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'startSource='.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := ','.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'endSource='.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ce740; bytecode file offset 0xccb01c"
!SGCgStapledSource methodsFor: 'recovered'!
asDOM: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerDocument.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerDocument.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'startSource'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) createElement: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) startSource.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) startSource.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDOM: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerDocument.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'endSource'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) createElement: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) endSource.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) endSource.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) asDOM: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) appendChild: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20414eb0; bytecode file offset 0xd11798"
!SGCgStapledSource methodsFor: 'recovered'!
fromDOM: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) contents.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) name.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := 'startSource'.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) = (recoveredBlock8Stack2).
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 22] ifFalse: [recoveredBlock8PC := 54].
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) contents.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isEmpty.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 28] ifFalse: [recoveredBlock8PC := 30].
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack2 := SGLmSource.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) contents.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) first.
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) fromDOM: (recoveredBlock8Stack3).
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            (recoveredBlock8Stack1) startSource: (recoveredBlock8Stack2).
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 43.
        ].
        recoveredBlock8Step = 43 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) startSource.
            recoveredBlock8PC := 45.
        ].
        recoveredBlock8Step = 45 ifTrue: [
            (recoveredBlock8Stack2 ~~ nil) ifTrue: [recoveredBlock8PC := 51] ifFalse: [recoveredBlock8PC := 48].
        ].
        recoveredBlock8Step = 48 ifTrue: [
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 50.
        ].
        recoveredBlock8Step = 50 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 51 ifTrue: [
            recoveredBlock8PC := 95.
        ].
        recoveredBlock8Step = 54 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 55.
        ].
        recoveredBlock8Step = 55 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 56.
        ].
        recoveredBlock8Step = 56 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) name.
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            recoveredBlock8Stack3 := 'endSource'.
            recoveredBlock8PC := 59.
        ].
        recoveredBlock8Step = 59 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) = (recoveredBlock8Stack3).
            recoveredBlock8PC := 60.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 64] ifFalse: [recoveredBlock8PC := 95].
        ].
        recoveredBlock8Step = 64 ifTrue: [
            recoveredBlock8PC := 65.
        ].
        recoveredBlock8Step = 65 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 66.
        ].
        recoveredBlock8Step = 66 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) contents.
            recoveredBlock8PC := 67.
        ].
        recoveredBlock8Step = 67 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isEmpty.
            recoveredBlock8PC := 68.
        ].
        recoveredBlock8Step = 68 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 72] ifFalse: [recoveredBlock8PC := 74].
        ].
        recoveredBlock8Step = 72 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 73.
        ].
        recoveredBlock8Step = 73 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 74 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 75.
        ].
        recoveredBlock8Step = 75 ifTrue: [
            recoveredBlock8Stack2 := SGLmSource.
            recoveredBlock8PC := 77.
        ].
        recoveredBlock8Step = 77 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Arg1.
            recoveredBlock8PC := 78.
        ].
        recoveredBlock8Step = 78 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) contents.
            recoveredBlock8PC := 79.
        ].
        recoveredBlock8Step = 79 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) first.
            recoveredBlock8PC := 81.
        ].
        recoveredBlock8Step = 81 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) fromDOM: (recoveredBlock8Stack3).
            recoveredBlock8PC := 83.
        ].
        recoveredBlock8Step = 83 ifTrue: [
            (recoveredBlock8Stack1) endSource: (recoveredBlock8Stack2).
            recoveredBlock8PC := 85.
        ].
        recoveredBlock8Step = 85 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 86.
        ].
        recoveredBlock8Step = 86 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 87.
        ].
        recoveredBlock8Step = 87 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) endSource.
            recoveredBlock8PC := 89.
        ].
        recoveredBlock8Step = 89 ifTrue: [
            (recoveredBlock8Stack2 ~~ nil) ifTrue: [recoveredBlock8PC := 95] ifFalse: [recoveredBlock8PC := 92].
        ].
        recoveredBlock8Step = 92 ifTrue: [
            recoveredBlock8PC := 93.
        ].
        recoveredBlock8Step = 93 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 94.
        ].
        recoveredBlock8Step = 94 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 95 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20521848; bytecode file offset 0xe1e14c"
!SGCgStapledSource methodsFor: 'recovered'!
fromDOM: recoveredArg1 method: recoveredArg2 sourceMap: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getAttribute: ('startId').
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg3.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) value.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack3 := [].
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) at: (recoveredBlock10Stack2) ifAbsent: (recoveredBlock10Stack3).
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            (recoveredBlock10Stack0) startSource: (recoveredBlock10Stack1).
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack0 := nil.
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack1 := self.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) startSource.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            (recoveredBlock10Stack1 ~~ nil) ifTrue: [recoveredBlock10PC := 37] ifFalse: [recoveredBlock10PC := 34].
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10PC := 35.
        ].
        recoveredBlock10Step = 35 ifTrue: [
            recoveredBlock10Stack0 := nil.
            recoveredBlock10PC := 36.
        ].
        recoveredBlock10Step = 36 ifTrue: [
            ^recoveredBlock10Stack0
        ].
        recoveredBlock10Step = 37 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack0.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) getAttribute: ('endId').
    recoveredValue5 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Stack0 recoveredBlock46Stack1 recoveredBlock46Stack2 recoveredBlock46Stack3 recoveredBlock46Stack4 recoveredBlock46PC recoveredBlock46Step recoveredBlock46Done recoveredBlock46Result |
    recoveredBlock46Stack0 := self.
    recoveredBlock46PC := 52.
    recoveredBlock46Done := false.
    [recoveredBlock46Done not] whileTrue: [
        recoveredBlock46Step := recoveredBlock46PC.
        recoveredBlock46Step = 52 ifTrue: [
            recoveredBlock46Stack1 := recoveredArg3.
            recoveredBlock46PC := 55.
        ].
        recoveredBlock46Step = 55 ifTrue: [
            recoveredBlock46Stack2 := recoveredBlock46Arg1.
            recoveredBlock46PC := 56.
        ].
        recoveredBlock46Step = 56 ifTrue: [
            recoveredBlock46Stack2 := (recoveredBlock46Stack2) value.
            recoveredBlock46PC := 57.
        ].
        recoveredBlock46Step = 57 ifTrue: [
            recoveredBlock46Stack3 := [].
            recoveredBlock46PC := 59.
        ].
        recoveredBlock46Step = 59 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) at: (recoveredBlock46Stack2) ifAbsent: (recoveredBlock46Stack3).
            recoveredBlock46PC := 61.
        ].
        recoveredBlock46Step = 61 ifTrue: [
            (recoveredBlock46Stack0) endSource: (recoveredBlock46Stack1).
            recoveredBlock46PC := 63.
        ].
        recoveredBlock46Step = 63 ifTrue: [
            recoveredBlock46Stack0 := nil.
            recoveredBlock46PC := 64.
        ].
        recoveredBlock46Step = 64 ifTrue: [
            recoveredBlock46Stack1 := self.
            recoveredBlock46PC := 65.
        ].
        recoveredBlock46Step = 65 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) endSource.
            recoveredBlock46PC := 67.
        ].
        recoveredBlock46Step = 67 ifTrue: [
            (recoveredBlock46Stack1 ~~ nil) ifTrue: [recoveredBlock46PC := 73] ifFalse: [recoveredBlock46PC := 70].
        ].
        recoveredBlock46Step = 70 ifTrue: [
            recoveredBlock46PC := 71.
        ].
        recoveredBlock46Step = 71 ifTrue: [
            recoveredBlock46Stack0 := nil.
            recoveredBlock46PC := 72.
        ].
        recoveredBlock46Step = 72 ifTrue: [
            ^recoveredBlock46Stack0
        ].
        recoveredBlock46Step = 73 ifTrue: [
            recoveredBlock46Result := recoveredBlock46Stack0.
            recoveredBlock46Done := true.
        ].
    ].
    recoveredBlock46Result
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) contents.
    recoveredValue8 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Stack0 recoveredBlock81Stack1 recoveredBlock81Stack2 recoveredBlock81Stack3 recoveredBlock81Stack4 recoveredBlock81Stack5 recoveredBlock81Stack6 recoveredBlock81PC recoveredBlock81Step recoveredBlock81Done recoveredBlock81Result |
    recoveredBlock81Stack0 := self.
    recoveredBlock81PC := 88.
    recoveredBlock81Done := false.
    [recoveredBlock81Done not] whileTrue: [
        recoveredBlock81Step := recoveredBlock81PC.
        recoveredBlock81Step = 88 ifTrue: [
            recoveredBlock81Stack1 := recoveredBlock81Arg1.
            recoveredBlock81PC := 89.
        ].
        recoveredBlock81Step = 89 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) name.
            recoveredBlock81PC := 91.
        ].
        recoveredBlock81Step = 91 ifTrue: [
            recoveredBlock81Stack2 := 'startSource'.
            recoveredBlock81PC := 93.
        ].
        recoveredBlock81Step = 93 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) = (recoveredBlock81Stack2).
            recoveredBlock81PC := 94.
        ].
        recoveredBlock81Step = 94 ifTrue: [
            (recoveredBlock81Stack1) ifTrue: [recoveredBlock81PC := 98] ifFalse: [recoveredBlock81PC := 140].
        ].
        recoveredBlock81Step = 98 ifTrue: [
            recoveredBlock81Stack1 := recoveredBlock81Arg1.
            recoveredBlock81PC := 99.
        ].
        recoveredBlock81Step = 99 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) contents.
            recoveredBlock81PC := 101.
        ].
        recoveredBlock81Step = 101 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) isEmpty.
            recoveredBlock81PC := 103.
        ].
        recoveredBlock81Step = 103 ifTrue: [
            (recoveredBlock81Stack1) ifTrue: [recoveredBlock81PC := 106] ifFalse: [recoveredBlock81PC := 108].
        ].
        recoveredBlock81Step = 106 ifTrue: [
            recoveredBlock81Stack1 := nil.
            recoveredBlock81PC := 107.
        ].
        recoveredBlock81Step = 107 ifTrue: [
            ^recoveredBlock81Stack1
        ].
        recoveredBlock81Step = 108 ifTrue: [
            recoveredBlock81Stack1 := self.
            recoveredBlock81PC := 109.
        ].
        recoveredBlock81Step = 109 ifTrue: [
            recoveredBlock81Stack2 := SGLmSource.
            recoveredBlock81PC := 111.
        ].
        recoveredBlock81Step = 111 ifTrue: [
            recoveredBlock81Stack3 := recoveredBlock81Arg1.
            recoveredBlock81PC := 112.
        ].
        recoveredBlock81Step = 112 ifTrue: [
            recoveredBlock81Stack3 := (recoveredBlock81Stack3) contents.
            recoveredBlock81PC := 114.
        ].
        recoveredBlock81Step = 114 ifTrue: [
            recoveredBlock81Stack3 := (recoveredBlock81Stack3) first.
            recoveredBlock81PC := 116.
        ].
        recoveredBlock81Step = 116 ifTrue: [
            recoveredBlock81Stack4 := recoveredArg2.
            recoveredBlock81PC := 119.
        ].
        recoveredBlock81Step = 119 ifTrue: [
            recoveredBlock81Stack5 := recoveredArg3.
            recoveredBlock81PC := 122.
        ].
        recoveredBlock81Step = 122 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) fromDOM: (recoveredBlock81Stack3) method: (recoveredBlock81Stack4) sourceMap: (recoveredBlock81Stack5).
            recoveredBlock81PC := 125.
        ].
        recoveredBlock81Step = 125 ifTrue: [
            (recoveredBlock81Stack1) startSource: (recoveredBlock81Stack2).
            recoveredBlock81PC := 127.
        ].
        recoveredBlock81Step = 127 ifTrue: [
            recoveredBlock81Stack1 := nil.
            recoveredBlock81PC := 128.
        ].
        recoveredBlock81Step = 128 ifTrue: [
            recoveredBlock81Stack2 := self.
            recoveredBlock81PC := 129.
        ].
        recoveredBlock81Step = 129 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) startSource.
            recoveredBlock81PC := 131.
        ].
        recoveredBlock81Step = 131 ifTrue: [
            (recoveredBlock81Stack2 ~~ nil) ifTrue: [recoveredBlock81PC := 137] ifFalse: [recoveredBlock81PC := 134].
        ].
        recoveredBlock81Step = 134 ifTrue: [
            recoveredBlock81PC := 135.
        ].
        recoveredBlock81Step = 135 ifTrue: [
            recoveredBlock81Stack1 := nil.
            recoveredBlock81PC := 136.
        ].
        recoveredBlock81Step = 136 ifTrue: [
            ^recoveredBlock81Stack1
        ].
        recoveredBlock81Step = 137 ifTrue: [
            recoveredBlock81PC := 191.
        ].
        recoveredBlock81Step = 140 ifTrue: [
            recoveredBlock81Stack1 := nil.
            recoveredBlock81PC := 141.
        ].
        recoveredBlock81Step = 141 ifTrue: [
            recoveredBlock81Stack2 := recoveredBlock81Arg1.
            recoveredBlock81PC := 142.
        ].
        recoveredBlock81Step = 142 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) name.
            recoveredBlock81PC := 144.
        ].
        recoveredBlock81Step = 144 ifTrue: [
            recoveredBlock81Stack3 := 'endSource'.
            recoveredBlock81PC := 146.
        ].
        recoveredBlock81Step = 146 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) = (recoveredBlock81Stack3).
            recoveredBlock81PC := 147.
        ].
        recoveredBlock81Step = 147 ifTrue: [
            (recoveredBlock81Stack2) ifTrue: [recoveredBlock81PC := 150] ifFalse: [recoveredBlock81PC := 191].
        ].
        recoveredBlock81Step = 150 ifTrue: [
            recoveredBlock81PC := 151.
        ].
        recoveredBlock81Step = 151 ifTrue: [
            recoveredBlock81Stack1 := recoveredBlock81Arg1.
            recoveredBlock81PC := 152.
        ].
        recoveredBlock81Step = 152 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) contents.
            recoveredBlock81PC := 154.
        ].
        recoveredBlock81Step = 154 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) isEmpty.
            recoveredBlock81PC := 156.
        ].
        recoveredBlock81Step = 156 ifTrue: [
            (recoveredBlock81Stack1) ifTrue: [recoveredBlock81PC := 160] ifFalse: [recoveredBlock81PC := 162].
        ].
        recoveredBlock81Step = 160 ifTrue: [
            recoveredBlock81Stack1 := nil.
            recoveredBlock81PC := 161.
        ].
        recoveredBlock81Step = 161 ifTrue: [
            ^recoveredBlock81Stack1
        ].
        recoveredBlock81Step = 162 ifTrue: [
            recoveredBlock81Stack1 := self.
            recoveredBlock81PC := 163.
        ].
        recoveredBlock81Step = 163 ifTrue: [
            recoveredBlock81Stack2 := SGLmSource.
            recoveredBlock81PC := 165.
        ].
        recoveredBlock81Step = 165 ifTrue: [
            recoveredBlock81Stack3 := recoveredBlock81Arg1.
            recoveredBlock81PC := 166.
        ].
        recoveredBlock81Step = 166 ifTrue: [
            recoveredBlock81Stack3 := (recoveredBlock81Stack3) contents.
            recoveredBlock81PC := 168.
        ].
        recoveredBlock81Step = 168 ifTrue: [
            recoveredBlock81Stack3 := (recoveredBlock81Stack3) first.
            recoveredBlock81PC := 170.
        ].
        recoveredBlock81Step = 170 ifTrue: [
            recoveredBlock81Stack4 := recoveredArg2.
            recoveredBlock81PC := 173.
        ].
        recoveredBlock81Step = 173 ifTrue: [
            recoveredBlock81Stack5 := recoveredArg3.
            recoveredBlock81PC := 176.
        ].
        recoveredBlock81Step = 176 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) fromDOM: (recoveredBlock81Stack3) method: (recoveredBlock81Stack4) sourceMap: (recoveredBlock81Stack5).
            recoveredBlock81PC := 179.
        ].
        recoveredBlock81Step = 179 ifTrue: [
            (recoveredBlock81Stack1) endSource: (recoveredBlock81Stack2).
            recoveredBlock81PC := 181.
        ].
        recoveredBlock81Step = 181 ifTrue: [
            recoveredBlock81Stack1 := nil.
            recoveredBlock81PC := 182.
        ].
        recoveredBlock81Step = 182 ifTrue: [
            recoveredBlock81Stack2 := self.
            recoveredBlock81PC := 183.
        ].
        recoveredBlock81Step = 183 ifTrue: [
            recoveredBlock81Stack2 := (recoveredBlock81Stack2) endSource.
            recoveredBlock81PC := 185.
        ].
        recoveredBlock81Step = 185 ifTrue: [
            (recoveredBlock81Stack2 ~~ nil) ifTrue: [recoveredBlock81PC := 191] ifFalse: [recoveredBlock81PC := 188].
        ].
        recoveredBlock81Step = 188 ifTrue: [
            recoveredBlock81PC := 189.
        ].
        recoveredBlock81Step = 189 ifTrue: [
            recoveredBlock81Stack1 := nil.
            recoveredBlock81PC := 190.
        ].
        recoveredBlock81Step = 190 ifTrue: [
            ^recoveredBlock81Stack1
        ].
        recoveredBlock81Step = 191 ifTrue: [
            recoveredBlock81Result := recoveredBlock81Stack1.
            recoveredBlock81Done := true.
        ].
    ].
    recoveredBlock81Result
].
    (recoveredValue7) do: (recoveredValue8).
    ^self
! !

