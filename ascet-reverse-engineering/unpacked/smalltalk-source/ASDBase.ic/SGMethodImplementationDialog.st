"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005edc; bytecode file offset 0x902de8"
!SGMethodImplementationDialog methodsFor: 'recovered'!
inlineValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20006044; bytecode file offset 0x902de8"
!SGMethodImplementationDialog methodsFor: 'recovered'!
widgetInliningSingle: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x200060e4; bytecode file offset 0x902de8"
!SGMethodImplementationDialog methodsFor: 'recovered'!
useFPUValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20008b28; bytecode file offset 0x908be4"
!SGMethodImplementationDialog methodsFor: 'recovered'!
cancel
    | recoveredValue0 |
    recoveredValue0 := (self) close.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001080c; bytecode file offset 0x90d208"
!SGMethodImplementationDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) cancel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20010950; bytecode file offset 0x90d208"
!SGMethodImplementationDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) ok.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20042e4c; bytecode file offset 0x9451f8"
!SGMethodImplementationDialog methodsFor: 'recovered'!
inline
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('inline').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200431bc; bytecode file offset 0x9451f8"
!SGMethodImplementationDialog methodsFor: 'recovered'!
widgetMemorySegment
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetMemorySegment').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004322c; bytecode file offset 0x9451f8"
!SGMethodImplementationDialog methodsFor: 'recovered'!
useFPU
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('useFPU').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004458c; bytecode file offset 0x9451f8"
!SGMethodImplementationDialog methodsFor: 'recovered'!
widgetInlining
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetInlining').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046c9c; bytecode file offset 0x9451f8"
!SGMethodImplementationDialog methodsFor: 'recovered'!
widgetSymbolField
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('symbolField').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004717c; bytecode file offset 0x9451f8"
!SGMethodImplementationDialog methodsFor: 'recovered'!
memoryLocation
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('memoryLocation').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200702c8; bytecode file offset 0x96cb7c"
!SGMethodImplementationDialog methodsFor: 'recovered'!
method
    | recoveredValue0 |
    recoveredValue0 := method.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007034c; bytecode file offset 0x96ce40"
!SGMethodImplementationDialog methodsFor: 'recovered'!
implementation
    | recoveredValue0 |
    recoveredValue0 := implementation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200706a0; bytecode file offset 0x96d06c"
!SGMethodImplementationDialog methodsFor: 'recovered'!
methodImplementation
    | recoveredValue0 |
    recoveredValue0 := methodImplementation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c67b8; bytecode file offset 0x9c3164"
!SGMethodImplementationDialog methodsFor: 'recovered'!
method: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    method := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c68dc; bytecode file offset 0x9c3470"
!SGMethodImplementationDialog methodsFor: 'recovered'!
implementation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    implementation := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20108adc; bytecode file offset 0xa05448"
!SGMethodImplementationDialog methodsFor: 'recovered'!
updateTitle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (self) method.
    recoveredValue2 := (recoveredValue1) label.
    recoveredValue3 := ('Implementation for: ') , (recoveredValue2).
    (recoveredValue0) title: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201254b0; bytecode file offset 0xa21d70"
!SGMethodImplementationDialog methodsFor: 'recovered'!
canWrite
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementation.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) modifiable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027448c; bytecode file offset 0xb70d54"
!SGMethodImplementationDialog methodsFor: 'recovered'!
initMethodImplementation
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementation.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
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
            recoveredStack0 := (recoveredStack0) method.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) aliasName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplementationForMethodAliasName: (recoveredStack1).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) createImplementationForMethodAliasName: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            methodImplementation := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c4978; bytecode file offset 0xbc125c"
!SGMethodImplementationDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) method.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRunnable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetInlining.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) inline.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) inline.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) updateWidgets.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) updateTitle.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'ok'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) canWrite.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203335a4; bytecode file offset 0xc2fe9c"
!SGMethodImplementationDialog methodsFor: 'recovered'!
updateItem
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := (self) implementation.
    recoveredValue1 := (self) methodImplementation.
    recoveredValue2 := (self) widgetInlining.
    recoveredValue3 := (recoveredValue2) getObject.
    (recoveredValue0) setMethodImplementation: (recoveredValue1) inlining: (recoveredValue3).
    recoveredValue4 := (self) implementation.
    recoveredValue5 := (self) methodImplementation.
    recoveredValue6 := (self) useFPU.
    recoveredValue7 := (recoveredValue6) set.
    (recoveredValue4) setMethodImplementation: (recoveredValue5) useFPU: (recoveredValue7).
    recoveredValue8 := (self) implementation.
    recoveredValue9 := (self) methodImplementation.
    recoveredValue10 := (self) memoryLocation.
    recoveredValue11 := (recoveredValue10) getString.
    recoveredValue12 := (recoveredValue11) fromUndefString.
    (recoveredValue8) setMethodImplementation: (recoveredValue9) memoryClass: (recoveredValue12).
    recoveredValue13 := (self) implementation.
    recoveredValue14 := (self) methodImplementation.
    recoveredValue15 := (self) widgetMemorySegment.
    recoveredValue16 := (recoveredValue15) getObject.
    recoveredValue17 := (recoveredValue16) id.
    (recoveredValue13) setMethodImplementation: (recoveredValue14) memorySegmentID: (recoveredValue17).
    recoveredValue18 := (self) implementation.
    recoveredValue19 := (self) methodImplementation.
    recoveredValue20 := (self) widgetSymbolField.
    recoveredValue21 := (recoveredValue20) getString.
    (recoveredValue18) setMethodImplementation: (recoveredValue19) symbol: (recoveredValue21).
    ^self
! !

