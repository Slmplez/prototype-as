"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200068cc; bytecode file offset 0x908be4"
!EtasRemoteIncaItem methodsFor: 'recovered'!
expandedIconName
    | recoveredValue0 |
    recoveredValue0 := (self) iconName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c284; bytecode file offset 0x908be4"
!EtasRemoteIncaItem methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020528; bytecode file offset 0x92209c"
!EtasRemoteIncaItem methodsFor: 'recovered'!
iconName
    ^'Ascet16_Transparent'
! !

"ASDBase.ic method 0x20035104; bytecode file offset 0x934580"
!EtasRemoteIncaItem methodsFor: 'recovered'!
hasChildren
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) childWrappers.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004999c; bytecode file offset 0x947128"
!EtasRemoteIncaItem methodsFor: 'recovered'!
expandedIcon
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expandedIconName.
    recoveredValue1 := (self) returnIcon16WithName: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049dcc; bytecode file offset 0x947128"
!EtasRemoteIncaItem methodsFor: 'recovered'!
icon
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) iconName.
    recoveredValue1 := (self) returnIcon16WithName: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065d9c; bytecode file offset 0x963428"
!EtasRemoteIncaItem methodsFor: 'recovered'!
wrapper
    | recoveredValue0 |
    recoveredValue0 := wrapper.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067be4; bytecode file offset 0x9646f8"
!EtasRemoteIncaItem methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068ca4; bytecode file offset 0x965b90"
!EtasRemoteIncaItem methodsFor: 'recovered'!
childWrappers
    | recoveredValue0 |
    recoveredValue0 := childWrappers.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069ce8; bytecode file offset 0x966bdc"
!EtasRemoteIncaItem methodsFor: 'recovered'!
childItems
    | recoveredValue0 |
    recoveredValue0 := childItems.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aa2c; bytecode file offset 0x967a18"
!EtasRemoteIncaItem methodsFor: 'recovered'!
childComponentClasses
    | recoveredValue0 |
    recoveredValue0 := childComponentClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007aea4; bytecode file offset 0x97c330"
!EtasRemoteIncaItem methodsFor: 'recovered'!
isIncaDatabase
    ^false
! !

"ASDBase.ic method 0x2007f834; bytecode file offset 0x97c330"
!EtasRemoteIncaItem methodsFor: 'recovered'!
isFolder
    ^false
! !

"ASDBase.ic method 0x2008d2c4; bytecode file offset 0x989db0"
!EtasRemoteIncaItem methodsFor: 'recovered'!
updateSubfolders
    | recoveredValue0 |
    recoveredValue0 := (self) wrapper.
    (self) initWithWrapper: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20092404; bytecode file offset 0x98ed78"
!EtasRemoteIncaItem methodsFor: 'recovered'!
returnIcon16WithName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBUserInterface.
    recoveredValue1 := (recoveredValue0) resourceManager.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) returnIcon16WithName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200aecbc; bytecode file offset 0x9ab6a8"
!EtasRemoteIncaItem methodsFor: 'recovered'!
children: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) children.
    (recoveredValue0) children: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200bdfb4; bytecode file offset 0x9bb178"
!EtasRemoteIncaItem methodsFor: 'recovered'!
wrapper: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    wrapper := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf670; bytecode file offset 0x9bc0b4"
!EtasRemoteIncaItem methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c04b4; bytecode file offset 0x9bd228"
!EtasRemoteIncaItem methodsFor: 'recovered'!
childWrappers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    childWrappers := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1018; bytecode file offset 0x9bdf14"
!EtasRemoteIncaItem methodsFor: 'recovered'!
childItems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    childItems := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1ca4; bytecode file offset 0x9beac8"
!EtasRemoteIncaItem methodsFor: 'recovered'!
childComponentClasses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    childComponentClasses := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7d5c; bytecode file offset 0x9c4644"
!EtasRemoteIncaItem methodsFor: 'recovered'!
returnIcon16: recoveredArg1 overlayedWith: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RBUserInterface.
    recoveredValue1 := (recoveredValue0) resourceManager.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) returnIcon16: (recoveredValue2) overlayedWith: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2014045c; bytecode file offset 0xa3cd28"
