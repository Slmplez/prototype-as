"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d7b4; bytecode file offset 0x90a4b8"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
xmlCollectDependent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002f544; bytecode file offset 0x934580"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
isVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) isVersion.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063ea4; bytecode file offset 0x961970"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
modified
    | recoveredValue0 |
    recoveredValue0 := (self) dbObject.
    (recoveredValue0) setModify.
    ^self
! !

"ASDBase.ic method 0x2006c4f4; bytecode file offset 0x9692b0"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
dbObject
    | recoveredValue0 |
    recoveredValue0 := dbObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cbb8; bytecode file offset 0x969c04"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
internalModelSettings
    | recoveredValue0 |
    recoveredValue0 := modelSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d77c; bytecode file offset 0x96a390"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
internalHighestUsedGraphicalIdentifier
    | recoveredValue0 |
    recoveredValue0 := highestUsedGraphicalIdentifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075f3c; bytecode file offset 0x9757c8"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
isDbObject
    ^true
! !

"ASDBase.ic method 0x2009990c; bytecode file offset 0x9961d0"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
writeXML: recoveredArg1 class: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) internalWriteXMLStructure: (recoveredValue0) class: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b08e8; bytecode file offset 0x9ad1c4"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
initPageFormat
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) asdBlockDiagramEditorOptions.
    recoveredValue2 := (recoveredValue1) optionPaperOrientation.
    (self) pageFormat: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b3314; bytecode file offset 0x9afbd0"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
raster
    | recoveredValue0 recoveredValue1 |
    (self) etasDevHalt.
    recoveredValue0 := modelSettings.
    recoveredValue1 := (recoveredValue0) at: (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b9050; bytecode file offset 0x9b5914"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
pageFormat: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := modelSettings.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: (1) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c2d0c; bytecode file offset 0x9bfde0"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
dbObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3670; bytecode file offset 0x9c058c"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
modelSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    modelSettings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4324; bytecode file offset 0x9c0bf0"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
highestUsedGraphicalIdentifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    highestUsedGraphicalIdentifier := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fca10; bytecode file offset 0x9f92cc"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
raster: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) etasDevHalt.
    recoveredValue0 := modelSettings.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: (2) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20100c80; bytecode file offset 0x9fd5a4"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1 childrenReplacementTable: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super replaceAliasNames: (recoveredValue0) childrenReplacementTable: (recoveredValue1).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x201162d0; bytecode file offset 0xa12ba0"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
highestUsedGraphicalIdentifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := highestUsedGraphicalIdentifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) calculateHighestUsedGraphicalIdentifier.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            highestUsedGraphicalIdentifier := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := highestUsedGraphicalIdentifier.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012f4f4; bytecode file offset 0xa2bdb8"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
convertToASDV61
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super convertToASDV61.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) setModified.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014b61c; bytecode file offset 0xa47ee4"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
graphicObject: recoveredArg1 datamodelManager: recoveredArg2 manager: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGIdentifierTableBuilder.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) highestUsedGraphicalIdentifier.
    recoveredValue3 := (recoveredValue1) initWithIndex: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (self) graphicObject: (recoveredValue4) datamodelManager: (recoveredValue5) tableBuilder: (recoveredValue6) manager: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2017514c; bytecode file offset 0xa71a0c"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
setHighestUsedGraphicalIdentifier: recoveredArg1
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
            recoveredStack2 := highestUsedGraphicalIdentifier.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) highestUsedGraphicalIdentifier: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20189708; bytecode file offset 0xa85fc4"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
pageFormat
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := modelSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) initPageFormat.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := modelSettings.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a1104; bytecode file offset 0xa9d9d4"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
xmlInitialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('todo') notNil.
    recoveredValue1 := super initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := Array.
    recoveredValue4 := (recoveredValue3) new: (4).
    (recoveredValue2) modelSettings: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) initPageFormat.
    ^recoveredValue1
! !

"ASDBase.ic method 0x201b1644; bytecode file offset 0xaadf18"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := super initialize.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initializeRBDBObjectName: ('BlockDiagram').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := Array.
    recoveredValue4 := (recoveredValue3) new: (4).
    (recoveredValue2) modelSettings: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) initPageFormat.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201bee10; bytecode file offset 0xabb6d0"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
graphicObject: recoveredArg1 datamodelManager: recoveredArg2 tableBuilder: recoveredArg3 controller: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := super graphicObject: (recoveredStack1) datamodelManager: (recoveredStack2) tableBuilder: (recoveredStack3) controller: (recoveredStack4).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) propagateConnectionTypesDatamodelManager: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202156a0; bytecode file offset 0xb11f78"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
store: recoveredArg1 pageFormat: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) highestUsedGraphicalIdentifier.
    recoveredValue2 := (recoveredValue0) buildNewIdentifiersMaximumGraphicsIdentifier: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) contents.
    (recoveredValue4) rebuildOrderingNumber.
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) createStorageObjectsFor: (self).
    recoveredValue6 := recoveredArg2.
    (self) pageFormat: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    (self) setHighestUsedGraphicalIdentifier: (recoveredValue7).
    recoveredValue8 := ('Kli') == ('Call_345906').
    ^self
! !

"ASDBase.ic method 0x2023ec04; bytecode file offset 0xb3b4c8"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
equals: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super equals: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalModelSettings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalModelSettings.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) internalHighestUsedGraphicalIdentifier.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalHighestUsedGraphicalIdentifier.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20312430; bytecode file offset 0xc0ed10"
!SGTopGraphicsBlockDB methodsFor: 'recovered'!
graphicObject: recoveredArg1 datamodelManager: recoveredArg2 controller: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGIdentifierTableBuilder.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) highestUsedGraphicalIdentifier.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) initWithIndex: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObject: (recoveredStack1) datamodelManager: (recoveredStack2) tableBuilder: (recoveredStack3) controller: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) highestUsedGraphicalIdentifier.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) calculateHighestUsedGraphicalIdentifier.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) setHighestUsedGraphicalIdentifier: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) table.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:block280ea96cArg1 | 
    | block280ea96cValue0 block280ea96cValue1 |
    block280ea96cValue0 := block280ea96cArg1.
    block280ea96cValue1 := (block280ea96cValue0) updateStatementBlockName.
    block280ea96cValue1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

