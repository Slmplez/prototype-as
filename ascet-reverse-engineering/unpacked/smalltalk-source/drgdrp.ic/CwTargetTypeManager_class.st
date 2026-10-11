"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"drgdrp.ic method 0x20000030; bytecode file offset 0x54d0"
!CwTargetTypeManager class methodsFor: 'recovered'!
interchangeType
    | recoveredValue0 |
    recoveredValue0 := CwWINFormatEtcFormat.
    ^recoveredValue0
! !

"drgdrp.ic method 0x2000006c; bytecode file offset 0x54d0"
!CwTargetTypeManager class methodsFor: 'recovered'!
dropMatches
    | recoveredValue0 |
    recoveredValue0 := DropMatches.
    ^recoveredValue0
! !

"drgdrp.ic method 0x200000ac; bytecode file offset 0x5514"
!CwTargetTypeManager class methodsFor: 'recovered'!
interchangeFormatClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CwTransferMechanism.
    recoveredValue1 := (recoveredValue0) interchangeFormatClass.
    ^recoveredValue1
! !

"drgdrp.ic method 0x20000120; bytecode file offset 0x55a8"
!CwTargetTypeManager class methodsFor: 'recovered'!
dropMatches: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DropMatches := recoveredValue0.
    ^self
! !

"drgdrp.ic method 0x20000158; bytecode file offset 0x55c0"
!CwTargetTypeManager class methodsFor: 'recovered'!
getID: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) interchangeFormat.
    recoveredValue2 := (recoveredValue1) cfFormat.
    ^recoveredValue2
! !

"drgdrp.ic method 0x200001a4; bytecode file offset 0x5614"
!CwTargetTypeManager class methodsFor: 'recovered'!
removing
    (self) dropMatches: (nil).
    ^self
! !

"drgdrp.ic method 0x20000448; bytecode file offset 0x58b0"
!CwTargetTypeManager class methodsFor: 'recovered'!
getDefaultID: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OS.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) registerClipboardFormat: (recoveredValue1).
    ^recoveredValue2
! !

"drgdrp.ic method 0x200007e8; bytecode file offset 0x5c54"
!CwTargetTypeManager class methodsFor: 'recovered'!
cleanUp
    | recoveredValue0 |
    (self) dropMatches: (nil).
    recoveredValue0 := CwTransferMechanism.
    (recoveredValue0) cleanUpAll.
    ^self
! !

"drgdrp.ic method 0x20000f18; bytecode file offset 0x638c"
!CwTargetTypeManager class methodsFor: 'recovered'!
targetTypeForID: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dropMatches.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) interchangeFormat.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) cfFormat.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 28].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) formatName.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"drgdrp.ic method 0x20001048; bytecode file offset 0x64bc"
!CwTargetTypeManager class methodsFor: 'recovered'!
idForTargetType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dropMatches.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) formatName.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 27].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) getID: (recoveredBlock5Stack2).
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) getDefaultID: (recoveredValue2).
    ^recoveredValue3
! !

