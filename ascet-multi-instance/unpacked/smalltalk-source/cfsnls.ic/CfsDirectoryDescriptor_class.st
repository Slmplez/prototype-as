"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x2000025c; bytecode file offset 0x23494"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionGetLastError
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000438; bytecode file offset 0x23760"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionSetCurrentDirectory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000478; bytecode file offset 0x23760"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionGetDriveType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000488; bytecode file offset 0x23760"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionSetLastError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000528; bytecode file offset 0x23760"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionRemoveDirectory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000698; bytecode file offset 0x23980"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionCreateDirectory: recoveredArg1 lpsa: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200006a8; bytecode file offset 0x23980"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
platformFunctionGetCurrentDirectory: recoveredArg1 lpszCurDir: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200009dc; bytecode file offset 0x23c4c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
directoryDescriptorClass
    | recoveredValue0 |
    recoveredValue0 := CfsOSWin32FindData.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000b40; bytecode file offset 0x23de0"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
pathSeparatorString
    ^'\'
! !

"cfsnls.ic method 0x20002340; bytecode file offset 0x25570"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
pathSeparator
    ^$\
! !

"cfsnls.ic method 0x20002730; bytecode file offset 0x2597c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
setLastError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) platformFunctionSetLastError: (recoveredValue0).
    ^self
! !

"cfsnls.ic method 0x20003658; bytecode file offset 0x26890"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
validDrive: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) nullTerminated.
    recoveredValue2 := (self) platformFunctionGetDriveType: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) > (1).
    ^recoveredValue3
! !

"cfsnls.ic method 0x20004418; bytecode file offset 0x27658"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
getLastError
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CfsError.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) platformFunctionGetLastError.
    (recoveredValue2) platformErrno: (recoveredValue3).
    ^recoveredValue1
! !

"cfsnls.ic method 0x200045f4; bytecode file offset 0x2782c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
driveNumberFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asUppercase.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := ($A) value.
    recoveredValue4 := (recoveredValue2) - (recoveredValue3).
    ^recoveredValue4
! !

"cfsnls.ic method 0x20004e30; bytecode file offset 0x28068"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
startUpDirectory
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := StartUpDirectory.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := StartUpDirectory.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x20007f78; bytecode file offset 0x2b1bc"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
startUpDirectoryPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := StartUpDirectory.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := StartUpDirectory.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathSeparator.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := StartUpDirectory.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := StartUpDirectory.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathSeparator.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x2000a540; bytecode file offset 0x2d794"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
initializeStartUpDirectory
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OSHmodule.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) driverFileName.
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := $\.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) upToLast: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            StartUpDirectory := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) getcwd.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            StartUpDirectory := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            StartUpDirectory := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000b084; bytecode file offset 0x2e2e0"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
privateDirectoryHasEntries: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := '*.*'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := FREG.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := FDIR.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack5 := FSPECIAL.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := (recoveredStack4) bitOr: (recoveredStack5).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitOr: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) opendir: (recoveredStack1) pattern: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := '..'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) closedir.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) readdirName.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) closedir.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000ba78; bytecode file offset 0x2ece8"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
opendir: recoveredArg1 pattern: recoveredArg2 mode: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) privateIsDirectory: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := CfsError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := ENOENT.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) path: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) namePattern: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) modePattern: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) directoryDescriptorClass.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) directoryDescriptor: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicOpen.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) errno.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := EACCES.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateNoEntry: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := ENOENT.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) errno: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000d834; bytecode file offset 0x30a90"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
rootDirectories
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := $A.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 26.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := $:.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := $\.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 25.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := (recoveredStack4) asCharacter.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) validDrive: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 48] ifFalse: [recoveredLocal1 := nil. recoveredPC := 91]] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x2001067c; bytecode file offset 0x33908"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
chdir: recoveredArg1
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
            recoveredBlock47Stack1 := 0.
            recoveredBlock47PC := 56.
        ].
        recoveredBlock47Step = 56 ifTrue: [
            (recoveredBlock47Stack0) setLastError: (recoveredBlock47Stack1).
            recoveredBlock47PC := 58.
        ].
        recoveredBlock47Step = 58 ifTrue: [
            recoveredBlock47Stack0 := self.
            recoveredBlock47PC := 59.
        ].
        recoveredBlock47Step = 59 ifTrue: [
            recoveredBlock47Stack1 := recoveredLocal3.
            recoveredBlock47PC := 62.
        ].
        recoveredBlock47Step = 62 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) platformFunctionSetCurrentDirectory: (recoveredBlock47Stack1).
            recoveredBlock47PC := 64.
        ].
        recoveredBlock47Step = 64 ifTrue: [
            (recoveredBlock47Stack0) ifTrue: [recoveredBlock47PC := 68] ifFalse: [recoveredBlock47PC := 74].
        ].
        recoveredBlock47Step = 68 ifTrue: [
            recoveredBlock47Stack0 := 0.
            recoveredBlock47PC := 70.
        ].
        recoveredBlock47Step = 70 ifTrue: [
            recoveredBlock47PC := 77.
        ].
        recoveredBlock47Step = 74 ifTrue: [
            recoveredBlock47Stack0 := self.
            recoveredBlock47PC := 75.
        ].
        recoveredBlock47Step = 75 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) getLastError.
            recoveredBlock47PC := 77.
        ].
        recoveredBlock47Step = 77 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Stack0.
            recoveredBlock47PC := 78.
        ].
        recoveredBlock47Step = 78 ifTrue: [
            recoveredLocal2 := recoveredBlock47Stack1.
            recoveredBlock47PC := 81.
        ].
        recoveredBlock47Step = 81 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack0.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformErrno.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := #(161 2 3 5).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateIsDirectory: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := ENOENT.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := #(0 3 123 267 87).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateIsDirectory: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := EIO.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20011e18; bytecode file offset 0x35084"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
