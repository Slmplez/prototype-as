"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20028dd4; bytecode file offset 0x934580"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
exportedVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) exportedBasicVariables.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006f808; bytecode file offset 0x96c1f4"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
observedSenderReceiverInterfaces
    | recoveredValue0 |
    recoveredValue0 := observedSenderReceiverInterfaces.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20094bb0; bytecode file offset 0x99148c"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
removeInterface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) removeInterface: (recoveredValue0) withRequest: (false).
    ^self
! !

"ASDBase.ic method 0x20098eb4; bytecode file offset 0x995850"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
realizeInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) realizeInterface: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ae398; bytecode file offset 0x9ab034"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
removeInterface: recoveredArg1 withRequest: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) item.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) removeInterface: (recoveredValue1) withRequest: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c5ef0; bytecode file offset 0x9c2804"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
observedSenderReceiverInterfaces: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    observedSenderReceiverInterfaces := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c602c; bytecode file offset 0x9c29e8"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
uiElementMappings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    uiElementMappings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d607c; bytecode file offset 0x9d3134"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
startObserving
    super startObserving.
    (self) updateObservingSenderReceiverInterfaces.
    ^self
! !

"ASDBase.ic method 0x200ea384; bytecode file offset 0x9e6c94"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
update: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super update: (recoveredValue0).
    (self) updateObservingSenderReceiverInterfaces.
    ^self
! !

"ASDBase.ic method 0x200eea60; bytecode file offset 0x9eb320"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
stopObserving
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := super stopObserving.
    recoveredLocal1 := recoveredValue0.
    (self) stopObservingSenderReceiverInterfaces.
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f2e9c; bytecode file offset 0x9ef798"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
modified
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
            recoveredStack2 := (recoveredStack2) isGraphicModified.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) mappingModified.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010bcd4; bytecode file offset 0xa085f0"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) observedSenderReceiverInterfaces: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2013fd24; bytecode file offset 0xa3c5ec"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
saveModel
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) modified.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) saveUiElementMappingsToItem.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super saveModel.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20150b80; bytecode file offset 0xa4d468"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
stopObservingSenderReceiverInterfaces
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) observedSenderReceiverInterfaces.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) removeDependent: (self).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2018e260; bytecode file offset 0xa8ab20"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
uiElementMappings
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := uiElementMappings.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := Dictionary.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    uiElementMappings := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := uiElementMappings.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20196650; bytecode file offset 0xa92f10"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
addInstVarClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super addInstVarClass: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    ^recoveredBlock11Value0
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^nil
! !

"ASDBase.ic method 0x201b0e5c; bytecode file offset 0xaad724"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
saveUiElementMappingsToItem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiElementMappings.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := (self) item.
    recoveredBlock5Value1 := recoveredBlock5Arg2.
    recoveredBlock5Value2 := recoveredBlock5Arg1.
    recoveredBlock5Value3 := (recoveredBlock5Value0) setElementMappings: (recoveredBlock5Value1) forType: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    recoveredValue2 := (self) item.
    (recoveredValue2) mappingsAsStorageObjects.
    ^self
! !

"ASDBase.ic method 0x202c6034; bytecode file offset 0xbc292c"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
storeChangesPromptYesNoCancel: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modified.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) reactivateWindow.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := '                                                  '.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'ASDASCStoreChanges'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'YESNOCANCEL'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'ALWAYSSAVECHANGES'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) nextTimeButtonText: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'question'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d7038; bytecode file offset 0xbd3924"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
updateInterfaces
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasUserQuestion.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Updating interfaces may change or remove parts of your model\if the corresponding interface has changed or was removed.\This action is not reversible!!\ \Are you sure to update all interfaces?'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 'ASDUpdateInterfaces'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) prompterID: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'OKCANCEL'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) buttonStyle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'warning'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock34Value0 recoveredBlock34Value1 |
    recoveredBlock34Value0 := (self) item.
    recoveredBlock34Value1 := (recoveredBlock34Value0) updateInterfaces.
    recoveredBlock34Value1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) suspendObserving: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032b1a4; bytecode file offset 0xc27a7c"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
