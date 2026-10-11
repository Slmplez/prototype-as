"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x2000024c; bytecode file offset 0x23494"
!CfsFileDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionGetLastError
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200003ac; bytecode file offset 0x235ec"
!CfsFileDescriptor class methodsFor: 'recovered'!
supportsShareMode: recoveredArg1
    ^true
! !

"cfsnls.ic method 0x20000458; bytecode file offset 0x23760"
!CfsFileDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionSetLastError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200004c8; bytecode file offset 0x23760"
!CfsFileDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionsetHandleCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200004f8; bytecode file offset 0x23760"
!CfsFileDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionDeleteFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200006d8; bytecode file offset 0x23980"
!CfsFileDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionSetFileAttributes: recoveredArg1 dwFileAttributes: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200006e8; bytecode file offset 0x23980"
!CfsFileDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionUtime: recoveredArg1 times: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000708; bytecode file offset 0x23980"
!CfsFileDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionMoveFile: recoveredArg1 lpszNew: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200007dc; bytecode file offset 0x23a24"
!CfsFileDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionCopyFile: recoveredArg1 lpszNewFile: recoveredArg2 fFailIfExists: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200008f8; bytecode file offset 0x23b30"
!CfsFileDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionCreateFile: recoveredArg1 fdwAccess: recoveredArg2 fdwShareMode: recoveredArg3 lpsa: recoveredArg4 fdwCreate: recoveredArg5 fdwAttrsAndFlags: recoveredArg6 hTemplateFile: recoveredArg7
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200009d0; bytecode file offset 0x23c4c"
!CfsFileDescriptor class methodsFor: 'recovered'!
fileDescriptors
    | recoveredValue0 |
    recoveredValue0 := FileDescriptors.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200026d8; bytecode file offset 0x2590c"
!CfsFileDescriptor class methodsFor: 'recovered'!
supportsLockType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := FMDLOCK.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"cfsnls.ic method 0x2000273c; bytecode file offset 0x2597c"
!CfsFileDescriptor class methodsFor: 'recovered'!
setLastError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) platformFunctionSetLastError: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x200028c4; bytecode file offset 0x25b00"
!CfsFileDescriptor class methodsFor: 'recovered'!
initializeFileDescriptors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    FileDescriptors := recoveredValue1.
    ^self
! !

"cfsnls.ic method 0x20002e0c; bytecode file offset 0x26044"
!CfsFileDescriptor class methodsFor: 'recovered'!
openReadOnly: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ORDONLY.
    recoveredValue2 := (self) open: (recoveredValue0) oflag: (recoveredValue1).
    ^recoveredValue2
! !

"cfsnls.ic method 0x20003638; bytecode file offset 0x26874"
!CfsFileDescriptor class methodsFor: 'recovered'!
touch: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := OSPtr.
    recoveredValue2 := (recoveredValue1) null.
    recoveredValue3 := (self) utime: (recoveredValue0) times: (recoveredValue2).
    ^recoveredValue3
! !

"cfsnls.ic method 0x200037c4; bytecode file offset 0x269fc"
!CfsFileDescriptor class methodsFor: 'recovered'!
touch: recoveredArg1 time: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) tm: (recoveredValue1).
    recoveredValue3 := (self) utime: (recoveredValue0) times: (recoveredValue2).
    ^recoveredValue3
! !

"cfsnls.ic method 0x2000430c; bytecode file offset 0x27544"
!CfsFileDescriptor class methodsFor: 'recovered'!
open: recoveredArg1 oflag: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := ODENYNONE.
    recoveredValue3 := (self) open: (recoveredValue0) oflag: (recoveredValue1) share: (recoveredValue2).
    ^recoveredValue3
! !

"cfsnls.ic method 0x20004400; bytecode file offset 0x27658"
!CfsFileDescriptor class methodsFor: 'recovered'!
getLastError
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CfsError.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) platformFunctionGetLastError.
    (recoveredValue2) platformErrno: (recoveredValue3).
    ^recoveredValue1
! !

"cfsnls.ic method 0x20005400; bytecode file offset 0x28638"
!CfsFileDescriptor class methodsFor: 'recovered'!
supportsCmd: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := FSETFD.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := FGETFD.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x20005474; bytecode file offset 0x286b4"
!CfsFileDescriptor class methodsFor: 'recovered'!
on: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) fileDescriptor: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) atEnd: (false).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) isAppend: (false).
    ^recoveredValue0
! !

"cfsnls.ic method 0x200058d8; bytecode file offset 0x28b18"
!CfsFileDescriptor class methodsFor: 'recovered'!
validFileDescriptorClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := CfsOSHandle.
    ^recoveredBlock8Value0
].
    recoveredValue2 := (recoveredValue0) classAt: ('OSHandle') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"cfsnls.ic method 0x20005ef8; bytecode file offset 0x29138"