!EtasRemoteIncaItem methodsFor: 'recovered'!
printString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super printString.
    recoveredValue1 := (recoveredValue0) , ('(''').
    recoveredValue2 := (self) name.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , (''')').
    ^recoveredValue4
! !

"ASDBase.ic method 0x201a7cf0; bytecode file offset 0xaa45b4"
!EtasRemoteIncaItem methodsFor: 'recovered'!
isAllowedChildComponent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) childComponentClasses.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) class.
    recoveredBlock5Value3 := (recoveredBlock5Value0) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) notNil.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201b387c; bytecode file offset 0xab014c"
!EtasRemoteIncaItem methodsFor: 'recovered'!
initWithWrapper: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) wrapper: (recoveredValue0).
    recoveredValue1 := wrapper.
    recoveredValue2 := (recoveredValue1) getName.
    (self) name: (recoveredValue2).
    (self) childItems: (nil).
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    (self) childWrappers: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2044d588; bytecode file offset 0xd49e7c"
!EtasRemoteIncaItem methodsFor: 'recovered'!
children
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) childItems.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) childItems.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) childWrappers.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) childItems: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) childWrappers.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Local1 recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 recoveredBlock27Value6 |
    recoveredBlock27Value0 := (self) class.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := (self) childComponentClasses.
    recoveredBlock27Value3 := (recoveredBlock27Value0) createItemForWrapper: (recoveredBlock27Value1) childComponentClasses: (recoveredBlock27Value2).
    recoveredBlock27Local1 := recoveredBlock27Value3.
    recoveredBlock27Value4 := (self) childItems.
    recoveredBlock27Value5 := recoveredBlock27Local1.
    recoveredBlock27Value6 := (recoveredBlock27Value4) add: (recoveredBlock27Value5).
    recoveredBlock27Value6
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) childItems.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [:block280ff2b0Arg1 :block280ff2b0Arg2 | 
    | block280ff2b0Local1 block280ff2b0Stack0 block280ff2b0Stack1 block280ff2b0Stack2 block280ff2b0Stack3 block280ff2b0PC block280ff2b0Step block280ff2b0Done block280ff2b0Result |
    block280ff2b0Stack0 := self.
    block280ff2b0PC := 4.
    block280ff2b0Done := false.
    [block280ff2b0Done not] whileTrue: [
        block280ff2b0Step := block280ff2b0PC.
        block280ff2b0Step = 4 ifTrue: [
            block280ff2b0Stack1 := block280ff2b0Arg1.
            block280ff2b0PC := 5.
        ].
        block280ff2b0Step = 5 ifTrue: [
            block280ff2b0Stack1 := (block280ff2b0Stack1) name.
            block280ff2b0PC := 7.
        ].
        block280ff2b0Step = 7 ifTrue: [
            block280ff2b0Stack1 := (block280ff2b0Stack1) asLowercase.
            block280ff2b0PC := 9.
        ].
        block280ff2b0Step = 9 ifTrue: [
            block280ff2b0Stack2 := block280ff2b0Arg2.
            block280ff2b0PC := 10.
        ].
        block280ff2b0Step = 10 ifTrue: [
            block280ff2b0Stack2 := (block280ff2b0Stack2) name.
            block280ff2b0PC := 12.
        ].
        block280ff2b0Step = 12 ifTrue: [
            block280ff2b0Stack2 := (block280ff2b0Stack2) asLowercase.
            block280ff2b0PC := 14.
        ].
        block280ff2b0Step = 14 ifTrue: [
            block280ff2b0Stack1 := (block280ff2b0Stack1) < (block280ff2b0Stack2).
            block280ff2b0PC := 15.
        ].
        block280ff2b0Step = 15 ifTrue: [
            block280ff2b0Local1 := block280ff2b0Stack1.
            block280ff2b0PC := 16.
        ].
        block280ff2b0Step = 16 ifTrue: [
            block280ff2b0Stack1 := block280ff2b0Arg1.
            block280ff2b0PC := 17.
        ].
        block280ff2b0Step = 17 ifTrue: [
            block280ff2b0Stack1 := (block280ff2b0Stack1) isFolder.
            block280ff2b0PC := 19.
        ].
        block280ff2b0Step = 19 ifTrue: [
            (block280ff2b0Stack1) ifTrue: [block280ff2b0PC := 22] ifFalse: [block280ff2b0PC := 34].
        ].
        block280ff2b0Step = 22 ifTrue: [
            block280ff2b0Stack1 := block280ff2b0Arg2.
            block280ff2b0PC := 23.
        ].
        block280ff2b0Step = 23 ifTrue: [
            block280ff2b0Stack1 := (block280ff2b0Stack1) isFolder.
            block280ff2b0PC := 25.
        ].
        block280ff2b0Step = 25 ifTrue: [
            (block280ff2b0Stack1) ifTrue: [block280ff2b0PC := 34] ifFalse: [block280ff2b0PC := 28].
        ].
        block280ff2b0Step = 28 ifTrue: [
            block280ff2b0Stack1 := true.
            block280ff2b0PC := 29.
        ].
        block280ff2b0Step = 29 ifTrue: [
            block280ff2b0Local1 := block280ff2b0Stack1.
            block280ff2b0PC := 30.
        ].
        block280ff2b0Step = 30 ifTrue: [
            block280ff2b0PC := 48.
        ].
        block280ff2b0Step = 34 ifTrue: [
            block280ff2b0Stack1 := block280ff2b0Arg1.
            block280ff2b0PC := 35.
        ].
        block280ff2b0Step = 35 ifTrue: [
            block280ff2b0Stack1 := (block280ff2b0Stack1) isFolder.
            block280ff2b0PC := 37.
        ].
        block280ff2b0Step = 37 ifTrue: [
            (block280ff2b0Stack1) ifTrue: [block280ff2b0PC := 48] ifFalse: [block280ff2b0PC := 40].
        ].
        block280ff2b0Step = 40 ifTrue: [
            block280ff2b0Stack1 := block280ff2b0Arg2.
            block280ff2b0PC := 41.
        ].
        block280ff2b0Step = 41 ifTrue: [
            block280ff2b0Stack1 := (block280ff2b0Stack1) isFolder.
            block280ff2b0PC := 43.
        ].
        block280ff2b0Step = 43 ifTrue: [
            (block280ff2b0Stack1) ifTrue: [block280ff2b0PC := 46] ifFalse: [block280ff2b0PC := 48].
        ].
        block280ff2b0Step = 46 ifTrue: [
            block280ff2b0Stack1 := false.
            block280ff2b0PC := 47.
        ].
        block280ff2b0Step = 47 ifTrue: [
            block280ff2b0Local1 := block280ff2b0Stack1.
            block280ff2b0PC := 48.
        ].
        block280ff2b0Step = 48 ifTrue: [
            block280ff2b0Stack1 := block280ff2b0Local1.
            block280ff2b0PC := 49.
        ].
        block280ff2b0Step = 49 ifTrue: [
            block280ff2b0Result := block280ff2b0Stack1.
            block280ff2b0Done := true.
        ].
    ].
    block280ff2b0Result
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) childItems: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) childItems.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