updateObservingSenderReceiverInterfaces
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack3 := [:block280ec664Arg1 | 
    nil
].
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) sgClassIfUndefined: (recoveredBlock5Stack3).
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 55] ifFalse: [recoveredBlock5PC := 28].
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isSenderReceiverInterface.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 34] ifFalse: [recoveredBlock5PC := 55].
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) observedSenderReceiverInterfaces.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Local1.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) includes: (recoveredBlock5Stack3).
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 55] ifFalse: [recoveredBlock5PC := 44].
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
            recoveredBlock5PC := 46.
        ].
        recoveredBlock5Step = 46 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            (recoveredBlock5Stack1) addDependent: (recoveredBlock5Stack2).
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 50.
        ].
        recoveredBlock5Step = 50 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) observedSenderReceiverInterfaces.
            recoveredBlock5PC := 52.
        ].
        recoveredBlock5Step = 52 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 53.
        ].
        recoveredBlock5Step = 53 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) add: (recoveredBlock5Stack2).
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) allElementsDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2039e26c; bytecode file offset 0xc9ab48"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
uiMappings: recoveredArg1 type: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 recoveredBlock13Value8 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) sourceObject.
    recoveredBlock13Value3 := (recoveredBlock13Value2) displayName.
    recoveredBlock13Value4 := [
    | recoveredBlock13Block28Value0 recoveredBlock13Block28Value1 recoveredBlock13Block28Value2 recoveredBlock13Block28Value3 recoveredBlock13Block28Value4 recoveredBlock13Block28Value5 recoveredBlock13Block28Value6 |
    recoveredBlock13Block28Value0 := recoveredLocal1.
    recoveredBlock13Block28Value1 := recoveredBlock13Arg1.
    recoveredBlock13Block28Value2 := (recoveredBlock13Block28Value1) sourceObject.
    recoveredBlock13Block28Value3 := (recoveredBlock13Block28Value2) displayName.
    recoveredBlock13Block28Value4 := OrderedCollection.
    recoveredBlock13Block28Value5 := (recoveredBlock13Block28Value4) new.
    recoveredBlock13Block28Value6 := (recoveredBlock13Block28Value0) at: (recoveredBlock13Block28Value3) put: (recoveredBlock13Block28Value5).
    recoveredBlock13Block28Value6
].
    recoveredBlock13Value5 := (recoveredBlock13Value0) at: (recoveredBlock13Value3) ifAbsent: (recoveredBlock13Value4).
    recoveredBlock13Local1 := recoveredBlock13Value5.
    recoveredBlock13Value6 := recoveredBlock13Local1.
    recoveredBlock13Value7 := recoveredBlock13Arg1.
    recoveredBlock13Value8 := (recoveredBlock13Value6) add: (recoveredBlock13Value7).
    recoveredBlock13Value8
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) uiElementMappings.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue4) at: (recoveredValue5) put: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203a9a30; bytecode file offset 0xca6308"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
addElement: recoveredArg1 atPosition: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super addElement: (recoveredValue0) atPosition: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) sgClass.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isARDataInterface.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 40] ifFalse: [recoveredBlock14PC := 30].
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) sgClass.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isClientServerInterface.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 40] ifFalse: [recoveredBlock14PC := 73].
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack1 := recoveredArg1.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isRequirePort.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 50] ifFalse: [recoveredBlock14PC := 56].
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14Stack2 := true.
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            (recoveredBlock14Stack1) iconVisibility: (recoveredBlock14Stack2).
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            recoveredBlock14Stack2 := recoveredArg1.
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isProvidePort.
            recoveredBlock14PC := 62.
        ].
        recoveredBlock14Step = 62 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 66] ifFalse: [recoveredBlock14PC := 73].
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14PC := 67.
        ].
        recoveredBlock14Step = 67 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 68.
        ].
        recoveredBlock14Step = 68 ifTrue: [
            recoveredBlock14Stack2 := true.
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            (recoveredBlock14Stack1) iconVisibility: (recoveredBlock14Stack2).
            recoveredBlock14PC := 71.
        ].
        recoveredBlock14Step = 71 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 72.
        ].
        recoveredBlock14Step = 72 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 73 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20585a0c; bytecode file offset 0xe82348"
