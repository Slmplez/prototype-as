"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005e600; bytecode file offset 0x95aedc"
!SGEsdlScanner methodsFor: 'recovered'!
initializeAllowedCharacters
    | recoveredValue0 |
    recoveredValue0 := (Array new: 16) at: 1 put: ($!!); at: 2 put: ($*); at: 3 put: ($,); at: 4 put: ($-); at: 5 put: ($%); at: 6 put: ($+); at: 7 put: ($<); at: 8 put: ($>); at: 9 put: ($=); at: 10 put: ($?); at: 11 put: ($[); at: 12 put: ($]); at: 13 put: ($/); at: 14 put: ($~); at: 15 put: ($|); at: 16 put: ($&); yourself.
    allowedCharacters := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20068264; bytecode file offset 0x965b90"
!SGEsdlScanner methodsFor: 'recovered'!
sourceStartPosition
    | recoveredValue0 |
    recoveredValue0 := startPosition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b548; bytecode file offset 0x96873c"
!SGEsdlScanner methodsFor: 'recovered'!
currentTokenType
    | recoveredValue0 |
    recoveredValue0 := currentTokenType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c7d4; bytecode file offset 0x9692b0"
!SGEsdlScanner methodsFor: 'recovered'!
currentToken
    | recoveredValue0 |
    recoveredValue0 := currentToken.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cd88; bytecode file offset 0x969c04"
!SGEsdlScanner methodsFor: 'recovered'!
keywords
    | recoveredValue0 |
    recoveredValue0 := keywords.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d5ec; bytecode file offset 0x96a390"
!SGEsdlScanner methodsFor: 'recovered'!
allowedCharacters
    | recoveredValue0 |
    recoveredValue0 := allowedCharacters.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073c80; bytecode file offset 0x970b34"
!SGEsdlScanner methodsFor: 'recovered'!
firstComment
    ^nil
! !

"ASDBase.ic method 0x20093584; bytecode file offset 0x98fed0"
!SGEsdlScanner methodsFor: 'recovered'!
syntaxError: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) token: ('ERRORTOKEN') value: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bdf9c; bytecode file offset 0x9bb178"
!SGEsdlScanner methodsFor: 'recovered'!
sourceString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20130320; bytecode file offset 0xa2cbdc"
!SGEsdlScanner methodsFor: 'recovered'!
token: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGEsdlScannerToken.
    recoveredValue1 := startPosition.
    recoveredValue2 := currentPosition.
    recoveredValue3 := (recoveredValue0) value: (nil) sourceStart: (recoveredValue1) sourceEnd: (recoveredValue2).
    currentToken := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201344a8; bytecode file offset 0xa30d64"
!SGEsdlScanner methodsFor: 'recovered'!
token: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGEsdlScannerToken.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := startPosition.
    recoveredValue3 := currentPosition.
    recoveredValue4 := (recoveredValue0) value: (recoveredValue1) sourceStart: (recoveredValue2) sourceEnd: (recoveredValue3).
    currentToken := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20142028; bytecode file offset 0xa3e8e0"
!SGEsdlScanner methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2018405c; bytecode file offset 0xa80914"
!SGEsdlScanner methodsFor: 'recovered'!
testCharacter: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a3ce0; bytecode file offset 0xaa05a0"
!SGEsdlScanner methodsFor: 'recovered'!
sourceToken: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGEsdlScannerToken.
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

"ASDBase.ic method 0x201af554; bytecode file offset 0xaabe20"
!SGEsdlScanner methodsFor: 'recovered'!
identifierSourceToken
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'IDENTIFIER'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) sourceToken: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) keywords.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := currentToken.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 'KEYWORD'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := 'IDENTIFIER'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cb6a8; bytecode file offset 0xac7f60"
!SGEsdlScanner methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201e4f38; bytecode file offset 0xae17fc"
!SGEsdlScanner methodsFor: 'recovered'!
initialize
    super initialize.
    currentPosition := 0.
    endPosition := 0.
    startPosition := 0.
    lookAhead := 0.
    (self) initializeKeywords.
    (self) initializeAllowedCharacters.
    ^self
