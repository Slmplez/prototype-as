"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbh.ic method 0x200003ec; bytecode file offset 0x11ee4"
!AbtImageConfigurator class methodsFor: 'recovered'!
sectionKeywords
    | recoveredValue0 |
    recoveredValue0 := (Notification new: 0) instVarAt: 1 put: ('CommonGraphics'); instVarAt: 2 put: ('CommonPrinting'); yourself.
    ^recoveredValue0
! !

"abtdbh.ic method 0x20003040; bytecode file offset 0x14b24"
!AbtImageConfigurator class methodsFor: 'recovered'!
action_printpath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('printPath:') asGlobalKey.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredArg1.
    recoveredBlock9Value2 := (recoveredBlock9Value0) printPath: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
    (self) ifReceiverClassNamed: ('CgPrinterServer') respondsTo: (recoveredValue0) thenDo: (recoveredValue1).
    ^self
! !

"abtdbh.ic method 0x20003340; bytecode file offset 0x14e24"
!AbtImageConfigurator class methodsFor: 'recovered'!
ifReceiverClassNamed: recoveredArg1 respondsTo: recoveredArg2 thenDo: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Warning.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) asGlobalKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) classAt: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbh.ic method 0x20003890; bytecode file offset 0x15378"
!AbtImageConfigurator class methodsFor: 'recovered'!
ifReceiverGlobalNamed: recoveredArg1 respondsTo: recoveredArg2 thenDo: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Warning.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) asGlobalKey.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbh.ic method 0x20005f14; bytecode file offset 0x17a20"
!AbtImageConfigurator class methodsFor: 'recovered'!
action_bitmappath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('bitmapPath:') asGlobalKey.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Local2 recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg1.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            (recoveredBlock9Stack1 ~~ nil) ifTrue: [recoveredBlock9PC := 28] ifFalse: [recoveredBlock9PC := 22].
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Stack2 := #().
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) bitmapPath: (recoveredBlock9Stack2).
            recoveredBlock9PC := 27.
        ].
        recoveredBlock9Step = 27 ifTrue: [
            ^recoveredBlock9Stack1
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9Stack1 := CldtConstants.
            recoveredBlock9PC := 30.
        ].
        recoveredBlock9Step = 30 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) new.
            recoveredBlock9PC := 32.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredBlock9Local2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 33.
        ].
        recoveredBlock9Step = 33 ifTrue: [
            recoveredBlock9Stack1 := CompiledMethod.
            recoveredBlock9PC := 35.
        ].
        recoveredBlock9Step = 35 ifTrue: [
            recoveredBlock9Stack2 := recoveredArg1.
            recoveredBlock9PC := 38.
        ].
        recoveredBlock9Step = 38 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) on: (recoveredBlock9Stack2).
            recoveredBlock9PC := 40.
        ].
        recoveredBlock9Step = 40 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 41.
        ].
        recoveredBlock9Step = 41 ifTrue: [
            recoveredBlock9PC := 54.
        ].
        recoveredBlock9Step = 44 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Local2.
            recoveredBlock9PC := 45.
        ].
        recoveredBlock9Step = 45 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Local1.
            recoveredBlock9PC := 46.
        ].
        recoveredBlock9Step = 46 ifTrue: [
            recoveredBlock9Stack3 := $;.
            recoveredBlock9PC := 50.
        ].
        recoveredBlock9Step = 50 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) upTo: (recoveredBlock9Stack3).
            recoveredBlock9PC := 52.
        ].
        recoveredBlock9Step = 52 ifTrue: [
            (recoveredBlock9Stack1) add: (recoveredBlock9Stack2).
            recoveredBlock9PC := 54.
        ].
        recoveredBlock9Step = 54 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Local1.
            recoveredBlock9PC := 55.
        ].
        recoveredBlock9Step = 55 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) atEnd.
            recoveredBlock9PC := 57.
        ].
        recoveredBlock9Step = 57 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 59] ifFalse: [recoveredBlock9PC := 44].
        ].
        recoveredBlock9Step = 59 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 60.
        ].
        recoveredBlock9Step = 60 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Local2.
            recoveredBlock9PC := 61.
        ].
        recoveredBlock9Step = 61 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) notEmpty.
            recoveredBlock9PC := 63.
        ].
        recoveredBlock9Step = 63 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 66] ifFalse: [recoveredBlock9PC := 73].
        ].
        recoveredBlock9Step = 66 ifTrue: [
            recoveredBlock9PC := 67.
        ].
        recoveredBlock9Step = 67 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 68.
        ].
        recoveredBlock9Step = 68 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Local2.
            recoveredBlock9PC := 69.
        ].
        recoveredBlock9Step = 69 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) asArray.
            recoveredBlock9PC := 71.
        ].
        recoveredBlock9Step = 71 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) bitmapPath: (recoveredBlock9Stack2).
            recoveredBlock9PC := 73.
        ].
        recoveredBlock9Step = 73 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (self) ifReceiverClassNamed: ('CgScreen') respondsTo: (recoveredValue0) thenDo: (recoveredValue1).
    ^self
