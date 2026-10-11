"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200004a8; bytecode file offset 0x7c6d8"
!CgFileFormat class methodsFor: 'recovered'!
formatName
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"winsys.ic method 0x2000083c; bytecode file offset 0x7cc7c"
!CgFileFormat class methodsFor: 'recovered'!
errorStrings
    | recoveredValue0 |
    recoveredValue0 := ErrorStrings.
    ^recoveredValue0
! !

"winsys.ic method 0x200009e0; bytecode file offset 0x7cc7c"
!CgFileFormat class methodsFor: 'recovered'!
exception
    | recoveredValue0 |
    recoveredValue0 := Exception.
    ^recoveredValue0
! !

"winsys.ic method 0x20001bd4; bytecode file offset 0x7de10"
!CgFileFormat class methodsFor: 'recovered'!
initializeOnLoad
    (self) initializeErrors.
    ^self
! !

"winsys.ic method 0x20001dac; bytecode file offset 0x7e054"
!CgFileFormat class methodsFor: 'recovered'!
errorStrings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ErrorStrings := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20001e60; bytecode file offset 0x7e054"
!CgFileFormat class methodsFor: 'recovered'!
exception: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Exception := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20002748; bytecode file offset 0x7e910"
!CgFileFormat class methodsFor: 'recovered'!
errorWriteFailed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exception.
    recoveredValue1 := (recoveredValue0) signalWith: (8).
    ^recoveredValue1
! !

"winsys.ic method 0x20002764; bytecode file offset 0x7e92c"
!CgFileFormat class methodsFor: 'recovered'!
errorReadFailed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exception.
    recoveredValue1 := (recoveredValue0) signalWith: (9).
    ^recoveredValue1
! !

"winsys.ic method 0x20002780; bytecode file offset 0x7e948"
!CgFileFormat class methodsFor: 'recovered'!
errorFileIsNotOfSpecifiedFormat
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exception.
    recoveredValue1 := (recoveredValue0) signalWith: (13).
    ^recoveredValue1
! !

"winsys.ic method 0x2000279c; bytecode file offset 0x7e964"
!CgFileFormat class methodsFor: 'recovered'!
errorUnsupportedAspect
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exception.
    recoveredValue1 := (recoveredValue0) signalWith: (15).
    ^recoveredValue1
! !

"winsys.ic method 0x200027b8; bytecode file offset 0x7e980"
!CgFileFormat class methodsFor: 'recovered'!
errorFileFormatError
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exception.
    recoveredValue1 := (recoveredValue0) signalWith: (17).
    ^recoveredValue1
! !

"winsys.ic method 0x20005588; bytecode file offset 0x81844"
!CgFileFormat class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"winsys.ic method 0x2000888c; bytecode file offset 0x84a6c"
!CgFileFormat class methodsFor: 'recovered'!
formatMatchesFileHandle: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgFileByteStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue1) offset: (recoveredValue2).
    recoveredValue4 := (self) formatMatchesByteStream: (recoveredValue3).
    ^recoveredValue4
! !

"winsys.ic method 0x200088a0; bytecode file offset 0x84a6c"
!CgFileFormat class methodsFor: 'recovered'!
formatMatchesByteObjects: recoveredArg1 offsetsIntoByteObjects: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgByteArrayByteStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue1) offsets: (recoveredValue2).
    recoveredValue4 := (self) formatMatchesByteStream: (recoveredValue3).
    ^recoveredValue4
! !

"winsys.ic method 0x20015f98; bytecode file offset 0x92178"
!CgFileFormat class methodsFor: 'recovered'!
formatMatchingByteObjects: recoveredArg1 offsetsIntoByteObjects: recoveredArg2 ifNone: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) allFormats.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) formatMatchesByteObjects: (recoveredBlock5Value1) offsetsIntoByteObjects: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x20015fac; bytecode file offset 0x92178"
!CgFileFormat class methodsFor: 'recovered'!
formatMatchingFileHandle: recoveredArg1 atOffset: recoveredArg2 ifNone: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) allFormats.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := recoveredArg2.
    recoveredBlock5Value3 := (recoveredBlock5Value0) formatMatchesFileHandle: (recoveredBlock5Value1) atOffset: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x2001871c; bytecode file offset 0x948f4"
!CgFileFormat class methodsFor: 'recovered'!
formatMatchesFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := ORDONLY.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2) oflag: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatMatchesFileHandle: (recoveredStack1) atOffset: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20018cc8; bytecode file offset 0x94ea0"
!CgFileFormat class methodsFor: 'recovered'!
allFormats
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) subclasses.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) allFormats.
    recoveredBlock11Value3 := (recoveredBlock11Value0) addAll: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"winsys.ic method 0x2001c640; bytecode file offset 0x9882c"
!CgFileFormat class methodsFor: 'recovered'!
initializeException
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) exception: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := MxCGa6.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block28008efcArg1 | 
    | block28008efcValue0 block28008efcValue1 block28008efcValue2 block28008efcValue3 block28008efcValue4 |
    block28008efcValue0 := block28008efcArg1.
    block28008efcValue1 := block28008efcArg1.
    block28008efcValue2 := (block28008efcValue1) argument.
    block28008efcValue3 := (block28008efcValue2) printString.
    block28008efcValue4 := (block28008efcValue0) signalWith: (block28008efcValue3).
    block28008efcValue4
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) defaultHandler: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20026fb4; bytecode file offset 0xa3190"
!CgFileFormat class methodsFor: 'recovered'!
formatMatchingFile: recoveredArg1 ifNone: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := ORDONLY.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2) oflag: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 |
    recoveredBlock35Value0 := recoveredLocal2.
    (recoveredBlock35Value0) close.
    recoveredBlock35Value1 := recoveredArg2.
    recoveredBlock35Value2 := (recoveredBlock35Value1) value.
    ^recoveredBlock35Value2
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatMatchingFileHandle: (recoveredStack1) atOffset: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20033494; bytecode file offset 0xaf664"
!CgFileFormat class methodsFor: 'recovered'!
initializeErrors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (17).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: (1) put: (12).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) at: (2) put: (13).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) at: (3) put: (14).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) at: (4) put: (15).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) at: (5) put: (16).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) at: (6) put: (17).
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) at: (7) put: (18).
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) at: (8) put: (19).
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) at: (9) put: (20).
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) at: (10) put: (21).
    recoveredValue13 := recoveredValue1.
    (recoveredValue13) at: (11) put: (22).
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) at: (12) put: (23).
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) at: (13) put: (24).
    recoveredValue16 := recoveredValue1.
    (recoveredValue16) at: (14) put: (25).
    recoveredValue17 := recoveredValue1.
    (recoveredValue17) at: (15) put: (26).
    recoveredValue18 := recoveredValue1.
    (recoveredValue18) at: (16) put: (27).
    (recoveredValue1) at: (17) put: (28).
    recoveredValue19 := recoveredLocal1.
    (self) errorStrings: (recoveredValue19).
    ^self
! !