"drgdrp.ic method 0x20001130; bytecode file offset 0x65b0"
!CwTargetTypeManager class methodsFor: 'recovered'!
getDefaultTargetType: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := PlatformString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 128.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := OS.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getClipboardFormatName: (recoveredStack2) lpszFormatName: (recoveredStack3) cbMax: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"drgdrp.ic method 0x200013c8; bytecode file offset 0x6850"
!CwTargetTypeManager class methodsFor: 'recovered'!
targetTypeForID: recoveredArg1 platformSpecificObject: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interchangeFormatClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := CwTransferMechanism.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) domainFormat: (recoveredStack1) platformSpecificObject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := CwTransferMechanism.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) dropMatches.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) medium: (recoveredStack1) matches: (recoveredStack2) platformSpecificObject: (recoveredStack3) into: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := CwDataInterchangeConverter.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) queryInterchangeFormat: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatName.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefaultTargetType: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"drgdrp.ic method 0x20001b80; bytecode file offset 0x700c"
!CwTargetTypeManager class methodsFor: 'recovered'!
convert: recoveredArg1 value: recoveredArg2 platformSpecificObject: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwDataInterchangeConverter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) interchangeType.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) queryFormatName: (recoveredStack2) interchangeType: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25Stack5 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredBlock25Stack3 := recoveredArg2.
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) convert: (recoveredBlock25Stack3).
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Stack2.
            recoveredBlock25PC := 40.
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredLocal5 := recoveredBlock25Stack3.
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            (recoveredBlock25Stack2 == nil) ifTrue: [recoveredBlock25PC := 88] ifFalse: [recoveredBlock25PC := 46].
        ].
        recoveredBlock25Step = 46 ifTrue: [
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            recoveredBlock25Stack1 := CwTransferMechanism.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg1.
            recoveredBlock25PC := 50.
        ].
        recoveredBlock25Step = 50 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) interchangeFormat.
            recoveredBlock25PC := 52.
        ].
        recoveredBlock25Step = 52 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Stack2.
            recoveredBlock25PC := 53.
        ].
        recoveredBlock25Step = 53 ifTrue: [
            recoveredLocal3 := recoveredBlock25Stack3.
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) fromMedium: (recoveredBlock25Stack2).
            recoveredBlock25PC := 58.
        ].
        recoveredBlock25Step = 58 ifTrue: [
            recoveredLocal1 := recoveredBlock25Stack1.
            recoveredBlock25PC := 61.
        ].
        recoveredBlock25Step = 61 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 62.
        ].
        recoveredBlock25Step = 62 ifTrue: [
            recoveredBlock25Stack2 := recoveredLocal1.
            recoveredBlock25PC := 65.
        ].
        recoveredBlock25Step = 65 ifTrue: [
            (recoveredBlock25Stack2 == nil) ifTrue: [recoveredBlock25PC := 88] ifFalse: [recoveredBlock25PC := 68].
        ].
        recoveredBlock25Step = 68 ifTrue: [
            recoveredBlock25PC := 69.
        ].
        recoveredBlock25Step = 69 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal1.
            recoveredBlock25PC := 72.
        ].
        recoveredBlock25Step = 72 ifTrue: [
            recoveredBlock25Stack2 := recoveredLocal5.
            recoveredBlock25PC := 75.
        ].
        recoveredBlock25Step = 75 ifTrue: [
            recoveredBlock25Stack3 := recoveredLocal3.
            recoveredBlock25PC := 78.
        ].
        recoveredBlock25Step = 78 ifTrue: [
            recoveredBlock25Stack4 := recoveredArg3.
            recoveredBlock25PC := 81.
        ].
        recoveredBlock25Step = 81 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) addData: (recoveredBlock25Stack2) interchangeFormat: (recoveredBlock25Stack3) platformSpecificObject: (recoveredBlock25Stack4).
            recoveredBlock25PC := 84.
        ].
        recoveredBlock25Step = 84 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 85.
        ].
        recoveredBlock25Step = 85 ifTrue: [
            recoveredLocal4 := recoveredBlock25Stack2.
            recoveredBlock25PC := 88.
        ].
        recoveredBlock25Step = 88 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := CwTransferMechanism.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultAddData: (recoveredStack2) type: (recoveredStack3) platformSpecificObject: (recoveredStack4).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"drgdrp.ic method 0x20001c28; bytecode file offset 0x70c0"
