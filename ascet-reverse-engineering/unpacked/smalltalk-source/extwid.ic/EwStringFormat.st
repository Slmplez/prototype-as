"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200007e0; bytecode file offset 0x516bc"
!EwStringFormat methodsFor: 'recovered'!
preferredEditSession
    | recoveredValue0 |
    recoveredValue0 := EwStringSession.
    ^recoveredValue0
! !

"extwid.ic method 0x20007c34; bytecode file offset 0x589f8"
!EwStringFormat methodsFor: 'recovered'!
resetSize
    maxSize := 0.
    replaceSize := 0.
    ^self
! !

"extwid.ic method 0x2000b534; bytecode file offset 0x5c308"
!EwStringFormat methodsFor: 'recovered'!
formattedStringFrom: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := XmINVALIDCLASS.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode: (recoveredStack2).
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
            recoveredStack0 := (recoveredStack0) basicFormatString: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2001d024; bytecode file offset 0x6de08"
!EwStringFormat methodsFor: 'recovered'!
substituteLocaleCharacters
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) formatString.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack3 := $".
            recoveredBlock15PC := 28.
        ].
        recoveredBlock15Step = 28 ifTrue: [
            (recoveredBlock15Stack2 == recoveredBlock15Stack3) ifTrue: [recoveredBlock15PC := 39] ifFalse: [recoveredBlock15PC := 32].
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) nextPut: (recoveredBlock15Stack2).
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) contents.
    ^recoveredValue7
! !

"extwid.ic method 0x2002257c; bytecode file offset 0x73354"
!EwStringFormat methodsFor: 'recovered'!
processAndVerifyChar: recoveredArg1
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
            recoveredStack2 := $0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := $9.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := $A.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := $X.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) increaseReplaceSize.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := $B.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) increaseMaxSize.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := XmINVALIDMASKCHARACTER.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) errorCode: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) formatStringError: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x20024850; bytecode file offset 0x75634"
!EwStringFormat methodsFor: 'recovered'!
processAndVerifyMask
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) resetSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := $".
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            (recoveredBlock12Stack1 ~~ recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 38] ifFalse: [recoveredBlock12PC := 26].
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) not.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack2.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12PC := 53.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 44] ifFalse: [recoveredBlock12PC := 50].
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) increaseMaxSize.
            recoveredBlock12PC := 46.
        ].
        recoveredBlock12Step = 46 ifTrue: [
            recoveredBlock12PC := 53.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 52.
        ].
        recoveredBlock12Step = 52 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) processAndVerifyChar: (recoveredBlock12Stack2).
            recoveredBlock12PC := 53.
        ].
        recoveredBlock12Step = 53 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := XmMISSINGQUOTE.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) formatStringError: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20038808; bytecode file offset 0x89608"
