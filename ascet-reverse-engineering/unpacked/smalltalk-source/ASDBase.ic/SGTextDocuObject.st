"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000bfcc; bytecode file offset 0x908be4"
!SGTextDocuObject methodsFor: 'recovered'!
contents
    | recoveredValue0 |
    recoveredValue0 := (self) getCryptContents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200523c0; bytecode file offset 0x94f0e0"
!SGTextDocuObject methodsFor: 'recovered'!
getCryptContents
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) cryptContents.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredValue2 := (recoveredValue1) simpleDecrypt.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006663c; bytecode file offset 0x963428"
!SGTextDocuObject methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067454; bytecode file offset 0x9646f8"
!SGTextDocuObject methodsFor: 'recovered'!
assignedViewNames
    | recoveredValue0 |
    recoveredValue0 := assignedViewNames.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069f38; bytecode file offset 0x966bdc"
!SGTextDocuObject methodsFor: 'recovered'!
cryptContents
    | recoveredValue0 |
    recoveredValue0 := cryptContents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200aa864; bytecode file offset 0x9a7160"
!SGTextDocuObject methodsFor: 'recovered'!
setCryptContents: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredValue2 := (recoveredValue1) simpleEncrypt.
    (self) cryptContents: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bb850; bytecode file offset 0x9b823c"
!SGTextDocuObject methodsFor: 'recovered'!
contents: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setCryptContents: (recoveredValue0).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200be674; bytecode file offset 0x9bb178"
!SGTextDocuObject methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf758; bytecode file offset 0x9bc0b4"
!SGTextDocuObject methodsFor: 'recovered'!
assignedViewNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    assignedViewNames := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0ba8; bytecode file offset 0x9bdf14"
!SGTextDocuObject methodsFor: 'recovered'!
cryptContents: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cryptContents := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201d7ca4; bytecode file offset 0xad4574"
!SGTextDocuObject methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    name := 'default'.
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    assignedViewNames := recoveredValue1.
    cryptContents := ''.
    contents := 'unused'.
    ^self
! !

"ASDBase.ic method 0x203bad50; bytecode file offset 0xcb7638"
!SGTextDocuObject methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
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
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'Note'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := name.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'Text'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) contents.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) complex: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := assignedViewNames.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 |
    recoveredBlock44Value0 := recoveredArg1.
    (recoveredBlock44Value0) openComplex: ('View').
    recoveredBlock44Value1 := recoveredArg1.
    recoveredBlock44Value2 := recoveredBlock44Arg1.
    recoveredBlock44Value3 := (recoveredBlock44Value2) replaceWhitespacesBy_.
    (recoveredBlock44Value1) attr: ('name') nmToken: (recoveredBlock44Value3).
    recoveredBlock44Value4 := recoveredArg1.
    recoveredBlock44Value5 := (recoveredBlock44Value4) closeComplex.
    recoveredBlock44Value5
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

