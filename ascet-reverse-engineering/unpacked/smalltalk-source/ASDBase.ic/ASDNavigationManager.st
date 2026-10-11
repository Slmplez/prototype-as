"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065e34; bytecode file offset 0x963428"
!ASDNavigationManager methodsFor: 'recovered'!
navigationStack
    | recoveredValue0 |
    recoveredValue0 := navigationStack.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006771c; bytecode file offset 0x9646f8"
!ASDNavigationManager methodsFor: 'recovered'!
currentIndex
    | recoveredValue0 |
    recoveredValue0 := currentIndex.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068bcc; bytecode file offset 0x965b90"
!ASDNavigationManager methodsFor: 'recovered'!
owner
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069908; bytecode file offset 0x966bdc"
!ASDNavigationManager methodsFor: 'recovered'!
lastError
    | recoveredValue0 |
    recoveredValue0 := lastError.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200835c4; bytecode file offset 0x97ff54"
!ASDNavigationManager methodsFor: 'recovered'!
openLink: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) openLink: (recoveredValue0) silentMode: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20083660; bytecode file offset 0x97ff54"
!ASDNavigationManager methodsFor: 'recovered'!
openAscetLink: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) openAscetLink: (recoveredValue0) silentMode: (false).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ba894; bytecode file offset 0x9b7170"
!ASDNavigationManager methodsFor: 'recovered'!
navigationStack: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    navigationStack := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    currentIndex := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200bec68; bytecode file offset 0x9bc0b4"
!ASDNavigationManager methodsFor: 'recovered'!
currentIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentIndex := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfd64; bytecode file offset 0x9bd228"
!ASDNavigationManager methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c13d8; bytecode file offset 0x9bdf14"
!ASDNavigationManager methodsFor: 'recovered'!
lastError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastError := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2064; bytecode file offset 0x9beac8"
!ASDNavigationManager methodsFor: 'recovered'!
silentMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    silentMode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20105dc0; bytecode file offset 0xa02684"
!ASDNavigationManager methodsFor: 'recovered'!
silentMode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := silentMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            silentMode := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := silentMode.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012e95c; bytecode file offset 0xa2b220"
!ASDNavigationManager methodsFor: 'recovered'!
currentNavigationTarget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigationStack.
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
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigationStack.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIndex.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20142394; bytecode file offset 0xa3ec58"
!ASDNavigationManager methodsFor: 'recovered'!
normalizeValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) replace: ($") with: ('').
    ^recoveredValue2
! !

"ASDBase.ic method 0x2014ec34; bytecode file offset 0xa4b4f4"
!ASDNavigationManager methodsFor: 'recovered'!
hasPreviousNavigationTarget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) navigationStack.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIndex.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015f3a0; bytecode file offset 0xa5bc64"
!ASDNavigationManager methodsFor: 'recovered'!
hasNextNavigationTarget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) navigationStack.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIndex.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) navigationStack.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f6840; bytecode file offset 0xaf318c"
!ASDNavigationManager methodsFor: 'recovered'!
reportImportantInformation: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) silentMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := ('ASCET Link: ') , (recoveredBlock11Value0).
    recoveredBlock11Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) addImportantInfoTextBlock: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f6860; bytecode file offset 0xaf318c"
!ASDNavigationManager methodsFor: 'recovered'!
reportWarning: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) silentMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := ('ASCET Link: ') , (recoveredBlock11Value0).
    recoveredBlock11Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) addWarningTextBlock: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f6880; bytecode file offset 0xaf318c"
!ASDNavigationManager methodsFor: 'recovered'!
reportInformation: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) silentMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := ('ASCET Link: ') , (recoveredBlock11Value0).
    recoveredBlock11Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) addInfoTextBlock: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f68a0; bytecode file offset 0xaf318c"
!ASDNavigationManager methodsFor: 'recovered'!
reportError: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) silentMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := ('ASCET Link: ') , (recoveredBlock11Value0).
    recoveredBlock11Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) addErrorTextBlock: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f68c0; bytecode file offset 0xaf318c"
!ASDNavigationManager methodsFor: 'recovered'!
reportDebug: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) silentMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := ('ASCET Link: ') , (recoveredBlock11Value0).
    recoveredBlock11Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) addDebugTextBlock: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021784c; bytecode file offset 0xb14128"
!ASDNavigationManager methodsFor: 'recovered'!
reset
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            (recoveredStack0) navigationStack: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigationInputTool.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280dab74Arg1 | 
    | block280dab74Value0 block280dab74Value1 block280dab74Value2 block280dab74Value3 block280dab74Value4 |
    block280dab74Value0 := block280dab74Arg1.
    block280dab74Value1 := (block280dab74Value0) getWidget.
    block280dab74Value2 := OrderedCollection.
    block280dab74Value3 := (block280dab74Value2) new.
    block280dab74Value4 := (block280dab74Value1) items: (block280dab74Value3).
    block280dab74Value4
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021976c; bytecode file offset 0xb16034"
!ASDNavigationManager methodsFor: 'recovered'!
previousNavigationTarget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigationStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentIndex.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIndex.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) currentIndex: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigationStack.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIndex.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202318e4; bytecode file offset 0xb2e1b0"
!ASDNavigationManager methodsFor: 'recovered'!
nextNavigationTarget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigationStack.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentIndex.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) navigationStack.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIndex.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) currentIndex: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigationStack.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIndex.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027ad50; bytecode file offset 0xb7762c"
!ASDNavigationManager methodsFor: 'recovered'!
navigateToWorkspace: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := AsdLink.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := $/.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := '\'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilename.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) location.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'Workspace is not the same as the currently opened'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20331a9c; bytecode file offset 0xc2e38c"
!ASDNavigationManager methodsFor: 'recovered'!
openAscetLink: recoveredArg1 silentMode: recoveredArg2
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
            (recoveredStack0) silentMode: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := 'ASCETLINKS'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'PROD105089'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) ascetNavigationManager.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) openAscetLink: (recoveredStack1) silentMode: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastError.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) lastError: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) silentMode.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastError.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := '\(ASCET-Link) Link: '.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) addDebugText: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203558ec; bytecode file offset 0xc521c4"
!ASDNavigationManager methodsFor: 'recovered'!
getRecentNavigationStackItems: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) navigationStack.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := [].
    recoveredBlock11Value2 := (recoveredBlock11Value0) getObjectIfUndefined: (recoveredBlock11Value1).
    recoveredBlock11Value3 := [:recoveredBlock11Block23Arg1 | 
    | recoveredBlock11Block23Stack0 recoveredBlock11Block23Stack1 recoveredBlock11Block23Stack2 recoveredBlock11Block23Stack3 recoveredBlock11Block23Stack4 recoveredBlock11Block23PC recoveredBlock11Block23Step recoveredBlock11Block23Done recoveredBlock11Block23Result |
    recoveredBlock11Block23Stack0 := self.
    recoveredBlock11Block23PC := 30.
    recoveredBlock11Block23Done := false.
    [recoveredBlock11Block23Done not] whileTrue: [
        recoveredBlock11Block23Step := recoveredBlock11Block23PC.
        recoveredBlock11Block23Step = 30 ifTrue: [
            recoveredBlock11Block23Stack1 := recoveredLocal1.
            recoveredBlock11Block23PC := 33.
        ].
        recoveredBlock11Block23Step = 33 ifTrue: [
            recoveredBlock11Block23Stack2 := recoveredBlock11Block23Arg1.
            recoveredBlock11Block23PC := 34.
        ].
        recoveredBlock11Block23Step = 34 ifTrue: [
            (recoveredBlock11Block23Stack1) add: (recoveredBlock11Block23Stack2).
            recoveredBlock11Block23PC := 36.
        ].
        recoveredBlock11Block23Step = 36 ifTrue: [
            recoveredBlock11Block23Stack1 := nil.
            recoveredBlock11Block23PC := 37.
        ].
        recoveredBlock11Block23Step = 37 ifTrue: [
            recoveredBlock11Block23Stack2 := recoveredLocal1.
            recoveredBlock11Block23PC := 40.
        ].
        recoveredBlock11Block23Step = 40 ifTrue: [
            recoveredBlock11Block23Stack2 := (recoveredBlock11Block23Stack2) size.
            recoveredBlock11Block23PC := 42.
        ].
        recoveredBlock11Block23Step = 42 ifTrue: [
            recoveredBlock11Block23Stack3 := recoveredArg1.
            recoveredBlock11Block23PC := 45.
        ].
        recoveredBlock11Block23Step = 45 ifTrue: [
            recoveredBlock11Block23Stack2 := (recoveredBlock11Block23Stack2) = (recoveredBlock11Block23Stack3).
            recoveredBlock11Block23PC := 46.
        ].
        recoveredBlock11Block23Step = 46 ifTrue: [
            (recoveredBlock11Block23Stack2) ifTrue: [recoveredBlock11Block23PC := 50] ifFalse: [recoveredBlock11Block23PC := 55].
        ].
        recoveredBlock11Block23Step = 50 ifTrue: [
            recoveredBlock11Block23PC := 51.
        ].
        recoveredBlock11Block23Step = 51 ifTrue: [
            recoveredBlock11Block23Stack1 := recoveredLocal1.
            recoveredBlock11Block23PC := 54.
        ].
        recoveredBlock11Block23Step = 54 ifTrue: [
            ^recoveredBlock11Block23Stack1
        ].
        recoveredBlock11Block23Step = 55 ifTrue: [
            recoveredBlock11Block23Result := recoveredBlock11Block23Stack1.
            recoveredBlock11Block23Done := true.
        ].
    ].
    recoveredBlock11Block23Result
].
    recoveredBlock11Value4 := (recoveredBlock11Value2) ifNotNil: (recoveredBlock11Value3).
    recoveredBlock11Value4
].
    (recoveredValue2) reverseDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2035dfb0; bytecode file offset 0xc5a888"