! !

"abtdbh.ic method 0x20006268; bytecode file offset 0x17d74"
!AbtImageConfigurator class methodsFor: 'recovered'!
readIniFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sectionKeywords.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := EsImageStartUp.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) iniFileGetContentsArray: (recoveredBlock5Value1).
    recoveredBlock5Value3 := [:recoveredBlock5Block16Arg1 | 
    | recoveredBlock5Block16Local1 recoveredBlock5Block16Local2 recoveredBlock5Block16Stack0 recoveredBlock5Block16Stack1 recoveredBlock5Block16Stack2 recoveredBlock5Block16Stack3 recoveredBlock5Block16Stack4 recoveredBlock5Block16PC recoveredBlock5Block16Step recoveredBlock5Block16Done recoveredBlock5Block16Result |
    recoveredBlock5Block16Stack0 := self.
    recoveredBlock5Block16PC := 22.
    recoveredBlock5Block16Done := false.
    [recoveredBlock5Block16Done not] whileTrue: [
        recoveredBlock5Block16Step := recoveredBlock5Block16PC.
        recoveredBlock5Block16Step = 22 ifTrue: [
            recoveredBlock5Block16Stack1 := 'action_'.
            recoveredBlock5Block16PC := 24.
        ].
        recoveredBlock5Block16Step = 24 ifTrue: [
            recoveredBlock5Block16Stack2 := recoveredBlock5Block16Arg1.
            recoveredBlock5Block16PC := 25.
        ].
        recoveredBlock5Block16Step = 25 ifTrue: [
            recoveredBlock5Block16Stack2 := (recoveredBlock5Block16Stack2) key.
            recoveredBlock5Block16PC := 27.
        ].
        recoveredBlock5Block16Step = 27 ifTrue: [
            recoveredBlock5Block16Stack2 := (recoveredBlock5Block16Stack2) asLowercase.
            recoveredBlock5Block16PC := 29.
        ].
        recoveredBlock5Block16Step = 29 ifTrue: [
            recoveredBlock5Block16Stack1 := (recoveredBlock5Block16Stack1) , (recoveredBlock5Block16Stack2).
            recoveredBlock5Block16PC := 31.
        ].
        recoveredBlock5Block16Step = 31 ifTrue: [
            recoveredBlock5Block16Stack2 := ':'.
            recoveredBlock5Block16PC := 33.
        ].
        recoveredBlock5Block16Step = 33 ifTrue: [
            recoveredBlock5Block16Stack1 := (recoveredBlock5Block16Stack1) , (recoveredBlock5Block16Stack2).
            recoveredBlock5Block16PC := 35.
        ].
        recoveredBlock5Block16Step = 35 ifTrue: [
            recoveredBlock5Block16Stack1 := (recoveredBlock5Block16Stack1) asSymbol.
            recoveredBlock5Block16PC := 37.
        ].
        recoveredBlock5Block16Step = 37 ifTrue: [
            recoveredBlock5Block16Local2 := recoveredBlock5Block16Stack1.
            recoveredBlock5Block16PC := 38.
        ].
        recoveredBlock5Block16Step = 38 ifTrue: [
            recoveredBlock5Block16Stack1 := nil.
            recoveredBlock5Block16PC := 39.
        ].
        recoveredBlock5Block16Step = 39 ifTrue: [
            recoveredBlock5Block16Stack2 := self.
            recoveredBlock5Block16PC := 40.
        ].
        recoveredBlock5Block16Step = 40 ifTrue: [
            recoveredBlock5Block16Stack3 := recoveredBlock5Block16Local2.
            recoveredBlock5Block16PC := 41.
        ].
        recoveredBlock5Block16Step = 41 ifTrue: [
            recoveredBlock5Block16Stack2 := (recoveredBlock5Block16Stack2) respondsTo: (recoveredBlock5Block16Stack3).
            recoveredBlock5Block16PC := 43.
        ].
        recoveredBlock5Block16Step = 43 ifTrue: [
            (recoveredBlock5Block16Stack2) ifTrue: [recoveredBlock5Block16PC := 46] ifFalse: [recoveredBlock5Block16PC := 75].
        ].
        recoveredBlock5Block16Step = 46 ifTrue: [
            recoveredBlock5Block16PC := 47.
        ].
        recoveredBlock5Block16Step = 47 ifTrue: [
            recoveredBlock5Block16Stack1 := recoveredBlock5Block16Arg1.
            recoveredBlock5Block16PC := 48.
        ].
        recoveredBlock5Block16Step = 48 ifTrue: [
            recoveredBlock5Block16Stack1 := (recoveredBlock5Block16Stack1) value.
            recoveredBlock5Block16PC := 50.
        ].
        recoveredBlock5Block16Step = 50 ifTrue: [
            (recoveredBlock5Block16Stack1 == nil) ifTrue: [recoveredBlock5Block16PC := 62] ifFalse: [recoveredBlock5Block16PC := 54].
        ].
        recoveredBlock5Block16Step = 54 ifTrue: [
            recoveredBlock5Block16Stack1 := recoveredBlock5Block16Arg1.
            recoveredBlock5Block16PC := 55.
        ].
        recoveredBlock5Block16Step = 55 ifTrue: [
            recoveredBlock5Block16Stack1 := (recoveredBlock5Block16Stack1) value.
            recoveredBlock5Block16PC := 57.
        ].
        recoveredBlock5Block16Step = 57 ifTrue: [
            recoveredBlock5Block16Stack1 := (recoveredBlock5Block16Stack1) isEmpty.
            recoveredBlock5Block16PC := 59.
        ].
        recoveredBlock5Block16Step = 59 ifTrue: [
            (recoveredBlock5Block16Stack1) ifTrue: [recoveredBlock5Block16PC := 62] ifFalse: [recoveredBlock5Block16PC := 66].
        ].
        recoveredBlock5Block16Step = 62 ifTrue: [
            recoveredBlock5Block16Stack1 := nil.
            recoveredBlock5Block16PC := 63.
        ].
        recoveredBlock5Block16Step = 63 ifTrue: [
            recoveredBlock5Block16PC := 69.
        ].
        recoveredBlock5Block16Step = 66 ifTrue: [
            recoveredBlock5Block16Stack1 := recoveredBlock5Block16Arg1.
            recoveredBlock5Block16PC := 67.
        ].
        recoveredBlock5Block16Step = 67 ifTrue: [
            recoveredBlock5Block16Stack1 := (recoveredBlock5Block16Stack1) value.
            recoveredBlock5Block16PC := 69.
        ].
        recoveredBlock5Block16Step = 69 ifTrue: [
            recoveredBlock5Block16Local1 := recoveredBlock5Block16Stack1.
            recoveredBlock5Block16PC := 70.
        ].
        recoveredBlock5Block16Step = 70 ifTrue: [
            recoveredBlock5Block16Stack1 := self.
            recoveredBlock5Block16PC := 71.
        ].
        recoveredBlock5Block16Step = 71 ifTrue: [
            recoveredBlock5Block16Stack2 := recoveredBlock5Block16Local2.
            recoveredBlock5Block16PC := 72.
        ].
        recoveredBlock5Block16Step = 72 ifTrue: [
            recoveredBlock5Block16Stack3 := recoveredBlock5Block16Local1.
            recoveredBlock5Block16PC := 73.
        ].
        recoveredBlock5Block16Step = 73 ifTrue: [
            recoveredBlock5Block16Stack1 := (recoveredBlock5Block16Stack1) perform: (recoveredBlock5Block16Stack2) with: (recoveredBlock5Block16Stack3).
            recoveredBlock5Block16PC := 75.
        ].
        recoveredBlock5Block16Step = 75 ifTrue: [
            recoveredBlock5Block16Result := recoveredBlock5Block16Stack1.
            recoveredBlock5Block16Done := true.
        ].
    ].
    recoveredBlock5Block16Result
].
    recoveredBlock5Value4 := (recoveredBlock5Value2) associationsDo: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

