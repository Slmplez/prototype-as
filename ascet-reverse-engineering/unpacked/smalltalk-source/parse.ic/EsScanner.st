"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000854; bytecode file offset 0x15ee8"
!EsScanner methodsFor: 'recovered'!
sourceString
    | recoveredValue0 |
    recoveredValue0 := sourceString.
    ^recoveredValue0
! !

"parse.ic method 0x20000914; bytecode file offset 0x15f90"
!EsScanner methodsFor: 'recovered'!
sourceStartPosition
    | recoveredValue0 |
    recoveredValue0 := startPosition.
    ^recoveredValue0
! !

"parse.ic method 0x20000950; bytecode file offset 0x15fcc"
!EsScanner methodsFor: 'recovered'!
sourceEndPosition
    | recoveredValue0 |
    recoveredValue0 := endPosition.
    ^recoveredValue0
! !

"parse.ic method 0x200009c0; bytecode file offset 0x16024"
!EsScanner methodsFor: 'recovered'!
currentTokenType
    | recoveredValue0 |
    recoveredValue0 := currentTokenType.
    ^recoveredValue0
! !

"parse.ic method 0x200009e4; bytecode file offset 0x16048"
!EsScanner methodsFor: 'recovered'!
currentToken
    | recoveredValue0 |
    recoveredValue0 := currentToken.
    ^recoveredValue0
! !

"parse.ic method 0x20000c3c; bytecode file offset 0x16290"
!EsScanner methodsFor: 'recovered'!
firstComment
    ^nil
! !

"parse.ic method 0x20001358; bytecode file offset 0x169b4"
!EsScanner methodsFor: 'recovered'!
syntaxError: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) token: ('ERRORTOKEN') value: (recoveredValue0).
    ^recoveredValue1
! !

"parse.ic method 0x200014ec; bytecode file offset 0x16b4c"
!EsScanner methodsFor: 'recovered'!
syntaxError
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := NlsCatESc.
    recoveredValue1 := (recoveredValue0) indexedMsg: (25).
    recoveredValue2 := (self) syntaxError: (recoveredValue1).
    ^recoveredValue2
! !

"parse.ic method 0x200018c4; bytecode file offset 0x16f48"
!EsScanner methodsFor: 'recovered'!
source: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceString := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001a00; bytecode file offset 0x17054"
!EsScanner methodsFor: 'recovered'!
currentTokenType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentTokenType := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001e04; bytecode file offset 0x1745c"
!EsScanner methodsFor: 'recovered'!
source
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := sourceString.
    recoveredValue1 := startPosition.
    recoveredValue2 := currentPosition.
    recoveredValue3 := (recoveredValue0) copyFrom: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"parse.ic method 0x2000233c; bytecode file offset 0x179a0"
!EsScanner methodsFor: 'recovered'!
number: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (nil) with: (recoveredValue1).
    recoveredValue3 := (self) token: ('NUMBER') value: (recoveredValue2).
    ^recoveredValue3
! !

"parse.ic method 0x20002c70; bytecode file offset 0x182c4"
!EsScanner methodsFor: 'recovered'!
initialize
    currentPosition := 0.
    endPosition := 0.
    startPosition := 0.
    lookAhead := 0.
    ^self
! !

"parse.ic method 0x20002ce8; bytecode file offset 0x18344"
!EsScanner methodsFor: 'recovered'!
token: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EsScannerToken.
    recoveredValue1 := startPosition.
    recoveredValue2 := currentPosition.
    recoveredValue3 := (recoveredValue0) value: (nil) sourceStart: (recoveredValue1) sourceEnd: (recoveredValue2).
    currentToken := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"parse.ic method 0x20002dac; bytecode file offset 0x18408"
!EsScanner methodsFor: 'recovered'!
token: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EsScannerToken.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := startPosition.
    recoveredValue3 := currentPosition.
    recoveredValue4 := (recoveredValue0) value: (recoveredValue1) sourceStart: (recoveredValue2) sourceEnd: (recoveredValue3).
    currentToken := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

"parse.ic method 0x20002ef0; bytecode file offset 0x18548"
!EsScanner methodsFor: 'recovered'!
peek: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := currentTokenType.
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
            recoveredStack1 := (recoveredStack1) nextToken.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            currentTokenType := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := currentTokenType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x200036d8; bytecode file offset 0x18d30"
