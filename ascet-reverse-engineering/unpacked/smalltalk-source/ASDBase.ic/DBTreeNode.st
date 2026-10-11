"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a0f4; bytecode file offset 0x908be4"
!DBTreeNode methodsFor: 'recovered'!
partOfChildren
    | recoveredValue0 |
    recoveredValue0 := (self) collectTree.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200406d8; bytecode file offset 0x93d278"
!DBTreeNode methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbObject.
    recoveredValue1 := (recoveredValue0) name.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20068eec; bytecode file offset 0x965b90"
!DBTreeNode methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := parent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069c50; bytecode file offset 0x966bdc"
!DBTreeNode methodsFor: 'recovered'!
children
    | recoveredValue0 |
    recoveredValue0 := children.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a3f4; bytecode file offset 0x967a18"
!DBTreeNode methodsFor: 'recovered'!
icon
    | recoveredValue0 |
    recoveredValue0 := icon.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20097c64; bytecode file offset 0x995850"
!DBTreeNode methodsFor: 'recovered'!
preExport: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileObject.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) preExport: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c05cc; bytecode file offset 0x9bd228"
!DBTreeNode methodsFor: 'recovered'!
parent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0aa0; bytecode file offset 0x9bdf14"
!DBTreeNode methodsFor: 'recovered'!
children: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    children := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c20cc; bytecode file offset 0x9beac8"
!DBTreeNode methodsFor: 'recovered'!
icon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    icon := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7e98; bytecode file offset 0x9c4754"
!DBTreeNode methodsFor: 'recovered'!
removeChild: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := children.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) dbObject.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) remove: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d2644; bytecode file offset 0x9cef10"
!DBTreeNode methodsFor: 'recovered'!
initializeInstances
    | recoveredValue0 recoveredValue1 |
    parent := nil.
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    children := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200d2654; bytecode file offset 0x9cef10"
!DBTreeNode methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    parent := nil.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    children := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200ef018; bytecode file offset 0x9eb8d8"
!DBTreeNode methodsFor: 'recovered'!
allPartProxiesWithUnloaded: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) collectTree.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := [].
    (recoveredValue1) remove: (self) ifAbsent: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f06a4; bytecode file offset 0x9ecf58"
!DBTreeNode methodsFor: 'recovered'!
dbObject
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dbObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := dbObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20105670; bytecode file offset 0xa01f28"
!DBTreeNode methodsFor: 'recovered'!
asDBProxy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dbObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := dbObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) asDBProxy.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20105d9c; bytecode file offset 0xa02654"
!DBTreeNode methodsFor: 'recovered'!
iconName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := icon.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'GeneralFolderClosed'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := icon.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013260c; bytecode file offset 0xa2ef68"
!DBTreeNode methodsFor: 'recovered'!
addChildren: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) addChild: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20149468; bytecode file offset 0xa45d2c"
!DBTreeNode methodsFor: 'recovered'!
preLoadAttributes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := icon.
    (recoveredValue2) at: ('iconName') put: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2017643c; bytecode file offset 0xa72cfc"
!DBTreeNode methodsFor: 'recovered'!
addChild: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) asDBProxy.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201979ac; bytecode file offset 0xa94268"
!DBTreeNode methodsFor: 'recovered'!
removeChildren: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (self) removeChild: (recoveredBlock7Value0) ifAbsent: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20264dcc; bytecode file offset 0xb6169c"
!DBTreeNode methodsFor: 'recovered'!
collectTree
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := children.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) getObject.
    recoveredBlock12Value3 := (recoveredBlock12Value2) collectTree.
    recoveredBlock12Value4 := (recoveredBlock12Value0) addAll: (recoveredBlock12Value3).
    recoveredBlock12Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) add: (self).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202ad2b8; bytecode file offset 0xba9b7c"
!DBTreeNode methodsFor: 'recovered'!
treeSize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 0.
    recoveredValue0 := children.
    recoveredValue1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) getDBObject.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isError.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 39] ifFalse: [recoveredBlock11PC := 28].
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) treeSize.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) + (recoveredBlock11Stack2).
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x202d9574; bytecode file offset 0xbd5e44"
!DBTreeNode methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    (recoveredValue1) nextPutAll: ('icon  ').
    recoveredValue3 := icon.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) cr.
    (recoveredValue5) nextPutAll: ('parent ').
    recoveredValue7 := parent.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) printOn: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) cr.
    (recoveredValue9) nextPutAll: ('children ').
    recoveredValue11 := children.
    recoveredValue12 := recoveredArg1.
    (recoveredValue11) printOn: (recoveredValue12).
    ^self
! !