!ARAtomicSoftwareComponentSpecificationCtrl methodsFor: 'recovered'!
performAdditionalElementActionsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isClientServerInterface.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 22] ifFalse: [recoveredBlock7PC := 262].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isProvidePort.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 30] ifFalse: [recoveredBlock7PC := 181].
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) item.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) realizedInterfaces.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack2 := [:recoveredBlock7Block33Arg1 | 
    | recoveredBlock7Block33Value0 recoveredBlock7Block33Value1 recoveredBlock7Block33Value2 recoveredBlock7Block33Value3 recoveredBlock7Block33Value4 |
    recoveredBlock7Block33Value0 := recoveredBlock7Block33Arg1.
    recoveredBlock7Block33Value1 := (recoveredBlock7Block33Value0) aliasName.
    recoveredBlock7Block33Value2 := recoveredBlock7Arg1.
    recoveredBlock7Block33Value3 := (recoveredBlock7Block33Value2) aliasName.
    recoveredBlock7Block33Value4 := (recoveredBlock7Block33Value1) = (recoveredBlock7Block33Value3).
    recoveredBlock7Block33Value4
].
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7Stack3 := [].
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) detect: (recoveredBlock7Stack2) ifNone: (recoveredBlock7Stack3).
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            (recoveredBlock7Stack1 ~~ nil) ifTrue: [recoveredBlock7PC := 181] ifFalse: [recoveredBlock7PC := 58].
        ].
        recoveredBlock7Step = 58 ifTrue: [
            recoveredBlock7Stack1 := EtasUserQuestion.
            recoveredBlock7PC := 60.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack2 := 'Changing the port type to <Provide> will remove all graphical representations of the port.\Are you sure to change the port type?'.
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) withCrs.
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) message: (recoveredBlock7Stack2).
            recoveredBlock7PC := 66.
        ].
        recoveredBlock7Step = 66 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            recoveredBlock7Stack3 := 'ASDSwitchPortType'.
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            (recoveredBlock7Stack2) prompterID: (recoveredBlock7Stack3).
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Stack3 := 'OKCANCEL'.
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 74 ifTrue: [
            (recoveredBlock7Stack2) buttonStyle: (recoveredBlock7Stack3).
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 77.
        ].
        recoveredBlock7Step = 77 ifTrue: [
            recoveredBlock7Stack3 := 'question'.
            recoveredBlock7PC := 79.
        ].
        recoveredBlock7Step = 79 ifTrue: [
            (recoveredBlock7Stack2) type: (recoveredBlock7Stack3).
            recoveredBlock7PC := 81.
        ].
        recoveredBlock7Step = 81 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) prompt.
            recoveredBlock7PC := 83.
        ].
        recoveredBlock7Step = 83 ifTrue: [
            (recoveredBlock7Stack1 ~~ nil) ifTrue: [recoveredBlock7PC := 93] ifFalse: [recoveredBlock7PC := 86].
        ].
        recoveredBlock7Step = 86 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 89.
        ].
        recoveredBlock7Step = 89 ifTrue: [
            (recoveredBlock7Stack1) setRequirePort.
            recoveredBlock7PC := 91.
        ].
        recoveredBlock7Step = 91 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 92.
        ].
        recoveredBlock7Step = 92 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 93 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 94.
        ].
        recoveredBlock7Step = 94 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) graphPaneController.
            recoveredBlock7PC := 96.
        ].
        recoveredBlock7Step = 96 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 175] ifFalse: [recoveredBlock7PC := 100].
        ].
        recoveredBlock7Step = 100 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 101.
        ].
        recoveredBlock7Step = 101 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) graphPaneController.
            recoveredBlock7PC := 103.
        ].
        recoveredBlock7Step = 103 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 106.
        ].
        recoveredBlock7Step = 106 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) aliasName.
            recoveredBlock7PC := 108.
        ].
        recoveredBlock7Step = 108 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) allElementGOsAliasName: (recoveredBlock7Stack2).
            recoveredBlock7PC := 110.
        ].
        recoveredBlock7Step = 110 ifTrue: [
            recoveredBlock7Stack2 := [:recoveredBlock7Block110Arg1 | 
    | recoveredBlock7Block110Value0 recoveredBlock7Block110Value1 recoveredBlock7Block110Value2 recoveredBlock7Block110Value3 recoveredBlock7Block110Value4 recoveredBlock7Block110Value5 recoveredBlock7Block110Value6 recoveredBlock7Block110Value7 |
    recoveredBlock7Block110Value0 := recoveredBlock7Block110Arg1.
    recoveredBlock7Block110Value1 := recoveredBlock7Block110Arg1.
    (recoveredBlock7Block110Value0) removeGO: (recoveredBlock7Block110Value1) display: (true).
    recoveredBlock7Block110Value2 := (self) graphPaneController.
    recoveredBlock7Block110Value3 := (recoveredBlock7Block110Value2) selectedGOs.
    recoveredBlock7Block110Value4 := [:recoveredBlock7Block110Block129Arg1 | 
    | recoveredBlock7Block110Block129Stack0 recoveredBlock7Block110Block129Stack1 recoveredBlock7Block110Block129Stack2 recoveredBlock7Block110Block129Stack3 recoveredBlock7Block110Block129Stack4 recoveredBlock7Block110Block129PC recoveredBlock7Block110Block129Step recoveredBlock7Block110Block129Done recoveredBlock7Block110Block129Result |
    recoveredBlock7Block110Block129Stack0 := nil.
    recoveredBlock7Block110Block129PC := 136.
    recoveredBlock7Block110Block129Done := false.
    [recoveredBlock7Block110Block129Done not] whileTrue: [
        recoveredBlock7Block110Block129Step := recoveredBlock7Block110Block129PC.
        recoveredBlock7Block110Block129Step = 136 ifTrue: [
            recoveredBlock7Block110Block129Stack1 := nil.
            recoveredBlock7Block110Block129PC := 137.
        ].
        recoveredBlock7Block110Block129Step = 137 ifTrue: [
            recoveredBlock7Block110Block129Stack2 := recoveredBlock7Block110Block129Arg1.
            recoveredBlock7Block110Block129PC := 138.
        ].
        recoveredBlock7Block110Block129Step = 138 ifTrue: [
            recoveredBlock7Block110Block129Stack2 := (recoveredBlock7Block110Block129Stack2) basicGraphObject.
            recoveredBlock7Block110Block129PC := 140.
        ].
        recoveredBlock7Block110Block129Step = 140 ifTrue: [
            recoveredBlock7Block110Block129Stack3 := recoveredBlock7Block110Arg1.
            recoveredBlock7Block110Block129PC := 143.
        ].
        recoveredBlock7Block110Block129Step = 143 ifTrue: [
            recoveredBlock7Block110Block129Stack2 := (recoveredBlock7Block110Block129Stack2) = (recoveredBlock7Block110Block129Stack3).
            recoveredBlock7Block110Block129PC := 144.
        ].
        recoveredBlock7Block110Block129Step = 144 ifTrue: [
            (recoveredBlock7Block110Block129Stack2) ifTrue: [recoveredBlock7Block110Block129PC := 148] ifFalse: [recoveredBlock7Block110Block129PC := 154].
        ].
        recoveredBlock7Block110Block129Step = 148 ifTrue: [
            recoveredBlock7Block110Block129PC := 149.
        ].
        recoveredBlock7Block110Block129Step = 149 ifTrue: [
            recoveredBlock7Block110Block129Stack1 := recoveredBlock7Block110Block129Arg1.
            recoveredBlock7Block110Block129PC := 150.
        ].
        recoveredBlock7Block110Block129Step = 150 ifTrue: [
            recoveredBlock7Block110Block129Stack2 := recoveredBlock7Block110Block129Arg1.
            recoveredBlock7Block110Block129PC := 151.
        ].
        recoveredBlock7Block110Block129Step = 151 ifTrue: [
            recoveredBlock7Block110Block129Stack3 := true.
            recoveredBlock7Block110Block129PC := 152.
        ].
        recoveredBlock7Block110Block129Step = 152 ifTrue: [
            recoveredBlock7Block110Block129Stack1 := (recoveredBlock7Block110Block129Stack1) removeGO: (recoveredBlock7Block110Block129Stack2) display: (recoveredBlock7Block110Block129Stack3).
            recoveredBlock7Block110Block129PC := 154.
        ].
        recoveredBlock7Block110Block129Step = 154 ifTrue: [
            recoveredBlock7Block110Block129Result := recoveredBlock7Block110Block129Stack1.
            recoveredBlock7Block110Block129Done := true.
        ].
    ].
    recoveredBlock7Block110Block129Result
].
    (recoveredBlock7Block110Value3) do: (recoveredBlock7Block110Value4).
    recoveredBlock7Block110Value5 := ('Kli') == ('Call_92846').
    recoveredBlock7Block110Value6 := (self) graphPaneController.
    (recoveredBlock7Block110Value6) graphicsModified: (true).
    recoveredBlock7Block110Value7 := (self) saveModel.
    recoveredBlock7Block110Value7
].
            recoveredBlock7PC := 173.
        ].
        recoveredBlock7Step = 173 ifTrue: [
            (recoveredBlock7Stack1) do: (recoveredBlock7Stack2).
            recoveredBlock7PC := 175.
        ].
        recoveredBlock7Step = 175 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 176.
        ].
        recoveredBlock7Step = 176 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 179.
        ].
        recoveredBlock7Step = 179 ifTrue: [
            (recoveredBlock7Stack1) realizeInterface: (recoveredBlock7Stack2).
            recoveredBlock7PC := 181.
        ].
        recoveredBlock7Step = 181 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 182.
        ].
        recoveredBlock7Step = 182 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 185.
        ].
        recoveredBlock7Step = 185 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isRequirePort.
            recoveredBlock7PC := 187.
        ].
        recoveredBlock7Step = 187 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 190] ifFalse: [recoveredBlock7PC := 262].
        ].
        recoveredBlock7Step = 190 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 191.
        ].
        recoveredBlock7Step = 191 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) item.
            recoveredBlock7PC := 192.
        ].
        recoveredBlock7Step = 192 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) realizedInterfaces.
            recoveredBlock7PC := 193.
        ].
        recoveredBlock7Step = 193 ifTrue: [
            recoveredBlock7Stack3 := [:recoveredBlock7Block193Arg1 | 
    | recoveredBlock7Block193Value0 recoveredBlock7Block193Value1 recoveredBlock7Block193Value2 recoveredBlock7Block193Value3 recoveredBlock7Block193Value4 |
    recoveredBlock7Block193Value0 := recoveredBlock7Block193Arg1.
    recoveredBlock7Block193Value1 := (recoveredBlock7Block193Value0) aliasName.
    recoveredBlock7Block193Value2 := recoveredBlock7Arg1.
    recoveredBlock7Block193Value3 := (recoveredBlock7Block193Value2) aliasName.
    recoveredBlock7Block193Value4 := (recoveredBlock7Block193Value1) = (recoveredBlock7Block193Value3).
    recoveredBlock7Block193Value4
].
            recoveredBlock7PC := 210.
        ].
        recoveredBlock7Step = 210 ifTrue: [
            recoveredBlock7Stack4 := [].
            recoveredBlock7PC := 212.
        ].
        recoveredBlock7Step = 212 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) detect: (recoveredBlock7Stack3) ifNone: (recoveredBlock7Stack4).
            recoveredBlock7PC := 214.
        ].
        recoveredBlock7Step = 214 ifTrue: [
            (recoveredBlock7Stack2 == nil) ifTrue: [recoveredBlock7PC := 262] ifFalse: [recoveredBlock7PC := 218].
        ].
        recoveredBlock7Step = 218 ifTrue: [
            recoveredBlock7PC := 219.
        ].
        recoveredBlock7Step = 219 ifTrue: [
            recoveredBlock7Stack1 := EtasUserQuestion.
            recoveredBlock7PC := 221.
        ].
        recoveredBlock7Step = 221 ifTrue: [
            recoveredBlock7Stack2 := 'Changing the port type to <Require> will remove all realized operations and events of the port.\Are you sure to change the port type?'.
            recoveredBlock7PC := 223.
        ].
        recoveredBlock7Step = 223 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) withCrs.
            recoveredBlock7PC := 225.
        ].
        recoveredBlock7Step = 225 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) message: (recoveredBlock7Stack2).
            recoveredBlock7PC := 227.
        ].
        recoveredBlock7Step = 227 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 228.
        ].
        recoveredBlock7Step = 228 ifTrue: [
            recoveredBlock7Stack3 := 'ASDSwitchPortType'.
            recoveredBlock7PC := 230.
        ].
        recoveredBlock7Step = 230 ifTrue: [
            (recoveredBlock7Stack2) prompterID: (recoveredBlock7Stack3).
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 233.
        ].
        recoveredBlock7Step = 233 ifTrue: [
            recoveredBlock7Stack3 := 'OKCANCEL'.
            recoveredBlock7PC := 235.
        ].
        recoveredBlock7Step = 235 ifTrue: [
            (recoveredBlock7Stack2) buttonStyle: (recoveredBlock7Stack3).
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 238.
        ].
        recoveredBlock7Step = 238 ifTrue: [
            recoveredBlock7Stack3 := 'question'.
            recoveredBlock7PC := 240.
        ].
        recoveredBlock7Step = 240 ifTrue: [
            (recoveredBlock7Stack2) type: (recoveredBlock7Stack3).
            recoveredBlock7PC := 242.
        ].
        recoveredBlock7Step = 242 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) prompt.
            recoveredBlock7PC := 244.
        ].
        recoveredBlock7Step = 244 ifTrue: [
            (recoveredBlock7Stack1 ~~ nil) ifTrue: [recoveredBlock7PC := 255] ifFalse: [recoveredBlock7PC := 248].
        ].
        recoveredBlock7Step = 248 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 251.
        ].
        recoveredBlock7Step = 251 ifTrue: [
            (recoveredBlock7Stack1) setProvidePort.
            recoveredBlock7PC := 253.
        ].
        recoveredBlock7Step = 253 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 254.
        ].
        recoveredBlock7Step = 254 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 255 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 256.
        ].
        recoveredBlock7Step = 256 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 259.
        ].
        recoveredBlock7Step = 259 ifTrue: [
            recoveredBlock7Stack3 := false.
            recoveredBlock7PC := 260.
        ].
        recoveredBlock7Step = 260 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) removeInterface: (recoveredBlock7Stack2) withRequest: (recoveredBlock7Stack3).
            recoveredBlock7PC := 262.
        ].
        recoveredBlock7Step = 262 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