!EsScanner methodsFor: 'recovered'!
read
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := currentTokenType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextToken.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := currentTokenType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            currentTokenType := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20003b60; bytecode file offset 0x191c0"
!EsScanner methodsFor: 'recovered'!
sourceToken: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EsScannerToken.
    recoveredValue1 := sourceString.
    recoveredValue2 := startPosition.
    recoveredValue3 := currentPosition.
    recoveredValue4 := (recoveredValue1) copyFrom: (recoveredValue2) to: (recoveredValue3).
    recoveredValue5 := startPosition.
    recoveredValue6 := currentPosition.
    recoveredValue7 := (recoveredValue0) value: (recoveredValue4) sourceStart: (recoveredValue5) sourceEnd: (recoveredValue6).
    currentToken := recoveredValue7.
    recoveredValue8 := recoveredArg1.
    ^recoveredValue8
! !

"parse.ic method 0x20003e4c; bytecode file offset 0x194a4"
!EsScanner methodsFor: 'recovered'!
tryRead: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := currentTokenType.
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
            recoveredStack1 := (recoveredStack1) nextToken.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            currentTokenType := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := currentTokenType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            currentTokenType := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x2000438c; bytecode file offset 0x199e8"
!EsScanner methodsFor: 'recovered'!
trySource: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := currentTokenType.
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
            recoveredStack1 := (recoveredStack1) nextToken.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            currentTokenType := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := currentToken.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            currentTokenType := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20004a9c; bytecode file offset 0x1a104"
!EsScanner methodsFor: 'recovered'!
skipComment
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := sourceString.
    recoveredValue1 := currentPosition.
    recoveredValue2 := (recoveredValue1) + (1).
    recoveredValue3 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := NlsCatESc.
    recoveredBlock13Value1 := (recoveredBlock13Value0) indexedMsg: (24).
    recoveredBlock13Value2 := (self) syntaxError: (recoveredBlock13Value1).
    ^recoveredBlock13Value2
].
    recoveredValue4 := (recoveredValue0) indexOf: ($") startingAt: (recoveredValue2) ifAbsent: (recoveredValue3).
    currentPosition := recoveredValue4.
    recoveredValue5 := (self) nextToken.
    ^recoveredValue5
! !

"parse.ic method 0x20004adc; bytecode file offset 0x1a138"
!EsScanner methodsFor: 'recovered'!
tryCharacter: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := currentTokenType.
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
            recoveredStack1 := (recoveredStack1) nextToken.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            currentTokenType := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := startPosition.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            currentTokenType := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := startPosition.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x200054b0; bytecode file offset 0x1ab20"
!EsScanner methodsFor: 'recovered'!
readCharacter
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
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
            recoveredStack2 := Nul.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            startPosition := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := NlsCatESc.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 22.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) syntaxError: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'CHARACTER'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20007a78; bytecode file offset 0x1d0dc"
!EsScanner methodsFor: 'recovered'!
readExponent
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDigit.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) digitValue.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) digitValue.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDigit.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) negated.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20008050; bytecode file offset 0x1d6d0"
!EsScanner methodsFor: 'recovered'!
tryNumber
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := currentTokenType.
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
            recoveredStack1 := (recoveredStack1) nextToken.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            currentTokenType := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := currentTokenType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'NUMBER'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            currentTokenType := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := currentTokenType.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'BINARYSELECTOR'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := startPosition.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := startPosition.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            lookAhead := recoveredStack3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDigit.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := lookAhead.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) readNumber.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 'NUMBER'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            currentTokenType := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := currentToken.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := currentToken.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) negated.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := 'ERRORTOKEN'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            currentTokenType := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := startPosition.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            currentPosition := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x200080f8; bytecode file offset 0x1d768"
!EsScanner methodsFor: 'recovered'!
nextToken380
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0 254 255 255 135 254 255 255 7].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextToken380.
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
            recoveredStack2 := #[0 0 0 0 0 0 255 3 254 255 255 135 254 255 255 7].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 255 3 254 255 255 135 254 255 255 7].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextToken380.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 'MULTIKEYWORD'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'MULTIKEYWORD'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 'MULTIKEYWORD'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceToken: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x200087ec; bytecode file offset 0x1de6c"