!ASDNavigationManager methodsFor: 'recovered'!
openLink: recoveredArg1 silentMode: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := '"'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWith: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStringFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := '"'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) endsWith: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStringFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'ascet://'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWith: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) openAscetLink: (recoveredStack2) silentMode: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'asd://'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWith: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) openAsdLink: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f9300; bytecode file offset 0xcf5bf8"
!ASDNavigationManager methodsFor: 'recovered'!
navigateToDatabase: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := AsdLink.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWith: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := AsdLink.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := $/.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := '\'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := AscetLink.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWith: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := AscetLink.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := $/.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := '\'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'ASCETLINKS'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'PROD105089'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := $&.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := '%'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPath.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) location.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPath.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasSamePathName: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'Database is not the same as the currently opened'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20469c5c; bytecode file offset 0xd66554"
!ASDNavigationManager methodsFor: 'recovered'!
getNavigationObjectFromKey: recoveredArg1 value: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'ASCETLINKS'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PROD105089'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'signature'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := ASDNavigationObject.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'method'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) normalizeValue: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithType: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'diagram'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := ASDNavigationObject.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'specification'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) normalizeValue: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithType: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'goid'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := ASDNavigationObject.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 'graphicobject'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) normalizeValue: (recoveredStack4).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithType: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 'hierarchy'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := ASDNavigationObject.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'hierarchy'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) normalizeValue: (recoveredStack4).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithType: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 'element'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 101].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := ASDNavigationObject.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'element'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) normalizeValue: (recoveredStack4).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithType: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 'implementation'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := ASDNavigationObject.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'implementation'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := (recoveredStack3) normalizeValue: (recoveredStack4).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithType: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204c1b38; bytecode file offset 0xdbe434"
!ASDNavigationManager methodsFor: 'recovered'!
openAsdLink: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := AsdLink.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWith: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'Invalid asd link'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) parseAsdLink: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := 'No navigatable objects'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            lastError := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDatabaseNavigationObject.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigateToDatabase: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) removeFirst.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceNavigationObject.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 101].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigateToWorkspace: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) removeFirst.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := [:recoveredBlock104Arg1 | 
    | recoveredBlock104Stack0 recoveredBlock104Stack1 recoveredBlock104Stack2 recoveredBlock104Stack3 recoveredBlock104PC recoveredBlock104Step recoveredBlock104Done recoveredBlock104Result |
    recoveredBlock104Stack0 := self.
    recoveredBlock104PC := 110.
    recoveredBlock104Done := false.
    [recoveredBlock104Done not] whileTrue: [
        recoveredBlock104Step := recoveredBlock104PC.
        recoveredBlock104Step = 110 ifTrue: [
            recoveredBlock104Stack1 := recoveredLocal1.
            recoveredBlock104PC := 113.
        ].
        recoveredBlock104Step = 113 ifTrue: [
            (recoveredBlock104Stack1 == nil) ifTrue: [recoveredBlock104PC := 132] ifFalse: [recoveredBlock104PC := 116].
        ].
        recoveredBlock104Step = 116 ifTrue: [
            recoveredBlock104Stack1 := recoveredBlock104Arg1.
            recoveredBlock104PC := 117.
        ].
        recoveredBlock104Step = 117 ifTrue: [
            recoveredBlock104Stack2 := recoveredLocal1.
            recoveredBlock104PC := 120.
        ].
        recoveredBlock104Step = 120 ifTrue: [
            recoveredBlock104Stack2 := (recoveredBlock104Stack2) object.
            recoveredBlock104PC := 122.
        ].
        recoveredBlock104Step = 122 ifTrue: [
            (recoveredBlock104Stack1) parent: (recoveredBlock104Stack2).
            recoveredBlock104PC := 124.
        ].
        recoveredBlock104Step = 124 ifTrue: [
            recoveredBlock104Stack1 := recoveredBlock104Arg1.
            recoveredBlock104PC := 125.
        ].
        recoveredBlock104Step = 125 ifTrue: [
            recoveredBlock104Stack2 := recoveredLocal1.
            recoveredBlock104PC := 128.
        ].
        recoveredBlock104Step = 128 ifTrue: [
            recoveredBlock104Stack2 := (recoveredBlock104Stack2) userInterface.
            recoveredBlock104PC := 130.
        ].
        recoveredBlock104Step = 130 ifTrue: [
            (recoveredBlock104Stack1) userInterface: (recoveredBlock104Stack2).
            recoveredBlock104PC := 132.
        ].
        recoveredBlock104Step = 132 ifTrue: [
            recoveredBlock104Stack1 := recoveredBlock104Arg1.
            recoveredBlock104PC := 133.
        ].
        recoveredBlock104Step = 133 ifTrue: [
            recoveredBlock104Stack0 := (recoveredBlock104Stack0) navigateToObject: (recoveredBlock104Stack1).
            recoveredBlock104PC := 135.
        ].
        recoveredBlock104Step = 135 ifTrue: [
            (recoveredBlock104Stack0) ifTrue: [recoveredBlock104PC := 140] ifFalse: [recoveredBlock104PC := 138].
        ].
        recoveredBlock104Step = 138 ifTrue: [
            recoveredBlock104Stack0 := false.
            recoveredBlock104PC := 139.
        ].
        recoveredBlock104Step = 139 ifTrue: [
            ^recoveredBlock104Stack0
        ].
        recoveredBlock104Step = 140 ifTrue: [
            recoveredBlock104Stack0 := recoveredBlock104Arg1.
            recoveredBlock104PC := 141.
        ].
        recoveredBlock104Step = 141 ifTrue: [
            recoveredBlock104Stack1 := recoveredBlock104Stack0.
            recoveredBlock104PC := 142.
        ].
        recoveredBlock104Step = 142 ifTrue: [
            recoveredLocal1 := recoveredBlock104Stack1.
            recoveredBlock104PC := 145.
        ].
        recoveredBlock104Step = 145 ifTrue: [
            recoveredBlock104Result := recoveredBlock104Stack0.
            recoveredBlock104Done := true.
        ].
    ].
    recoveredBlock104Result
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051e310; bytecode file offset 0xe1ac30"
!ASDNavigationManager methodsFor: 'recovered'!
addNavigationTarget: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentIndex.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) navigationStack.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigationStack.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentIndex.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) navigationStack.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) navigationStack.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) removeAtIndex: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 22] ifFalse: [recoveredPC := 61]] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) asRBDBReference.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigationStack.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigationStack.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigationStack.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) navigationInputTool.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := [:recoveredBlock103Arg1 | 
    | recoveredBlock103Stack0 recoveredBlock103Stack1 recoveredBlock103Stack2 recoveredBlock103Stack3 recoveredBlock103PC recoveredBlock103Step recoveredBlock103Done recoveredBlock103Result |
    recoveredBlock103Stack0 := self.
    recoveredBlock103PC := 110.
    recoveredBlock103Done := false.
    [recoveredBlock103Done not] whileTrue: [
        recoveredBlock103Step := recoveredBlock103PC.
        recoveredBlock103Step = 110 ifTrue: [
            recoveredBlock103Stack1 := recoveredBlock103Arg1.
            recoveredBlock103PC := 111.
        ].
        recoveredBlock103Step = 111 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) getWidget.
            recoveredBlock103PC := 113.
        ].
        recoveredBlock103Step = 113 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) getString.
            recoveredBlock103PC := 115.
        ].
        recoveredBlock103Step = 115 ifTrue: [
            recoveredLocal4 := recoveredBlock103Stack1.
            recoveredBlock103PC := 118.
        ].
        recoveredBlock103Step = 118 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) navigationStack.
            recoveredBlock103PC := 119.
        ].
        recoveredBlock103Step = 119 ifTrue: [
            recoveredBlock103Stack1 := [:block2810c240Arg1 | 
    | block2810c240Stack0 block2810c240Stack1 block2810c240Stack2 block2810c240Stack3 block2810c240PC block2810c240Step block2810c240Done block2810c240Result |
    block2810c240Stack0 := self.
    block2810c240PC := 4.
    block2810c240Done := false.
    [block2810c240Done not] whileTrue: [
        block2810c240Step := block2810c240PC.
        block2810c240Step = 4 ifTrue: [
            block2810c240Stack1 := block2810c240Arg1.
            block2810c240PC := 5.
        ].
        block2810c240Step = 5 ifTrue: [
            block2810c240Stack2 := [:block2810c264Arg1 | 
    nil
].
            block2810c240PC := 7.
        ].
        block2810c240Step = 7 ifTrue: [
            block2810c240PC := 12.
        ].
        block2810c240Step = 12 ifTrue: [
            block2810c240Stack1 := (block2810c240Stack1) getObjectIfUndefined: (block2810c240Stack2).
            block2810c240PC := 14.
        ].
        block2810c240Step = 14 ifTrue: [
            block2810c240Stack1 := (block2810c240Stack1) notNil.
            block2810c240PC := 15.
        ].
        block2810c240Step = 15 ifTrue: [
            block2810c240Result := block2810c240Stack1.
            block2810c240Done := true.
        ].
    ].
    block2810c240Result
].
            recoveredBlock103PC := 121.
        ].
        recoveredBlock103Step = 121 ifTrue: [
            recoveredBlock103PC := 136.
        ].
        recoveredBlock103Step = 136 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) select: (recoveredBlock103Stack1).
            recoveredBlock103PC := 138.
        ].
        recoveredBlock103Step = 138 ifTrue: [
            recoveredLocal2 := recoveredBlock103Stack0.
            recoveredBlock103PC := 141.
        ].
        recoveredBlock103Step = 141 ifTrue: [
            recoveredBlock103Stack0 := recoveredBlock103Arg1.
            recoveredBlock103PC := 142.
        ].
        recoveredBlock103Step = 142 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) getWidget.
            recoveredBlock103PC := 144.
        ].
        recoveredBlock103Step = 144 ifTrue: [
            recoveredBlock103Stack1 := recoveredLocal2.
            recoveredBlock103PC := 147.
        ].
        recoveredBlock103Step = 147 ifTrue: [
            recoveredBlock103Stack2 := [:block2810c288Arg1 | 
    | block2810c288Stack0 block2810c288Stack1 block2810c288Stack2 block2810c288Stack3 block2810c288PC block2810c288Step block2810c288Done block2810c288Result |
    block2810c288Stack0 := self.
    block2810c288PC := 4.
    block2810c288Done := false.
    [block2810c288Done not] whileTrue: [
        block2810c288Step := block2810c288PC.
        block2810c288Step = 4 ifTrue: [
            block2810c288Stack1 := block2810c288Arg1.
            block2810c288PC := 5.
        ].
        block2810c288Step = 5 ifTrue: [
            block2810c288Stack2 := [:block2810c2acArg1 | 
    nil
].
            block2810c288PC := 7.
        ].
        block2810c288Step = 7 ifTrue: [
            block2810c288PC := 12.
        ].
        block2810c288Step = 12 ifTrue: [
            block2810c288Stack1 := (block2810c288Stack1) getObjectIfUndefined: (block2810c288Stack2).
            block2810c288PC := 14.
        ].
        block2810c288Step = 14 ifTrue: [
            block2810c288Stack1 := (block2810c288Stack1) completeLibraryPath.
            block2810c288PC := 16.
        ].
        block2810c288Step = 16 ifTrue: [
            block2810c288Result := block2810c288Stack1.
            block2810c288Done := true.
        ].
    ].
    block2810c288Result
].
            recoveredBlock103PC := 149.
        ].
        recoveredBlock103Step = 149 ifTrue: [
            recoveredBlock103PC := 165.
        ].
        recoveredBlock103Step = 165 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) collect: (recoveredBlock103Stack2).
            recoveredBlock103PC := 167.
        ].
        recoveredBlock103Step = 167 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) asSet.
            recoveredBlock103PC := 169.
        ].
        recoveredBlock103Step = 169 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) asSortedCollection.
            recoveredBlock103PC := 171.
        ].
        recoveredBlock103Step = 171 ifTrue: [
            (recoveredBlock103Stack0) items: (recoveredBlock103Stack1).
            recoveredBlock103PC := 173.
        ].
        recoveredBlock103Step = 173 ifTrue: [
            recoveredBlock103Stack0 := recoveredBlock103Arg1.
            recoveredBlock103PC := 174.
        ].
        recoveredBlock103Step = 174 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) getWidget.
            recoveredBlock103PC := 176.
        ].
        recoveredBlock103Step = 176 ifTrue: [
            recoveredBlock103Stack1 := recoveredLocal4.
            recoveredBlock103PC := 179.
        ].
        recoveredBlock103Step = 179 ifTrue: [
            recoveredBlock103Stack0 := (recoveredBlock103Stack0) setString: (recoveredBlock103Stack1).
            recoveredBlock103PC := 181.
        ].
        recoveredBlock103Step = 181 ifTrue: [
            recoveredBlock103Result := recoveredBlock103Stack0.
            recoveredBlock103Done := true.
        ].
    ].
    recoveredBlock103Result
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) navigationStack.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) currentIndex: (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205986c0; bytecode file offset 0xe94ff8"
!ASDNavigationManager methodsFor: 'recovered'!
parseAsdLink: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := '?'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := AsdLink.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWith: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := MainController.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) workspaceExtension.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) endsWith: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := ASDNavigationObject.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := 'workspace'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := (recoveredStack4) first.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) createWithType: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := ASDNavigationObject.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := 'database'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := (recoveredStack4) first.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) createWithType: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := [:recoveredBlock114Arg1 | 
    | recoveredBlock114Stack0 recoveredBlock114Stack1 recoveredBlock114Stack2 recoveredBlock114Stack3 recoveredBlock114Stack4 recoveredBlock114Stack5 recoveredBlock114PC recoveredBlock114Step recoveredBlock114Done recoveredBlock114Result |
    recoveredBlock114Stack0 := self.
    recoveredBlock114PC := 120.
    recoveredBlock114Done := false.
    [recoveredBlock114Done not] whileTrue: [
        recoveredBlock114Step := recoveredBlock114PC.
        recoveredBlock114Step = 120 ifTrue: [
            recoveredBlock114Stack1 := recoveredBlock114Arg1.
            recoveredBlock114PC := 121.
        ].
        recoveredBlock114Step = 121 ifTrue: [
            recoveredBlock114Stack2 := $/.
            recoveredBlock114PC := 124.
        ].
        recoveredBlock114Step = 124 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) includes: (recoveredBlock114Stack2).
            recoveredBlock114PC := 126.
        ].
        recoveredBlock114Step = 126 ifTrue: [
            (recoveredBlock114Stack1) ifTrue: [recoveredBlock114PC := 130] ifFalse: [recoveredBlock114PC := 146].
        ].
        recoveredBlock114Step = 130 ifTrue: [
            recoveredBlock114Stack1 := recoveredLocal1.
            recoveredBlock114PC := 133.
        ].
        recoveredBlock114Step = 133 ifTrue: [
            recoveredBlock114Stack2 := ASDNavigationObject.
            recoveredBlock114PC := 135.
        ].
        recoveredBlock114Step = 135 ifTrue: [
            recoveredBlock114Stack3 := 'component'.
            recoveredBlock114PC := 137.
        ].
        recoveredBlock114Step = 137 ifTrue: [
            recoveredBlock114Stack4 := recoveredBlock114Arg1.
            recoveredBlock114PC := 138.
        ].
        recoveredBlock114Step = 138 ifTrue: [
            recoveredBlock114Stack2 := (recoveredBlock114Stack2) createWithType: (recoveredBlock114Stack3) value: (recoveredBlock114Stack4).
            recoveredBlock114PC := 140.
        ].
        recoveredBlock114Step = 140 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) add: (recoveredBlock114Stack2).
            recoveredBlock114PC := 142.
        ].
        recoveredBlock114Step = 142 ifTrue: [
            recoveredBlock114PC := 278.
        ].
        recoveredBlock114Step = 146 ifTrue: [
            recoveredBlock114Stack1 := recoveredBlock114Arg1.
            recoveredBlock114PC := 147.
        ].
        recoveredBlock114Step = 147 ifTrue: [
            recoveredBlock114Stack2 := '()'.
            recoveredBlock114PC := 149.
        ].
        recoveredBlock114Step = 149 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) endsWith: (recoveredBlock114Stack2).
            recoveredBlock114PC := 151.
        ].
        recoveredBlock114Step = 151 ifTrue: [
            (recoveredBlock114Stack1) ifTrue: [recoveredBlock114PC := 154] ifFalse: [recoveredBlock114PC := 170].
        ].
        recoveredBlock114Step = 154 ifTrue: [
            recoveredBlock114Stack1 := recoveredLocal1.
            recoveredBlock114PC := 157.
        ].
        recoveredBlock114Step = 157 ifTrue: [
            recoveredBlock114Stack2 := ASDNavigationObject.
            recoveredBlock114PC := 159.
        ].
        recoveredBlock114Step = 159 ifTrue: [
            recoveredBlock114Stack3 := 'method'.
            recoveredBlock114PC := 161.
        ].
        recoveredBlock114Step = 161 ifTrue: [
            recoveredBlock114Stack4 := recoveredBlock114Arg1.
            recoveredBlock114PC := 162.
        ].
        recoveredBlock114Step = 162 ifTrue: [
            recoveredBlock114Stack2 := (recoveredBlock114Stack2) createWithType: (recoveredBlock114Stack3) value: (recoveredBlock114Stack4).
            recoveredBlock114PC := 164.
        ].
        recoveredBlock114Step = 164 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) add: (recoveredBlock114Stack2).
            recoveredBlock114PC := 166.
        ].
        recoveredBlock114Step = 166 ifTrue: [
            recoveredBlock114PC := 278.
        ].
        recoveredBlock114Step = 170 ifTrue: [
            recoveredBlock114Stack1 := recoveredBlock114Arg1.
            recoveredBlock114PC := 171.
        ].
        recoveredBlock114Step = 171 ifTrue: [
            recoveredBlock114Stack2 := '[]'.
            recoveredBlock114PC := 173.
        ].
        recoveredBlock114Step = 173 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) endsWith: (recoveredBlock114Stack2).
            recoveredBlock114PC := 175.
        ].
        recoveredBlock114Step = 175 ifTrue: [
            (recoveredBlock114Stack1) ifTrue: [recoveredBlock114PC := 178] ifFalse: [recoveredBlock114PC := 194].
        ].
        recoveredBlock114Step = 178 ifTrue: [
            recoveredBlock114Stack1 := recoveredLocal1.
            recoveredBlock114PC := 181.
        ].
        recoveredBlock114Step = 181 ifTrue: [
            recoveredBlock114Stack2 := ASDNavigationObject.
            recoveredBlock114PC := 183.
        ].
        recoveredBlock114Step = 183 ifTrue: [
            recoveredBlock114Stack3 := 'specification'.
            recoveredBlock114PC := 185.
        ].
        recoveredBlock114Step = 185 ifTrue: [
            recoveredBlock114Stack4 := recoveredBlock114Arg1.
            recoveredBlock114PC := 186.
        ].
        recoveredBlock114Step = 186 ifTrue: [
            recoveredBlock114Stack2 := (recoveredBlock114Stack2) createWithType: (recoveredBlock114Stack3) value: (recoveredBlock114Stack4).
            recoveredBlock114PC := 188.
        ].
        recoveredBlock114Step = 188 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) add: (recoveredBlock114Stack2).
            recoveredBlock114PC := 190.
        ].
        recoveredBlock114Step = 190 ifTrue: [
            recoveredBlock114PC := 278.
        ].
        recoveredBlock114Step = 194 ifTrue: [
            recoveredBlock114Stack1 := recoveredBlock114Arg1.
            recoveredBlock114PC := 195.
        ].
        recoveredBlock114Step = 195 ifTrue: [
            recoveredBlock114Stack2 := '[G]'.
            recoveredBlock114PC := 197.
        ].
        recoveredBlock114Step = 197 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) startsWith: (recoveredBlock114Stack2).
            recoveredBlock114PC := 199.
        ].
        recoveredBlock114Step = 199 ifTrue: [
            (recoveredBlock114Stack1) ifTrue: [recoveredBlock114PC := 202] ifFalse: [recoveredBlock114PC := 218].
        ].
        recoveredBlock114Step = 202 ifTrue: [
            recoveredBlock114Stack1 := recoveredLocal1.
            recoveredBlock114PC := 205.
        ].
        recoveredBlock114Step = 205 ifTrue: [
            recoveredBlock114Stack2 := ASDNavigationObject.
            recoveredBlock114PC := 207.
        ].
        recoveredBlock114Step = 207 ifTrue: [
            recoveredBlock114Stack3 := 'graphicobject'.
            recoveredBlock114PC := 209.
        ].
        recoveredBlock114Step = 209 ifTrue: [
            recoveredBlock114Stack4 := recoveredBlock114Arg1.
            recoveredBlock114PC := 210.
        ].
        recoveredBlock114Step = 210 ifTrue: [
            recoveredBlock114Stack2 := (recoveredBlock114Stack2) createWithType: (recoveredBlock114Stack3) value: (recoveredBlock114Stack4).
            recoveredBlock114PC := 212.
        ].
        recoveredBlock114Step = 212 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) add: (recoveredBlock114Stack2).
            recoveredBlock114PC := 214.
        ].
        recoveredBlock114Step = 214 ifTrue: [
            recoveredBlock114PC := 278.
        ].
        recoveredBlock114Step = 218 ifTrue: [
            recoveredBlock114Stack1 := recoveredBlock114Arg1.
            recoveredBlock114PC := 219.
        ].
        recoveredBlock114Step = 219 ifTrue: [
            recoveredBlock114Stack2 := '[H]'.
            recoveredBlock114PC := 221.
        ].
        recoveredBlock114Step = 221 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) startsWith: (recoveredBlock114Stack2).
            recoveredBlock114PC := 223.
        ].
        recoveredBlock114Step = 223 ifTrue: [
            (recoveredBlock114Stack1) ifTrue: [recoveredBlock114PC := 226] ifFalse: [recoveredBlock114PC := 242].
        ].
        recoveredBlock114Step = 226 ifTrue: [
            recoveredBlock114Stack1 := recoveredLocal1.
            recoveredBlock114PC := 229.
        ].
        recoveredBlock114Step = 229 ifTrue: [
            recoveredBlock114Stack2 := ASDNavigationObject.
            recoveredBlock114PC := 231.
        ].
        recoveredBlock114Step = 231 ifTrue: [
            recoveredBlock114Stack3 := 'hierarchy'.
            recoveredBlock114PC := 233.
        ].
        recoveredBlock114Step = 233 ifTrue: [
            recoveredBlock114Stack4 := recoveredBlock114Arg1.
            recoveredBlock114PC := 234.
        ].
        recoveredBlock114Step = 234 ifTrue: [
            recoveredBlock114Stack2 := (recoveredBlock114Stack2) createWithType: (recoveredBlock114Stack3) value: (recoveredBlock114Stack4).
            recoveredBlock114PC := 236.
        ].
        recoveredBlock114Step = 236 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) add: (recoveredBlock114Stack2).
            recoveredBlock114PC := 238.
        ].
        recoveredBlock114Step = 238 ifTrue: [
            recoveredBlock114PC := 278.
        ].
        recoveredBlock114Step = 242 ifTrue: [
            recoveredBlock114Stack1 := recoveredBlock114Arg1.
            recoveredBlock114PC := 243.
        ].
        recoveredBlock114Step = 243 ifTrue: [
            recoveredBlock114Stack2 := '[ID]'.
            recoveredBlock114PC := 245.
        ].
        recoveredBlock114Step = 245 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) startsWith: (recoveredBlock114Stack2).
            recoveredBlock114PC := 247.
        ].
        recoveredBlock114Step = 247 ifTrue: [
            (recoveredBlock114Stack1) ifTrue: [recoveredBlock114PC := 250] ifFalse: [recoveredBlock114PC := 266].
        ].
        recoveredBlock114Step = 250 ifTrue: [
            recoveredBlock114Stack1 := recoveredLocal1.
            recoveredBlock114PC := 253.
        ].
        recoveredBlock114Step = 253 ifTrue: [
            recoveredBlock114Stack2 := ASDNavigationObject.
            recoveredBlock114PC := 255.
        ].
        recoveredBlock114Step = 255 ifTrue: [
            recoveredBlock114Stack3 := 'goid'.
            recoveredBlock114PC := 257.
        ].
        recoveredBlock114Step = 257 ifTrue: [
            recoveredBlock114Stack4 := recoveredBlock114Arg1.
            recoveredBlock114PC := 258.
        ].
        recoveredBlock114Step = 258 ifTrue: [
            recoveredBlock114Stack2 := (recoveredBlock114Stack2) createWithType: (recoveredBlock114Stack3) value: (recoveredBlock114Stack4).
            recoveredBlock114PC := 260.
        ].
        recoveredBlock114Step = 260 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) add: (recoveredBlock114Stack2).
            recoveredBlock114PC := 262.
        ].
        recoveredBlock114Step = 262 ifTrue: [
            recoveredBlock114PC := 278.
        ].
        recoveredBlock114Step = 266 ifTrue: [
            recoveredBlock114Stack1 := recoveredLocal1.
            recoveredBlock114PC := 269.
        ].
        recoveredBlock114Step = 269 ifTrue: [
            recoveredBlock114Stack2 := ASDNavigationObject.
            recoveredBlock114PC := 271.
        ].
        recoveredBlock114Step = 271 ifTrue: [
            recoveredBlock114Stack3 := 'element'.
            recoveredBlock114PC := 273.
        ].
        recoveredBlock114Step = 273 ifTrue: [
            recoveredBlock114Stack4 := recoveredBlock114Arg1.
            recoveredBlock114PC := 274.
        ].
        recoveredBlock114Step = 274 ifTrue: [
            recoveredBlock114Stack2 := (recoveredBlock114Stack2) createWithType: (recoveredBlock114Stack3) value: (recoveredBlock114Stack4).
            recoveredBlock114PC := 276.
        ].
        recoveredBlock114Step = 276 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) add: (recoveredBlock114Stack2).
            recoveredBlock114PC := 278.
        ].
        recoveredBlock114Step = 278 ifTrue: [
            recoveredBlock114Result := recoveredBlock114Stack1.
            recoveredBlock114Done := true.
        ].
    ].
    recoveredBlock114Result
].
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2063c088; bytecode file offset 0xf38a1c"
!ASDNavigationManager methodsFor: 'recovered'!
navigateToAscetLinkObject: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComponentObject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDatabaseItemByPath: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 recoveredBlock19Value8 |
    recoveredBlock19Value0 := MainController.
    recoveredBlock19Value1 := (recoveredBlock19Value0) navigationManager.
    recoveredBlock19Value2 := recoveredBlock19Arg1.
    (recoveredBlock19Value1) addNavigationTarget: (recoveredBlock19Value2).
    recoveredBlock19Value3 := recoveredArg1.
    recoveredBlock19Value4 := recoveredBlock19Arg1.
    recoveredBlock19Value5 := MainController.
    recoveredBlock19Value6 := (recoveredBlock19Value4) editPrompt: (recoveredBlock19Value5).
    (recoveredBlock19Value3) userInterface: (recoveredBlock19Value6).
    recoveredBlock19Value7 := recoveredArg1.
    recoveredBlock19Value8 := recoveredBlock19Arg1.
    (recoveredBlock19Value7) object: (recoveredBlock19Value8).
    ^true
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 'Can not find component: '.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSpecificationObject.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 'No editor available to show diagram: '.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGClass.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := 'Invalid class for diagram: '.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) specifications.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := [:recoveredBlock123Arg1 | 
    | recoveredBlock123Value0 recoveredBlock123Value1 recoveredBlock123Value2 recoveredBlock123Value3 recoveredBlock123Value4 |
    recoveredBlock123Value0 := recoveredBlock123Arg1.
    recoveredBlock123Value1 := (recoveredBlock123Value0) specificationName.
    recoveredBlock123Value2 := recoveredArg1.
    recoveredBlock123Value3 := (recoveredBlock123Value2) value.
    recoveredBlock123Value4 := (recoveredBlock123Value1) = (recoveredBlock123Value3).
    recoveredBlock123Value4
].
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := [:recoveredBlock143Arg1 | 
    | recoveredBlock143Value0 recoveredBlock143Value1 recoveredBlock143Value2 recoveredBlock143Value3 recoveredBlock143Value4 |
    recoveredBlock143Value0 := recoveredArg1.
    recoveredBlock143Value1 := (recoveredBlock143Value0) userInterface.
    recoveredBlock143Value2 := recoveredBlock143Arg1.
    (recoveredBlock143Value1) loadSpec: (recoveredBlock143Value2).
    recoveredBlock143Value3 := recoveredArg1.
    recoveredBlock143Value4 := recoveredBlock143Arg1.
    (recoveredBlock143Value3) object: (recoveredBlock143Value4).
    ^true
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := 'Can not find diagram: '.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodObject.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := 'No editor available to show method: '.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSpecification.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := 'Invalid diagram for method: '.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) allMethods.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := [:recoveredBlock237Arg1 | 
    | recoveredBlock237Value0 recoveredBlock237Value1 recoveredBlock237Value2 recoveredBlock237Value3 recoveredBlock237Value4 |
    recoveredBlock237Value0 := recoveredBlock237Arg1.
    recoveredBlock237Value1 := (recoveredBlock237Value0) methodName.
    recoveredBlock237Value2 := recoveredArg1.
    recoveredBlock237Value3 := (recoveredBlock237Value2) value.
    recoveredBlock237Value4 := (recoveredBlock237Value1) = (recoveredBlock237Value3).
    recoveredBlock237Value4
].
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := [:recoveredBlock257Arg1 | 
    | recoveredBlock257Local1 recoveredBlock257Value0 recoveredBlock257Value1 recoveredBlock257Value2 recoveredBlock257Value3 recoveredBlock257Value4 |
    recoveredBlock257Value0 := recoveredArg1.
    recoveredBlock257Value1 := (recoveredBlock257Value0) userInterface.
    recoveredBlock257Value2 := recoveredBlock257Arg1.
    (recoveredBlock257Value1) selectAndExpandMethod: (recoveredBlock257Value2).
    recoveredBlock257Value3 := recoveredArg1.
    recoveredBlock257Value4 := recoveredBlock257Arg1.
    (recoveredBlock257Value3) object: (recoveredBlock257Value4).
    ^true
].
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := 'Can not find method: '.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) isElementObject.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 590].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 322] ifFalse: [recoveredPC := 310].
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := 'No editor available to show element: '.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodDeclaration.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 332] ifFalse: [recoveredPC := 366].
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodElements.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := [:recoveredBlock339Arg1 | 
    | recoveredBlock339Value0 recoveredBlock339Value1 recoveredBlock339Value2 recoveredBlock339Value3 recoveredBlock339Value4 |
    recoveredBlock339Value0 := recoveredBlock339Arg1.
    recoveredBlock339Value1 := (recoveredBlock339Value0) elementName.
    recoveredBlock339Value2 := recoveredArg1.
    recoveredBlock339Value3 := (recoveredBlock339Value2) value.
    recoveredBlock339Value4 := (recoveredBlock339Value1) = (recoveredBlock339Value3).
    recoveredBlock339Value4
].
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredPC := 496.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGClass.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 386] ifFalse: [recoveredPC := 376].
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 386] ifFalse: [recoveredPC := 420].
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := (recoveredStack1) allDirectElements.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := [:recoveredBlock393Arg1 | 
    | recoveredBlock393Value0 recoveredBlock393Value1 recoveredBlock393Value2 recoveredBlock393Value3 recoveredBlock393Value4 |
    recoveredBlock393Value0 := recoveredBlock393Arg1.
    recoveredBlock393Value1 := (recoveredBlock393Value0) elementName.
    recoveredBlock393Value2 := recoveredArg1.
    recoveredBlock393Value3 := (recoveredBlock393Value2) value.
    recoveredBlock393Value4 := (recoveredBlock393Value1) = (recoveredBlock393Value3).
    recoveredBlock393Value4
].
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredPC := 496.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := (recoveredStack1) isElement.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 430] ifFalse: [recoveredPC := 484].
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := [:recoveredBlock435Arg1 | 
    | recoveredBlock435Value0 recoveredBlock435Value1 recoveredBlock435Value2 |
    recoveredBlock435Value0 := recoveredArg1.
    recoveredBlock435Value1 := (recoveredBlock435Value0) value.
    recoveredBlock435Value2 := ('Missing component for element: ') , (recoveredBlock435Value1).
    lastError := recoveredBlock435Value2.
    ^false
].
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack1 := (recoveredStack1) allDirectElements.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack2 := [:recoveredBlock458Arg1 | 
    | recoveredBlock458Value0 recoveredBlock458Value1 recoveredBlock458Value2 recoveredBlock458Value3 recoveredBlock458Value4 |
    recoveredBlock458Value0 := recoveredBlock458Arg1.
    recoveredBlock458Value1 := (recoveredBlock458Value0) elementName.
    recoveredBlock458Value2 := recoveredArg1.
    recoveredBlock458Value3 := (recoveredBlock458Value2) value.
    recoveredBlock458Value4 := (recoveredBlock458Value1) = (recoveredBlock458Value3).
    recoveredBlock458Value4
].
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredPC := 496.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack1 := 'Invalid parent for element: '.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 578] ifFalse: [recoveredPC := 502].
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 520] ifFalse: [recoveredPC := 510].
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodDeclaration.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 520] ifFalse: [recoveredPC := 546].
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack2 := (recoveredStack2) parent.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            (recoveredStack1) selectAndExpandItem: (recoveredStack2).
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            (recoveredStack1) selectAndExpandItem: (recoveredStack2).
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredPC := 568.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack3 := [:recoveredBlock554Arg1 | 
    | recoveredBlock554Value0 |
    recoveredBlock554Value0 := recoveredLocal1.
    recoveredBlock554Value0
].
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClassIfUndefined: (recoveredStack3).
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            (recoveredStack1) selectItemInVarList: (recoveredStack2).
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            (recoveredStack1) object: (recoveredStack2).
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack1 := 'Can not find element: '.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack1 := (recoveredStack1) isHierarchyObject.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 598] ifFalse: [recoveredPC := 628].
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := (recoveredStack1) openHierarchy: (recoveredStack2).
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 616] ifFalse: [recoveredPC := 614].
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := 'Can not find hierarchy: '.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGOIDObject.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 636] ifFalse: [recoveredPC := 668].
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack2 := (recoveredStack2) asNumber.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectGOWithID: (recoveredStack2).
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 656] ifFalse: [recoveredPC := 654].
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack1 := 'Can not find graphic object: '.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack1 := 'Can not find object: '.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20672b88; bytecode file offset 0xf6f584"
!ASDNavigationManager methodsFor: 'recovered'!
navigateToObject: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isComponentObject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 355].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := '::'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'Invalid component: '.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDatabaseItemByPath: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Stack0 recoveredBlock55Stack1 recoveredBlock55Stack2 recoveredBlock55Stack3 recoveredBlock55Stack4 recoveredBlock55PC recoveredBlock55Step recoveredBlock55Done recoveredBlock55Result |
    recoveredBlock55Stack0 := self.
    recoveredBlock55PC := 62.
    recoveredBlock55Done := false.
    [recoveredBlock55Done not] whileTrue: [
        recoveredBlock55Step := recoveredBlock55PC.
        recoveredBlock55Step = 62 ifTrue: [
            recoveredBlock55Stack1 := MainController.
            recoveredBlock55PC := 64.
        ].
        recoveredBlock55Step = 64 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) navigationManager.
            recoveredBlock55PC := 66.
        ].
        recoveredBlock55Step = 66 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Arg1.
            recoveredBlock55PC := 67.
        ].
        recoveredBlock55Step = 67 ifTrue: [
            (recoveredBlock55Stack1) addNavigationTarget: (recoveredBlock55Stack2).
            recoveredBlock55PC := 69.
        ].
        recoveredBlock55Step = 69 ifTrue: [
            recoveredBlock55Stack1 := recoveredArg1.
            recoveredBlock55PC := 72.
        ].
        recoveredBlock55Step = 72 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Arg1.
            recoveredBlock55PC := 73.
        ].
        recoveredBlock55Step = 73 ifTrue: [
            recoveredBlock55Stack3 := MainController.
            recoveredBlock55PC := 75.
        ].
        recoveredBlock55Step = 75 ifTrue: [
            recoveredBlock55Stack2 := (recoveredBlock55Stack2) editPrompt: (recoveredBlock55Stack3).
            recoveredBlock55PC := 77.
        ].
        recoveredBlock55Step = 77 ifTrue: [
            (recoveredBlock55Stack1) userInterface: (recoveredBlock55Stack2).
            recoveredBlock55PC := 79.
        ].
        recoveredBlock55Step = 79 ifTrue: [
            recoveredBlock55Stack1 := recoveredArg1.
            recoveredBlock55PC := 82.
        ].
        recoveredBlock55Step = 82 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Arg1.
            recoveredBlock55PC := 83.
        ].
        recoveredBlock55Step = 83 ifTrue: [
            (recoveredBlock55Stack1) object: (recoveredBlock55Stack2).
            recoveredBlock55PC := 85.
        ].
        recoveredBlock55Step = 85 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal3.
            recoveredBlock55PC := 88.
        ].
        recoveredBlock55Step = 88 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) size.
            recoveredBlock55PC := 90.
        ].
        recoveredBlock55Step = 90 ifTrue: [
            recoveredBlock55Stack2 := 1.
            recoveredBlock55PC := 92.
        ].
        recoveredBlock55Step = 92 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) > (recoveredBlock55Stack2).
            recoveredBlock55PC := 93.
        ].
        recoveredBlock55Step = 93 ifTrue: [
            (recoveredBlock55Stack1) ifTrue: [recoveredBlock55PC := 96] ifFalse: [recoveredBlock55PC := 339].
        ].
        recoveredBlock55Step = 96 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal3.
            recoveredBlock55PC := 99.
        ].
        recoveredBlock55Step = 99 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) last.
            recoveredBlock55PC := 101.
        ].
        recoveredBlock55Step = 101 ifTrue: [
            recoveredLocal1 := recoveredBlock55Stack1.
            recoveredBlock55PC := 104.
        ].
        recoveredBlock55Step = 104 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal1.
            recoveredBlock55PC := 107.
        ].
        recoveredBlock55Step = 107 ifTrue: [
            recoveredBlock55Stack2 := '[I]'.
            recoveredBlock55PC := 109.
        ].
        recoveredBlock55Step = 109 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) startsWith: (recoveredBlock55Stack2).
            recoveredBlock55PC := 111.
        ].
        recoveredBlock55Step = 111 ifTrue: [
            (recoveredBlock55Stack1) ifTrue: [recoveredBlock55PC := 114] ifFalse: [recoveredBlock55PC := 216].
        ].
        recoveredBlock55Step = 114 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal1.
            recoveredBlock55PC := 117.
        ].
        recoveredBlock55Step = 117 ifTrue: [
            recoveredBlock55Stack2 := '[I]'.
            recoveredBlock55PC := 119.
        ].
        recoveredBlock55Step = 119 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) asArrayOfSubstringsSeparatedBy: (recoveredBlock55Stack2).
            recoveredBlock55PC := 120.
        ].
        recoveredBlock55Step = 120 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Stack1.
            recoveredBlock55PC := 121.
        ].
        recoveredBlock55Step = 121 ifTrue: [
            recoveredLocal3 := recoveredBlock55Stack2.
            recoveredBlock55PC := 124.
        ].
        recoveredBlock55Step = 124 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) size.
            recoveredBlock55PC := 126.
        ].
        recoveredBlock55Step = 126 ifTrue: [
            recoveredBlock55Stack2 := 2.
            recoveredBlock55PC := 128.
        ].
        recoveredBlock55Step = 128 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) ~= (recoveredBlock55Stack2).
            recoveredBlock55PC := 129.
        ].
        recoveredBlock55Step = 129 ifTrue: [
            (recoveredBlock55Stack1) ifTrue: [recoveredBlock55PC := 132] ifFalse: [recoveredBlock55PC := 143].
        ].
        recoveredBlock55Step = 132 ifTrue: [
            recoveredBlock55Stack1 := 'Invalid implementation '.
            recoveredBlock55PC := 134.
        ].
        recoveredBlock55Step = 134 ifTrue: [
            recoveredBlock55Stack2 := recoveredLocal1.
            recoveredBlock55PC := 137.
        ].
        recoveredBlock55Step = 137 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) , (recoveredBlock55Stack2).
            recoveredBlock55PC := 139.
        ].
        recoveredBlock55Step = 139 ifTrue: [
            lastError := recoveredBlock55Stack1.
            recoveredBlock55PC := 141.
        ].
        recoveredBlock55Step = 141 ifTrue: [
            recoveredBlock55Stack1 := false.
            recoveredBlock55PC := 142.
        ].
        recoveredBlock55Step = 142 ifTrue: [
            ^recoveredBlock55Stack1
        ].
        recoveredBlock55Step = 143 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal3.
            recoveredBlock55PC := 146.
        ].
        recoveredBlock55Step = 146 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) last.
            recoveredBlock55PC := 148.
        ].
        recoveredBlock55Step = 148 ifTrue: [
            recoveredLocal1 := recoveredBlock55Stack1.
            recoveredBlock55PC := 151.
        ].
        recoveredBlock55Step = 151 ifTrue: [
            recoveredBlock55Stack1 := recoveredBlock55Arg1.
            recoveredBlock55PC := 152.
        ].
        recoveredBlock55Step = 152 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) implementations.
            recoveredBlock55PC := 154.
        ].
        recoveredBlock55Step = 154 ifTrue: [
            recoveredBlock55Stack2 := [:recoveredBlock55Block154Arg1 | 
    | recoveredBlock55Block154Value0 recoveredBlock55Block154Value1 recoveredBlock55Block154Value2 recoveredBlock55Block154Value3 |
    recoveredBlock55Block154Value0 := recoveredBlock55Block154Arg1.
    recoveredBlock55Block154Value1 := (recoveredBlock55Block154Value0) label.
    recoveredBlock55Block154Value2 := recoveredLocal1.
    recoveredBlock55Block154Value3 := (recoveredBlock55Block154Value1) = (recoveredBlock55Block154Value2).
    recoveredBlock55Block154Value3
].
            recoveredBlock55PC := 168.
        ].
        recoveredBlock55Step = 168 ifTrue: [
            recoveredBlock55Stack3 := [
    | recoveredBlock55Block168Value0 recoveredBlock55Block168Value1 recoveredBlock55Block168Value2 |
    recoveredBlock55Block168Value0 := recoveredLocal3.
    recoveredBlock55Block168Value1 := (recoveredBlock55Block168Value0) last.
    recoveredBlock55Block168Value2 := ('Invalid implementation ') , (recoveredBlock55Block168Value1).
    lastError := recoveredBlock55Block168Value2.
    ^false
].
            recoveredBlock55PC := 187.
        ].
        recoveredBlock55Step = 187 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) detect: (recoveredBlock55Stack2) ifNone: (recoveredBlock55Stack3).
            recoveredBlock55PC := 189.
        ].
        recoveredBlock55Step = 189 ifTrue: [
            recoveredBlock55Stack2 := [:recoveredBlock55Block189Arg1 | 
    | recoveredBlock55Block189Value0 recoveredBlock55Block189Value1 recoveredBlock55Block189Value2 recoveredBlock55Block189Value3 recoveredBlock55Block189Value4 recoveredBlock55Block189Value5 |
    recoveredBlock55Block189Value0 := recoveredArg1.
    recoveredBlock55Block189Value1 := (recoveredBlock55Block189Value0) userInterface.
    recoveredBlock55Block189Value2 := recoveredBlock55Block189Arg1.
    (recoveredBlock55Block189Value1) openImplConfigBrowserFor: (recoveredBlock55Block189Value2).
    recoveredBlock55Block189Value3 := recoveredArg1.
    recoveredBlock55Block189Value4 := recoveredBlock55Block189Arg1.
    recoveredBlock55Block189Value5 := (recoveredBlock55Block189Value3) object: (recoveredBlock55Block189Value4).
    recoveredBlock55Block189Value5
].
            recoveredBlock55PC := 211.
        ].
        recoveredBlock55Step = 211 ifTrue: [
            (recoveredBlock55Stack1) ifNotNil: (recoveredBlock55Stack2).
            recoveredBlock55PC := 213.
        ].
        recoveredBlock55Step = 213 ifTrue: [
            recoveredBlock55PC := 339.
        ].
        recoveredBlock55Step = 216 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal1.
            recoveredBlock55PC := 219.
        ].
        recoveredBlock55Step = 219 ifTrue: [
            recoveredBlock55Stack2 := '[D]'.
            recoveredBlock55PC := 221.
        ].
        recoveredBlock55Step = 221 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) startsWith: (recoveredBlock55Stack2).
            recoveredBlock55PC := 223.
        ].
        recoveredBlock55Step = 223 ifTrue: [
            (recoveredBlock55Stack1) ifTrue: [recoveredBlock55PC := 226] ifFalse: [recoveredBlock55PC := 328].
        ].
        recoveredBlock55Step = 226 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal1.
            recoveredBlock55PC := 229.
        ].
        recoveredBlock55Step = 229 ifTrue: [
            recoveredBlock55Stack2 := '[D]'.
            recoveredBlock55PC := 231.
        ].
        recoveredBlock55Step = 231 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) asArrayOfSubstringsSeparatedBy: (recoveredBlock55Stack2).
            recoveredBlock55PC := 232.
        ].
        recoveredBlock55Step = 232 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Stack1.
            recoveredBlock55PC := 233.
        ].
        recoveredBlock55Step = 233 ifTrue: [
            recoveredLocal3 := recoveredBlock55Stack2.
            recoveredBlock55PC := 236.
        ].
        recoveredBlock55Step = 236 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) size.
            recoveredBlock55PC := 238.
        ].
        recoveredBlock55Step = 238 ifTrue: [
            recoveredBlock55Stack2 := 2.
            recoveredBlock55PC := 240.
        ].
        recoveredBlock55Step = 240 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) ~= (recoveredBlock55Stack2).
            recoveredBlock55PC := 241.
        ].
        recoveredBlock55Step = 241 ifTrue: [
            (recoveredBlock55Stack1) ifTrue: [recoveredBlock55PC := 244] ifFalse: [recoveredBlock55PC := 255].
        ].
        recoveredBlock55Step = 244 ifTrue: [
            recoveredBlock55Stack1 := 'Invalid data '.
            recoveredBlock55PC := 246.
        ].
        recoveredBlock55Step = 246 ifTrue: [
            recoveredBlock55Stack2 := recoveredLocal1.
            recoveredBlock55PC := 249.
        ].
        recoveredBlock55Step = 249 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) , (recoveredBlock55Stack2).
            recoveredBlock55PC := 251.
        ].
        recoveredBlock55Step = 251 ifTrue: [
            lastError := recoveredBlock55Stack1.
            recoveredBlock55PC := 253.
        ].
        recoveredBlock55Step = 253 ifTrue: [
            recoveredBlock55Stack1 := false.
            recoveredBlock55PC := 254.
        ].
        recoveredBlock55Step = 254 ifTrue: [
            ^recoveredBlock55Stack1
        ].
        recoveredBlock55Step = 255 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal3.
            recoveredBlock55PC := 258.
        ].
        recoveredBlock55Step = 258 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) last.
            recoveredBlock55PC := 260.
        ].
        recoveredBlock55Step = 260 ifTrue: [
            recoveredLocal1 := recoveredBlock55Stack1.
            recoveredBlock55PC := 263.
        ].
        recoveredBlock55Step = 263 ifTrue: [
            recoveredBlock55Stack1 := recoveredBlock55Arg1.
            recoveredBlock55PC := 264.
        ].
        recoveredBlock55Step = 264 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) datas.
            recoveredBlock55PC := 266.
        ].
        recoveredBlock55Step = 266 ifTrue: [
            recoveredBlock55Stack2 := [:recoveredBlock55Block266Arg1 | 
    | recoveredBlock55Block266Value0 recoveredBlock55Block266Value1 recoveredBlock55Block266Value2 recoveredBlock55Block266Value3 |
    recoveredBlock55Block266Value0 := recoveredBlock55Block266Arg1.
    recoveredBlock55Block266Value1 := (recoveredBlock55Block266Value0) label.
    recoveredBlock55Block266Value2 := recoveredLocal1.
    recoveredBlock55Block266Value3 := (recoveredBlock55Block266Value1) = (recoveredBlock55Block266Value2).
    recoveredBlock55Block266Value3
].
            recoveredBlock55PC := 280.
        ].
        recoveredBlock55Step = 280 ifTrue: [
            recoveredBlock55Stack3 := [
    | recoveredBlock55Block280Value0 recoveredBlock55Block280Value1 recoveredBlock55Block280Value2 |
    recoveredBlock55Block280Value0 := recoveredLocal3.
    recoveredBlock55Block280Value1 := (recoveredBlock55Block280Value0) last.
    recoveredBlock55Block280Value2 := ('Invalid data ') , (recoveredBlock55Block280Value1).
    lastError := recoveredBlock55Block280Value2.
    ^false
].
            recoveredBlock55PC := 299.
        ].
        recoveredBlock55Step = 299 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) detect: (recoveredBlock55Stack2) ifNone: (recoveredBlock55Stack3).
            recoveredBlock55PC := 301.
        ].
        recoveredBlock55Step = 301 ifTrue: [
            recoveredBlock55Stack2 := [:recoveredBlock55Block301Arg1 | 
    | recoveredBlock55Block301Value0 recoveredBlock55Block301Value1 recoveredBlock55Block301Value2 recoveredBlock55Block301Value3 recoveredBlock55Block301Value4 recoveredBlock55Block301Value5 |
    recoveredBlock55Block301Value0 := recoveredArg1.
    recoveredBlock55Block301Value1 := (recoveredBlock55Block301Value0) userInterface.
    recoveredBlock55Block301Value2 := recoveredBlock55Block301Arg1.
    (recoveredBlock55Block301Value1) openValueConfigBrowserFor: (recoveredBlock55Block301Value2).
    recoveredBlock55Block301Value3 := recoveredArg1.
    recoveredBlock55Block301Value4 := recoveredBlock55Block301Arg1.
    recoveredBlock55Block301Value5 := (recoveredBlock55Block301Value3) object: (recoveredBlock55Block301Value4).
    recoveredBlock55Block301Value5
].
            recoveredBlock55PC := 323.
        ].
        recoveredBlock55Step = 323 ifTrue: [
            (recoveredBlock55Stack1) ifNotNil: (recoveredBlock55Stack2).
            recoveredBlock55PC := 325.
        ].
        recoveredBlock55Step = 325 ifTrue: [
            recoveredBlock55PC := 339.
        ].
        recoveredBlock55Step = 328 ifTrue: [
            recoveredBlock55Stack1 := 'Invalid config: '.
            recoveredBlock55PC := 330.
        ].
        recoveredBlock55Step = 330 ifTrue: [
            recoveredBlock55Stack2 := recoveredLocal1.
            recoveredBlock55PC := 333.
        ].
        recoveredBlock55Step = 333 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) , (recoveredBlock55Stack2).
            recoveredBlock55PC := 335.
        ].
        recoveredBlock55Step = 335 ifTrue: [
            lastError := recoveredBlock55Stack1.
            recoveredBlock55PC := 337.
        ].
        recoveredBlock55Step = 337 ifTrue: [
            recoveredBlock55Stack1 := false.
            recoveredBlock55PC := 338.
        ].
        recoveredBlock55Step = 338 ifTrue: [
            ^recoveredBlock55Stack1
        ].
        recoveredBlock55Step = 339 ifTrue: [
            recoveredBlock55Stack1 := true.
            recoveredBlock55PC := 340.
        ].
        recoveredBlock55Step = 340 ifTrue: [
            ^recoveredBlock55Stack1
        ].
    ].
    recoveredBlock55Result
].
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := 'Can not find component: '.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSpecificationObject.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 364] ifFalse: [recoveredPC := 504].
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 384] ifFalse: [recoveredPC := 372].
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := 'No editor available to show diagram: '.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGClass.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 406] ifFalse: [recoveredPC := 394].
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := 'Invalid class for diagram: '.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := '[]'.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 422] ifFalse: [recoveredPC := 434].
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := 'Invalid diagram: '.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := (recoveredStack1) specifications.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := [:recoveredBlock449Arg1 | 
    | recoveredBlock449Value0 recoveredBlock449Value1 recoveredBlock449Value2 recoveredBlock449Value3 |
    recoveredBlock449Value0 := recoveredBlock449Arg1.
    recoveredBlock449Value1 := (recoveredBlock449Value0) specificationName.
    recoveredBlock449Value2 := recoveredLocal2.
    recoveredBlock449Value3 := (recoveredBlock449Value1) = (recoveredBlock449Value2).
    recoveredBlock449Value3
].
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack2 := [:recoveredBlock468Arg1 | 
    | recoveredBlock468Value0 recoveredBlock468Value1 recoveredBlock468Value2 recoveredBlock468Value3 recoveredBlock468Value4 |
    recoveredBlock468Value0 := recoveredArg1.
    recoveredBlock468Value1 := (recoveredBlock468Value0) userInterface.
    recoveredBlock468Value2 := recoveredBlock468Arg1.
    (recoveredBlock468Value1) loadSpec: (recoveredBlock468Value2).
    recoveredBlock468Value3 := recoveredArg1.
    recoveredBlock468Value4 := recoveredBlock468Arg1.
    (recoveredBlock468Value3) object: (recoveredBlock468Value4).
    ^true
].
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack1 := 'Can not find diagram: '.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodObject.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 512] ifFalse: [recoveredPC := 652].
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 532] ifFalse: [recoveredPC := 520].
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := 'No editor available to show method: '.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSpecification.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 554] ifFalse: [recoveredPC := 542].
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack1 := 'Invalid diagram for method: '.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack2 := '()'.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 570] ifFalse: [recoveredPC := 582].
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack1 := 'Invalid method: '.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack1 := (recoveredStack1) allMethods.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack2 := [:recoveredBlock597Arg1 | 
    | recoveredBlock597Value0 recoveredBlock597Value1 recoveredBlock597Value2 recoveredBlock597Value3 |
    recoveredBlock597Value0 := recoveredBlock597Arg1.
    recoveredBlock597Value1 := (recoveredBlock597Value0) methodName.
    recoveredBlock597Value2 := recoveredLocal2.
    recoveredBlock597Value3 := (recoveredBlock597Value1) = (recoveredBlock597Value2).
    recoveredBlock597Value3
].
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack2 := [:recoveredBlock616Arg1 | 
    | recoveredBlock616Local1 recoveredBlock616Value0 recoveredBlock616Value1 recoveredBlock616Value2 recoveredBlock616Value3 recoveredBlock616Value4 |
    recoveredBlock616Value0 := recoveredArg1.
    recoveredBlock616Value1 := (recoveredBlock616Value0) userInterface.
    recoveredBlock616Value2 := recoveredBlock616Arg1.
    (recoveredBlock616Value1) selectAndExpandMethod: (recoveredBlock616Value2).
    recoveredBlock616Value3 := recoveredArg1.
    recoveredBlock616Value4 := recoveredBlock616Arg1.
    (recoveredBlock616Value3) object: (recoveredBlock616Value4).
    ^true
].
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack1 := 'Can not find method: '.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack1 := (recoveredStack1) isElementObject.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 660] ifFalse: [recoveredPC := 984].
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 680] ifFalse: [recoveredPC := 668].
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack1 := 'No editor available to show element: '.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodDeclaration.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 690] ifFalse: [recoveredPC := 728].
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodElements.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack2 := [:recoveredBlock699Arg1 | 
    | recoveredBlock699Value0 recoveredBlock699Value1 recoveredBlock699Value2 recoveredBlock699Value3 recoveredBlock699Value4 |
    recoveredBlock699Value0 := recoveredBlock699Arg1.
    recoveredBlock699Value1 := (recoveredBlock699Value0) elementName.
    recoveredBlock699Value2 := recoveredArg1.
    recoveredBlock699Value3 := (recoveredBlock699Value2) value.
    recoveredBlock699Value4 := (recoveredBlock699Value1) = (recoveredBlock699Value3).
    recoveredBlock699Value4
].
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredPC := 878.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGClass.
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 750] ifFalse: [recoveredPC := 738].
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 750] ifFalse: [recoveredPC := 788].
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack1 := (recoveredStack1) allDirectElements.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack2 := [:recoveredBlock759Arg1 | 
    | recoveredBlock759Value0 recoveredBlock759Value1 recoveredBlock759Value2 recoveredBlock759Value3 recoveredBlock759Value4 |
    recoveredBlock759Value0 := recoveredBlock759Arg1.
    recoveredBlock759Value1 := (recoveredBlock759Value0) elementName.
    recoveredBlock759Value2 := recoveredArg1.
    recoveredBlock759Value3 := (recoveredBlock759Value2) value.
    recoveredBlock759Value4 := (recoveredBlock759Value1) = (recoveredBlock759Value3).
    recoveredBlock759Value4
].
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredPC := 878.
        ].
        recoveredStep = 788 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack1 := (recoveredStack1) isElement.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 800] ifFalse: [recoveredPC := 864].
        ].
        recoveredStep = 800 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            recoveredStack2 := [:recoveredBlock805Arg1 | 
    | recoveredBlock805Value0 recoveredBlock805Value1 recoveredBlock805Value2 |
    recoveredBlock805Value0 := recoveredArg1.
    recoveredBlock805Value1 := (recoveredBlock805Value0) value.
    recoveredBlock805Value2 := ('Missing component for element: ') , (recoveredBlock805Value1).
    lastError := recoveredBlock805Value2.
    ^false
].
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            recoveredStack1 := (recoveredStack1) allDirectElements.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            recoveredStack2 := [:recoveredBlock835Arg1 | 
    | recoveredBlock835Value0 recoveredBlock835Value1 recoveredBlock835Value2 recoveredBlock835Value3 recoveredBlock835Value4 |
    recoveredBlock835Value0 := recoveredBlock835Arg1.
    recoveredBlock835Value1 := (recoveredBlock835Value0) elementName.
    recoveredBlock835Value2 := recoveredArg1.
    recoveredBlock835Value3 := (recoveredBlock835Value2) value.
    recoveredBlock835Value4 := (recoveredBlock835Value1) = (recoveredBlock835Value3).
    recoveredBlock835Value4
].
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            recoveredPC := 878.
        ].
        recoveredStep = 864 ifTrue: [
            recoveredStack1 := 'Invalid parent for element: '.
            recoveredPC := 868.
        ].
        recoveredStep = 868 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 871.
        ].
        recoveredStep = 871 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 874.
        ].
        recoveredStep = 874 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 878 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 971] ifFalse: [recoveredPC := 884].
        ].
        recoveredStep = 884 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 904] ifFalse: [recoveredPC := 894].
        ].
        recoveredStep = 894 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 899.
        ].
        recoveredStep = 899 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodDeclaration.
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 904] ifFalse: [recoveredPC := 934].
        ].
        recoveredStep = 904 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 907.
        ].
        recoveredStep = 907 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 912.
        ].
        recoveredStep = 912 ifTrue: [
            recoveredStack2 := (recoveredStack2) parent.
            recoveredPC := 914.
        ].
        recoveredStep = 914 ifTrue: [
            (recoveredStack1) selectAndExpandItem: (recoveredStack2).
            recoveredPC := 919.
        ].
        recoveredStep = 919 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 922.
        ].
        recoveredStep = 922 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 924.
        ].
        recoveredStep = 924 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 927.
        ].
        recoveredStep = 927 ifTrue: [
            (recoveredStack1) selectAndExpandItem: (recoveredStack2).
            recoveredPC := 931.
        ].
        recoveredStep = 931 ifTrue: [
            recoveredPC := 961.
        ].
        recoveredStep = 934 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 937.
        ].
        recoveredStep = 937 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 939.
        ].
        recoveredStep = 939 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 942.
        ].
        recoveredStep = 942 ifTrue: [
            recoveredStack3 := [:recoveredBlock942Arg1 | 
    | recoveredBlock942Value0 |
    recoveredBlock942Value0 := recoveredLocal2.
    recoveredBlock942Value0
].
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClassIfUndefined: (recoveredStack3).
            recoveredPC := 957.
        ].
        recoveredStep = 957 ifTrue: [
            (recoveredStack1) selectItemInVarList: (recoveredStack2).
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 967.
        ].
        recoveredStep = 967 ifTrue: [
            (recoveredStack1) object: (recoveredStack2).
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 971 ifTrue: [
            recoveredStack1 := 'Can not find element: '.
            recoveredPC := 974.
        ].
        recoveredStep = 974 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 977.
        ].
        recoveredStep = 977 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 978.
        ].
        recoveredStep = 978 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 982.
        ].
        recoveredStep = 982 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 983.
        ].
        recoveredStep = 983 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 984 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 987.
        ].
        recoveredStep = 987 ifTrue: [
            recoveredStack1 := (recoveredStack1) isHierarchyObject.
            recoveredPC := 991.
        ].
        recoveredStep = 991 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 994] ifFalse: [recoveredPC := 1074].
        ].
        recoveredStep = 994 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 997.
        ].
        recoveredStep = 997 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 998.
        ].
        recoveredStep = 998 ifTrue: [
            recoveredStack2 := '[H]'.
            recoveredPC := 1002.
        ].
        recoveredStep = 1002 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 1003.
        ].
        recoveredStep = 1003 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1004.
        ].
        recoveredStep = 1004 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 1007.
        ].
        recoveredStep = 1007 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 1009.
        ].
        recoveredStep = 1009 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 1011.
        ].
        recoveredStep = 1011 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1016] ifFalse: [recoveredPC := 1030].
        ].
        recoveredStep = 1016 ifTrue: [
            recoveredStack1 := 'Invalid Hierarchy '.
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 1023.
        ].
        recoveredStep = 1023 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 1026.
        ].
        recoveredStep = 1026 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 1028.
        ].
        recoveredStep = 1028 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 1030 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1033.
        ].
        recoveredStep = 1033 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 1035.
        ].
        recoveredStep = 1035 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1038.
        ].
        recoveredStep = 1038 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1041.
        ].
        recoveredStep = 1041 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 1043.
        ].
        recoveredStep = 1043 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 1047.
        ].
        recoveredStep = 1047 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 1050.
        ].
        recoveredStep = 1050 ifTrue: [
            recoveredStack1 := (recoveredStack1) openHierarchy: (recoveredStack2).
            recoveredPC := 1055.
        ].
        recoveredStep = 1055 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 1060] ifFalse: [recoveredPC := 1058].
        ].
        recoveredStep = 1058 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 1059.
        ].
        recoveredStep = 1059 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 1060 ifTrue: [
            recoveredStack1 := 'Can not find hierarchy: '.
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 1067.
        ].
        recoveredStep = 1067 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 1068.
        ].
        recoveredStep = 1068 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 1072.
        ].
        recoveredStep = 1072 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 1073.
        ].
        recoveredStep = 1073 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 1074 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1077.
        ].
        recoveredStep = 1077 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGOIDObject.
            recoveredPC := 1081.
        ].
        recoveredStep = 1081 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1084] ifFalse: [recoveredPC := 1168].
        ].
        recoveredStep = 1084 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1087.
        ].
        recoveredStep = 1087 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 1088.
        ].
        recoveredStep = 1088 ifTrue: [
            recoveredStack2 := '[ID]'.
            recoveredPC := 1092.
        ].
        recoveredStep = 1092 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 1093.
        ].
        recoveredStep = 1093 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1094.
        ].
        recoveredStep = 1094 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 1097.
        ].
        recoveredStep = 1097 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 1099.
        ].
        recoveredStep = 1099 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 1101.
        ].
        recoveredStep = 1101 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1106] ifFalse: [recoveredPC := 1120].
        ].
        recoveredStep = 1106 ifTrue: [
            recoveredStack1 := 'Invalid ID '.
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 1113.
        ].
        recoveredStep = 1113 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 1114.
        ].
        recoveredStep = 1114 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 1120 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 1125.
        ].
        recoveredStep = 1125 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1128.
        ].
        recoveredStep = 1128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1131.
        ].
        recoveredStep = 1131 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 1133.
        ].
        recoveredStep = 1133 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 1137.
        ].
        recoveredStep = 1137 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 1140.
        ].
        recoveredStep = 1140 ifTrue: [
            recoveredStack2 := (recoveredStack2) asNumber.
            recoveredPC := 1145.
        ].
        recoveredStep = 1145 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectGOWithID: (recoveredStack2).
            recoveredPC := 1149.
        ].
        recoveredStep = 1149 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 1154] ifFalse: [recoveredPC := 1152].
        ].
        recoveredStep = 1152 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 1153.
        ].
        recoveredStep = 1153 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 1154 ifTrue: [
            recoveredStack1 := 'Can not find graphic object: '.
            recoveredPC := 1158.
        ].
        recoveredStep = 1158 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 1161.
        ].
        recoveredStep = 1161 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 1162.
        ].
        recoveredStep = 1162 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 1164.
        ].
        recoveredStep = 1164 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 1167.
        ].
        recoveredStep = 1167 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 1168 ifTrue: [
            recoveredStack1 := 'Can not find object: '.
            recoveredPC := 1172.
        ].
        recoveredStep = 1172 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 1175.
        ].
        recoveredStep = 1175 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 1176.
        ].
        recoveredStep = 1176 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 1178.
        ].
        recoveredStep = 1178 ifTrue: [
            lastError := recoveredStack1.
            recoveredPC := 1180.
        ].
        recoveredStep = 1180 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 1181.
        ].
        recoveredStep = 1181 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