!CfsFileDescriptor class methodsFor: 'recovered'!
createFile: recoveredArg1 fdwAccess: recoveredArg2 fdwShareMode: recoveredArg3 lpsa: recoveredArg4 fdwCreate: recoveredArg5 fdwAttrsAndFlags: recoveredArg6 hTemplateFile: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) validFileDescriptorClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) nullTerminated.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := recoveredArg6.
    recoveredValue8 := recoveredArg7.
    recoveredValue9 := (self) platformFunctionCreateFile: (recoveredValue2) fdwAccess: (recoveredValue3) fdwShareMode: (recoveredValue4) lpsa: (recoveredValue5) fdwCreate: (recoveredValue6) fdwAttrsAndFlags: (recoveredValue7) hTemplateFile: (recoveredValue8).
    recoveredValue10 := (recoveredValue0) immediate: (recoveredValue9).
    ^recoveredValue10
! !

"cfsnls.ic method 0x20007248; bytecode file offset 0x2a490"
!CfsFileDescriptor class methodsFor: 'recovered'!
tm: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OSUInt32.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := CfsOSTmPtr.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) fromDateAndTime: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) mktime.
    recoveredValue7 := recoveredValue6.
    recoveredLocal1 := recoveredValue7.
    (recoveredValue2) at: (0) put: (recoveredValue6).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) at: (1) put: (recoveredValue9).
    ^recoveredValue1
! !

"cfsnls.ic method 0x2000762c; bytecode file offset 0x2a868"
!CfsFileDescriptor class methodsFor: 'recovered'!
supportsAccessMode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := SIRUSR.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := SIWUSR.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := SIRUSR.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := SIWUSR.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitOr: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x200077f4; bytecode file offset 0x2aa40"
!CfsFileDescriptor class methodsFor: 'recovered'!
encodePathName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDBLocale.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDBString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := EsLeadEncodedBytes.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) nullTerminated.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromString: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) nullTerminated.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x200084f0; bytecode file offset 0x2b72c"
!CfsFileDescriptor class methodsFor: 'recovered'!
closeFile: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) closeHandle.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 18] ifFalse: [recoveredBlock4PC := 24].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := 0.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) getLastError.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack2.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"cfsnls.ic method 0x200090ac; bytecode file offset 0x2c300"
!CfsFileDescriptor class methodsFor: 'recovered'!
decodePathName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDBLocale.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := EsLeadEncodedBytes.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEncoded: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := EsLeadEncodedBytes.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) replaceFrom: (recoveredStack3) to: (recoveredStack4) with: (recoveredStack5) startingAt: (recoveredStack6).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x2000d1d4; bytecode file offset 0x30434"
!CfsFileDescriptor class methodsFor: 'recovered'!
closeDiscardedFileDescriptors
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileDescriptors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := (self) fileDescriptors.
    recoveredBlock12Value1 := (recoveredBlock12Value0) copy.
    recoveredBlock12Value2 := recoveredBlock12Value1.
    recoveredLocal1 := recoveredBlock12Value2.
    recoveredBlock12Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) critical.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstances.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 |
    recoveredBlock31Value0 := recoveredLocal1.
    recoveredBlock31Value1 := recoveredBlock31Arg1.
    recoveredBlock31Value2 := (recoveredBlock31Value1) fileDescriptor.
    recoveredBlock31Value3 := [].
    recoveredBlock31Value4 := (recoveredBlock31Value0) remove: (recoveredBlock31Value2) ifAbsent: (recoveredBlock31Value3).
    recoveredBlock31Value4
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 |
    recoveredBlock54Value0 := [
    | recoveredBlock54Block60Value0 recoveredBlock54Block60Value1 recoveredBlock54Block60Value2 recoveredBlock54Block60Value3 recoveredBlock54Block60Value4 recoveredBlock54Block60Value5 recoveredBlock54Block60Value6 |
    recoveredBlock54Block60Value0 := CfsFileDescriptor.
    recoveredBlock54Block60Value1 := recoveredBlock54Arg1.
    recoveredBlock54Block60Value2 := (recoveredBlock54Block60Value0) on: (recoveredBlock54Block60Value1).
    (recoveredBlock54Block60Value2) close.
    recoveredBlock54Block60Value3 := (self) fileDescriptors.
    recoveredBlock54Block60Value4 := recoveredBlock54Arg1.
    recoveredBlock54Block60Value5 := [].
    recoveredBlock54Block60Value6 := (recoveredBlock54Block60Value3) remove: (recoveredBlock54Block60Value4) ifAbsent: (recoveredBlock54Block60Value5).
    recoveredBlock54Block60Value6
].
    recoveredBlock54Value1 := (recoveredBlock54Value0) critical.
    recoveredBlock54Value1
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000e1bc; bytecode file offset 0x31414"
!CfsFileDescriptor class methodsFor: 'recovered'!
copy: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := ('PR') = ('1EUSVRC').
    recoveredValue1 := String.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue3) + (1).
    recoveredValue5 := (recoveredValue1) new: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue5) replaceFrom: (1) to: (recoveredValue7) with: (recoveredValue8) startingAt: (1).
    recoveredLocal3 := recoveredValue9.
    recoveredValue10 := String.
    recoveredValue11 := recoveredArg2.
    recoveredValue12 := (recoveredValue11) size.
    recoveredValue13 := (recoveredValue12) + (1).
    recoveredValue14 := (recoveredValue10) new: (recoveredValue13).
    recoveredValue15 := recoveredArg2.
    recoveredValue16 := (recoveredValue15) size.
    recoveredValue17 := recoveredArg2.
    recoveredValue18 := (recoveredValue14) replaceFrom: (1) to: (recoveredValue16) with: (recoveredValue17) startingAt: (1).
    recoveredLocal2 := recoveredValue18.
    recoveredValue19 := [
    | recoveredBlock62Stack0 recoveredBlock62Stack1 recoveredBlock62Stack2 recoveredBlock62Stack3 recoveredBlock62Stack4 recoveredBlock62PC recoveredBlock62Step recoveredBlock62Done recoveredBlock62Result |
    recoveredBlock62Stack0 := self.
    recoveredBlock62PC := 68.
    recoveredBlock62Done := false.
    [recoveredBlock62Done not] whileTrue: [
        recoveredBlock62Step := recoveredBlock62PC.
        recoveredBlock62Step = 68 ifTrue: [
            recoveredBlock62Stack1 := 0.
            recoveredBlock62PC := 70.
        ].
        recoveredBlock62Step = 70 ifTrue: [
            (recoveredBlock62Stack0) setLastError: (recoveredBlock62Stack1).
            recoveredBlock62PC := 72.
        ].
        recoveredBlock62Step = 72 ifTrue: [
            recoveredBlock62Stack0 := self.
            recoveredBlock62PC := 73.
        ].
        recoveredBlock62Step = 73 ifTrue: [
            recoveredBlock62Stack1 := recoveredLocal3.
            recoveredBlock62PC := 76.
        ].
        recoveredBlock62Step = 76 ifTrue: [
            recoveredBlock62Stack2 := recoveredLocal2.
            recoveredBlock62PC := 79.
        ].
        recoveredBlock62Step = 79 ifTrue: [
            recoveredBlock62Stack3 := true.
            recoveredBlock62PC := 80.
        ].
        recoveredBlock62Step = 80 ifTrue: [
            recoveredBlock62Stack0 := (recoveredBlock62Stack0) platformFunctionCopyFile: (recoveredBlock62Stack1) lpszNewFile: (recoveredBlock62Stack2) fFailIfExists: (recoveredBlock62Stack3).
            recoveredBlock62PC := 83.
        ].
        recoveredBlock62Step = 83 ifTrue: [
            (recoveredBlock62Stack0) ifTrue: [recoveredBlock62PC := 86] ifFalse: [recoveredBlock62PC := 92].
        ].
        recoveredBlock62Step = 86 ifTrue: [
            recoveredBlock62Stack0 := 0.
            recoveredBlock62PC := 88.
        ].
        recoveredBlock62Step = 88 ifTrue: [
            recoveredBlock62PC := 95.
        ].
        recoveredBlock62Step = 92 ifTrue: [
            recoveredBlock62Stack0 := self.
            recoveredBlock62PC := 93.
        ].
        recoveredBlock62Step = 93 ifTrue: [
            recoveredBlock62Stack0 := (recoveredBlock62Stack0) getLastError.
            recoveredBlock62PC := 95.
        ].
        recoveredBlock62Step = 95 ifTrue: [
            recoveredBlock62Stack1 := recoveredBlock62Stack0.
            recoveredBlock62PC := 96.
        ].
        recoveredBlock62Step = 96 ifTrue: [
            recoveredLocal1 := recoveredBlock62Stack1.
            recoveredBlock62PC := 99.
        ].
        recoveredBlock62Step = 99 ifTrue: [
            recoveredBlock62Result := recoveredBlock62Stack0.
            recoveredBlock62Done := true.
        ].
    ].
    recoveredBlock62Result
].
    (recoveredValue19) critical.
    recoveredValue20 := recoveredLocal1.
    ^recoveredValue20
