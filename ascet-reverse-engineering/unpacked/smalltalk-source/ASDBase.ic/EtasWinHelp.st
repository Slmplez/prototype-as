"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006fa4; bytecode file offset 0x908be4"
!EtasWinHelp methodsFor: 'recovered'!
displayContents
    | recoveredValue0 |
    recoveredValue0 := (self) showContents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200077d8; bytecode file offset 0x908be4"
!EtasWinHelp methodsFor: 'recovered'!
displayHelpOnHelp
    | recoveredValue0 |
    recoveredValue0 := (self) showHelpOnHelp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009050; bytecode file offset 0x908be4"
!EtasWinHelp methodsFor: 'recovered'!
displayIndex
    | recoveredValue0 |
    recoveredValue0 := (self) showIndex.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009f14; bytecode file offset 0x908be4"
!EtasWinHelp methodsFor: 'recovered'!
close
    | recoveredValue0 |
    recoveredValue0 := (self) platformClose.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d724; bytecode file offset 0x90a4b8"
!EtasWinHelp methodsFor: 'recovered'!
examineResult: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002549c; bytecode file offset 0x92209c"
!EtasWinHelp methodsFor: 'recovered'!
platformFileExtension
    ^'hlp'
! !

"ASDBase.ic method 0x2003a730; bytecode file offset 0x938608"
!EtasWinHelp methodsFor: 'recovered'!
displayContextString: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) showTopicString: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bb04; bytecode file offset 0x938608"
!EtasWinHelp methodsFor: 'recovered'!
displayContextId: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) showTopicId: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042aec; bytecode file offset 0x9451f8"
!EtasWinHelp methodsFor: 'recovered'!
showIndex
    | recoveredValue0 |
    recoveredValue0 := (self) showTopicString: ('IPFToRTFIndex').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20065fdc; bytecode file offset 0x963428"
!EtasWinHelp methodsFor: 'recovered'!
fileName
    | recoveredValue0 |
    recoveredValue0 := fileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066e24; bytecode file offset 0x9646f8"
!EtasWinHelp methodsFor: 'recovered'!
widgetHandle
    | recoveredValue0 |
    recoveredValue0 := widgetHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bf500; bytecode file offset 0x9bc0b4"
!EtasWinHelp methodsFor: 'recovered'!
widgetHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    widgetHandle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200eaa58; bytecode file offset 0x9e731c"
!EtasWinHelp methodsFor: 'recovered'!
showTopicId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) widgetHandle.
    recoveredValue1 := (self) fileName.
    recoveredValue2 := HelpContext.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) winHelp: (recoveredValue1) fuCommand: (recoveredValue2) dwData: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f8c38; bytecode file offset 0x9f552c"
!EtasWinHelp methodsFor: 'recovered'!
platformClose
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetHandle.
    recoveredValue1 := (self) fileName.
    recoveredValue2 := HelpQuit.
    recoveredValue3 := (recoveredValue0) winHelp: (recoveredValue1) fuCommand: (recoveredValue2) dwData: (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f8c50; bytecode file offset 0x9f552c"
!EtasWinHelp methodsFor: 'recovered'!
showContents
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetHandle.
    recoveredValue1 := (self) fileName.
    recoveredValue2 := HelpContents.
    recoveredValue3 := (recoveredValue0) winHelp: (recoveredValue1) fuCommand: (recoveredValue2) dwData: (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f8c68; bytecode file offset 0x9f552c"
!EtasWinHelp methodsFor: 'recovered'!
showHelpOnHelp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetHandle.
    recoveredValue1 := (self) fileName.
    recoveredValue2 := HelpHelponhelp.
    recoveredValue3 := (recoveredValue0) winHelp: (recoveredValue1) fuCommand: (recoveredValue2) dwData: (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20114c04; bytecode file offset 0xa114c8"
!EtasWinHelp methodsFor: 'recovered'!
platformOpen
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025d1f4; bytecode file offset 0xb59abc"
!EtasWinHelp methodsFor: 'recovered'!
simpleFileName
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block280df6b0Arg1 | 
    | block280df6b0Value0 block280df6b0Value1 |
    block280df6b0Value0 := block280df6b0Arg1.
    block280df6b0Value1 := (block280df6b0Value0) = ($\).
    block280df6b0Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) findLast: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027b4e8; bytecode file offset 0xb77dc8"
!EtasWinHelp methodsFor: 'recovered'!
showTopicString: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) widgetHandle.
    recoveredValue1 := (self) fileName.
    recoveredValue2 := HelpForcefile.
    (recoveredValue0) winHelp: (recoveredValue1) fuCommand: (recoveredValue2) dwData: (nil).
    recoveredValue3 := (self) widgetHandle.
    recoveredValue4 := (self) fileName.
    recoveredValue5 := HelpCommand.
    recoveredValue6 := (self) simpleFileName.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := ('JumpId( "%1" , "%2" )') bindWith: (recoveredValue6) with: (recoveredValue7).
    recoveredValue9 := (recoveredValue8) copyToOSMemory.
    recoveredValue10 := recoveredValue9.
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := (recoveredValue9) address.
    (recoveredValue3) winHelp: (recoveredValue4) fuCommand: (recoveredValue5) dwData: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    (recoveredValue12) free.
    ^self
! !

"ASDBase.ic method 0x20297cbc; bytecode file offset 0xb94580"
!EtasWinHelp methodsFor: 'recovered'!
fileName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := fileName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            fileName := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := fileName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := fileName.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) platformFileExtension.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            fileName := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

