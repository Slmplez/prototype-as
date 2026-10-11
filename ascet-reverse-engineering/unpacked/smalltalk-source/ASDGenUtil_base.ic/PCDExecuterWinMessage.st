"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x2000091c; bytecode file offset 0xeac8"
!PCDExecuterWinMessage methodsFor: 'recovered'!
parse: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    executable := recoveredValue0.
    ^self
! !

"ASDGenUtil_base.ic method 0x20003784; bytecode file offset 0x1194c"
!PCDExecuterWinMessage methodsFor: 'recovered'!
class: recoveredArg1 window: recoveredArg2 message: recoveredArg3 lparam: recoveredArg4 wparam: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumeric.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) registerWindowMessage: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumeric.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := OSAtom.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := EsLeadEncodedBytes.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) nullTerminated.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) fromString: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalAddAtom: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumeric.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := OSAtom.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := EsLeadEncodedBytes.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) nullTerminated.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) fromString: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalAddAtom: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1) forClass: (recoveredStack2) window: (recoveredStack3) lparam: (recoveredStack4) wparam: (recoveredStack5).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20003c40; bytecode file offset 0x11df4"
!PCDExecuterWinMessage methodsFor: 'recovered'!
executeInScope: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parseExecutable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) last.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) class: (recoveredStack1) window: (recoveredStack2) message: (recoveredStack3) lparam: (recoveredStack4) wparam: (recoveredStack5).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) last.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) class: (recoveredStack1) window: (recoveredStack2) message: (recoveredStack3) lparam: (recoveredStack4) wparam: (recoveredStack5).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := 4.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) class: (recoveredStack1) window: (recoveredStack2) message: (recoveredStack3) lparam: (recoveredStack4) wparam: (recoveredStack5).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack5 := 4.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack6 := 5.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) class: (recoveredStack1) window: (recoveredStack2) message: (recoveredStack3) lparam: (recoveredStack4) wparam: (recoveredStack5).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20005be8; bytecode file offset 0x13db8"
!PCDExecuterWinMessage methodsFor: 'recovered'!
parseExecutable
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := executable.
    recoveredValue1 := (recoveredValue0) subStrings.
    recoveredLocal3 := recoveredValue1.
    recoveredLocal2 := false.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal5 := recoveredValue3.
    recoveredLocal4 := ''.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28Stack5 recoveredBlock28Stack6 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) trimBlanks.
            recoveredBlock28PC := 37.
        ].
        recoveredBlock28Step = 37 ifTrue: [
            recoveredLocal1 := recoveredBlock28Stack1.
            recoveredBlock28PC := 40.
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal1.
            recoveredBlock28PC := 43.
        ].
        recoveredBlock28Step = 43 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) size.
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            recoveredBlock28Stack2 := 1.
            recoveredBlock28PC := 47.
        ].
        recoveredBlock28Step = 47 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) = (recoveredBlock28Stack2).
            recoveredBlock28PC := 48.
        ].
        recoveredBlock28Step = 48 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 52] ifFalse: [recoveredBlock28PC := 104].
        ].
        recoveredBlock28Step = 52 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal1.
            recoveredBlock28PC := 55.
        ].
        recoveredBlock28Step = 55 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) first.
            recoveredBlock28PC := 57.
        ].
        recoveredBlock28Step = 57 ifTrue: [
            recoveredBlock28Stack2 := $".
            recoveredBlock28PC := 60.
        ].
        recoveredBlock28Step = 60 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) = (recoveredBlock28Stack2).
            recoveredBlock28PC := 61.
        ].
        recoveredBlock28Step = 61 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 64] ifFalse: [recoveredBlock28PC := 96].
        ].
        recoveredBlock28Step = 64 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 67.
        ].
        recoveredBlock28Step = 67 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 70] ifFalse: [recoveredBlock28PC := 88].
        ].
        recoveredBlock28Step = 70 ifTrue: [
            recoveredBlock28Stack1 := false.
            recoveredBlock28PC := 71.
        ].
        recoveredBlock28Step = 71 ifTrue: [
            recoveredLocal2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 74.
        ].
        recoveredBlock28Step = 74 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal5.
            recoveredBlock28PC := 77.
        ].
        recoveredBlock28Step = 77 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal4.
            recoveredBlock28PC := 80.
        ].
        recoveredBlock28Step = 80 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) trimBlanks.
            recoveredBlock28PC := 82.
        ].
        recoveredBlock28Step = 82 ifTrue: [
            (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 84.
        ].
        recoveredBlock28Step = 84 ifTrue: [
            recoveredBlock28PC := 92.
        ].
        recoveredBlock28Step = 88 ifTrue: [
            recoveredBlock28Stack1 := true.
            recoveredBlock28PC := 89.
        ].
        recoveredBlock28Step = 89 ifTrue: [
            recoveredLocal2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 92.
        ].
        recoveredBlock28Step = 92 ifTrue: [
            recoveredBlock28PC := 104.
        ].
        recoveredBlock28Step = 96 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal5.
            recoveredBlock28PC := 99.
        ].
        recoveredBlock28Step = 99 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal1.
            recoveredBlock28PC := 102.
        ].
        recoveredBlock28Step = 102 ifTrue: [
            (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 104.
        ].
        recoveredBlock28Step = 104 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 105.
        ].
        recoveredBlock28Step = 105 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal1.
            recoveredBlock28PC := 108.
        ].
        recoveredBlock28Step = 108 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) size.
            recoveredBlock28PC := 110.
        ].
        recoveredBlock28Step = 110 ifTrue: [
            recoveredBlock28Stack3 := 1.
            recoveredBlock28PC := 112.
        ].
        recoveredBlock28Step = 112 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) > (recoveredBlock28Stack3).
            recoveredBlock28PC := 113.
        ].
        recoveredBlock28Step = 113 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 116] ifFalse: [recoveredBlock28PC := 282].
        ].
        recoveredBlock28Step = 116 ifTrue: [
            recoveredBlock28PC := 117.
        ].
        recoveredBlock28Step = 117 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal1.
            recoveredBlock28PC := 120.
        ].
        recoveredBlock28Step = 120 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) first.
            recoveredBlock28PC := 122.
        ].
        recoveredBlock28Step = 122 ifTrue: [
            recoveredBlock28Stack2 := $".
            recoveredBlock28PC := 126.
        ].
        recoveredBlock28Step = 126 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) = (recoveredBlock28Stack2).
            recoveredBlock28PC := 127.
        ].
        recoveredBlock28Step = 127 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 130] ifFalse: [recoveredBlock28PC := 194].
        ].
        recoveredBlock28Step = 130 ifTrue: [
            recoveredBlock28Stack1 := true.
            recoveredBlock28PC := 131.
        ].
        recoveredBlock28Step = 131 ifTrue: [
            recoveredLocal2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 134.
        ].
        recoveredBlock28Step = 134 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal1.
            recoveredBlock28PC := 137.
        ].
        recoveredBlock28Step = 137 ifTrue: [
            recoveredBlock28Stack2 := 2.
            recoveredBlock28PC := 139.
        ].
        recoveredBlock28Step = 139 ifTrue: [
            recoveredBlock28Stack3 := recoveredLocal1.
            recoveredBlock28PC := 142.
        ].
        recoveredBlock28Step = 142 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) size.
            recoveredBlock28PC := 144.
        ].
        recoveredBlock28Step = 144 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) copyFrom: (recoveredBlock28Stack2) to: (recoveredBlock28Stack3).
            recoveredBlock28PC := 146.
        ].
        recoveredBlock28Step = 146 ifTrue: [
            recoveredLocal4 := recoveredBlock28Stack1.
            recoveredBlock28PC := 149.
        ].
        recoveredBlock28Step = 149 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 150.
        ].
        recoveredBlock28Step = 150 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal1.
            recoveredBlock28PC := 153.
        ].
        recoveredBlock28Step = 153 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) last.
            recoveredBlock28PC := 155.
        ].
        recoveredBlock28Step = 155 ifTrue: [
            recoveredBlock28Stack3 := $".
            recoveredBlock28PC := 158.
        ].
        recoveredBlock28Step = 158 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) = (recoveredBlock28Stack3).
            recoveredBlock28PC := 159.
        ].
        recoveredBlock28Step = 159 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 162] ifFalse: [recoveredBlock28PC := 191].
        ].
        recoveredBlock28Step = 162 ifTrue: [
            recoveredBlock28PC := 163.
        ].
        recoveredBlock28Step = 163 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal5.
            recoveredBlock28PC := 166.
        ].
        recoveredBlock28Step = 166 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal4.
            recoveredBlock28PC := 169.
        ].
        recoveredBlock28Step = 169 ifTrue: [
            recoveredBlock28Stack3 := 1.
            recoveredBlock28PC := 171.
        ].
        recoveredBlock28Step = 171 ifTrue: [
            recoveredBlock28Stack4 := recoveredLocal4.
            recoveredBlock28PC := 174.
        ].
        recoveredBlock28Step = 174 ifTrue: [
            recoveredBlock28Stack4 := (recoveredBlock28Stack4) size.
            recoveredBlock28PC := 176.
        ].
        recoveredBlock28Step = 176 ifTrue: [
            recoveredBlock28Stack4 := (recoveredBlock28Stack4) + (-1).
            recoveredBlock28PC := 177.
        ].
        recoveredBlock28Step = 177 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) copyFrom: (recoveredBlock28Stack3) to: (recoveredBlock28Stack4).
            recoveredBlock28PC := 179.
        ].
        recoveredBlock28Step = 179 ifTrue: [
            (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 181.
        ].
        recoveredBlock28Step = 181 ifTrue: [
            recoveredBlock28Stack1 := false.
            recoveredBlock28PC := 182.
        ].
        recoveredBlock28Step = 182 ifTrue: [
            recoveredLocal2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 185.
        ].
        recoveredBlock28Step = 185 ifTrue: [
            recoveredBlock28Stack1 := ''.
            recoveredBlock28PC := 187.
        ].
        recoveredBlock28Step = 187 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 188.
        ].
        recoveredBlock28Step = 188 ifTrue: [
            recoveredLocal4 := recoveredBlock28Stack2.
            recoveredBlock28PC := 191.
        ].
        recoveredBlock28Step = 191 ifTrue: [
            recoveredBlock28PC := 282.
        ].
        recoveredBlock28Step = 194 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal1.
            recoveredBlock28PC := 197.
        ].
        recoveredBlock28Step = 197 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) last.
            recoveredBlock28PC := 199.
        ].
        recoveredBlock28Step = 199 ifTrue: [
            recoveredBlock28Stack2 := $".
            recoveredBlock28PC := 202.
        ].
        recoveredBlock28Step = 202 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) = (recoveredBlock28Stack2).
            recoveredBlock28PC := 203.
        ].
        recoveredBlock28Step = 203 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 206] ifFalse: [recoveredBlock28PC := 248].
        ].
        recoveredBlock28Step = 206 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal5.
            recoveredBlock28PC := 209.
        ].
        recoveredBlock28Step = 209 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal4.
            recoveredBlock28PC := 212.
        ].
        recoveredBlock28Step = 212 ifTrue: [
            recoveredBlock28Stack3 := ' '.
            recoveredBlock28PC := 214.
        ].
        recoveredBlock28Step = 214 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) , (recoveredBlock28Stack3).
            recoveredBlock28PC := 216.
        ].
        recoveredBlock28Step = 216 ifTrue: [
            recoveredBlock28Stack3 := recoveredLocal1.
            recoveredBlock28PC := 219.
        ].
        recoveredBlock28Step = 219 ifTrue: [
            recoveredBlock28Stack4 := 1.
            recoveredBlock28PC := 221.
        ].
        recoveredBlock28Step = 221 ifTrue: [
            recoveredBlock28Stack5 := recoveredLocal1.
            recoveredBlock28PC := 224.
        ].
        recoveredBlock28Step = 224 ifTrue: [
            recoveredBlock28Stack5 := (recoveredBlock28Stack5) size.
            recoveredBlock28PC := 226.
        ].
        recoveredBlock28Step = 226 ifTrue: [
            recoveredBlock28Stack5 := (recoveredBlock28Stack5) + (-1).
            recoveredBlock28PC := 227.
        ].
        recoveredBlock28Step = 227 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) copyFrom: (recoveredBlock28Stack4) to: (recoveredBlock28Stack5).
            recoveredBlock28PC := 229.
        ].
        recoveredBlock28Step = 229 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) , (recoveredBlock28Stack3).
            recoveredBlock28PC := 231.
        ].
        recoveredBlock28Step = 231 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) trimBlanks.
            recoveredBlock28PC := 233.
        ].
        recoveredBlock28Step = 233 ifTrue: [
            (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 235.
        ].
        recoveredBlock28Step = 235 ifTrue: [
            recoveredBlock28Stack1 := false.
            recoveredBlock28PC := 236.
        ].
        recoveredBlock28Step = 236 ifTrue: [
            recoveredLocal2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 239.
        ].
        recoveredBlock28Step = 239 ifTrue: [
            recoveredBlock28Stack1 := ''.
            recoveredBlock28PC := 241.
        ].
        recoveredBlock28Step = 241 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 242.
        ].
        recoveredBlock28Step = 242 ifTrue: [
            recoveredLocal4 := recoveredBlock28Stack2.
            recoveredBlock28PC := 245.
        ].
        recoveredBlock28Step = 245 ifTrue: [
            recoveredBlock28PC := 282.
        ].
        recoveredBlock28Step = 248 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 251.
        ].
        recoveredBlock28Step = 251 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 254] ifFalse: [recoveredBlock28PC := 274].
        ].
        recoveredBlock28Step = 254 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal4.
            recoveredBlock28PC := 257.
        ].
        recoveredBlock28Step = 257 ifTrue: [
            recoveredBlock28Stack2 := ' '.
            recoveredBlock28PC := 259.
        ].
        recoveredBlock28Step = 259 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) , (recoveredBlock28Stack2).
            recoveredBlock28PC := 261.
        ].
        recoveredBlock28Step = 261 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal1.
            recoveredBlock28PC := 264.
        ].
        recoveredBlock28Step = 264 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) , (recoveredBlock28Stack2).
            recoveredBlock28PC := 266.
        ].
        recoveredBlock28Step = 266 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 267.
        ].
        recoveredBlock28Step = 267 ifTrue: [
            recoveredLocal4 := recoveredBlock28Stack2.
            recoveredBlock28PC := 270.
        ].
        recoveredBlock28Step = 270 ifTrue: [
            recoveredBlock28PC := 282.
        ].
        recoveredBlock28Step = 274 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal5.
            recoveredBlock28PC := 277.
        ].
        recoveredBlock28Step = 277 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal1.
            recoveredBlock28PC := 280.
        ].
        recoveredBlock28Step = 280 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 282.
        ].
        recoveredBlock28Step = 282 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal5.
    ^recoveredValue6
! !