! !

"cfsnls.ic method 0x2000f424; bytecode file offset 0x3269c"
!CfsFileDescriptor class methodsFor: 'recovered'!
chmod: recoveredArg1 mode: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsAccessMode: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := CfsError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := EINVAL.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) errno: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := SIRUSR.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) nullTerminated.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := FileAttributeReadonly.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) platformFunctionSetFileAttributes: (recoveredStack1) dwFileAttributes: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) nullTerminated.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := FileAttributeNormal.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) platformFunctionSetFileAttributes: (recoveredStack1) dwFileAttributes: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastError.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) platformErrno.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateIsEntry: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := ENOENT.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 123.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := 19.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 117].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := EROFS.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := EIO.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20011aec; bytecode file offset 0x34d50"
!CfsFileDescriptor class methodsFor: 'recovered'!
utime: recoveredArg1 times: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := 0.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            (recoveredBlock4Stack0) setLastError: (recoveredBlock4Stack1).
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack3 := recoveredArg1.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) encodePathName: (recoveredBlock4Stack3).
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack3 := recoveredArg2.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) platformFunctionUtime: (recoveredBlock4Stack2) times: (recoveredBlock4Stack3).
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack2.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack2 := -1.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            (recoveredBlock4Stack1 ~~ recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 43] ifFalse: [recoveredBlock4PC := 36].
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) getLastError.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformErrno.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := ENOENT.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := ENFILE.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := EACCES.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 19.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := EROFS.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := 123.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 159] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := EACCES.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := 161.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 179] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := ENOENT.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := EIO.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x20012c4c; bytecode file offset 0x35ee0"
!CfsFileDescriptor class methodsFor: 'recovered'!
cfsCopy: recoveredArg1 new: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDir.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := CfsError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := EISDIR.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := ORDONLY.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := ODENYNONE.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1) oflag: (recoveredStack2) share: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := OWRONLY.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := OCREAT.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := OEXCL.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitOr: (recoveredStack4).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitOr: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := ODENYNONE.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1) oflag: (recoveredStack2) share: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) errno.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := EACCES.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) stat: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := EEXIST.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) errno: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := 8192.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := ByteArray.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 8192.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) read: (recoveredStack1) startingAt: (recoveredStack2) nbyte: (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredPC := 195.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) write: (recoveredStack1) startingAt: (recoveredStack2) nbyte: (recoveredStack3).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredPC := 195.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 195] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := CfsError.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := ENOSPC.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 199].
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 219].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20013f68; bytecode file offset 0x371fc"
!CfsFileDescriptor class methodsFor: 'recovered'!
remove: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1EUSVRC'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) encodePathName: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack1 := recoveredLocal4.
            recoveredBlock47PC := 57.
        ].
        recoveredBlock47Step = 57 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) platformFunctionDeleteFile: (recoveredBlock47Stack1).
            recoveredBlock47PC := 59.
        ].
        recoveredBlock47Step = 59 ifTrue: [
            (recoveredBlock47Stack0) ifTrue: [recoveredBlock47PC := 62] ifFalse: [recoveredBlock47PC := 68].
        ].
        recoveredBlock47Step = 62 ifTrue: [
            recoveredBlock47Stack0 := 0.
            recoveredBlock47PC := 64.
        ].
        recoveredBlock47Step = 64 ifTrue: [
            recoveredBlock47PC := 71.
        ].
        recoveredBlock47Step = 68 ifTrue: [
            recoveredBlock47Stack0 := self.
            recoveredBlock47PC := 69.
        ].
        recoveredBlock47Step = 69 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) getLastError.
            recoveredBlock47PC := 71.
        ].
        recoveredBlock47Step = 71 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Stack0.
            recoveredBlock47PC := 72.
        ].
        recoveredBlock47Step = 72 ifTrue: [
            recoveredLocal2 := recoveredBlock47Stack1.
            recoveredBlock47PC := 75.
        ].
        recoveredBlock47Step = 75 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack0.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 304].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformErrno.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateIsDirectory: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := EISDIR.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := ENOENT.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateIsDirectory: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 159].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := EISDIR.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := EACCES.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := 123.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 197].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := EACCES.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := 19.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 215].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := EROFS.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := 145.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 235].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack3 := EEXIST.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := 161.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 255].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := ENOENT.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformErrorClass.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 266] ifFalse: [recoveredPC := 275].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack3 := EPERM.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformErrorClass.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 295].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack3 := EINVAL.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack3 := EIO.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x20014b90; bytecode file offset 0x37e58"
