"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20010ab8; bytecode file offset 0x90dda4"
!CfsFileDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionCopyFileW: recoveredArg1 lpszNewFile: recoveredArg2 fFailIfExists: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20010eb8; bytecode file offset 0x90dda4"
!CfsFileDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionCreateHardLink: recoveredArg1 lpszExistingFile: recoveredArg2 lpSecurityAttributes: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ee18; bytecode file offset 0x92209c"
!CfsFileDescriptor class methodsFor: 'recovered'!
invalidFileCharacters
    ^'"*+,/:;<=>?[\]|'
! !

"ASDBase.ic method 0x200ebd4c; bytecode file offset 0x9e860c"
!CfsFileDescriptor class methodsFor: 'recovered'!
createHardLink: recoveredArg1 existingFile: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asPSZ.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := (nil) abrAsPSZ.
    recoveredValue5 := (self) platformFunctionCreateHardLink: (recoveredValue1) lpszExistingFile: (recoveredValue3) lpSecurityAttributes: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201325cc; bytecode file offset 0xa2ef68"
!CfsFileDescriptor class methodsFor: 'recovered'!
removeAll: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) remove: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2043e01c; bytecode file offset 0xd3a90c"
!CfsFileDescriptor class methodsFor: 'recovered'!
uniqueNameIn: recoveredArg1 prefix: recoveredArg2 postfix: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := '*'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := FREG.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) opendir: (recoveredStack2) pattern: (recoveredStack3) mode: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) dName.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) readdir.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) closedir.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) printStringRadix: (recoveredStack2) padTo: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20468aa4; bytecode file offset 0xd65380"
!CfsFileDescriptor class methodsFor: 'recovered'!
copy: recoveredArg1 over: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := String.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) + (1).
    recoveredValue4 := (recoveredValue3) min: (260).
    recoveredValue5 := (recoveredValue0) new: (recoveredValue4).
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := recoveredLocal3.
    recoveredValue8 := (recoveredValue7) size.
    recoveredValue9 := (recoveredValue8) + (-1).
    recoveredValue10 := recoveredArg1.
    (recoveredValue6) replaceFrom: (1) to: (recoveredValue9) with: (recoveredValue10) startingAt: (1).
    recoveredValue11 := String.
    recoveredValue12 := recoveredArg2.
    recoveredValue13 := (recoveredValue12) size.
    recoveredValue14 := (recoveredValue13) + (1).
    recoveredValue15 := (recoveredValue14) min: (260).
    recoveredValue16 := (recoveredValue11) new: (recoveredValue15).
    recoveredLocal2 := recoveredValue16.
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := (recoveredValue18) size.
    recoveredValue20 := (recoveredValue19) + (-1).
    recoveredValue21 := recoveredArg2.
    (recoveredValue17) replaceFrom: (1) to: (recoveredValue20) with: (recoveredValue21) startingAt: (1).
    recoveredValue22 := [
    | recoveredBlock71Stack0 recoveredBlock71Stack1 recoveredBlock71Stack2 recoveredBlock71Stack3 recoveredBlock71Stack4 recoveredBlock71PC recoveredBlock71Step recoveredBlock71Done recoveredBlock71Result |
    recoveredBlock71Stack0 := self.
    recoveredBlock71PC := 78.
    recoveredBlock71Done := false.
    [recoveredBlock71Done not] whileTrue: [
        recoveredBlock71Step := recoveredBlock71PC.
        recoveredBlock71Step = 78 ifTrue: [
            recoveredBlock71Stack1 := 0.
            recoveredBlock71PC := 80.
        ].
        recoveredBlock71Step = 80 ifTrue: [
            (recoveredBlock71Stack0) setLastError: (recoveredBlock71Stack1).
            recoveredBlock71PC := 82.
        ].
        recoveredBlock71Step = 82 ifTrue: [
            recoveredBlock71Stack0 := self.
            recoveredBlock71PC := 83.
        ].
        recoveredBlock71Step = 83 ifTrue: [
            recoveredBlock71Stack1 := recoveredLocal3.
            recoveredBlock71PC := 86.
        ].
        recoveredBlock71Step = 86 ifTrue: [
            recoveredBlock71Stack1 := (recoveredBlock71Stack1) nullTerminated.
            recoveredBlock71PC := 88.
        ].
        recoveredBlock71Step = 88 ifTrue: [
            recoveredBlock71Stack2 := recoveredLocal2.
            recoveredBlock71PC := 91.
        ].
        recoveredBlock71Step = 91 ifTrue: [
            recoveredBlock71Stack2 := (recoveredBlock71Stack2) nullTerminated.
            recoveredBlock71PC := 93.
        ].
        recoveredBlock71Step = 93 ifTrue: [
            recoveredBlock71Stack3 := false.
            recoveredBlock71PC := 94.
        ].
        recoveredBlock71Step = 94 ifTrue: [
            recoveredBlock71Stack0 := (recoveredBlock71Stack0) platformFunctionCopyFile: (recoveredBlock71Stack1) lpszNewFile: (recoveredBlock71Stack2) fFailIfExists: (recoveredBlock71Stack3).
            recoveredBlock71PC := 97.
        ].
        recoveredBlock71Step = 97 ifTrue: [
            (recoveredBlock71Stack0) ifTrue: [recoveredBlock71PC := 100] ifFalse: [recoveredBlock71PC := 106].
        ].
        recoveredBlock71Step = 100 ifTrue: [
            recoveredBlock71Stack0 := 0.
            recoveredBlock71PC := 102.
        ].
        recoveredBlock71Step = 102 ifTrue: [
            recoveredBlock71PC := 109.
        ].
        recoveredBlock71Step = 106 ifTrue: [
            recoveredBlock71Stack0 := self.
            recoveredBlock71PC := 107.
        ].
        recoveredBlock71Step = 107 ifTrue: [
            recoveredBlock71Stack0 := (recoveredBlock71Stack0) getLastError.
            recoveredBlock71PC := 109.
        ].
        recoveredBlock71Step = 109 ifTrue: [
            recoveredBlock71Stack1 := recoveredBlock71Stack0.
            recoveredBlock71PC := 110.
        ].
        recoveredBlock71Step = 110 ifTrue: [
            recoveredLocal1 := recoveredBlock71Stack1.
            recoveredBlock71PC := 113.
        ].
        recoveredBlock71Step = 113 ifTrue: [
            recoveredBlock71Result := recoveredBlock71Stack0.
            recoveredBlock71Done := true.
        ].
    ].
    recoveredBlock71Result
].
    (recoveredValue22) critical.
    recoveredValue23 := recoveredLocal1.
    ^recoveredValue23
! !