!CwTargetTypeManager class methodsFor: 'recovered'!
initialPlatformObjectForTypes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := CwDataInterchangeConverter.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack3 := self.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) interchangeType.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) queryFormatName: (recoveredBlock13Stack2) interchangeType: (recoveredBlock13Stack3).
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredLocal2 := recoveredBlock13Stack2.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) notEmpty.
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 36] ifFalse: [recoveredBlock13PC := 92].
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal2.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block39Arg1 | 
    | recoveredBlock13Block39Stack0 recoveredBlock13Block39Stack1 recoveredBlock13Block39Stack2 recoveredBlock13Block39Stack3 recoveredBlock13Block39Stack4 recoveredBlock13Block39PC recoveredBlock13Block39Step recoveredBlock13Block39Done recoveredBlock13Block39Result |
    recoveredBlock13Block39Stack0 := nil.
    recoveredBlock13Block39PC := 46.
    recoveredBlock13Block39Done := false.
    [recoveredBlock13Block39Done not] whileTrue: [
        recoveredBlock13Block39Step := recoveredBlock13Block39PC.
        recoveredBlock13Block39Step = 46 ifTrue: [
            recoveredBlock13Block39Stack1 := CwTransferMechanism.
            recoveredBlock13Block39PC := 48.
        ].
        recoveredBlock13Block39Step = 48 ifTrue: [
            recoveredBlock13Block39Stack2 := recoveredBlock13Block39Arg1.
            recoveredBlock13Block39PC := 49.
        ].
        recoveredBlock13Block39Step = 49 ifTrue: [
            recoveredBlock13Block39Stack2 := (recoveredBlock13Block39Stack2) interchangeFormat.
            recoveredBlock13Block39PC := 51.
        ].
        recoveredBlock13Block39Step = 51 ifTrue: [
            recoveredBlock13Block39Stack3 := recoveredBlock13Block39Stack2.
            recoveredBlock13Block39PC := 52.
        ].
        recoveredBlock13Block39Step = 52 ifTrue: [
            recoveredLocal3 := recoveredBlock13Block39Stack3.
            recoveredBlock13Block39PC := 55.
        ].
        recoveredBlock13Block39Step = 55 ifTrue: [
            recoveredBlock13Block39Stack1 := (recoveredBlock13Block39Stack1) fromMedium: (recoveredBlock13Block39Stack2).
            recoveredBlock13Block39PC := 57.
        ].
        recoveredBlock13Block39Step = 57 ifTrue: [
            recoveredLocal1 := recoveredBlock13Block39Stack1.
            recoveredBlock13Block39PC := 60.
        ].
        recoveredBlock13Block39Step = 60 ifTrue: [
            recoveredBlock13Block39Stack1 := nil.
            recoveredBlock13Block39PC := 61.
        ].
        recoveredBlock13Block39Step = 61 ifTrue: [
            recoveredBlock13Block39Stack2 := recoveredLocal1.
            recoveredBlock13Block39PC := 64.
        ].
        recoveredBlock13Block39Step = 64 ifTrue: [
            (recoveredBlock13Block39Stack2 == nil) ifTrue: [recoveredBlock13Block39PC := 85] ifFalse: [recoveredBlock13Block39PC := 68].
        ].
        recoveredBlock13Block39Step = 68 ifTrue: [
            recoveredBlock13Block39PC := 69.
        ].
        recoveredBlock13Block39Step = 69 ifTrue: [
            recoveredBlock13Block39Stack1 := recoveredLocal1.
            recoveredBlock13Block39PC := 72.
        ].
        recoveredBlock13Block39Step = 72 ifTrue: [
            recoveredBlock13Block39Stack2 := recoveredLocal3.
            recoveredBlock13Block39PC := 75.
        ].
        recoveredBlock13Block39Step = 75 ifTrue: [
            (recoveredBlock13Block39Stack1) addInitialInfo: (recoveredBlock13Block39Stack2).
            recoveredBlock13Block39PC := 77.
        ].
        recoveredBlock13Block39Step = 77 ifTrue: [
            recoveredBlock13Block39Stack1 := recoveredLocal4.
            recoveredBlock13Block39PC := 80.
        ].
        recoveredBlock13Block39Step = 80 ifTrue: [
            recoveredBlock13Block39Stack2 := recoveredLocal3.
            recoveredBlock13Block39PC := 83.
        ].
        recoveredBlock13Block39Step = 83 ifTrue: [
            recoveredBlock13Block39Stack1 := (recoveredBlock13Block39Stack1) add: (recoveredBlock13Block39Stack2).
            recoveredBlock13Block39PC := 85.
        ].
        recoveredBlock13Block39Step = 85 ifTrue: [
            recoveredBlock13Block39Result := recoveredBlock13Block39Stack1.
            recoveredBlock13Block39Done := true.
        ].
    ].
    recoveredBlock13Block39Result
].
            recoveredBlock13PC := 86.
        ].
        recoveredBlock13Step = 86 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) do: (recoveredBlock13Stack2).
            recoveredBlock13PC := 88.
        ].
        recoveredBlock13Step = 88 ifTrue: [
            recoveredBlock13PC := 102.
        ].
        recoveredBlock13Step = 92 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal4.
            recoveredBlock13PC := 95.
        ].
        recoveredBlock13Step = 95 ifTrue: [
            recoveredBlock13Stack2 := CwTransferMechanism.
            recoveredBlock13PC := 97.
        ].
        recoveredBlock13Step = 97 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 98.
        ].
        recoveredBlock13Step = 98 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) getDefaultInfo: (recoveredBlock13Stack3).
            recoveredBlock13PC := 100.
        ].
        recoveredBlock13Step = 100 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 102.
        ].
        recoveredBlock13Step = 102 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := CwTransferMechanism.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) addAllInitialInfoForIDs: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"drgdrp.ic method 0x20001ce4; bytecode file offset 0x7198"