getcwd
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal3.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) size.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal3.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) platformFunctionGetCurrentDirectory: (recoveredBlock14Stack1) lpszCurDir: (recoveredBlock14Stack2).
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := 0.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) = (recoveredBlock14Stack1).
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            (recoveredBlock14Stack0) ifTrue: [recoveredBlock14PC := 40] ifFalse: [recoveredBlock14PC := 50].
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack0 := self.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) getLastError.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 47.
        ].
        recoveredBlock14Step = 47 ifTrue: [
            recoveredBlock14PC := 134.
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal2.
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal3.
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) size.
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) < (recoveredBlock14Stack1).
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            (recoveredBlock14Stack0) ifTrue: [recoveredBlock14PC := 62] ifFalse: [recoveredBlock14PC := 80].
        ].
        recoveredBlock14Step = 62 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal3.
            recoveredBlock14PC := 65.
        ].
        recoveredBlock14Step = 65 ifTrue: [
            recoveredBlock14Stack1 := 1.
            recoveredBlock14PC := 67.
        ].
        recoveredBlock14Step = 67 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal2.
            recoveredBlock14PC := 70.
        ].
        recoveredBlock14Step = 70 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) copyFrom: (recoveredBlock14Stack1) to: (recoveredBlock14Stack2).
            recoveredBlock14PC := 72.
        ].
        recoveredBlock14Step = 72 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 73.
        ].
        recoveredBlock14Step = 73 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 76.
        ].
        recoveredBlock14Step = 76 ifTrue: [
            recoveredBlock14PC := 134.
        ].
        recoveredBlock14Step = 80 ifTrue: [
            recoveredBlock14Stack0 := String.
            recoveredBlock14PC := 82.
        ].
        recoveredBlock14Step = 82 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal2.
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) + (1).
            recoveredBlock14PC := 86.
        ].
        recoveredBlock14Step = 86 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) new: (recoveredBlock14Stack1).
            recoveredBlock14PC := 87.
        ].
        recoveredBlock14Step = 87 ifTrue: [
            recoveredLocal3 := recoveredBlock14Stack0.
            recoveredBlock14PC := 90.
        ].
        recoveredBlock14Step = 90 ifTrue: [
            recoveredBlock14Stack0 := self.
            recoveredBlock14PC := 91.
        ].
        recoveredBlock14Step = 91 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal3.
            recoveredBlock14PC := 94.
        ].
        recoveredBlock14Step = 94 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) size.
            recoveredBlock14PC := 95.
        ].
        recoveredBlock14Step = 95 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal3.
            recoveredBlock14PC := 98.
        ].
        recoveredBlock14Step = 98 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) platformFunctionGetCurrentDirectory: (recoveredBlock14Stack1) lpszCurDir: (recoveredBlock14Stack2).
            recoveredBlock14PC := 100.
        ].
        recoveredBlock14Step = 100 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 101.
        ].
        recoveredBlock14Step = 101 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 104.
        ].
        recoveredBlock14Step = 104 ifTrue: [
            recoveredBlock14Stack1 := 0.
            recoveredBlock14PC := 106.
        ].
        recoveredBlock14Step = 106 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) = (recoveredBlock14Stack1).
            recoveredBlock14PC := 107.
        ].
        recoveredBlock14Step = 107 ifTrue: [
            (recoveredBlock14Stack0) ifTrue: [recoveredBlock14PC := 110] ifFalse: [recoveredBlock14PC := 120].
        ].
        recoveredBlock14Step = 110 ifTrue: [
            recoveredBlock14Stack0 := ''.
            recoveredBlock14PC := 112.
        ].
        recoveredBlock14Step = 112 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 113.
        ].
        recoveredBlock14Step = 113 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 116.
        ].
        recoveredBlock14Step = 116 ifTrue: [
            recoveredBlock14PC := 134.
        ].
        recoveredBlock14Step = 120 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal3.
            recoveredBlock14PC := 123.
        ].
        recoveredBlock14Step = 123 ifTrue: [
            recoveredBlock14Stack1 := 1.
            recoveredBlock14PC := 125.
        ].
        recoveredBlock14Step = 125 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal2.
            recoveredBlock14PC := 128.
        ].
        recoveredBlock14Step = 128 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) copyFrom: (recoveredBlock14Stack1) to: (recoveredBlock14Stack2).
            recoveredBlock14PC := 130.
        ].
        recoveredBlock14Step = 130 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 131.
        ].
        recoveredBlock14Step = 131 ifTrue: [
            recoveredLocal2 := recoveredBlock14Stack1.
            recoveredBlock14PC := 134.
        ].
        recoveredBlock14Step = 134 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack0.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformErrorClass.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := EIO.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) decodePathName: (recoveredStack2).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x20013b00; bytecode file offset 0x36d8c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