"ASDBase.ic method 0x2039cb00; bytecode file offset 0xc993fc"
!SGMethodImplementationDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) canWrite.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSymbolField.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := $%.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) replace: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := $..
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) replace: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidANSICIdentifier.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := ' is not a valid Ansi C Identifier or is a reserved name!!'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) updateItem.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'ASCET_SCM'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) close.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205282a0; bytecode file offset 0xe24bec"
!SGMethodImplementationDialog methodsFor: 'recovered'!
updateWidgets
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetInlining.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodImplementation.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) inliningSettingsValues.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) visibleItemCount: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodImplementation.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) inliningSettingsValues.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodImplementation.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) inlining.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) useFPU.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodImplementation.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUseFPU.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryClassesCode.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := SGReservedNames.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultLocationName.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodImplementation.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryClass.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryLocation.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryLocation.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultLocationName.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryLocation.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) asUndefString.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryLocation.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUndefString.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryLocation.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryLocation.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPlatform.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) memorySegments.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodImplementation.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegmentID.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock135Value0 recoveredBlock135Value1 recoveredBlock135Value2 recoveredBlock135Value3 recoveredBlock135Value4 recoveredBlock135Value5 recoveredBlock135Value6 |
    recoveredBlock135Value0 := (self) methodImplementation.
    recoveredBlock135Value1 := (recoveredBlock135Value0) memorySegmentID.
    recoveredBlock135Value2 := (recoveredBlock135Value1) asString.
    recoveredBlock135Value3 := (recoveredBlock135Value2) , (' ').
    recoveredBlock135Value4 := ASDDisplayStrings.
    recoveredBlock135Value5 := (recoveredBlock135Value4) undefinedDisplayString.
    recoveredBlock135Value6 := (recoveredBlock135Value3) , (recoveredBlock135Value5).
    recoveredBlock135Value6
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPlatform.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) memorySegmentsGUIIncludingUndefined: (recoveredStack1).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetMemorySegment.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1) visibleItemCount: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSymbolField.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodImplementation.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2069ca88; bytecode file offset 0xf99540"
!SGMethodImplementationDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 recoveredBlock15Value13 recoveredBlock15Value14 recoveredBlock15Value15 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredBlock15Value0.
    recoveredBlock15Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock15Value1) mwmInputMode: (recoveredBlock15Value2).
    recoveredBlock15Value3 := recoveredBlock15Value0.
    (recoveredBlock15Value3) title: ('Dialog').
    recoveredBlock15Value4 := recoveredBlock15Value0.
    recoveredBlock15Value5 := MWMDECORALL.
    recoveredBlock15Value6 := MWMDECORMINIMIZE.
    recoveredBlock15Value7 := (recoveredBlock15Value5) | (recoveredBlock15Value6).
    recoveredBlock15Value8 := MWMDECORMAXIMIZE.
    recoveredBlock15Value9 := (recoveredBlock15Value7) | (recoveredBlock15Value8).
    (recoveredBlock15Value4) mwmDecorations: (recoveredBlock15Value9).
    recoveredBlock15Value10 := recoveredBlock15Value0.
    recoveredBlock15Value11 := (self) minSize.
    recoveredBlock15Value12 := (recoveredBlock15Value11) y.
    (recoveredBlock15Value10) height: (recoveredBlock15Value12).
    recoveredBlock15Value13 := (self) minSize.
    recoveredBlock15Value14 := (recoveredBlock15Value13) x.
    recoveredBlock15Value15 := (recoveredBlock15Value0) width: (recoveredBlock15Value14).
    recoveredBlock15Value15
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := [:block2812d348Arg1 | 
    | block2812d348Value0 block2812d348Value1 block2812d348Value2 block2812d348Value3 |
    block2812d348Value0 := block2812d348Arg1.
    block2812d348Value1 := block2812d348Value0.
    (block2812d348Value1) labelString: ('&Cancel').
    block2812d348Value2 := block2812d348Value0.
    (block2812d348Value2) height: (24).
    block2812d348Value3 := (block2812d348Value0) width: (80).
    block2812d348Value3
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := [:block2812d36cArg1 | 
    | block2812d36cValue0 block2812d36cValue1 block2812d36cValue2 block2812d36cValue3 |
    block2812d36cValue0 := block2812d36cArg1.
    block2812d36cValue1 := block2812d36cValue0.
    (block2812d36cValue1) labelString: ('&OK').
    block2812d36cValue2 := block2812d36cValue0.
    (block2812d36cValue2) height: (24).
    block2812d36cValue3 := (block2812d36cValue0) width: (80).
    block2812d36cValue3
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 'memoryLocation'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := [:block2812d390Arg1 | 
    | block2812d390Value0 block2812d390Value1 block2812d390Value2 |
    block2812d390Value0 := block2812d390Arg1.
    block2812d390Value1 := block2812d390Value0.
    (block2812d390Value1) visibleItemCount: (7).
    block2812d390Value2 := (block2812d390Value0) height: (22).
    block2812d390Value2
].
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) createComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := 'memoryLocation'.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := 'memLocLab'.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack3 := [:block2812d3b4Arg1 | 
    | block2812d3b4Value0 block2812d3b4Value1 block2812d3b4Value2 block2812d3b4Value3 block2812d3b4Value4 block2812d3b4Value5 |
    block2812d3b4Value0 := block2812d3b4Arg1.
    block2812d3b4Value1 := block2812d3b4Value0.
    block2812d3b4Value2 := XmALIGNMENTBEGINNING.
    (block2812d3b4Value1) alignment: (block2812d3b4Value2).
    block2812d3b4Value3 := block2812d3b4Value0.
    (block2812d3b4Value3) labelString: ('Memory Location').
    block2812d3b4Value4 := block2812d3b4Value0.
    (block2812d3b4Value4) width: (120).
    block2812d3b4Value5 := block2812d3b4Value0.
    (block2812d3b4Value5) height: (22).
    block2812d3b4Value0
].
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := 'memLocLab'.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := 'widgetMemorySegmentLabel'.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack3 := [:block2812d3d8Arg1 | 
    | block2812d3d8Value0 block2812d3d8Value1 block2812d3d8Value2 block2812d3d8Value3 block2812d3d8Value4 block2812d3d8Value5 block2812d3d8Value6 |
    block2812d3d8Value0 := ('Kra') == ('Call_69763').
    block2812d3d8Value1 := block2812d3d8Arg1.
    block2812d3d8Value2 := block2812d3d8Value1.
    block2812d3d8Value3 := XmALIGNMENTBEGINNING.
    (block2812d3d8Value2) alignment: (block2812d3d8Value3).
    block2812d3d8Value4 := block2812d3d8Value1.
    (block2812d3d8Value4) width: (120).
    block2812d3d8Value5 := block2812d3d8Value1.
    (block2812d3d8Value5) height: (22).
    block2812d3d8Value6 := block2812d3d8Value1.
    (block2812d3d8Value6) labelString: ('Memory Segment').
    block2812d3d8Value1
].
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := 'widgetMemorySegmentLabel'.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := 'widgetMemorySegment'.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack3 := [:block2812d3fcArg1 | 
    | block2812d3fcStack0 block2812d3fcStack1 block2812d3fcStack2 block2812d3fcStack3 block2812d3fcStack4 block2812d3fcPC block2812d3fcStep block2812d3fcDone block2812d3fcResult |
    block2812d3fcStack0 := self.
    block2812d3fcPC := 4.
    block2812d3fcDone := false.
    [block2812d3fcDone not] whileTrue: [
        block2812d3fcStep := block2812d3fcPC.
        block2812d3fcStep = 4 ifTrue: [
            block2812d3fcStack1 := block2812d3fcArg1.
            block2812d3fcPC := 5.
        ].
        block2812d3fcStep = 5 ifTrue: [
            block2812d3fcStack2 := block2812d3fcStack1.
            block2812d3fcPC := 6.
        ].
        block2812d3fcStep = 6 ifTrue: [
            block2812d3fcStack3 := [:block2812d420Arg1 | 
    | block2812d420Value0 block2812d420Value1 |
    block2812d420Value0 := block2812d420Arg1.
    block2812d420Value1 := (block2812d420Value0) label.
    block2812d420Value1
].
            block2812d3fcPC := 10.
        ].
        block2812d3fcStep = 10 ifTrue: [
            block2812d3fcPC := 20.
        ].
        block2812d3fcStep = 20 ifTrue: [
            (block2812d3fcStack2) printBlock: (block2812d3fcStack3).
            block2812d3fcStack2 := block2812d3fcStack1.
            block2812d3fcPC := 25.
        ].
        block2812d3fcStep = 25 ifTrue: [
            block2812d3fcStack3 := 22.
            block2812d3fcPC := 27.
        ].
        block2812d3fcStep = 27 ifTrue: [
            (block2812d3fcStack2) height: (block2812d3fcStack3).
            block2812d3fcPC := 29.
        ].
        block2812d3fcStep = 29 ifTrue: [
            block2812d3fcResult := block2812d3fcStack1.
            block2812d3fcDone := true.
        ].
    ].
    block2812d3fcResult
].
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasObjectComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := 'widgetMemorySegment'.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack2 := 'widgetInliningLabel'.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack3 := [:block2812d444Arg1 | 
    | block2812d444Value0 block2812d444Value1 block2812d444Value2 block2812d444Value3 block2812d444Value4 block2812d444Value5 |
    block2812d444Value0 := block2812d444Arg1.
    block2812d444Value1 := block2812d444Value0.
    block2812d444Value2 := XmALIGNMENTBEGINNING.
    (block2812d444Value1) alignment: (block2812d444Value2).
    block2812d444Value3 := block2812d444Value0.
    (block2812d444Value3) width: (120).
    block2812d444Value4 := block2812d444Value0.
    (block2812d444Value4) height: (22).
    block2812d444Value5 := block2812d444Value0.
    (block2812d444Value5) labelString: ('Inlining').
    block2812d444Value0
].
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack2 := 'widgetInliningLabel'.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack2 := 'widgetInlining'.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack3 := [:block2812d468Arg1 | 
    | block2812d468Stack0 block2812d468Stack1 block2812d468Stack2 block2812d468Stack3 block2812d468Stack4 block2812d468PC block2812d468Step block2812d468Done block2812d468Result |
    block2812d468Stack0 := self.
    block2812d468PC := 4.
    block2812d468Done := false.
    [block2812d468Done not] whileTrue: [
        block2812d468Step := block2812d468PC.
        block2812d468Step = 4 ifTrue: [
            block2812d468Stack1 := block2812d468Arg1.
            block2812d468PC := 5.
        ].
        block2812d468Step = 5 ifTrue: [
            block2812d468Stack2 := block2812d468Stack1.
            block2812d468PC := 6.
        ].
        block2812d468Step = 6 ifTrue: [
            block2812d468Stack3 := [:block2812d48cArg1 | 
    | block2812d48cValue0 block2812d48cValue1 |
    block2812d48cValue0 := block2812d48cArg1.
    block2812d48cValue1 := (block2812d48cValue0) label.
    block2812d48cValue1
].
            block2812d468PC := 10.
        ].
        block2812d468Step = 10 ifTrue: [
            block2812d468PC := 20.
        ].
        block2812d468Step = 20 ifTrue: [
            (block2812d468Stack2) printBlock: (block2812d468Stack3).
            block2812d468Stack2 := block2812d468Stack1.
            block2812d468PC := 25.
        ].
        block2812d468Step = 25 ifTrue: [
            block2812d468Stack3 := 22.
            block2812d468PC := 27.
        ].
        block2812d468Step = 27 ifTrue: [
            (block2812d468Stack2) height: (block2812d468Stack3).
            block2812d468PC := 29.
        ].
        block2812d468Step = 29 ifTrue: [
            block2812d468Result := block2812d468Stack1.
            block2812d468Done := true.
        ].
    ].
    block2812d468Result
].
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasObjectComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack2 := 'widgetInlining'.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack2 := 'inline'.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack3 := [:block2812d4b0Arg1 | 
    | block2812d4b0Value0 block2812d4b0Value1 block2812d4b0Value2 block2812d4b0Value3 block2812d4b0Value4 |
    block2812d4b0Value0 := block2812d4b0Arg1.
    block2812d4b0Value1 := block2812d4b0Value0.
    block2812d4b0Value2 := XmALIGNMENTBEGINNING.
    (block2812d4b0Value1) alignment: (block2812d4b0Value2).
    block2812d4b0Value3 := block2812d4b0Value0.
    (block2812d4b0Value3) labelString: ('Inline').
    block2812d4b0Value4 := block2812d4b0Value0.
    (block2812d4b0Value4) height: (22).
    block2812d4b0Value0
].
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := (recoveredStack1) unmanageChild.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack2 := 'inline'.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack2 := 'useFPU'.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack3 := [:block2812d4d4Arg1 | 
    | block2812d4d4Value0 block2812d4d4Value1 block2812d4d4Value2 block2812d4d4Value3 block2812d4d4Value4 |
    block2812d4d4Value0 := block2812d4d4Arg1.
    block2812d4d4Value1 := block2812d4d4Value0.
    block2812d4d4Value2 := XmALIGNMENTBEGINNING.
    (block2812d4d4Value1) alignment: (block2812d4d4Value2).
    block2812d4d4Value3 := block2812d4d4Value0.
    (block2812d4d4Value3) labelString: ('Use FPU').
    block2812d4d4Value4 := block2812d4d4Value0.
    (block2812d4d4Value4) height: (22).
    block2812d4d4Value0
].
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack2 := 'useFPU'.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack2 := 'symbolLabel'.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack3 := [:block2812d4f8Arg1 | 
    | block2812d4f8Value0 block2812d4f8Value1 block2812d4f8Value2 block2812d4f8Value3 block2812d4f8Value4 block2812d4f8Value5 |
    block2812d4f8Value0 := block2812d4f8Arg1.
    block2812d4f8Value1 := block2812d4f8Value0.
    block2812d4f8Value2 := XmALIGNMENTBEGINNING.
    (block2812d4f8Value1) alignment: (block2812d4f8Value2).
    block2812d4f8Value3 := block2812d4f8Value0.
    (block2812d4f8Value3) labelString: ('Symbol').
    block2812d4f8Value4 := block2812d4f8Value0.
    (block2812d4f8Value4) height: (22).
    block2812d4f8Value5 := (block2812d4f8Value0) width: (120).
    block2812d4f8Value5
].
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack2 := 'symbolLabel'.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack2 := 'symbolField'.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack3 := [:block2812d51cArg1 | 
    | block2812d51cValue0 block2812d51cValue1 block2812d51cValue2 |
    block2812d51cValue0 := block2812d51cArg1.
    block2812d51cValue1 := block2812d51cValue0.
    (block2812d51cValue1) height: (22).
    block2812d51cValue2 := (block2812d51cValue0) width: (120).
    block2812d51cValue2
].
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack2 := 'symbolField'.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack2 := [:recoveredBlock750Arg1 | 
    | recoveredBlock750Value0 recoveredBlock750Value1 recoveredBlock750Value2 |
    recoveredBlock750Value0 := recoveredBlock750Arg1.
    recoveredBlock750Value1 := recoveredLocal13.
    recoveredBlock750Value2 := (recoveredBlock750Value0) workWindow: (recoveredBlock750Value1).
    recoveredBlock750Value2
].
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack2 := [:block2812d540Arg1 | 
    | block2812d540Value0 block2812d540Value1 block2812d540Value2 block2812d540Value3 block2812d540Value4 block2812d540Value5 block2812d540Value6 |
    block2812d540Value0 := block2812d540Arg1.
    block2812d540Value1 := block2812d540Value0.
    block2812d540Value2 := XmATTACHFORM.
    (block2812d540Value1) topAttachment: (block2812d540Value2).
    block2812d540Value3 := block2812d540Value0.
    (block2812d540Value3) topOffset: (5).
    block2812d540Value4 := block2812d540Value0.
    block2812d540Value5 := XmATTACHFORM.
    (block2812d540Value4) leftAttachment: (block2812d540Value5).
    block2812d540Value6 := (block2812d540Value0) leftOffset: (5).
    block2812d540Value6
].
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredStack2 := [:recoveredBlock822Arg1 | 
    | recoveredBlock822Value0 recoveredBlock822Value1 recoveredBlock822Value2 recoveredBlock822Value3 recoveredBlock822Value4 recoveredBlock822Value5 recoveredBlock822Value6 recoveredBlock822Value7 recoveredBlock822Value8 recoveredBlock822Value9 recoveredBlock822Value10 recoveredBlock822Value11 recoveredBlock822Value12 recoveredBlock822Value13 |
    recoveredBlock822Value0 := recoveredBlock822Arg1.
    recoveredBlock822Value1 := recoveredBlock822Value0.
    recoveredBlock822Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock822Value1) topAttachment: (recoveredBlock822Value2).
    recoveredBlock822Value3 := recoveredBlock822Value0.
    recoveredBlock822Value4 := recoveredLocal2.
    (recoveredBlock822Value3) topWidget: (recoveredBlock822Value4).
    recoveredBlock822Value5 := recoveredBlock822Value0.
    (recoveredBlock822Value5) topOffset: (0).
    recoveredBlock822Value6 := recoveredBlock822Value0.
    recoveredBlock822Value7 := XmATTACHWIDGET.
    (recoveredBlock822Value6) leftAttachment: (recoveredBlock822Value7).
    recoveredBlock822Value8 := recoveredBlock822Value0.
    recoveredBlock822Value9 := recoveredLocal2.
    (recoveredBlock822Value8) leftWidget: (recoveredBlock822Value9).
    recoveredBlock822Value10 := recoveredBlock822Value0.
    (recoveredBlock822Value10) leftOffset: (5).
    recoveredBlock822Value11 := recoveredBlock822Value0.
    recoveredBlock822Value12 := XmATTACHFORM.
    (recoveredBlock822Value11) rightAttachment: (recoveredBlock822Value12).
    recoveredBlock822Value13 := (recoveredBlock822Value0) rightOffset: (5).
    recoveredBlock822Value13
].
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 895.
        ].
        recoveredStep = 895 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            recoveredStack2 := [:recoveredBlock898Arg1 | 
    | recoveredBlock898Value0 recoveredBlock898Value1 recoveredBlock898Value2 recoveredBlock898Value3 recoveredBlock898Value4 recoveredBlock898Value5 recoveredBlock898Value6 recoveredBlock898Value7 recoveredBlock898Value8 recoveredBlock898Value9 recoveredBlock898Value10 recoveredBlock898Value11 |
    recoveredBlock898Value0 := recoveredBlock898Arg1.
    recoveredBlock898Value1 := recoveredBlock898Value0.
    recoveredBlock898Value2 := XmATTACHWIDGET.
    (recoveredBlock898Value1) topAttachment: (recoveredBlock898Value2).
    recoveredBlock898Value3 := recoveredBlock898Value0.
    recoveredBlock898Value4 := recoveredLocal2.
    (recoveredBlock898Value3) topWidget: (recoveredBlock898Value4).
    recoveredBlock898Value5 := recoveredBlock898Value0.
    (recoveredBlock898Value5) topOffset: (5).
    recoveredBlock898Value6 := recoveredBlock898Value0.
    recoveredBlock898Value7 := XmATTACHFORM.
    (recoveredBlock898Value6) leftAttachment: (recoveredBlock898Value7).
    recoveredBlock898Value8 := recoveredBlock898Value0.
    (recoveredBlock898Value8) leftOffset: (5).
    recoveredBlock898Value9 := recoveredBlock898Value0.
    recoveredBlock898Value10 := XmATTACHFORM.
    (recoveredBlock898Value9) rightAttachment: (recoveredBlock898Value10).
    recoveredBlock898Value11 := (recoveredBlock898Value0) rightOffset: (5).
    recoveredBlock898Value11
].
            recoveredPC := 958.
        ].
        recoveredStep = 958 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 963.
        ].
        recoveredStep = 963 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredStack2 := [:recoveredBlock966Arg1 | 
    | recoveredBlock966Value0 recoveredBlock966Value1 recoveredBlock966Value2 recoveredBlock966Value3 recoveredBlock966Value4 recoveredBlock966Value5 recoveredBlock966Value6 recoveredBlock966Value7 recoveredBlock966Value8 recoveredBlock966Value9 recoveredBlock966Value10 recoveredBlock966Value11 |
    recoveredBlock966Value0 := recoveredBlock966Arg1.
    recoveredBlock966Value1 := recoveredBlock966Value0.
    recoveredBlock966Value2 := XmATTACHWIDGET.
    (recoveredBlock966Value1) topAttachment: (recoveredBlock966Value2).
    recoveredBlock966Value3 := recoveredBlock966Value0.
    recoveredBlock966Value4 := recoveredLocal8.
    (recoveredBlock966Value3) topWidget: (recoveredBlock966Value4).
    recoveredBlock966Value5 := recoveredBlock966Value0.
    (recoveredBlock966Value5) topOffset: (0).
    recoveredBlock966Value6 := recoveredBlock966Value0.
    recoveredBlock966Value7 := XmATTACHFORM.
    (recoveredBlock966Value6) leftAttachment: (recoveredBlock966Value7).
    recoveredBlock966Value8 := recoveredBlock966Value0.
    (recoveredBlock966Value8) leftOffset: (5).
    recoveredBlock966Value9 := recoveredBlock966Value0.
    recoveredBlock966Value10 := XmATTACHFORM.
    (recoveredBlock966Value9) rightAttachment: (recoveredBlock966Value10).
    recoveredBlock966Value11 := (recoveredBlock966Value0) rightOffset: (5).
    recoveredBlock966Value11
].
            recoveredPC := 1026.
        ].
        recoveredStep = 1026 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1031.
        ].
        recoveredStep = 1031 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            recoveredStack2 := [:recoveredBlock1034Arg1 | 
    | recoveredBlock1034Value0 recoveredBlock1034Value1 recoveredBlock1034Value2 recoveredBlock1034Value3 recoveredBlock1034Value4 recoveredBlock1034Value5 recoveredBlock1034Value6 recoveredBlock1034Value7 recoveredBlock1034Value8 recoveredBlock1034Value9 recoveredBlock1034Value10 recoveredBlock1034Value11 recoveredBlock1034Value12 recoveredBlock1034Value13 |
    recoveredBlock1034Value0 := recoveredBlock1034Arg1.
    recoveredBlock1034Value1 := recoveredBlock1034Value0.
    recoveredBlock1034Value2 := XmATTACHWIDGET.
    (recoveredBlock1034Value1) topAttachment: (recoveredBlock1034Value2).
    recoveredBlock1034Value3 := recoveredBlock1034Value0.
    recoveredBlock1034Value4 := recoveredLocal7.
    (recoveredBlock1034Value3) topWidget: (recoveredBlock1034Value4).
    recoveredBlock1034Value5 := recoveredBlock1034Value0.
    (recoveredBlock1034Value5) topOffset: (5).
    recoveredBlock1034Value6 := recoveredBlock1034Value0.
    recoveredBlock1034Value7 := XmATTACHWIDGET.
    (recoveredBlock1034Value6) leftAttachment: (recoveredBlock1034Value7).
    recoveredBlock1034Value8 := recoveredBlock1034Value0.
    recoveredBlock1034Value9 := recoveredLocal9.
    (recoveredBlock1034Value8) leftWidget: (recoveredBlock1034Value9).
    recoveredBlock1034Value10 := recoveredBlock1034Value0.
    (recoveredBlock1034Value10) leftOffset: (5).
    recoveredBlock1034Value11 := recoveredBlock1034Value0.
    recoveredBlock1034Value12 := XmATTACHFORM.
    (recoveredBlock1034Value11) rightAttachment: (recoveredBlock1034Value12).
    recoveredBlock1034Value13 := (recoveredBlock1034Value0) rightOffset: (5).
    recoveredBlock1034Value13
].
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1107.
        ].
        recoveredStep = 1107 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            recoveredStack2 := [:recoveredBlock1110Arg1 | 
    | recoveredBlock1110Value0 recoveredBlock1110Value1 recoveredBlock1110Value2 recoveredBlock1110Value3 recoveredBlock1110Value4 recoveredBlock1110Value5 recoveredBlock1110Value6 recoveredBlock1110Value7 recoveredBlock1110Value8 |
    recoveredBlock1110Value0 := recoveredBlock1110Arg1.
    recoveredBlock1110Value1 := recoveredBlock1110Value0.
    recoveredBlock1110Value2 := XmATTACHWIDGET.
    (recoveredBlock1110Value1) topAttachment: (recoveredBlock1110Value2).
    recoveredBlock1110Value3 := recoveredBlock1110Value0.
    recoveredBlock1110Value4 := recoveredLocal7.
    (recoveredBlock1110Value3) topWidget: (recoveredBlock1110Value4).
    recoveredBlock1110Value5 := recoveredBlock1110Value0.
    (recoveredBlock1110Value5) topOffset: (5).
    recoveredBlock1110Value6 := recoveredBlock1110Value0.
    recoveredBlock1110Value7 := XmATTACHFORM.
    (recoveredBlock1110Value6) leftAttachment: (recoveredBlock1110Value7).
    recoveredBlock1110Value8 := (recoveredBlock1110Value0) leftOffset: (5).
    recoveredBlock1110Value8
].
            recoveredPC := 1156.
        ].
        recoveredStep = 1156 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1161.
        ].
        recoveredStep = 1161 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1164.
        ].
        recoveredStep = 1164 ifTrue: [
            recoveredStack2 := [:recoveredBlock1164Arg1 | 
    | recoveredBlock1164Value0 recoveredBlock1164Value1 recoveredBlock1164Value2 recoveredBlock1164Value3 recoveredBlock1164Value4 recoveredBlock1164Value5 recoveredBlock1164Value6 recoveredBlock1164Value7 recoveredBlock1164Value8 |
    recoveredBlock1164Value0 := recoveredBlock1164Arg1.
    recoveredBlock1164Value1 := recoveredBlock1164Value0.
    recoveredBlock1164Value2 := XmATTACHWIDGET.
    (recoveredBlock1164Value1) topAttachment: (recoveredBlock1164Value2).
    recoveredBlock1164Value3 := recoveredBlock1164Value0.
    recoveredBlock1164Value4 := recoveredLocal10.
    (recoveredBlock1164Value3) topWidget: (recoveredBlock1164Value4).
    recoveredBlock1164Value5 := recoveredBlock1164Value0.
    (recoveredBlock1164Value5) topOffset: (5).
    recoveredBlock1164Value6 := recoveredBlock1164Value0.
    recoveredBlock1164Value7 := XmATTACHFORM.
    (recoveredBlock1164Value6) leftAttachment: (recoveredBlock1164Value7).
    recoveredBlock1164Value8 := (recoveredBlock1164Value0) leftOffset: (5).
    recoveredBlock1164Value8
].
            recoveredPC := 1210.
        ].
        recoveredStep = 1210 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1215.
        ].
        recoveredStep = 1215 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1218.
        ].
        recoveredStep = 1218 ifTrue: [
            recoveredStack2 := [:recoveredBlock1218Arg1 | 
    | recoveredBlock1218Value0 recoveredBlock1218Value1 recoveredBlock1218Value2 recoveredBlock1218Value3 recoveredBlock1218Value4 recoveredBlock1218Value5 recoveredBlock1218Value6 recoveredBlock1218Value7 recoveredBlock1218Value8 recoveredBlock1218Value9 recoveredBlock1218Value10 recoveredBlock1218Value11 recoveredBlock1218Value12 recoveredBlock1218Value13 |
    recoveredBlock1218Value0 := recoveredBlock1218Arg1.
    recoveredBlock1218Value1 := recoveredBlock1218Value0.
    recoveredBlock1218Value2 := XmATTACHWIDGET.
    (recoveredBlock1218Value1) topAttachment: (recoveredBlock1218Value2).
    recoveredBlock1218Value3 := recoveredBlock1218Value0.
    recoveredBlock1218Value4 := recoveredLocal10.
    (recoveredBlock1218Value3) topWidget: (recoveredBlock1218Value4).
    recoveredBlock1218Value5 := recoveredBlock1218Value0.
    (recoveredBlock1218Value5) topOffset: (5).
    recoveredBlock1218Value6 := recoveredBlock1218Value0.
    recoveredBlock1218Value7 := XmATTACHFORM.
    (recoveredBlock1218Value6) rightAttachment: (recoveredBlock1218Value7).
    recoveredBlock1218Value8 := recoveredBlock1218Value0.
    (recoveredBlock1218Value8) rightOffset: (5).
    recoveredBlock1218Value9 := recoveredBlock1218Value0.
    recoveredBlock1218Value10 := XmATTACHWIDGET.
    (recoveredBlock1218Value9) leftAttachment: (recoveredBlock1218Value10).
    recoveredBlock1218Value11 := recoveredBlock1218Value0.
    recoveredBlock1218Value12 := recoveredLocal6.
    (recoveredBlock1218Value11) leftWidget: (recoveredBlock1218Value12).
    recoveredBlock1218Value13 := (recoveredBlock1218Value0) leftOffset: (5).
    recoveredBlock1218Value13
].
            recoveredPC := 1286.
        ].
        recoveredStep = 1286 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1291.
        ].
        recoveredStep = 1291 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1294.
        ].
        recoveredStep = 1294 ifTrue: [
            recoveredStack2 := [:recoveredBlock1294Arg1 | 
    | recoveredBlock1294Value0 recoveredBlock1294Value1 recoveredBlock1294Value2 recoveredBlock1294Value3 recoveredBlock1294Value4 recoveredBlock1294Value5 recoveredBlock1294Value6 recoveredBlock1294Value7 recoveredBlock1294Value8 |
    recoveredBlock1294Value0 := recoveredBlock1294Arg1.
    recoveredBlock1294Value1 := recoveredBlock1294Value0.
    recoveredBlock1294Value2 := XmATTACHWIDGET.
    (recoveredBlock1294Value1) topAttachment: (recoveredBlock1294Value2).
    recoveredBlock1294Value3 := recoveredBlock1294Value0.
    recoveredBlock1294Value4 := recoveredLocal5.
    (recoveredBlock1294Value3) topWidget: (recoveredBlock1294Value4).
    recoveredBlock1294Value5 := recoveredBlock1294Value0.
    (recoveredBlock1294Value5) topOffset: (5).
    recoveredBlock1294Value6 := recoveredBlock1294Value0.
    recoveredBlock1294Value7 := XmATTACHFORM.
    (recoveredBlock1294Value6) leftAttachment: (recoveredBlock1294Value7).
    recoveredBlock1294Value8 := (recoveredBlock1294Value0) leftOffset: (5).
    recoveredBlock1294Value8
].
            recoveredPC := 1340.
        ].
        recoveredStep = 1340 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1345.
        ].
        recoveredStep = 1345 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1348.
        ].
        recoveredStep = 1348 ifTrue: [
            recoveredStack2 := [:recoveredBlock1348Arg1 | 
    | recoveredBlock1348Value0 recoveredBlock1348Value1 recoveredBlock1348Value2 recoveredBlock1348Value3 recoveredBlock1348Value4 recoveredBlock1348Value5 recoveredBlock1348Value6 recoveredBlock1348Value7 recoveredBlock1348Value8 recoveredBlock1348Value9 recoveredBlock1348Value10 recoveredBlock1348Value11 recoveredBlock1348Value12 recoveredBlock1348Value13 |
    recoveredBlock1348Value0 := recoveredBlock1348Arg1.
    recoveredBlock1348Value1 := recoveredBlock1348Value0.
    recoveredBlock1348Value2 := XmATTACHWIDGET.
    (recoveredBlock1348Value1) topAttachment: (recoveredBlock1348Value2).
    recoveredBlock1348Value3 := recoveredBlock1348Value0.
    recoveredBlock1348Value4 := recoveredLocal5.
    (recoveredBlock1348Value3) topWidget: (recoveredBlock1348Value4).
    recoveredBlock1348Value5 := recoveredBlock1348Value0.
    (recoveredBlock1348Value5) topOffset: (5).
    recoveredBlock1348Value6 := recoveredBlock1348Value0.
    recoveredBlock1348Value7 := XmATTACHWIDGET.
    (recoveredBlock1348Value6) leftAttachment: (recoveredBlock1348Value7).
    recoveredBlock1348Value8 := recoveredBlock1348Value0.
    recoveredBlock1348Value9 := recoveredLocal4.
    (recoveredBlock1348Value8) leftWidget: (recoveredBlock1348Value9).
    recoveredBlock1348Value10 := recoveredBlock1348Value0.
    (recoveredBlock1348Value10) leftOffset: (5).
    recoveredBlock1348Value11 := recoveredBlock1348Value0.
    recoveredBlock1348Value12 := XmATTACHFORM.
    (recoveredBlock1348Value11) rightAttachment: (recoveredBlock1348Value12).
    recoveredBlock1348Value13 := (recoveredBlock1348Value0) rightOffset: (5).
    recoveredBlock1348Value13
].
            recoveredPC := 1416.
        ].
        recoveredStep = 1416 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1421.
        ].
        recoveredStep = 1421 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1424.
        ].
        recoveredStep = 1424 ifTrue: [
            recoveredStack2 := [:block2812d564Arg1 | 
    | block2812d564Value0 block2812d564Value1 block2812d564Value2 block2812d564Value3 block2812d564Value4 block2812d564Value5 block2812d564Value6 block2812d564Value7 block2812d564Value8 |
    block2812d564Value0 := block2812d564Arg1.
    block2812d564Value1 := block2812d564Value0.
    block2812d564Value2 := XmATTACHNONE.
    (block2812d564Value1) topAttachment: (block2812d564Value2).
    block2812d564Value3 := block2812d564Value0.
    block2812d564Value4 := XmATTACHFORM.
    (block2812d564Value3) bottomAttachment: (block2812d564Value4).
    block2812d564Value5 := block2812d564Value0.
    (block2812d564Value5) bottomOffset: (5).
    block2812d564Value6 := block2812d564Value0.
    block2812d564Value7 := XmATTACHFORM.
    (block2812d564Value6) rightAttachment: (block2812d564Value7).
    block2812d564Value8 := (block2812d564Value0) rightOffset: (5).
    block2812d564Value8
].
            recoveredPC := 1428.
        ].
        recoveredStep = 1428 ifTrue: [
            recoveredPC := 1472.
        ].
        recoveredStep = 1472 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1477.
        ].
        recoveredStep = 1477 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1480.
        ].
        recoveredStep = 1480 ifTrue: [
            recoveredStack2 := [:recoveredBlock1480Arg1 | 
    | recoveredBlock1480Value0 recoveredBlock1480Value1 recoveredBlock1480Value2 recoveredBlock1480Value3 recoveredBlock1480Value4 recoveredBlock1480Value5 recoveredBlock1480Value6 recoveredBlock1480Value7 recoveredBlock1480Value8 recoveredBlock1480Value9 recoveredBlock1480Value10 |
    recoveredBlock1480Value0 := recoveredBlock1480Arg1.
    recoveredBlock1480Value1 := recoveredBlock1480Value0.
    recoveredBlock1480Value2 := XmATTACHNONE.
    (recoveredBlock1480Value1) topAttachment: (recoveredBlock1480Value2).
    recoveredBlock1480Value3 := recoveredBlock1480Value0.
    recoveredBlock1480Value4 := XmATTACHFORM.
    (recoveredBlock1480Value3) bottomAttachment: (recoveredBlock1480Value4).
    recoveredBlock1480Value5 := recoveredBlock1480Value0.
    (recoveredBlock1480Value5) bottomOffset: (5).
    recoveredBlock1480Value6 := recoveredBlock1480Value0.
    recoveredBlock1480Value7 := XmATTACHWIDGET.
    (recoveredBlock1480Value6) rightAttachment: (recoveredBlock1480Value7).
    recoveredBlock1480Value8 := recoveredBlock1480Value0.
    recoveredBlock1480Value9 := recoveredLocal12.
    (recoveredBlock1480Value8) rightWidget: (recoveredBlock1480Value9).
    recoveredBlock1480Value10 := (recoveredBlock1480Value0) rightOffset: (5).
    recoveredBlock1480Value10
].
            recoveredPC := 1534.
        ].
        recoveredStep = 1534 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1539.
        ].
        recoveredStep = 1539 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1542.
        ].
        recoveredStep = 1542 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 1546.
        ].
        recoveredStep = 1546 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1547.
        ].
        recoveredStep = 1547 ifTrue: [
            recoveredStack4 := 'shellResizeCallback:clientData:callData:'.
            recoveredPC := 1550.
        ].
        recoveredStep = 1550 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1551.
        ].
        recoveredStep = 1551 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1555.
        ].
        recoveredStep = 1555 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1558.
        ].
        recoveredStep = 1558 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1562.
        ].
        recoveredStep = 1562 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1563.
        ].
        recoveredStep = 1563 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 1566.
        ].
        recoveredStep = 1566 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1567.
        ].
        recoveredStep = 1567 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1571.
        ].
        recoveredStep = 1571 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1574.
        ].
        recoveredStep = 1574 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1578.
        ].
        recoveredStep = 1578 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1579.
        ].
        recoveredStep = 1579 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 1582.
        ].
        recoveredStep = 1582 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1583.
        ].
        recoveredStep = 1583 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1587.
        ].
        recoveredStep = 1587 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1590.
        ].
        recoveredStep = 1590 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 1594.
        ].
        recoveredStep = 1594 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1595.
        ].
        recoveredStep = 1595 ifTrue: [
            recoveredStack4 := 'inlineValue:clientData:callData:'.
            recoveredPC := 1598.
        ].
        recoveredStep = 1598 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1599.
        ].
        recoveredStep = 1599 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1603.
        ].
        recoveredStep = 1603 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1606.
        ].
        recoveredStep = 1606 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 1610.
        ].
        recoveredStep = 1610 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1611.
        ].
        recoveredStep = 1611 ifTrue: [
            recoveredStack4 := 'useFPUValue:clientData:callData:'.
            recoveredPC := 1614.
        ].
        recoveredStep = 1614 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1615.
        ].
        recoveredStep = 1615 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1619.
        ].
        recoveredStep = 1619 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1622.
        ].
        recoveredStep = 1622 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1626.
        ].
        recoveredStep = 1626 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1627.
        ].
        recoveredStep = 1627 ifTrue: [
            recoveredStack4 := 'widgetInliningSingle:clientData:callData:'.
            recoveredPC := 1630.
        ].
        recoveredStep = 1630 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1631.
        ].
        recoveredStep = 1631 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1635.
        ].
        recoveredStep = 1635 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1638.
        ].
        recoveredStep = 1638 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1643.
        ].
        recoveredStep = 1643 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1646.
        ].
        recoveredStep = 1646 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1651.
        ].
        recoveredStep = 1651 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1654.
        ].
        recoveredStep = 1654 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1659.
        ].
        recoveredStep = 1659 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1662.
        ].
        recoveredStep = 1662 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1667.
        ].
        recoveredStep = 1667 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1670.
        ].
        recoveredStep = 1670 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1675.
        ].
        recoveredStep = 1675 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1678.
        ].
        recoveredStep = 1678 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1683.
        ].
        recoveredStep = 1683 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1686.
        ].
        recoveredStep = 1686 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1691.
        ].
        recoveredStep = 1691 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1694.
        ].
        recoveredStep = 1694 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1699.
        ].
        recoveredStep = 1699 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1703.
        ].
        recoveredStep = 1703 ifTrue: [
            recoveredStack1 := 'Specify the inlining of the code.'.
            recoveredPC := 1706.
        ].
        recoveredStep = 1706 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 1709.
        ].
        recoveredStep = 1709 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1713.
        ].
        recoveredStep = 1713 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1714.
        ].
        recoveredStep = 1714 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1719.
        ].
        recoveredStep = 1719 ifTrue: [
            recoveredStack1 := 'Inline the generated C-Code'.
            recoveredPC := 1722.
        ].
        recoveredStep = 1722 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 1725.
        ].
        recoveredStep = 1725 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1729.
        ].
        recoveredStep = 1729 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1730.
        ].
        recoveredStep = 1730 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1735.
        ].
        recoveredStep = 1735 ifTrue: [
            recoveredStack1 := 'Use FPU when executing the C-Code'.
            recoveredPC := 1738.
        ].
        recoveredStep = 1738 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 1741.
        ].
        recoveredStep = 1741 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1745.
        ].
        recoveredStep = 1745 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1746.
        ].
        recoveredStep = 1746 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1751.
        ].
        recoveredStep = 1751 ifTrue: [
            recoveredStack1 := 'The memory location of the executable code'.
            recoveredPC := 1754.
        ].
        recoveredStep = 1754 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 1757.
        ].
        recoveredStep = 1757 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1761.
        ].
        recoveredStep = 1761 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1762.
        ].
        recoveredStep = 1762 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1767.
        ].
        recoveredStep = 1767 ifTrue: [
            recoveredStack1 := 'Keep the code in the defined Memory Segment'.
            recoveredPC := 1770.
        ].
        recoveredStep = 1770 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 1773.
        ].
        recoveredStep = 1773 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1777.
        ].
        recoveredStep = 1777 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1778.
        ].
        recoveredStep = 1778 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1783.
        ].
        recoveredStep = 1783 ifTrue: [
            recoveredStack1 := 'The C identifier for runnables (optional)'.
            recoveredPC := 1786.
        ].
        recoveredStep = 1786 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 1789.
        ].
        recoveredStep = 1789 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1793.
        ].
        recoveredStep = 1793 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 1796.
        ].
        recoveredStep = 1796 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1799.
        ].
        recoveredStep = 1799 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 1802.
        ].
        recoveredStep = 1802 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 1807.
        ].
        recoveredStep = 1807 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