! !

"ASDBase.ic method 0x2023067c; bytecode file offset 0xb2cf40"
!SGEsdlScanner methodsFor: 'recovered'!
followUpCode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    currentToken := nil.
    recoveredValue0 := sourceString.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := recoveredValue1.
    currentPosition := recoveredValue2.
    endPosition := recoveredValue1.
    recoveredValue3 := SGEsdlScannerToken.
    recoveredValue4 := sourceString.
    recoveredValue5 := startPosition.
    recoveredValue6 := sourceString.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := (recoveredValue4) copyFrom: (recoveredValue5) to: (recoveredValue7).
    recoveredValue9 := startPosition.
    recoveredValue10 := sourceString.
    recoveredValue11 := (recoveredValue10) size.
    recoveredValue12 := (recoveredValue3) value: (recoveredValue8) sourceStart: (recoveredValue9) sourceEnd: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x202c9254; bytecode file offset 0xbc5b28"
!SGEsdlScanner methodsFor: 'recovered'!
sourceErrorString: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new: (200).
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := sourceString.
    recoveredValue7 := currentPosition.
    recoveredValue8 := (recoveredValue6) copyFrom: (1) to: (recoveredValue7).
    (recoveredValue5) nextPutAll: (recoveredValue8).
    recoveredValue9 := recoveredValue4.
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) nextPutAll: (recoveredValue10).
    recoveredValue11 := sourceString.
    recoveredValue12 := currentPosition.
    recoveredValue13 := (recoveredValue12) + (1).
    recoveredValue14 := sourceString.
    recoveredValue15 := (recoveredValue14) size.
    recoveredValue16 := (recoveredValue11) copyFrom: (recoveredValue13) to: (recoveredValue15).
    (recoveredValue4) nextPutAll: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (recoveredValue17) contents.
    ^recoveredValue18
! !