mkdir: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal5.
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
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredLocal5.
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
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
            recoveredBlock47Stack2 := nil.
            recoveredBlock47PC := 58.
        ].
        recoveredBlock47Step = 58 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) platformFunctionCreateDirectory: (recoveredBlock47Stack1) lpsa: (recoveredBlock47Stack2).
            recoveredBlock47PC := 60.
        ].
        recoveredBlock47Step = 60 ifTrue: [
            (recoveredBlock47Stack0) ifTrue: [recoveredBlock47PC := 64] ifFalse: [recoveredBlock47PC := 70].
        ].
        recoveredBlock47Step = 64 ifTrue: [
            recoveredBlock47Stack0 := 0.
            recoveredBlock47PC := 66.
        ].
        recoveredBlock47Step = 66 ifTrue: [
            recoveredBlock47PC := 73.
        ].
        recoveredBlock47Step = 70 ifTrue: [
            recoveredBlock47Stack0 := self.
            recoveredBlock47PC := 71.
        ].
        recoveredBlock47Step = 71 ifTrue: [
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) getLastError.
            recoveredBlock47PC := 73.
        ].
        recoveredBlock47Step = 73 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Stack0.
            recoveredBlock47PC := 74.
        ].
        recoveredBlock47Step = 74 ifTrue: [
            recoveredLocal3 := recoveredBlock47Stack1.
            recoveredBlock47PC := 77.
        ].
        recoveredBlock47Step = 77 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack0.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformErrno.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateIsEntry: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := EEXIST.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 19.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := EROFS.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := 123.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := 161.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := 183.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := EEXIST.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformErrorClass.
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
            recoveredStack2 := 1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := ENOSPC.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 264].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := EINVAL.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := EIO.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x2001466c; bytecode file offset 0x37900"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
rmdir: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal5.
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
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredLocal5.
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
            recoveredLocal4 := recoveredStack1.
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
            recoveredBlock47Stack0 := (recoveredBlock47Stack0) platformFunctionRemoveDirectory: (recoveredBlock47Stack1).
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
            recoveredLocal3 := recoveredBlock47Stack1.
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
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 332].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal3.
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
            recoveredLocal2 := recoveredStack2.
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
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := ENOENT.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateNoEntry: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := ENOENT.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateDirectoryHasEntries: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := EEXIST.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := EBUSY.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := 19.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := EROFS.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 123.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := 145.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := EEXIST.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := 161.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 264].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := ENOENT.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := 267.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := ENOENT.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformErrorClass.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 298] ifFalse: [recoveredPC := 306].
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := EACCES.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 316] ifFalse: [recoveredPC := 324].
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := EINVAL.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack2 := EIO.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := (recoveredStack1) errno: (recoveredStack2).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

