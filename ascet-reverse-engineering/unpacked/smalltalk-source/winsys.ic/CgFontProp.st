"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2000137c; bytecode file offset 0x7d6c0"
!CgFontProp methodsFor: 'recovered'!
asInteger
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := card32.
    recoveredValue1 := (recoveredValue0) asInteger.
    ^recoveredValue1
! !

"winsys.ic method 0x2000140c; bytecode file offset 0x7d6c0"
!CgFontProp methodsFor: 'recovered'!
asString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := card32.
    recoveredValue1 := (recoveredValue0) asString.
    ^recoveredValue1
! !

"winsys.ic method 0x20001448; bytecode file offset 0x7d6c0"
!CgFontProp methodsFor: 'recovered'!
card32
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := card32.
    recoveredValue1 := (recoveredValue0) asInteger.
    ^recoveredValue1
! !

"winsys.ic method 0x20002940; bytecode file offset 0x7ed00"
!CgFontProp methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"winsys.ic method 0x2000712c; bytecode file offset 0x8346c"
!CgFontProp methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007454; bytecode file offset 0x836b4"
!CgFontProp methodsFor: 'recovered'!
card32: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    card32 := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2002402c; bytecode file offset 0xa0210"
!CgFontProp methodsFor: 'recovered'!
nameString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CgConstants.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) key.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack3 := 'XA'.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack4 := 1.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) indexOfSubCollection: (recoveredBlock6Stack3) startingAt: (recoveredBlock6Stack4).
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack3 := 1.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 28] ifFalse: [recoveredBlock6PC := 50].
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) value.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack3 := name.
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 38] ifFalse: [recoveredBlock6PC := 50].
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 40.
        ].
        recoveredBlock6Step = 40 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) key.
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredBlock6Stack2 := 3.
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) key.
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) size.
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) copyFrom: (recoveredBlock6Stack2) to: (recoveredBlock6Stack3).
            recoveredBlock6PC := 49.
        ].
        recoveredBlock6Step = 49 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 50 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) associationsDo: (recoveredValue1).
    recoveredValue2 := name.
    recoveredValue3 := (recoveredValue2) asString.
    ^recoveredValue3
! !

