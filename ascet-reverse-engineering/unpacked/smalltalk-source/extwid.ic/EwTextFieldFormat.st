"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000318; bytecode file offset 0x5132c"
!EwTextFieldFormat methodsFor: 'recovered'!
substitutedFormatString
    | recoveredValue0 |
    recoveredValue0 := (self) substituteLocaleCharacters.
    ^recoveredValue0
! !

"extwid.ic method 0x200003d8; bytecode file offset 0x5132c"
!EwTextFieldFormat methodsFor: 'recovered'!
processAndVerifyMask
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"extwid.ic method 0x20000658; bytecode file offset 0x51438"
!EwTextFieldFormat methodsFor: 'recovered'!
formattedStringFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"extwid.ic method 0x200014ac; bytecode file offset 0x522a8"
!EwTextFieldFormat methodsFor: 'recovered'!
locale
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Locale.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"extwid.ic method 0x200019b0; bytecode file offset 0x52794"
!EwTextFieldFormat methodsFor: 'recovered'!
newLocaleString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) locale.
    recoveredValue1 := (recoveredValue0) preferredStringClass.
    recoveredValue2 := (recoveredValue1) new.
    ^recoveredValue2
! !

"extwid.ic method 0x2000270c; bytecode file offset 0x534f0"
!EwTextFieldFormat methodsFor: 'recovered'!
formatString
    | recoveredValue0 |
    recoveredValue0 := formatMask.
    ^recoveredValue0
! !

"extwid.ic method 0x20002884; bytecode file offset 0x53678"
!EwTextFieldFormat methodsFor: 'recovered'!
maxSize
    | recoveredValue0 |
    recoveredValue0 := maxSize.
    ^recoveredValue0
! !

"extwid.ic method 0x200029dc; bytecode file offset 0x53810"
!EwTextFieldFormat methodsFor: 'recovered'!
replaceSize
    | recoveredValue0 |
    recoveredValue0 := replaceSize.
    ^recoveredValue0
! !

"extwid.ic method 0x20002ba4; bytecode file offset 0x53998"
!EwTextFieldFormat methodsFor: 'recovered'!
formatStringError
    | recoveredValue0 |
    recoveredValue0 := formatStringError.
    ^recoveredValue0
! !

"extwid.ic method 0x200048bc; bytecode file offset 0x55680"
!EwTextFieldFormat methodsFor: 'recovered'!
decreaseMaxSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := maxSize.
    recoveredValue1 := (recoveredValue0) + (-1).
    maxSize := recoveredValue1.
    ^self
! !

"extwid.ic method 0x200048d0; bytecode file offset 0x55694"
!EwTextFieldFormat methodsFor: 'recovered'!
increaseMaxSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := maxSize.
    recoveredValue1 := (recoveredValue0) + (1).
    maxSize := recoveredValue1.
    ^self
! !

"extwid.ic method 0x20005854; bytecode file offset 0x56618"
!EwTextFieldFormat methodsFor: 'recovered'!
increaseMaxSize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := maxSize.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    maxSize := recoveredValue2.
    ^self
! !

"extwid.ic method 0x20006654; bytecode file offset 0x57568"
!EwTextFieldFormat methodsFor: 'recovered'!
formatStringError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    formatStringError := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20007c2c; bytecode file offset 0x589f8"
!EwTextFieldFormat methodsFor: 'recovered'!
initialize
    maxSize := 0.
    replaceSize := 0.
    ^self
! !

"extwid.ic method 0x20007c4c; bytecode file offset 0x58a14"
!EwTextFieldFormat methodsFor: 'recovered'!
increaseReplaceSize
    | recoveredValue0 recoveredValue1 |
    (self) increaseMaxSize.
    recoveredValue0 := replaceSize.
    recoveredValue1 := (recoveredValue0) + (1).
    replaceSize := recoveredValue1.
    ^self
! !

"extwid.ic method 0x20009b84; bytecode file offset 0x5a958"
!EwTextFieldFormat methodsFor: 'recovered'!
errorCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EwError.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) errorObject: (self).
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) errorCode: (recoveredValue4).
    ^recoveredValue1
! !

"extwid.ic method 0x20010a44; bytecode file offset 0x61814"
!EwTextFieldFormat methodsFor: 'recovered'!
formatString: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) formatStringError: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            formatMask := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) processAndVerifyMask.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatStringError.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatStringError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20011d24; bytecode file offset 0x62b00"
!EwTextFieldFormat methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPutAll: (' (').
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) formatString.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    (recoveredValue0) nextPutAll: (')').
    ^self
! !