!EsScanner methodsFor: 'recovered'!
readString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := sourceString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := $'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack5 := currentPosition.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := NlsCatESc.
    recoveredBlock17Value1 := (recoveredBlock17Value0) indexedMsg: (23).
    recoveredBlock17Value2 := (self) syntaxError: (recoveredBlock17Value1).
    ^recoveredBlock17Value2
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) indexOf: (recoveredStack4) startingAt: (recoveredStack5) ifAbsent: (recoveredStack6).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            currentPosition := recoveredStack4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := $'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := sourceString.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := currentPosition.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := sourceString.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack5 := $'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack6 := currentPosition.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack7 := 2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack7 := [
    | recoveredBlock97Value0 recoveredBlock97Value1 recoveredBlock97Value2 |
    recoveredBlock97Value0 := NlsCatESc.
    recoveredBlock97Value1 := (recoveredBlock97Value0) indexedMsg: (23).
    recoveredBlock97Value2 := (self) syntaxError: (recoveredBlock97Value1).
    ^recoveredBlock97Value2
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := (recoveredStack4) indexOf: (recoveredStack5) startingAt: (recoveredStack6) ifAbsent: (recoveredStack7).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            currentPosition := recoveredStack5.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := $'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) token: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20008988; bytecode file offset 0x1dffc"
!EsScanner methodsFor: 'recovered'!
nextToken374
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0 254 255 255 135 254 255 255 7].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 133].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextToken374.
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
            recoveredStack2 := #[0 0 0 0 0 0 255 3 254 255 255 135 254 255 255 7].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 255 3 254 255 255 135 254 255 255 7].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextToken374.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 'SYMBOL'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := sourceString.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := startPosition.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack5 := currentPosition.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'SYMBOL'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := sourceString.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := startPosition.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack5 := currentPosition.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := 'SYMBOL'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := sourceString.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := startPosition.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := currentPosition.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) token: (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x2000ad24; bytecode file offset 0x2042c"