!CfsFileDescriptor class methodsFor: 'recovered'!
extendedOpenCreate: recoveredArg1 oflag: recoveredArg2 share: recoveredArg3 attributes: recoveredArg4 action: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1EUSVRC'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 15.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := ORDONLY.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := GenericRead.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := OWRONLY.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := GenericWrite.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := GenericRead.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := GenericWrite.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := OCREAT.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := OCREAT.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := OpenAlways.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := OEXCL.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := OEXCL.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := CreateNew.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredPC := 133.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := OpenExisting.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := 240.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := ODENYRDWR.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredPC := 205.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := ODENYWR.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := FileShareRead.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredPC := 205.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := ODENYRD.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := FileShareWrite.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredPC := 205.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := FileShareRead.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := FileShareWrite.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := CfsOSSecurityAttributes.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack2) lpSecurityDescriptor: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack2) bInheritHandle: (recoveredStack3).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := CfsOSSecurityAttributes.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := (recoveredStack2) fixedSize.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack1) nLength: (recoveredStack2).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock227Stack0 recoveredBlock227Stack1 recoveredBlock227Stack2 recoveredBlock227Stack3 recoveredBlock227Stack4 recoveredBlock227Stack5 recoveredBlock227Stack6 recoveredBlock227Stack7 recoveredBlock227Stack8 recoveredBlock227PC recoveredBlock227Step recoveredBlock227Done recoveredBlock227Result |
    recoveredBlock227Stack0 := self.
    recoveredBlock227PC := 234.
    recoveredBlock227Done := false.
    [recoveredBlock227Done not] whileTrue: [
        recoveredBlock227Step := recoveredBlock227PC.
        recoveredBlock227Step = 234 ifTrue: [
            recoveredBlock227Stack1 := recoveredLocal2.
            recoveredBlock227PC := 237.
        ].
        recoveredBlock227Step = 237 ifTrue: [
            recoveredBlock227Stack2 := recoveredLocal5.
            recoveredBlock227PC := 240.
        ].
        recoveredBlock227Step = 240 ifTrue: [
            recoveredBlock227Stack3 := recoveredLocal4.
            recoveredBlock227PC := 243.
        ].
        recoveredBlock227Step = 243 ifTrue: [
            recoveredBlock227Stack4 := recoveredLocal1.
            recoveredBlock227PC := 246.
        ].
        recoveredBlock227Step = 246 ifTrue: [
            recoveredBlock227Stack5 := recoveredLocal3.
            recoveredBlock227PC := 249.
        ].
        recoveredBlock227Step = 249 ifTrue: [
            recoveredBlock227Stack6 := FileAttributeNormal.
            recoveredBlock227PC := 251.
        ].
        recoveredBlock227Step = 251 ifTrue: [
            recoveredBlock227Stack7 := nil.
            recoveredBlock227PC := 252.
        ].
        recoveredBlock227Step = 252 ifTrue: [
            recoveredBlock227Stack0 := (recoveredBlock227Stack0) createFile: (recoveredBlock227Stack1) fdwAccess: (recoveredBlock227Stack2) fdwShareMode: (recoveredBlock227Stack3) lpsa: (recoveredBlock227Stack4) fdwCreate: (recoveredBlock227Stack5) fdwAttrsAndFlags: (recoveredBlock227Stack6) hTemplateFile: (recoveredBlock227Stack7).
            recoveredBlock227PC := 255.
        ].
        recoveredBlock227Step = 255 ifTrue: [
            recoveredLocal6 := recoveredBlock227Stack0.
            recoveredBlock227PC := 258.
        ].
        recoveredBlock227Step = 258 ifTrue: [
            recoveredBlock227Stack0 := recoveredLocal6.
            recoveredBlock227PC := 261.
        ].
        recoveredBlock227Step = 261 ifTrue: [
            recoveredBlock227Stack0 := (recoveredBlock227Stack0) asInteger.
            recoveredBlock227PC := 263.
        ].
        recoveredBlock227Step = 263 ifTrue: [
            recoveredBlock227Stack1 := InvalidHandleValue.
            recoveredBlock227PC := 265.
        ].
        recoveredBlock227Step = 265 ifTrue: [
            recoveredBlock227Stack0 := (recoveredBlock227Stack0) = (recoveredBlock227Stack1).
            recoveredBlock227PC := 266.
        ].
        recoveredBlock227Step = 266 ifTrue: [
            (recoveredBlock227Stack0) ifTrue: [recoveredBlock227PC := 270] ifFalse: [recoveredBlock227PC := 280].
        ].
        recoveredBlock227Step = 270 ifTrue: [
            recoveredBlock227Stack0 := self.
            recoveredBlock227PC := 271.
        ].
        recoveredBlock227Step = 271 ifTrue: [
            recoveredBlock227Stack0 := (recoveredBlock227Stack0) getLastError.
            recoveredBlock227PC := 273.
        ].
        recoveredBlock227Step = 273 ifTrue: [
            recoveredBlock227Stack1 := recoveredBlock227Stack0.
            recoveredBlock227PC := 274.
        ].
        recoveredBlock227Step = 274 ifTrue: [
            recoveredLocal6 := recoveredBlock227Stack1.
            recoveredBlock227PC := 277.
        ].
        recoveredBlock227Step = 277 ifTrue: [
            recoveredBlock227PC := 346.
        ].
        recoveredBlock227Step = 280 ifTrue: [
            recoveredBlock227Stack0 := nil.
            recoveredBlock227PC := 281.
        ].
        recoveredBlock227Step = 281 ifTrue: [
            recoveredBlock227Stack1 := recoveredArg2.
            recoveredBlock227PC := 284.
        ].
        recoveredBlock227Step = 284 ifTrue: [
            recoveredBlock227Stack2 := OTRUNC.
            recoveredBlock227PC := 286.
        ].
        recoveredBlock227Step = 286 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) bitAnd: (recoveredBlock227Stack2).
            recoveredBlock227PC := 288.
        ].
        recoveredBlock227Step = 288 ifTrue: [
            recoveredBlock227Stack2 := OTRUNC.
            recoveredBlock227PC := 290.
        ].
        recoveredBlock227Step = 290 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) = (recoveredBlock227Stack2).
            recoveredBlock227PC := 291.
        ].
        recoveredBlock227Step = 291 ifTrue: [
            (recoveredBlock227Stack1) ifTrue: [recoveredBlock227PC := 294] ifFalse: [recoveredBlock227PC := 346].
        ].
        recoveredBlock227Step = 294 ifTrue: [
            recoveredBlock227PC := 295.
        ].
        recoveredBlock227Step = 295 ifTrue: [
            recoveredBlock227Stack0 := self.
            recoveredBlock227PC := 296.
        ].
        recoveredBlock227Step = 296 ifTrue: [
            recoveredBlock227Stack1 := recoveredLocal6.
            recoveredBlock227PC := 299.
        ].
        recoveredBlock227Step = 299 ifTrue: [
            (recoveredBlock227Stack0) closeFile: (recoveredBlock227Stack1).
            recoveredBlock227PC := 301.
        ].
        recoveredBlock227Step = 301 ifTrue: [
            recoveredBlock227Stack0 := self.
            recoveredBlock227PC := 302.
        ].
        recoveredBlock227Step = 302 ifTrue: [
            recoveredBlock227Stack0 := (recoveredBlock227Stack0) validFileDescriptorClass.
            recoveredBlock227PC := 304.
        ].
        recoveredBlock227Step = 304 ifTrue: [
            recoveredBlock227Stack1 := recoveredArg1.
            recoveredBlock227PC := 307.
        ].
        recoveredBlock227Step = 307 ifTrue: [
            recoveredBlock227Stack2 := recoveredLocal5.
            recoveredBlock227PC := 310.
        ].
        recoveredBlock227Step = 310 ifTrue: [
            recoveredBlock227Stack3 := recoveredLocal4.
            recoveredBlock227PC := 313.
        ].
        recoveredBlock227Step = 313 ifTrue: [
            recoveredBlock227Stack4 := nil.
            recoveredBlock227PC := 314.
        ].
        recoveredBlock227Step = 314 ifTrue: [
            recoveredBlock227Stack5 := TruncateExisting.
            recoveredBlock227PC := 316.
        ].
        recoveredBlock227Step = 316 ifTrue: [
            recoveredBlock227Stack6 := FileAttributeNormal.
            recoveredBlock227PC := 318.
        ].
        recoveredBlock227Step = 318 ifTrue: [
            recoveredBlock227Stack7 := nil.
            recoveredBlock227PC := 319.
        ].
        recoveredBlock227Step = 319 ifTrue: [
            recoveredBlock227Stack0 := (recoveredBlock227Stack0) createFile: (recoveredBlock227Stack1) fdwAccess: (recoveredBlock227Stack2) fdwShareMode: (recoveredBlock227Stack3) lpsa: (recoveredBlock227Stack4) fdwCreate: (recoveredBlock227Stack5) fdwAttrsAndFlags: (recoveredBlock227Stack6) hTemplateFile: (recoveredBlock227Stack7).
            recoveredBlock227PC := 322.
        ].
        recoveredBlock227Step = 322 ifTrue: [
            recoveredLocal6 := recoveredBlock227Stack0.
            recoveredBlock227PC := 325.
        ].
        recoveredBlock227Step = 325 ifTrue: [
            recoveredBlock227Stack0 := nil.
            recoveredBlock227PC := 326.
        ].
        recoveredBlock227Step = 326 ifTrue: [
            recoveredBlock227Stack1 := recoveredLocal6.
            recoveredBlock227PC := 329.
        ].
        recoveredBlock227Step = 329 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) asInteger.
            recoveredBlock227PC := 331.
        ].
        recoveredBlock227Step = 331 ifTrue: [
            recoveredBlock227Stack2 := InvalidHandleValue.
            recoveredBlock227PC := 333.
        ].
        recoveredBlock227Step = 333 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) = (recoveredBlock227Stack2).
            recoveredBlock227PC := 334.
        ].
        recoveredBlock227Step = 334 ifTrue: [
            (recoveredBlock227Stack1) ifTrue: [recoveredBlock227PC := 338] ifFalse: [recoveredBlock227PC := 346].
        ].
        recoveredBlock227Step = 338 ifTrue: [
            recoveredBlock227PC := 339.
        ].
        recoveredBlock227Step = 339 ifTrue: [
            recoveredBlock227Stack0 := self.
            recoveredBlock227PC := 340.
        ].
        recoveredBlock227Step = 340 ifTrue: [
            recoveredBlock227Stack0 := (recoveredBlock227Stack0) getLastError.
            recoveredBlock227PC := 342.
        ].
        recoveredBlock227Step = 342 ifTrue: [
            recoveredBlock227Stack1 := recoveredBlock227Stack0.
            recoveredBlock227PC := 343.
        ].
        recoveredBlock227Step = 343 ifTrue: [
            recoveredLocal6 := recoveredBlock227Stack1.
            recoveredBlock227PC := 346.
        ].
        recoveredBlock227Step = 346 ifTrue: [
            recoveredBlock227Result := recoveredBlock227Stack0.
            recoveredBlock227Done := true.
        ].
    ].
    recoveredBlock227Result
].
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x20014d94; bytecode file offset 0x3801c"
!CfsFileDescriptor class methodsFor: 'recovered'!
copy: recoveredArg1 new: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) encodePathName: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := CfsFileDescriptor.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) encodePathName: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 352].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) platformErrno.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateIsDirectory: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := EISDIR.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := ENOENT.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 21.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal2.
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
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateIsDirectory: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := EEXIST.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateIsFile: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := EEXIST.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateNoEntry: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 135].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := ENOENT.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) stat: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 165].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) errno.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := EACCES.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 165].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := EISDIR.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := 19.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 187].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := EROFS.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := 33.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 217].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := EBUSY.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := 80.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 233].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := EEXIST.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := 87.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 266].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateNoEntry: (recoveredStack1).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 252] ifFalse: [recoveredPC := 259].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := ENOENT.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := 123.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 281].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := 161.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 297].
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := ENOENT.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := 183.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 313].
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := EEXIST.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := (recoveredStack0) platformErrorClass.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 322] ifFalse: [recoveredPC := 329].
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := EPERM.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := (recoveredStack0) platformErrorClass.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 338] ifFalse: [recoveredPC := 345].
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := EINVAL.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack2 := EIO.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20015940; bytecode file offset 0x38bf4"
!CfsFileDescriptor class methodsFor: 'recovered'!
rename: recoveredArg1 new: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1EUSVRC'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) encodePathName: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) encodePathName: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock84Stack0 recoveredBlock84Stack1 recoveredBlock84Stack2 recoveredBlock84Stack3 recoveredBlock84PC recoveredBlock84Step recoveredBlock84Done recoveredBlock84Result |
    recoveredBlock84Stack0 := self.
    recoveredBlock84PC := 90.
    recoveredBlock84Done := false.
    [recoveredBlock84Done not] whileTrue: [
        recoveredBlock84Step := recoveredBlock84PC.
        recoveredBlock84Step = 90 ifTrue: [
            recoveredBlock84Stack1 := 0.
            recoveredBlock84PC := 92.
        ].
        recoveredBlock84Step = 92 ifTrue: [
            (recoveredBlock84Stack0) setLastError: (recoveredBlock84Stack1).
            recoveredBlock84PC := 94.
        ].
        recoveredBlock84Step = 94 ifTrue: [
            recoveredBlock84Stack0 := self.
            recoveredBlock84PC := 95.
        ].
        recoveredBlock84Step = 95 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal6.
            recoveredBlock84PC := 98.
        ].
        recoveredBlock84Step = 98 ifTrue: [
            recoveredBlock84Stack2 := recoveredLocal5.
            recoveredBlock84PC := 101.
        ].
        recoveredBlock84Step = 101 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) platformFunctionMoveFile: (recoveredBlock84Stack1) lpszNew: (recoveredBlock84Stack2).
            recoveredBlock84PC := 103.
        ].
        recoveredBlock84Step = 103 ifTrue: [
            (recoveredBlock84Stack0) ifTrue: [recoveredBlock84PC := 106] ifFalse: [recoveredBlock84PC := 112].
        ].
        recoveredBlock84Step = 106 ifTrue: [
            recoveredBlock84Stack0 := 0.
            recoveredBlock84PC := 108.
        ].
        recoveredBlock84Step = 108 ifTrue: [
            recoveredBlock84PC := 115.
        ].
        recoveredBlock84Step = 112 ifTrue: [
            recoveredBlock84Stack0 := self.
            recoveredBlock84PC := 113.
        ].
        recoveredBlock84Step = 113 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) getLastError.
            recoveredBlock84PC := 115.
        ].
        recoveredBlock84Step = 115 ifTrue: [
            recoveredBlock84Stack1 := recoveredBlock84Stack0.
            recoveredBlock84PC := 116.
        ].
        recoveredBlock84Step = 116 ifTrue: [
            recoveredLocal4 := recoveredBlock84Stack1.
            recoveredBlock84PC := 119.
        ].
        recoveredBlock84Step = 119 ifTrue: [
            recoveredBlock84Result := recoveredBlock84Stack0.
            recoveredBlock84Done := true.
        ].
    ].
    recoveredBlock84Result
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 684].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformErrno.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 292].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := ENOENT.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := (recoveredStack3) errno.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 227] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := EEXIST.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 257].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 257].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack3 := EACCES.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 283] ifFalse: [recoveredPC := 266].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDir.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 283].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := EISDIR.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack3 := EXDEV.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 364].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateIsEntry: (recoveredStack2).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 314].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateIsEntry: (recoveredStack2).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 335].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack3 := ENOENT.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateIsEntry: (recoveredStack2).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 346] ifFalse: [recoveredPC := 355].
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack3 := EEXIST.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack3 := EXDEV.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 394] ifFalse: [recoveredPC := 374].
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 394] ifFalse: [recoveredPC := 384].
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack2 := 87.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 394] ifFalse: [recoveredPC := 472].
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateIsEntry: (recoveredStack2).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 404] ifFalse: [recoveredPC := 413].
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack3 := EEXIST.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateIsDirectory: (recoveredStack2).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 424] ifFalse: [recoveredPC := 433].
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack3 := EISDIR.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack2 := 87.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 444] ifFalse: [recoveredPC := 463].
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateNoEntry: (recoveredStack2).
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 454] ifFalse: [recoveredPC := 463].
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack3 := ENOENT.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack3 := EACCES.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack2 := 17.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 492] ifFalse: [recoveredPC := 482].
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack2 := 18.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 492] ifFalse: [recoveredPC := 520].
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateIsDirectory: (recoveredStack2).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 502] ifFalse: [recoveredPC := 511].
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack3 := EISDIR.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack3 := EXDEV.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack2 := 19.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 530] ifFalse: [recoveredPC := 539].
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack3 := EROFS.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 568] ifFalse: [recoveredPC := 548].
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 568] ifFalse: [recoveredPC := 558].
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack2 := 33.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 568] ifFalse: [recoveredPC := 577].
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack3 := EBUSY.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack2 := 123.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 588] ifFalse: [recoveredPC := 597].
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack3 := EACCES.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack2 := 161.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 608] ifFalse: [recoveredPC := 616].
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack2 := ENOENT.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack2 := 183.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 626] ifFalse: [recoveredPC := 635].
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack3 := EEXIST.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformErrorClass.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 646] ifFalse: [recoveredPC := 655].
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack3 := EPERM.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformErrorClass.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 666] ifFalse: [recoveredPC := 675].
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack3 := EINVAL.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack3 := EIO.
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            (recoveredStack2) errno: (recoveredStack3).
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 684 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x20015c7c; bytecode file offset 0x38f6c"
!CfsFileDescriptor class methodsFor: 'recovered'!
open: recoveredArg1 oflag: recoveredArg2 share: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := OTRUNC.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := OTRUNC.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := OCREAT.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := OCREAT.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateIsDirectory: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := OWRONLY.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := OWRONLY.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := ORDWR.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := ORDWR.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := CfsError.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := OEXCL.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := OEXCL.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) encodePathName: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack6 := recoveredLocal10.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) extendedOpenCreate: (recoveredStack2) oflag: (recoveredStack3) share: (recoveredStack4) attributes: (recoveredStack5) action: (recoveredStack6).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 674].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformErrno.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformFunctionsetHandleCount: (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformFunctionsetHandleCount: (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := ENFILE.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 224 ifTrue: [
            recoveredPC := 235.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack1) closeDiscardedFileDescriptors.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredPC := 670.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 244].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := ORDWR.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := OWRONLY.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitOr: (recoveredStack3).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 272] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) clearBit: (recoveredStack2).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredLocal10 := recoveredStack2.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 295].
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredPC := 670.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 312] ifFalse: [recoveredPC := 338].
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateIsDirectory: (recoveredStack2).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 322] ifFalse: [recoveredPC := 330].
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := ENOENT.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 358] ifFalse: [recoveredPC := 348].
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := 87.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 358] ifFalse: [recoveredPC := 444].
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateIsDirectory: (recoveredStack2).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 368] ifFalse: [recoveredPC := 376].
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := ORDONLY.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack3 := OTRUNC.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitOr: (recoveredStack3).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 390] ifFalse: [recoveredPC := 398].
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := EINVAL.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack2 := OCREAT.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack2 := OCREAT.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 410] ifFalse: [recoveredPC := 418].
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateIsFile: (recoveredStack2).
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 428] ifFalse: [recoveredPC := 436].
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack2 := EEXIST.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack2 := EINVAL.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := #(3 123 161).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 454] ifFalse: [recoveredPC := 462].
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack2 := 19.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 472] ifFalse: [recoveredPC := 480].
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack2 := EROFS.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack2 := 36.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 490] ifFalse: [recoveredPC := 498].
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack2 := ENFILE.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack2 := 80.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 508] ifFalse: [recoveredPC := 536].
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack2 := OEXCL.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 528] ifFalse: [recoveredPC := 520].
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack2 := EEXIST.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformErrorClass.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 552] ifFalse: [recoveredPC := 560].
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack2 := ENOSPC.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 590] ifFalse: [recoveredPC := 570].
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack2 := 33.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 590] ifFalse: [recoveredPC := 580].
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 590] ifFalse: [recoveredPC := 598].
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack2 := EBUSY.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 618] ifFalse: [recoveredPC := 608].
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 618] ifFalse: [recoveredPC := 626].
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack2 := 12.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 636] ifFalse: [recoveredPC := 644].
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack2 := EEXIST.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 654] ifFalse: [recoveredPC := 662].
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack2 := EINVAL.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack2 := EIO.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 670 ifTrue: [
            recoveredPC := 785.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock674Value0 recoveredBlock674Value1 recoveredBlock674Value2 |
    recoveredBlock674Value0 := (self) fileDescriptors.
    recoveredBlock674Value1 := recoveredLocal9.
    recoveredBlock674Value2 := (recoveredBlock674Value0) add: (recoveredBlock674Value1).
    recoveredBlock674Value2
].
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            (recoveredStack2) inheritFlag: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            (recoveredStack2) path: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            (recoveredStack2) oflag: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            (recoveredStack2) share: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            (recoveredStack2) fileDescriptor: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            (recoveredStack2) atEnd: (recoveredStack3).
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack3 := OAPPEND.
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitAnd: (recoveredStack3).
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack3 := OAPPEND.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            (recoveredStack1) isAppend: (recoveredStack2).
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 748] ifFalse: [recoveredPC := 781].
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateWrite: (recoveredStack2) startingAt: (recoveredStack3) nbyte: (recoveredStack4).
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 772] ifFalse: [recoveredPC := 781].
        ].
        recoveredStep = 772 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 785 ifTrue: [
            recoveredPC := 134.
        ].
    ]
! !