!CwTargetTypeManager class methodsFor: 'recovered'!
exportTargetsFrom: recoveredArg1 platformRenderObject: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            (recoveredStack0) dropMatches: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := CwDataInterchangeConverter.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) interchangeFormatClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) queryInterchangeType: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22Stack5 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := CwTransferMechanism.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) interchangeFormat.
            recoveredBlock22PC := 33.
        ].
        recoveredBlock22Step = 33 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Stack2.
            recoveredBlock22PC := 34.
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredLocal2 := recoveredBlock22Stack3.
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) fromMedium: (recoveredBlock22Stack2).
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack1.
            recoveredBlock22PC := 42.
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal1.
            recoveredBlock22PC := 46.
        ].
        recoveredBlock22Step = 46 ifTrue: [
            (recoveredBlock22Stack2 == nil) ifTrue: [recoveredBlock22PC := 81] ifFalse: [recoveredBlock22PC := 50].
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22PC := 51.
        ].
        recoveredBlock22Step = 51 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 52.
        ].
        recoveredBlock22Step = 52 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal1.
            recoveredBlock22PC := 55.
        ].
        recoveredBlock22Step = 55 ifTrue: [
            recoveredBlock22Stack3 := recoveredLocal2.
            recoveredBlock22PC := 58.
        ].
        recoveredBlock22Step = 58 ifTrue: [
            recoveredBlock22Stack4 := recoveredArg2.
            recoveredBlock22PC := 61.
        ].
        recoveredBlock22Step = 61 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) match: (recoveredBlock22Stack3) platformRenderObject: (recoveredBlock22Stack4).
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 63 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 66] ifFalse: [recoveredBlock22PC := 81].
        ].
        recoveredBlock22Step = 66 ifTrue: [
            recoveredBlock22PC := 67.
        ].
        recoveredBlock22Step = 67 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal3.
            recoveredBlock22PC := 70.
        ].
        recoveredBlock22Step = 70 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 71.
        ].
        recoveredBlock22Step = 71 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) formatName.
            recoveredBlock22PC := 73.
        ].
        recoveredBlock22Step = 73 ifTrue: [
            (recoveredBlock22Stack1) add: (recoveredBlock22Stack2).
            recoveredBlock22PC := 75.
        ].
        recoveredBlock22Step = 75 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 76.
        ].
        recoveredBlock22Step = 76 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) dropMatches.
            recoveredBlock22PC := 78.
        ].
        recoveredBlock22Step = 78 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 79.
        ].
        recoveredBlock22Step = 79 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) add: (recoveredBlock22Stack2).
            recoveredBlock22PC := 81.
        ].
        recoveredBlock22Step = 81 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := CwDragContext.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportTargets.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 109].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := CwDragContext.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) exportTargets: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := CwDragContext.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportTargets.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := [:recoveredBlock115Arg1 | 
    | recoveredBlock115Value0 recoveredBlock115Value1 recoveredBlock115Value2 |
    recoveredBlock115Value0 := recoveredLocal3.
    recoveredBlock115Value1 := recoveredBlock115Arg1.
    recoveredBlock115Value2 := (recoveredBlock115Value0) includes: (recoveredBlock115Value1).
    recoveredBlock115Value2
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"drgdrp.ic method 0x20001dc8; bytecode file offset 0x7260"
!CwTargetTypeManager class methodsFor: 'recovered'!
unconvert: recoveredArg1 platformSpecificObject: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := CwDataInterchangeConverter.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) interchangeType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) queryFormatName: (recoveredStack2) interchangeType: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Stack0 recoveredBlock33Stack1 recoveredBlock33Stack2 recoveredBlock33Stack3 recoveredBlock33Stack4 recoveredBlock33Stack5 recoveredBlock33PC recoveredBlock33Step recoveredBlock33Done recoveredBlock33Result |
    recoveredBlock33Stack0 := self.
    recoveredBlock33PC := 40.
    recoveredBlock33Done := false.
    [recoveredBlock33Done not] whileTrue: [
        recoveredBlock33Step := recoveredBlock33PC.
        recoveredBlock33Step = 40 ifTrue: [
            recoveredBlock33Stack1 := CwTransferMechanism.
            recoveredBlock33PC := 42.
        ].
        recoveredBlock33Step = 42 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Arg1.
            recoveredBlock33PC := 43.
        ].
        recoveredBlock33Step = 43 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) interchangeFormat.
            recoveredBlock33PC := 45.
        ].
        recoveredBlock33Step = 45 ifTrue: [
            recoveredBlock33Stack3 := recoveredBlock33Stack2.
            recoveredBlock33PC := 46.
        ].
        recoveredBlock33Step = 46 ifTrue: [
            recoveredLocal2 := recoveredBlock33Stack3.
            recoveredBlock33PC := 49.
        ].
        recoveredBlock33Step = 49 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) fromMedium: (recoveredBlock33Stack2).
            recoveredBlock33PC := 51.
        ].
        recoveredBlock33Step = 51 ifTrue: [
            recoveredLocal3 := recoveredBlock33Stack1.
            recoveredBlock33PC := 54.
        ].
        recoveredBlock33Step = 54 ifTrue: [
            recoveredBlock33Stack1 := nil.
            recoveredBlock33PC := 55.
        ].
        recoveredBlock33Step = 55 ifTrue: [
            recoveredBlock33Stack2 := recoveredLocal3.
            recoveredBlock33PC := 58.
        ].
        recoveredBlock33Step = 58 ifTrue: [
            (recoveredBlock33Stack2 == nil) ifTrue: [recoveredBlock33PC := 116] ifFalse: [recoveredBlock33PC := 62].
        ].
        recoveredBlock33Step = 62 ifTrue: [
            recoveredBlock33Stack2 := recoveredBlock33Arg1.
            recoveredBlock33PC := 63.
        ].
        recoveredBlock33Step = 63 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) converterClass.
            recoveredBlock33PC := 65.
        ].
        recoveredBlock33Step = 65 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) reversible.
            recoveredBlock33PC := 67.
        ].
        recoveredBlock33Step = 67 ifTrue: [
            (recoveredBlock33Stack2) ifTrue: [recoveredBlock33PC := 70] ifFalse: [recoveredBlock33PC := 116].
        ].
        recoveredBlock33Step = 70 ifTrue: [
            recoveredBlock33PC := 71.
        ].
        recoveredBlock33Step = 71 ifTrue: [
            recoveredBlock33Stack1 := nil.
            recoveredBlock33PC := 72.
        ].
        recoveredBlock33Step = 72 ifTrue: [
            recoveredBlock33Stack2 := recoveredLocal3.
            recoveredBlock33PC := 75.
        ].
        recoveredBlock33Step = 75 ifTrue: [
            recoveredBlock33Stack3 := recoveredLocal2.
            recoveredBlock33PC := 78.
        ].
        recoveredBlock33Step = 78 ifTrue: [
            recoveredBlock33Stack4 := recoveredArg2.
            recoveredBlock33PC := 81.
        ].
        recoveredBlock33Step = 81 ifTrue: [
            recoveredBlock33Stack2 := (recoveredBlock33Stack2) matchFirst: (recoveredBlock33Stack3) platformSpecificObject: (recoveredBlock33Stack4).
            recoveredBlock33PC := 83.
        ].
        recoveredBlock33Step = 83 ifTrue: [
            (recoveredBlock33Stack2) ifTrue: [recoveredBlock33PC := 86] ifFalse: [recoveredBlock33PC := 116].
        ].
        recoveredBlock33Step = 86 ifTrue: [
            recoveredBlock33PC := 87.
        ].
        recoveredBlock33Step = 87 ifTrue: [
            recoveredBlock33Stack1 := recoveredLocal3.
            recoveredBlock33PC := 90.
        ].
        recoveredBlock33Step = 90 ifTrue: [
            recoveredBlock33Stack2 := recoveredArg2.
            recoveredBlock33PC := 93.
        ].
        recoveredBlock33Step = 93 ifTrue: [
            recoveredBlock33Stack3 := recoveredLocal2.
            recoveredBlock33PC := 96.
        ].
        recoveredBlock33Step = 96 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) queryData: (recoveredBlock33Stack2) interchangeFormat: (recoveredBlock33Stack3).
            recoveredBlock33PC := 98.
        ].
        recoveredBlock33Step = 98 ifTrue: [
            recoveredLocal4 := recoveredBlock33Stack1.
            recoveredBlock33PC := 101.
        ].
        recoveredBlock33Step = 101 ifTrue: [
            recoveredBlock33Stack1 := nil.
            recoveredBlock33PC := 102.
        ].
        recoveredBlock33Step = 102 ifTrue: [
            recoveredBlock33Stack2 := recoveredLocal4.
            recoveredBlock33PC := 105.
        ].
        recoveredBlock33Step = 105 ifTrue: [
            (recoveredBlock33Stack2 == nil) ifTrue: [recoveredBlock33PC := 116] ifFalse: [recoveredBlock33PC := 108].
        ].
        recoveredBlock33Step = 108 ifTrue: [
            recoveredBlock33PC := 109.
        ].
        recoveredBlock33Step = 109 ifTrue: [
            recoveredBlock33Stack1 := recoveredBlock33Arg1.
            recoveredBlock33PC := 110.
        ].
        recoveredBlock33Step = 110 ifTrue: [
            recoveredBlock33Stack2 := recoveredLocal4.
            recoveredBlock33PC := 113.
        ].
        recoveredBlock33Step = 113 ifTrue: [
            recoveredBlock33Stack1 := (recoveredBlock33Stack1) unconvert: (recoveredBlock33Stack2).
            recoveredBlock33PC := 115.
        ].
        recoveredBlock33Step = 115 ifTrue: [
            ^recoveredBlock33Stack1
        ].
        recoveredBlock33Step = 116 ifTrue: [
            recoveredBlock33Result := recoveredBlock33Stack1.
            recoveredBlock33Done := true.
        ].
    ].
    recoveredBlock33Result
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 133.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := CwTransferMechanism.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultQueryData: (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"drgdrp.ic method 0x20001e90; bytecode file offset 0x7350"
!CwTargetTypeManager class methodsFor: 'recovered'!
exportTargetsFrom: recoveredArg1 platformSpecificObject: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            (recoveredStack0) dropMatches: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := CwDataInterchangeConverter.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) interchangeFormatClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) queryInterchangeType: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16Stack5 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := CwTransferMechanism.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Arg1.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) interchangeFormat.
            recoveredBlock16PC := 28.
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Stack4 := recoveredBlock16Stack3.
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredLocal2 := recoveredBlock16Stack4.
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) fromMedium: (recoveredBlock16Stack3).
            recoveredBlock16PC := 34.
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Stack2.
            recoveredBlock16PC := 35.
        ].
        recoveredBlock16Step = 35 ifTrue: [
            recoveredLocal1 := recoveredBlock16Stack3.
            recoveredBlock16PC := 38.
        ].
        recoveredBlock16Step = 38 ifTrue: [
            (recoveredBlock16Stack2 == nil) ifTrue: [recoveredBlock16PC := 65] ifFalse: [recoveredBlock16PC := 42].
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16PC := 43.
        ].
        recoveredBlock16Step = 43 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 44.
        ].
        recoveredBlock16Step = 44 ifTrue: [
            recoveredBlock16Stack2 := recoveredLocal1.
            recoveredBlock16PC := 47.
        ].
        recoveredBlock16Step = 47 ifTrue: [
            recoveredBlock16Stack3 := recoveredLocal2.
            recoveredBlock16PC := 50.
        ].
        recoveredBlock16Step = 50 ifTrue: [
            recoveredBlock16Stack4 := recoveredArg2.
            recoveredBlock16PC := 53.
        ].
        recoveredBlock16Step = 53 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) match: (recoveredBlock16Stack3) platformSpecificObject: (recoveredBlock16Stack4).
            recoveredBlock16PC := 55.
        ].
        recoveredBlock16Step = 55 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 58] ifFalse: [recoveredBlock16PC := 65].
        ].
        recoveredBlock16Step = 58 ifTrue: [
            recoveredBlock16PC := 59.
        ].
        recoveredBlock16Step = 59 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 60.
        ].
        recoveredBlock16Step = 60 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) dropMatches.
            recoveredBlock16PC := 62.
        ].
        recoveredBlock16Step = 62 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 63.
        ].
        recoveredBlock16Step = 63 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) add: (recoveredBlock16Stack2).
            recoveredBlock16PC := 65.
        ].
        recoveredBlock16Step = 65 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := CwTransferMechanism.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) dropMatches.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) sort: (recoveredStack2) entries: (recoveredStack3) platformSpecificObject: (recoveredStack4).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) dropMatches: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) dropMatches.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := [:block28000a18Arg1 | 
    | block28000a18Value0 block28000a18Value1 |
    block28000a18Value0 := block28000a18Arg1.
    block28000a18Value1 := (block28000a18Value0) formatName.
    block28000a18Value1
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := CwDragContext.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportTargets.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 127].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := CwDragContext.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) exportTargets: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := CwDragContext.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportTargets.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := [:recoveredBlock133Arg1 | 
    | recoveredBlock133Value0 recoveredBlock133Value1 recoveredBlock133Value2 |
    recoveredBlock133Value0 := recoveredLocal3.
    recoveredBlock133Value1 := recoveredBlock133Arg1.
    recoveredBlock133Value2 := (recoveredBlock133Value0) includes: (recoveredBlock133Value1).
    recoveredBlock133Value2
].
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