!EsScanner methodsFor: 'recovered'!
nextToken
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            endPosition := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            startPosition := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := Nul.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'EOM'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := #[254 255 255 255 1 0 0 0 0 0 0 0 0 0 0 128].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := #[254 255 255 255 1 0 0 0 0 0 0 0 0 0 0 128].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextToken.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0 254 255 255 135 254 255 255 7].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 308].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 255 3 254 255 255 135 254 255 255 7].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 137].
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 298] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            lookAhead := recoveredStack1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0 254 255 255 135 254 255 255 7].
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 266].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := lookAhead.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 255 3 254 255 255 135 254 255 255 7].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 244].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredPC := 214.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 255 3 254 255 255 135 254 255 255 7].
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 221].
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextToken380.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := 'KEYWORD'.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextToken380.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := 'KEYWORD'.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 36 254 255 255 135 254 255 255 7].
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 288] ifFalse: [recoveredPC := 274].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := lookAhead.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := 'KEYWORD'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := 'IDENTIFIER'.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := 'IDENTIFIER'.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 321] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := 'PERIOD'.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := #[0 0 0 0 98 188 0 240 1 0 0 16 0 0 0 80].
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 330] ifFalse: [recoveredPC := 422].
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 398] ifFalse: [recoveredPC := 352].
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            lookAhead := recoveredStack1.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 255 3 0 0 0 0 0 0 0 0].
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 388] ifFalse: [recoveredPC := 374].
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := lookAhead.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := 'BINARYSELECTOR'.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := 'BINARYSELECTOR'.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack2 := #[0 0 0 0 98 156 0 240 1 0 0 16 0 0 0 80].
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 406] ifFalse: [recoveredPC := 412].
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := 'BINARYSELECTOR'.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack2 := 'BINARYSELECTOR'.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack2 := $[.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 435] ifFalse: [recoveredPC := 430].
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack2 := 'OPENSQUAREBRACKET'.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2).
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack2 := $].
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 449] ifFalse: [recoveredPC := 444].
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack2 := 'CLOSESQUAREBRACKET'.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2).
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 255 3 0 0 0 0 0 0 0 0].
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 458] ifFalse: [recoveredPC := 462].
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack1 := (recoveredStack1) readNumber.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack2 := $".
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 474] ifFalse: [recoveredPC := 470].
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := (recoveredStack1) skipComment.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack2 := $^.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 487] ifFalse: [recoveredPC := 482].
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack2 := 'UPARROW'.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2).
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 546] ifFalse: [recoveredPC := 496].
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack2 := $=.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 523] ifFalse: [recoveredPC := 518].
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack2 := 'COLONEQUAL'.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2).
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 537] ifFalse: [recoveredPC := 532].
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack2 := 'COLONCOLON'.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2).
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack2 := 'COLON'.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2).
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack2 := $(.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 559] ifFalse: [recoveredPC := 554].
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack2 := 'OPENPAREN'.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2).
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack2 := $).
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 573] ifFalse: [recoveredPC := 568].
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack2 := 'CLOSEPAREN'.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2).
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack2 := $;.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 587] ifFalse: [recoveredPC := 582].
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack2 := 'SEMICOLON'.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2).
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack2 := $'.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 602] ifFalse: [recoveredPC := 596].
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack2 := 'STRING'.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack1 := (recoveredStack1) readString: (recoveredStack2).
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack2 := $#.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 940] ifFalse: [recoveredPC := 610].
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0 254 255 255 135 254 255 255 7].
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 632] ifFalse: [recoveredPC := 703].
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredPC := 664.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 255 3 254 255 255 135 254 255 255 7].
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 650] ifFalse: [recoveredPC := 671].
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 684] ifFalse: [recoveredPC := 680].
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextToken374.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 684 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack2 := 'SYMBOL'.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack3 := sourceString.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack4 := startPosition.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack5 := currentPosition.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack2 := #[0 0 0 0 98 188 0 240 1 0 0 16 0 0 0 80].
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 712] ifFalse: [recoveredPC := 768].
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack2 := #[0 0 0 0 98 188 0 240 1 0 0 16 0 0 0 80].
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 734] ifFalse: [recoveredPC := 749].
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack2 := 'SYMBOL'.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack3 := sourceString.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack4 := startPosition.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack5 := currentPosition.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack2 := 'SYMBOL'.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack3 := sourceString.
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            recoveredStack4 := startPosition.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredStack5 := currentPosition.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 768 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack2 := $'.
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 782] ifFalse: [recoveredPC := 776].
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack2 := 'EXTENDEDSYMBOL'.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack1 := (recoveredStack1) readString: (recoveredStack2).
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack2 := $#.
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 904] ifFalse: [recoveredPC := 790].
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 0 254 255 255 135 254 255 255 7].
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 808] ifFalse: [recoveredPC := 868].
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 817.
        ].
        recoveredStep = 817 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 820.
        ].
        recoveredStep = 820 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredPC := 840.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 828.
        ].
        recoveredStep = 828 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 255 3 254 255 255 135 254 255 255 7].
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            recoveredStack1 := (recoveredStack1) testBit: (recoveredStack2).
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 826] ifFalse: [recoveredPC := 847].
        ].
        recoveredStep = 847 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 849.
        ].
        recoveredStep = 849 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 851.
        ].
        recoveredStep = 851 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 852.
        ].
        recoveredStep = 852 ifTrue: [
            recoveredStack2 := 'ATOM'.
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            recoveredStack3 := sourceString.
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            recoveredStack4 := startPosition.
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            recoveredStack5 := currentPosition.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 868 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 869.
        ].
        recoveredStep = 869 ifTrue: [
            recoveredStack2 := $'.
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 882] ifFalse: [recoveredPC := 876].
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack2 := 'EXTENDEDATOM'.
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            recoveredStack1 := (recoveredStack1) readString: (recoveredStack2).
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 882 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack2 := $(.
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 895] ifFalse: [recoveredPC := 890].
        ].
        recoveredStep = 890 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            recoveredStack2 := 'COMPILETIMECONSTANTHEADER'.
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2).
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 895 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 899.
        ].
        recoveredStep = 899 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            recoveredStack2 := 'HASH'.
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2).
            recoveredPC := 903.
        ].
        recoveredStep = 903 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 904 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 905.
        ].
        recoveredStep = 905 ifTrue: [
            recoveredStack2 := $(.
            recoveredPC := 908.
        ].
        recoveredStep = 908 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 917] ifFalse: [recoveredPC := 912].
        ].
        recoveredStep = 912 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            recoveredStack2 := 'HASHOPENPAREN'.
            recoveredPC := 915.
        ].
        recoveredStep = 915 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2).
            recoveredPC := 916.
        ].
        recoveredStep = 916 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 917 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 918.
        ].
        recoveredStep = 918 ifTrue: [
            recoveredStack2 := $[.
            recoveredPC := 922.
        ].
        recoveredStep = 922 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 931] ifFalse: [recoveredPC := 926].
        ].
        recoveredStep = 926 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 927.
        ].
        recoveredStep = 927 ifTrue: [
            recoveredStack2 := 'HASHOPENSQUAREBRACKET'.
            recoveredPC := 929.
        ].
        recoveredStep = 929 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2).
            recoveredPC := 930.
        ].
        recoveredStep = 930 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 931 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 936.
        ].
        recoveredStep = 936 ifTrue: [
            recoveredStack2 := 'HASH'.
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            recoveredStack1 := (recoveredStack1) token: (recoveredStack2).
            recoveredPC := 939.
        ].
        recoveredStep = 939 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 940 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            recoveredStack2 := $$.
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 952] ifFalse: [recoveredPC := 948].
        ].
        recoveredStep = 948 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack1 := (recoveredStack1) readCharacter.
            recoveredPC := 951.
        ].
        recoveredStep = 951 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack0 := (recoveredStack0) syntaxError.
            recoveredPC := 954.
        ].
        recoveredStep = 954 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x2000b19c; bytecode file offset 0x20844"
