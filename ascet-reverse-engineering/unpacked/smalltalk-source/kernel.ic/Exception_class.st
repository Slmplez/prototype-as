"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20001e70; bytecode file offset 0x4ce64"
!Exception class methodsFor: 'recovered'!
signal
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) signal.
    ^recoveredValue1
! !

"kernel.ic method 0x20002e58; bytecode file offset 0x4dd68"
!Exception class methodsFor: 'recovered'!
handles: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isKindOf: (self).
    ^recoveredValue1
! !

"kernel.ic method 0x20003074; bytecode file offset 0x4dff8"
!Exception class methodsFor: 'recovered'!
signal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) signal: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x200053cc; bytecode file offset 0x502e4"
!Exception class methodsFor: 'recovered'!
defaultName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) symbol.
    recoveredValue1 := ('Ex') , (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x200056f4; bytecode file offset 0x5065c"
!Exception class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"kernel.ic method 0x20006624; bytecode file offset 0x51550"
!Exception class methodsFor: 'recovered'!
signalWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) tag: (recoveredValue2).
    recoveredValue3 := (recoveredValue0) signal.
    ^recoveredValue3
! !

"kernel.ic method 0x20006934; bytecode file offset 0x51858"
!Exception class methodsFor: 'recovered'!
handle: recoveredArg1 do: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) exceptionalEvent.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x2000707c; bytecode file offset 0x51fbc"
!Exception class methodsFor: 'recovered'!
, recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ExceptionSet.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) , (self).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20007ad4; bytecode file offset 0x52a10"
!Exception class methodsFor: 'recovered'!
exceptionalEvent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    exceptionalEvent := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000830c; bytecode file offset 0x53228"
!Exception class methodsFor: 'recovered'!
defaultDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) defaultName.
    recoveredValue1 := ('(') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (') An exception has occurred').
    ^recoveredValue2
! !

"kernel.ic method 0x2000ba00; bytecode file offset 0x56918"
!Exception class methodsFor: 'recovered'!
reset
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28008478Arg1 | 
    | block28008478Value0 block28008478Value1 |
    block28008478Value0 := block28008478Arg1.
    block28008478Value1 := (block28008478Value0) exceptionalEvent: (nil).
    block28008478Value1
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) withAllSubclassesDo: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200167dc; bytecode file offset 0x61710"
!Exception class methodsFor: 'recovered'!
newExceptionalEvent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) exceptionalEvent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) newChild.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultDescription.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) description: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block28008f6cArg1 | 
    | block28008f6cValue0 block28008f6cValue1 |
    block28008f6cValue0 := block28008f6cArg1.
    block28008f6cValue1 := (block28008f6cValue0) defaultAction.
    block28008f6cValue1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) defaultHandler: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) resumable: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20018db4; bytecode file offset 0x63cdc"
!Exception class methodsFor: 'recovered'!
exceptionalEvent
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := exceptionalEvent.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := Exception.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            (recoveredBlock6Stack0 ~~ recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 24] ifFalse: [recoveredBlock6PC := 18].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack0 := ExAll.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack0 := SystemExceptions.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) defaultName.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack2 := [
    | recoveredBlock6Block28Value0 |
    recoveredBlock6Block28Value0 := (self) newExceptionalEvent.
    recoveredBlock6Block28Value0
].
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) at: (recoveredBlock6Stack1) ifAbsent: (recoveredBlock6Stack2).
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Stack0.
            recoveredBlock6PC := 40.
        ].
        recoveredBlock6Step = 40 ifTrue: [
            exceptionalEvent := recoveredBlock6Stack1.
            recoveredBlock6PC := 42.
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