!EwStringFormat methodsFor: 'recovered'!
basicFormatString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredLocal3 := 0.
    recoveredLocal2 := false.
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (self) newLocaleString.
    recoveredValue2 := (recoveredValue0) on: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) formatString.
    recoveredValue4 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Local1 recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := $".
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            (recoveredBlock22Stack1 ~~ recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 48] ifFalse: [recoveredBlock22PC := 36].
        ].
        recoveredBlock22Step = 36 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) not.
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            recoveredLocal2 := recoveredBlock22Stack2.
            recoveredBlock22PC := 44.
        ].
        recoveredBlock22Step = 44 ifTrue: [
            recoveredBlock22PC := 227.
        ].
        recoveredBlock22Step = 48 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 51.
        ].
        recoveredBlock22Step = 51 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 54] ifFalse: [recoveredBlock22PC := 64].
        ].
        recoveredBlock22Step = 54 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 57.
        ].
        recoveredBlock22Step = 57 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 58.
        ].
        recoveredBlock22Step = 58 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) nextPut: (recoveredBlock22Stack2).
            recoveredBlock22PC := 60.
        ].
        recoveredBlock22Step = 60 ifTrue: [
            recoveredBlock22PC := 227.
        ].
        recoveredBlock22Step = 64 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal3.
            recoveredBlock22PC := 67.
        ].
        recoveredBlock22Step = 67 ifTrue: [
            recoveredBlock22Stack2 := recoveredArg1.
            recoveredBlock22PC := 70.
        ].
        recoveredBlock22Step = 70 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) size.
            recoveredBlock22PC := 72.
        ].
        recoveredBlock22Step = 72 ifTrue: [
            (recoveredBlock22Stack1 ~~ recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 106] ifFalse: [recoveredBlock22PC := 76].
        ].
        recoveredBlock22Step = 76 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 77.
        ].
        recoveredBlock22Step = 77 ifTrue: [
            recoveredBlock22Stack2 := $0.
            recoveredBlock22PC := 80.
        ].
        recoveredBlock22Step = 80 ifTrue: [
            (recoveredBlock22Stack1 ~~ recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 96] ifFalse: [recoveredBlock22PC := 84].
        ].
        recoveredBlock22Step = 84 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 87.
        ].
        recoveredBlock22Step = 87 ifTrue: [
            recoveredBlock22Stack2 := $0.
            recoveredBlock22PC := 90.
        ].
        recoveredBlock22Step = 90 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) nextPut: (recoveredBlock22Stack2).
            recoveredBlock22PC := 92.
        ].
        recoveredBlock22Step = 92 ifTrue: [
            recoveredBlock22PC := 103.
        ].
        recoveredBlock22Step = 96 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 99.
        ].
        recoveredBlock22Step = 99 ifTrue: [
            recoveredBlock22Stack2 := Space.
            recoveredBlock22PC := 101.
        ].
        recoveredBlock22Step = 101 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) nextPut: (recoveredBlock22Stack2).
            recoveredBlock22PC := 103.
        ].
        recoveredBlock22Step = 103 ifTrue: [
            recoveredBlock22PC := 227.
        ].
        recoveredBlock22Step = 106 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 107.
        ].
        recoveredBlock22Step = 107 ifTrue: [
            recoveredBlock22Stack2 := $B.
            recoveredBlock22PC := 110.
        ].
        recoveredBlock22Step = 110 ifTrue: [
            (recoveredBlock22Stack1 ~~ recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 124] ifFalse: [recoveredBlock22PC := 114].
        ].
        recoveredBlock22Step = 114 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 117.
        ].
        recoveredBlock22Step = 117 ifTrue: [
            recoveredBlock22Stack2 := Space.
            recoveredBlock22PC := 119.
        ].
        recoveredBlock22Step = 119 ifTrue: [
            (recoveredBlock22Stack1) nextPut: (recoveredBlock22Stack2).
            recoveredBlock22PC := 121.
        ].
        recoveredBlock22Step = 121 ifTrue: [
            recoveredBlock22PC := 140.
        ].
        recoveredBlock22Step = 124 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal3.
            recoveredBlock22PC := 127.
        ].
        recoveredBlock22Step = 127 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) + (1).
            recoveredBlock22PC := 128.
        ].
        recoveredBlock22Step = 128 ifTrue: [
            recoveredLocal3 := recoveredBlock22Stack1.
            recoveredBlock22PC := 131.
        ].
        recoveredBlock22Step = 131 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg1.
            recoveredBlock22PC := 134.
        ].
        recoveredBlock22Step = 134 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal3.
            recoveredBlock22PC := 137.
        ].
        recoveredBlock22Step = 137 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) at: (recoveredBlock22Stack2).
            recoveredBlock22PC := 139.
        ].
        recoveredBlock22Step = 139 ifTrue: [
            recoveredBlock22Local1 := recoveredBlock22Stack1.
            recoveredBlock22PC := 140.
        ].
        recoveredBlock22Step = 140 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 141.
        ].
        recoveredBlock22Step = 141 ifTrue: [
            recoveredBlock22Stack2 := $9.
            recoveredBlock22PC := 144.
        ].
        recoveredBlock22Step = 144 ifTrue: [
            (recoveredBlock22Stack1 == recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 156] ifFalse: [recoveredBlock22PC := 148].
        ].
        recoveredBlock22Step = 148 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 149.
        ].
        recoveredBlock22Step = 149 ifTrue: [
            recoveredBlock22Stack2 := $0.
            recoveredBlock22PC := 152.
        ].
        recoveredBlock22Step = 152 ifTrue: [
            (recoveredBlock22Stack1 ~~ recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 178] ifFalse: [recoveredBlock22PC := 156].
        ].
        recoveredBlock22Step = 156 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local1.
            recoveredBlock22PC := 157.
        ].
        recoveredBlock22Step = 157 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) isDigit.
            recoveredBlock22PC := 159.
        ].
        recoveredBlock22Step = 159 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 162] ifFalse: [recoveredBlock22PC := 172].
        ].
        recoveredBlock22Step = 162 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 165.
        ].
        recoveredBlock22Step = 165 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local1.
            recoveredBlock22PC := 166.
        ].
        recoveredBlock22Step = 166 ifTrue: [
            (recoveredBlock22Stack1) nextPut: (recoveredBlock22Stack2).
            recoveredBlock22PC := 168.
        ].
        recoveredBlock22Step = 168 ifTrue: [
            recoveredBlock22PC := 178.
        ].
        recoveredBlock22Step = 172 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 173.
        ].
        recoveredBlock22Step = 173 ifTrue: [
            recoveredBlock22Stack2 := XmINVALIDDIGITINPUT.
            recoveredBlock22PC := 175.
        ].
        recoveredBlock22Step = 175 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) errorCode: (recoveredBlock22Stack2).
            recoveredBlock22PC := 177.
        ].
        recoveredBlock22Step = 177 ifTrue: [
            ^recoveredBlock22Stack1
        ].
        recoveredBlock22Step = 178 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 179.
        ].
        recoveredBlock22Step = 179 ifTrue: [
            recoveredBlock22Stack2 := $A.
            recoveredBlock22PC := 182.
        ].
        recoveredBlock22Step = 182 ifTrue: [
            (recoveredBlock22Stack1 ~~ recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 208] ifFalse: [recoveredBlock22PC := 186].
        ].
        recoveredBlock22Step = 186 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local1.
            recoveredBlock22PC := 187.
        ].
        recoveredBlock22Step = 187 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) isLetter.
            recoveredBlock22PC := 189.
        ].
        recoveredBlock22Step = 189 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 192] ifFalse: [recoveredBlock22PC := 202].
        ].
        recoveredBlock22Step = 192 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 195.
        ].
        recoveredBlock22Step = 195 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local1.
            recoveredBlock22PC := 196.
        ].
        recoveredBlock22Step = 196 ifTrue: [
            (recoveredBlock22Stack1) nextPut: (recoveredBlock22Stack2).
            recoveredBlock22PC := 198.
        ].
        recoveredBlock22Step = 198 ifTrue: [
            recoveredBlock22PC := 208.
        ].
        recoveredBlock22Step = 202 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 203.
        ].
        recoveredBlock22Step = 203 ifTrue: [
            recoveredBlock22Stack2 := XmINVALIDALPHAINPUT.
            recoveredBlock22PC := 205.
        ].
        recoveredBlock22Step = 205 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) errorCode: (recoveredBlock22Stack2).
            recoveredBlock22PC := 207.
        ].
        recoveredBlock22Step = 207 ifTrue: [
            ^recoveredBlock22Stack1
        ].
        recoveredBlock22Step = 208 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 209.
        ].
        recoveredBlock22Step = 209 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 210.
        ].
        recoveredBlock22Step = 210 ifTrue: [
            recoveredBlock22Stack3 := $X.
            recoveredBlock22PC := 214.
        ].
        recoveredBlock22Step = 214 ifTrue: [
            (recoveredBlock22Stack2 ~~ recoveredBlock22Stack3) ifTrue: [recoveredBlock22PC := 225] ifFalse: [recoveredBlock22PC := 218].
        ].
        recoveredBlock22Step = 218 ifTrue: [
            recoveredBlock22PC := 219.
        ].
        recoveredBlock22Step = 219 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 222.
        ].
        recoveredBlock22Step = 222 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local1.
            recoveredBlock22PC := 223.
        ].
        recoveredBlock22Step = 223 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) nextPut: (recoveredBlock22Stack2).
            recoveredBlock22PC := 225.
        ].
        recoveredBlock22Step = 225 ifTrue: [
            recoveredBlock22Stack2 := nil.
            recoveredBlock22PC := 226.
        ].
        recoveredBlock22Step = 226 ifTrue: [
            recoveredBlock22Local1 := recoveredBlock22Stack2.
            recoveredBlock22PC := 227.
        ].
        recoveredBlock22Step = 227 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) contents.
    ^recoveredValue6
! !