!EsScanner methodsFor: 'recovered'!
readNumber
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) digitValue.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) digitValue.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal10 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDigit.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := $r.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal10 := recoveredStack2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) digitValue.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 155] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) number: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 155 ifTrue: [
            recoveredPC := 172.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal10 := recoveredStack2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) digitValue.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 331] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := 9.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredLocal10 := recoveredStack2.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) digitValue.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 279] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-2).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := (recoveredStack1) negated.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := (recoveredStack1) number: (recoveredStack2).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock284Value0 recoveredBlock284Value1 recoveredBlock284Value2 recoveredBlock284Value3 recoveredBlock284Value4 recoveredBlock284Value5 recoveredBlock284Value6 recoveredBlock284Value7 recoveredBlock284Value8 recoveredBlock284Value9 recoveredBlock284Value10 recoveredBlock284Value11 recoveredBlock284Value12 recoveredBlock284Value13 recoveredBlock284Value14 |
    recoveredBlock284Value0 := recoveredLocal8.
    recoveredBlock284Value1 := recoveredLocal7.
    recoveredBlock284Value2 := (recoveredBlock284Value0) * (recoveredBlock284Value1).
    recoveredBlock284Value3 := recoveredLocal5.
    recoveredBlock284Value4 := (recoveredBlock284Value2) + (recoveredBlock284Value3).
    recoveredLocal8 := recoveredBlock284Value4.
    recoveredBlock284Value5 := sourceString.
    recoveredBlock284Value6 := currentPosition.
    recoveredBlock284Value7 := (recoveredBlock284Value6) + (1).
    recoveredBlock284Value8 := recoveredBlock284Value7.
    currentPosition := recoveredBlock284Value8.
    recoveredBlock284Value9 := (recoveredBlock284Value5) atOrNulAtEnd: (recoveredBlock284Value7).
    recoveredBlock284Value10 := recoveredBlock284Value9.
    recoveredLocal10 := recoveredBlock284Value10.
    recoveredBlock284Value11 := (recoveredBlock284Value9) digitValue.
    recoveredBlock284Value12 := recoveredBlock284Value11.
    recoveredLocal5 := recoveredBlock284Value12.
    recoveredBlock284Value13 := recoveredLocal6.
    recoveredBlock284Value14 := (recoveredBlock284Value11) between: (0) and: (recoveredBlock284Value13).
    recoveredBlock284Value14
].
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack1) whileTrue.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 338] ifFalse: [recoveredPC := 346].
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := (recoveredStack1) negated.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := $s.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 535] ifFalse: [recoveredPC := 356].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 370] ifFalse: [recoveredPC := 362].
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredPC := 427.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock379Value0 recoveredBlock379Value1 recoveredBlock379Value2 recoveredBlock379Value3 recoveredBlock379Value4 recoveredBlock379Value5 recoveredBlock379Value6 recoveredBlock379Value7 |
    recoveredBlock379Value0 := recoveredLocal8.
    recoveredBlock379Value1 := recoveredLocal7.
    recoveredBlock379Value2 := currentPosition.
    recoveredBlock379Value3 := recoveredLocal4.
    recoveredBlock379Value4 := (recoveredBlock379Value2) - (recoveredBlock379Value3).
    recoveredBlock379Value5 := (recoveredBlock379Value1) raisedToInteger: (recoveredBlock379Value4).
    recoveredBlock379Value6 := (recoveredBlock379Value0) / (recoveredBlock379Value5).
    recoveredBlock379Value7 := recoveredBlock379Value6.
    recoveredLocal8 := recoveredBlock379Value7.
    recoveredBlock379Value6
].
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack3 := [:recoveredBlock409Arg1 | 
    | recoveredBlock409Value0 recoveredBlock409Value1 recoveredBlock409Value2 |
    recoveredBlock409Value0 := NlsCatESc.
    recoveredBlock409Value1 := (recoveredBlock409Value0) indexedMsg: (34).
    recoveredBlock409Value2 := (self) syntaxError: (recoveredBlock409Value1).
    ^recoveredBlock409Value2
].
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredLocal10 := recoveredStack2.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDigit.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 444] ifFalse: [recoveredPC := 484].
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := (recoveredStack1) digitValue.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredPC := 468.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack2 := (recoveredStack2) digitValue.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredLocal10 := recoveredStack2.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDigit.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 454] ifFalse: [recoveredPC := 484].
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock484Value0 recoveredBlock484Value1 recoveredBlock484Value2 recoveredBlock484Value3 |
    recoveredBlock484Value0 := recoveredLocal8.
    recoveredBlock484Value1 := recoveredLocal1.
    recoveredBlock484Value2 := (recoveredBlock484Value0) asScaledDecimal: (recoveredBlock484Value1).
    recoveredBlock484Value3 := recoveredBlock484Value2.
    recoveredLocal8 := recoveredBlock484Value3.
    recoveredBlock484Value2
].
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack3 := [:recoveredBlock505Arg1 | 
    | recoveredBlock505Value0 recoveredBlock505Value1 recoveredBlock505Value2 |
    recoveredBlock505Value0 := NlsCatESc.
    recoveredBlock505Value1 := (recoveredBlock505Value0) indexedMsg: (34).
    recoveredBlock505Value2 := (self) syntaxError: (recoveredBlock505Value1).
    ^recoveredBlock505Value2
].
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack1 := (recoveredStack1) number: (recoveredStack2).
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack2 := $d.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 656] ifFalse: [recoveredPC := 546].
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 601] ifFalse: [recoveredPC := 552].
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock552Value0 recoveredBlock552Value1 recoveredBlock552Value2 recoveredBlock552Value3 recoveredBlock552Value4 recoveredBlock552Value5 recoveredBlock552Value6 recoveredBlock552Value7 recoveredBlock552Value8 |
    recoveredBlock552Value0 := recoveredLocal8.
    recoveredBlock552Value1 := (recoveredBlock552Value0) asFloatD.
    recoveredBlock552Value2 := recoveredLocal7.
    recoveredBlock552Value3 := currentPosition.
    recoveredBlock552Value4 := recoveredLocal4.
    recoveredBlock552Value5 := (recoveredBlock552Value3) - (recoveredBlock552Value4).
    recoveredBlock552Value6 := (recoveredBlock552Value2) raisedToInteger: (recoveredBlock552Value5).
    recoveredBlock552Value7 := (recoveredBlock552Value1) / (recoveredBlock552Value6).
    recoveredBlock552Value8 := recoveredBlock552Value7.
    recoveredLocal8 := recoveredBlock552Value8.
    recoveredBlock552Value7
].
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack3 := [:recoveredBlock583Arg1 | 
    | recoveredBlock583Value0 recoveredBlock583Value1 recoveredBlock583Value2 |
    recoveredBlock583Value0 := NlsCatESc.
    recoveredBlock583Value1 := (recoveredBlock583Value0) indexedMsg: (34).
    recoveredBlock583Value2 := (self) syntaxError: (recoveredBlock583Value1).
    ^recoveredBlock583Value2
].
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack1 := (recoveredStack1) readExponent.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 653] ifFalse: [recoveredPC := 614].
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock614Value0 recoveredBlock614Value1 recoveredBlock614Value2 recoveredBlock614Value3 recoveredBlock614Value4 |
    recoveredBlock614Value0 := recoveredLocal8.
    recoveredBlock614Value1 := recoveredLocal3.
    recoveredBlock614Value2 := (recoveredBlock614Value1) powerOfTen.
    recoveredBlock614Value3 := (recoveredBlock614Value0) * (recoveredBlock614Value2).
    recoveredBlock614Value4 := recoveredBlock614Value3.
    recoveredLocal8 := recoveredBlock614Value4.
    recoveredBlock614Value3
].
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack3 := [:recoveredBlock636Arg1 | 
    | recoveredBlock636Value0 recoveredBlock636Value1 recoveredBlock636Value2 |
    recoveredBlock636Value0 := NlsCatESc.
    recoveredBlock636Value1 := (recoveredBlock636Value0) indexedMsg: (34).
    recoveredBlock636Value2 := (self) syntaxError: (recoveredBlock636Value1).
    ^recoveredBlock636Value2
].
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredPC := 951.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack2 := $e.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 776] ifFalse: [recoveredPC := 666].
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 721] ifFalse: [recoveredPC := 672].
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock672Value0 recoveredBlock672Value1 recoveredBlock672Value2 recoveredBlock672Value3 recoveredBlock672Value4 recoveredBlock672Value5 recoveredBlock672Value6 recoveredBlock672Value7 recoveredBlock672Value8 |
    recoveredBlock672Value0 := recoveredLocal8.
    recoveredBlock672Value1 := (recoveredBlock672Value0) asFloatE.
    recoveredBlock672Value2 := recoveredLocal7.
    recoveredBlock672Value3 := currentPosition.
    recoveredBlock672Value4 := recoveredLocal4.
    recoveredBlock672Value5 := (recoveredBlock672Value3) - (recoveredBlock672Value4).
    recoveredBlock672Value6 := (recoveredBlock672Value2) raisedToInteger: (recoveredBlock672Value5).
    recoveredBlock672Value7 := (recoveredBlock672Value1) / (recoveredBlock672Value6).
    recoveredBlock672Value8 := recoveredBlock672Value7.
    recoveredLocal8 := recoveredBlock672Value8.
    recoveredBlock672Value7
].
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack3 := [:recoveredBlock703Arg1 | 
    | recoveredBlock703Value0 recoveredBlock703Value1 recoveredBlock703Value2 |
    recoveredBlock703Value0 := NlsCatESc.
    recoveredBlock703Value1 := (recoveredBlock703Value0) indexedMsg: (34).
    recoveredBlock703Value2 := (self) syntaxError: (recoveredBlock703Value1).
    ^recoveredBlock703Value2
].
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack1 := (recoveredStack1) readExponent.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 773] ifFalse: [recoveredPC := 734].
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock734Value0 recoveredBlock734Value1 recoveredBlock734Value2 recoveredBlock734Value3 recoveredBlock734Value4 |
    recoveredBlock734Value0 := recoveredLocal8.
    recoveredBlock734Value1 := recoveredLocal3.
    recoveredBlock734Value2 := (recoveredBlock734Value1) powerOfTen.
    recoveredBlock734Value3 := (recoveredBlock734Value0) * (recoveredBlock734Value2).
    recoveredBlock734Value4 := recoveredBlock734Value3.
    recoveredLocal8 := recoveredBlock734Value4.
    recoveredBlock734Value3
].
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack3 := [:recoveredBlock756Arg1 | 
    | recoveredBlock756Value0 recoveredBlock756Value1 recoveredBlock756Value2 |
    recoveredBlock756Value0 := NlsCatESc.
    recoveredBlock756Value1 := (recoveredBlock756Value0) indexedMsg: (34).
    recoveredBlock756Value2 := (self) syntaxError: (recoveredBlock756Value1).
    ^recoveredBlock756Value2
].
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredPC := 951.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack2 := $q.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 896] ifFalse: [recoveredPC := 786].
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 841] ifFalse: [recoveredPC := 792].
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock792Value0 recoveredBlock792Value1 recoveredBlock792Value2 recoveredBlock792Value3 recoveredBlock792Value4 recoveredBlock792Value5 recoveredBlock792Value6 recoveredBlock792Value7 recoveredBlock792Value8 |
    recoveredBlock792Value0 := recoveredLocal8.
    recoveredBlock792Value1 := (recoveredBlock792Value0) asFloatQ.
    recoveredBlock792Value2 := recoveredLocal7.
    recoveredBlock792Value3 := currentPosition.
    recoveredBlock792Value4 := recoveredLocal4.
    recoveredBlock792Value5 := (recoveredBlock792Value3) - (recoveredBlock792Value4).
    recoveredBlock792Value6 := (recoveredBlock792Value2) raisedToInteger: (recoveredBlock792Value5).
    recoveredBlock792Value7 := (recoveredBlock792Value1) / (recoveredBlock792Value6).
    recoveredBlock792Value8 := recoveredBlock792Value7.
    recoveredLocal8 := recoveredBlock792Value8.
    recoveredBlock792Value7
].
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack3 := [:recoveredBlock823Arg1 | 
    | recoveredBlock823Value0 recoveredBlock823Value1 recoveredBlock823Value2 |
    recoveredBlock823Value0 := NlsCatESc.
    recoveredBlock823Value1 := (recoveredBlock823Value0) indexedMsg: (34).
    recoveredBlock823Value2 := (self) syntaxError: (recoveredBlock823Value1).
    ^recoveredBlock823Value2
].
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            recoveredStack1 := (recoveredStack1) readExponent.
            recoveredPC := 844.
        ].
        recoveredStep = 844 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 848.
        ].
        recoveredStep = 848 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 893] ifFalse: [recoveredPC := 854].
        ].
        recoveredStep = 854 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock854Value0 recoveredBlock854Value1 recoveredBlock854Value2 recoveredBlock854Value3 recoveredBlock854Value4 |
    recoveredBlock854Value0 := recoveredLocal8.
    recoveredBlock854Value1 := recoveredLocal3.
    recoveredBlock854Value2 := (recoveredBlock854Value1) powerOfTen.
    recoveredBlock854Value3 := (recoveredBlock854Value0) * (recoveredBlock854Value2).
    recoveredBlock854Value4 := recoveredBlock854Value3.
    recoveredLocal8 := recoveredBlock854Value4.
    recoveredBlock854Value3
].
            recoveredPC := 874.
        ].
        recoveredStep = 874 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack3 := [:recoveredBlock876Arg1 | 
    | recoveredBlock876Value0 recoveredBlock876Value1 recoveredBlock876Value2 |
    recoveredBlock876Value0 := NlsCatESc.
    recoveredBlock876Value1 := (recoveredBlock876Value0) indexedMsg: (34).
    recoveredBlock876Value2 := (self) syntaxError: (recoveredBlock876Value1).
    ^recoveredBlock876Value2
].
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredPC := 951.
        ].
        recoveredStep = 896 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 899.
        ].
        recoveredStep = 899 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 951] ifFalse: [recoveredPC := 902].
        ].
        recoveredStep = 902 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock902Value0 recoveredBlock902Value1 recoveredBlock902Value2 recoveredBlock902Value3 recoveredBlock902Value4 recoveredBlock902Value5 recoveredBlock902Value6 recoveredBlock902Value7 recoveredBlock902Value8 |
    recoveredBlock902Value0 := recoveredLocal8.
    recoveredBlock902Value1 := (recoveredBlock902Value0) asFloat.
    recoveredBlock902Value2 := recoveredLocal7.
    recoveredBlock902Value3 := currentPosition.
    recoveredBlock902Value4 := recoveredLocal4.
    recoveredBlock902Value5 := (recoveredBlock902Value3) - (recoveredBlock902Value4).
    recoveredBlock902Value6 := (recoveredBlock902Value2) raisedToInteger: (recoveredBlock902Value5).
    recoveredBlock902Value7 := (recoveredBlock902Value1) / (recoveredBlock902Value6).
    recoveredBlock902Value8 := recoveredBlock902Value7.
    recoveredLocal8 := recoveredBlock902Value8.
    recoveredBlock902Value7
].
            recoveredPC := 931.
        ].
        recoveredStep = 931 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            recoveredStack3 := [:recoveredBlock933Arg1 | 
    | recoveredBlock933Value0 recoveredBlock933Value1 recoveredBlock933Value2 |
    recoveredBlock933Value0 := NlsCatESc.
    recoveredBlock933Value1 := (recoveredBlock933Value0) indexedMsg: (34).
    recoveredBlock933Value2 := (self) syntaxError: (recoveredBlock933Value1).
    ^recoveredBlock933Value2
].
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 951.
        ].
        recoveredStep = 951 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 954.
        ].
        recoveredStep = 954 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 959.
        ].
        recoveredStep = 959 ifTrue: [
            recoveredStack0 := (recoveredStack0) number: (recoveredStack1).
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