"ASDBase.ic method 0x202ed460; bytecode file offset 0xbe9d3c"
!SGEsdlScanner methodsFor: 'recovered'!
readEndOfLineComment
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := Cr.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := Lf.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) testCharacter: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'COMMENT'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := Nul.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 'unterminated comment'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) syntaxError: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := 'EOM'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f6ef0; bytecode file offset 0xbf37b8"
!SGEsdlScanner methodsFor: 'recovered'!
readCodeSnippet
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
            recoveredPC := 36.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 26.
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
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) allowedCharacters.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'CODE'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceToken: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20306d34; bytecode file offset 0xc03608"
!SGEsdlScanner methodsFor: 'recovered'!
readComment
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := $*.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := $/.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) testCharacter: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'COMMENT'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := Nul.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'unterminated comment'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) syntaxError: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := 'EOM'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040c810; bytecode file offset 0xd090d8"
!SGEsdlScanner methodsFor: 'recovered'!
readNumber
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 |
    recoveredBlock4Value0 := sourceString.
    recoveredBlock4Value1 := currentPosition.
    recoveredBlock4Value2 := (recoveredBlock4Value1) + (1).
    recoveredBlock4Value3 := recoveredBlock4Value2.
    currentPosition := recoveredBlock4Value3.
    recoveredBlock4Value4 := (recoveredBlock4Value0) atOrNulAtEnd: (recoveredBlock4Value2).
    recoveredBlock4Value5 := recoveredBlock4Value4.
    recoveredLocal1 := recoveredBlock4Value5.
    recoveredBlock4Value6 := (recoveredBlock4Value4) isDigit.
    recoveredBlock4Value6
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) whileTrue.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDigit.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 recoveredBlock56Value3 recoveredBlock56Value4 recoveredBlock56Value5 |
    recoveredBlock56Value0 := sourceString.
    recoveredBlock56Value1 := currentPosition.
    recoveredBlock56Value2 := (recoveredBlock56Value1) + (1).
    recoveredBlock56Value3 := recoveredBlock56Value2.
    currentPosition := recoveredBlock56Value3.
    recoveredBlock56Value4 := (recoveredBlock56Value0) atOrNulAtEnd: (recoveredBlock56Value2).
    recoveredBlock56Value5 := (recoveredBlock56Value4) isDigit.
    recoveredBlock56Value5
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) whileTrue.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'NUMBER'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceToken: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ea160; bytecode file offset 0xde6a88"
!SGEsdlScanner methodsFor: 'recovered'!
initializeKeywords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('break') put: (nil).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('case') put: (nil).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) at: ('class') put: (nil).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) at: ('const') put: (nil).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) at: ('continue') put: (nil).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) at: ('default') put: (nil).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) at: ('do') put: (nil).
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) at: ('else') put: (nil).
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) at: ('enum') put: (nil).
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) at: ('for') put: (nil).
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) at: ('goto') put: (nil).
    recoveredValue13 := recoveredValue1.
    (recoveredValue13) at: ('if') put: (nil).
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) at: ('interface') put: (nil).
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) at: ('namespace') put: (nil).
    recoveredValue16 := recoveredValue1.
    (recoveredValue16) at: ('native') put: (nil).
    recoveredValue17 := recoveredValue1.
    (recoveredValue17) at: ('null') put: (nil).
    recoveredValue18 := recoveredValue1.
    (recoveredValue18) at: ('private') put: (nil).
    recoveredValue19 := recoveredValue1.
    (recoveredValue19) at: ('public') put: (nil).
    recoveredValue20 := recoveredValue1.
    (recoveredValue20) at: ('return') put: (nil).
    recoveredValue21 := recoveredValue1.
    (recoveredValue21) at: ('static') put: (nil).
    recoveredValue22 := recoveredValue1.
    (recoveredValue22) at: ('switch') put: (nil).
    recoveredValue23 := recoveredValue1.
    (recoveredValue23) at: ('this') put: (nil).
    recoveredValue24 := recoveredValue1.
    (recoveredValue24) at: ('using') put: (nil).
    recoveredValue25 := recoveredValue1.
    (recoveredValue25) at: ('void') put: (nil).
    recoveredValue26 := recoveredValue1.
    (recoveredValue26) at: ('volatile') put: (nil).
    recoveredValue27 := recoveredValue1.
    (recoveredValue27) at: ('while') put: (nil).
    keywords := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2059141c; bytecode file offset 0xe8dd3c"
!SGEsdlScanner methodsFor: 'recovered'!
nextToken
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
            recoveredStack1 := (recoveredStack1) isSeparator.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextToken.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) isANSICIdentifierStartChar.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 54.
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
            recoveredPC := 82.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := currentPosition.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            endPosition := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := sourceString.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := currentPosition.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            currentPosition := recoveredStack3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) atOrNulAtEnd: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) isANSICIdentifierStartChar.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDigit.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := endPosition.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            currentPosition := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifierSourceToken.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := $;.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'SEMICOLON'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := ${.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 'OPENING_BRACES'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := $}.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 'CLOSING_BRACES'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := $(.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := 'OPENING_PARENTHESIS'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := $).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := 'CLOSING_PARENTHESIS'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := 'DOT'.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := 'COLON'.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := $=.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := 'ASSIGN'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceToken: (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDigit.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) readNumber.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := $/.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 258] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := $/.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) testCharacter: (recoveredStack2).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 244].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := (recoveredStack1) readEndOfLineComment.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := $*.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := (recoveredStack1) testCharacter: (recoveredStack2).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) readComment.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := (recoveredStack0) allowedCharacters.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 272] ifFalse: [recoveredPC := 268].
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := (recoveredStack0) readCodeSnippet.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := 'invalid character detected'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := (recoveredStack0) syntaxError: (recoveredStack1).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

