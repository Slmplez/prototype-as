"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x2000017c; bytecode file offset 0x23404"
!CfsStat class methodsFor: 'recovered'!
privateSharedDiscardableDtaBuffer
    | recoveredValue0 |
    recoveredValue0 := (self) privateSharedDiscardableDta.
    ^recoveredValue0
! !

"cfsnls.ic method 0x2000021c; bytecode file offset 0x23494"
!CfsStat class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionGetLastError
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000428; bytecode file offset 0x23760"
!CfsStat class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionSetLastError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000de8; bytecode file offset 0x2401c"
!CfsStat class methodsFor: 'recovered'!
privateIsDirectory: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) isDirectory: (recoveredValue0).
    ^recoveredValue1
! !

"cfsnls.ic method 0x20001194; bytecode file offset 0x243c8"
!CfsStat class methodsFor: 'recovered'!
clearPrivateSharedDiscardableDta
    PrivateSharedDiscardableDta := nil.
    ^self
! !

"cfsnls.ic method 0x2000159c; bytecode file offset 0x247d4"
!CfsStat class methodsFor: 'recovered'!
stat: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) stat: (recoveredValue1).
    ^recoveredValue2
! !

"cfsnls.ic method 0x20002724; bytecode file offset 0x2597c"
!CfsStat class methodsFor: 'recovered'!
setLastError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) platformFunctionSetLastError: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20003380; bytecode file offset 0x265bc"
!CfsStat class methodsFor: 'recovered'!
privateIsEntry: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CfsStat.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) stat: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) isCfsError.
    recoveredValue4 := (recoveredValue3) not.
    ^recoveredValue4
! !

"cfsnls.ic method 0x200043e8; bytecode file offset 0x27658"
!CfsStat class methodsFor: 'recovered'!
getLastError
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CfsError.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) platformFunctionGetLastError.
    (recoveredValue2) platformErrno: (recoveredValue3).
    ^recoveredValue1
! !

"cfsnls.ic method 0x20005cd0; bytecode file offset 0x28f10"
!CfsStat class methodsFor: 'recovered'!
privateIsFile: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReg.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x200060c0; bytecode file offset 0x292fc"
!CfsStat class methodsFor: 'recovered'!
privateSharedDiscardableDta
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := PrivateSharedDiscardableDta.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsOSWin32FindData.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            PrivateSharedDiscardableDta := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := PrivateSharedDiscardableDta.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x2000639c; bytecode file offset 0x295e0"
!CfsStat class methodsFor: 'recovered'!
getFileAttributes: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPSZ.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFileAttributes: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 4294967295.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x20006684; bytecode file offset 0x298bc"
!CfsStat class methodsFor: 'recovered'!
isDirectory: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFileAttributes: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000bc44; bytecode file offset 0x2eea0"
!CfsStat class methodsFor: 'recovered'!
privateNoEntry: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := ENOENT.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := CfsDirectoryDescriptor.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathSeparator.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39Stack4 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 47.
        ].
        recoveredBlock39Step = 47 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 48.
        ].
        recoveredBlock39Step = 48 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) size.
            recoveredBlock39PC := 50.
        ].
        recoveredBlock39Step = 50 ifTrue: [
            recoveredBlock39Stack3 := 8.
            recoveredBlock39PC := 52.
        ].
        recoveredBlock39Step = 52 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) > (recoveredBlock39Stack3).
            recoveredBlock39PC := 53.
        ].
        recoveredBlock39Step = 53 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 56] ifFalse: [recoveredBlock39PC := 71].
        ].
        recoveredBlock39Step = 56 ifTrue: [
            recoveredBlock39PC := 57.
        ].
        recoveredBlock39Step = 57 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 58.
        ].
        recoveredBlock39Step = 58 ifTrue: [
            recoveredBlock39Stack2 := recoveredLocal1.
            recoveredBlock39PC := 61.
        ].
        recoveredBlock39Step = 61 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) errno.
            recoveredBlock39PC := 62.
        ].
        recoveredBlock39Step = 62 ifTrue: [
            recoveredBlock39Stack3 := EACCES.
            recoveredBlock39PC := 64.
        ].
        recoveredBlock39Step = 64 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) = (recoveredBlock39Stack3).
            recoveredBlock39PC := 65.
        ].
        recoveredBlock39Step = 65 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 68] ifFalse: [recoveredBlock39PC := 71].
        ].
        recoveredBlock39Step = 68 ifTrue: [
            recoveredBlock39PC := 69.
        ].
        recoveredBlock39Step = 69 ifTrue: [
            recoveredBlock39Stack1 := true.
            recoveredBlock39PC := 70.
        ].
        recoveredBlock39Step = 70 ifTrue: [
            ^recoveredBlock39Stack1
        ].
        recoveredBlock39Step = 71 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

