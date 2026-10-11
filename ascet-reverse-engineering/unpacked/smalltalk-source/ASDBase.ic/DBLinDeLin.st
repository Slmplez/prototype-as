"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20040324; bytecode file offset 0x93d278"
!DBLinDeLin methodsFor: 'recovered'!
getDumperForElementDump
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := swapper.
    recoveredValue1 := (recoveredValue0) getDumperForElementDump.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200568d8; bytecode file offset 0x9531e4"
!DBLinDeLin methodsFor: 'recovered'!
getBlobStartFromRecord: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) blobStart.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005e60c; bytecode file offset 0x95aedc"
!DBLinDeLin methodsFor: 'recovered'!
setUseObjectFiler
    state := 'UseObjectFiler'.
    ^self
! !

"ASDBase.ic method 0x2005e618; bytecode file offset 0x95aedc"
!DBLinDeLin methodsFor: 'recovered'!
setUseStateReplicationProtocol
    state := 'UseStateReplicationProtocol'.
    ^self
! !

"ASDBase.ic method 0x2005e624; bytecode file offset 0x95aedc"
!DBLinDeLin methodsFor: 'recovered'!
setUseEnvySwapper
    state := 'UseEnvySwapper'.
    ^self
! !

"ASDBase.ic method 0x2006602c; bytecode file offset 0x963428"
!DBLinDeLin methodsFor: 'recovered'!
swapper
    | recoveredValue0 |
    recoveredValue0 := swapper.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200671f4; bytecode file offset 0x9646f8"
!DBLinDeLin methodsFor: 'recovered'!
objectFiler
    | recoveredValue0 |
    recoveredValue0 := objectFiler.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a0a8; bytecode file offset 0x966bdc"
!DBLinDeLin methodsFor: 'recovered'!
selfDumpAndLoad
    | recoveredValue0 |
    recoveredValue0 := selfDumpAndLoad.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a98c; bytecode file offset 0x967a18"
!DBLinDeLin methodsFor: 'recovered'!
object
    | recoveredValue0 |
    recoveredValue0 := object.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bd98; bytecode file offset 0x96873c"
!DBLinDeLin methodsFor: 'recovered'!
bytes
    | recoveredValue0 |
    recoveredValue0 := bytes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c26c; bytecode file offset 0x9692b0"
!DBLinDeLin methodsFor: 'recovered'!
linkObject
    | recoveredValue0 |
    recoveredValue0 := linkObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cfe8; bytecode file offset 0x969c04"
!DBLinDeLin methodsFor: 'recovered'!
compressor
    | recoveredValue0 |
    recoveredValue0 := compressor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d43c; bytecode file offset 0x96a390"
!DBLinDeLin methodsFor: 'recovered'!
state
    | recoveredValue0 |
    recoveredValue0 := state.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dc10; bytecode file offset 0x96a9dc"
!DBLinDeLin methodsFor: 'recovered'!
stateReplicationProtocol
    | recoveredValue0 |
    recoveredValue0 := stateReplicationProtocol.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20081c24; bytecode file offset 0x97e554"
!DBLinDeLin methodsFor: 'recovered'!
newlyLoadedSwapper: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := swapper.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getNewlyLoadedObjectsOfClass: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081d14; bytecode file offset 0x97e6e0"
!DBLinDeLin methodsFor: 'recovered'!
newlyLoadedObjectFiler: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := objectFiler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getNewlyLoadedObjectsOfClass: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20082044; bytecode file offset 0x97e9b0"
!DBLinDeLin methodsFor: 'recovered'!
newlyLoadedLiteral: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := emLiteral.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getNewlyLoadedObjectsOfClass: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20082134; bytecode file offset 0x97eb24"
!DBLinDeLin methodsFor: 'recovered'!
newlyLoadedSelfASAP2Loading: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := selfDumpAndLoad.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getNewlyLoadedObjectsOfClass: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20082140; bytecode file offset 0x97eb24"
!DBLinDeLin methodsFor: 'recovered'!
newlyLoadedSelfLoading: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := selfDumpAndLoad.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getNewlyLoadedObjectsOfClass: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20082530; bytecode file offset 0x97ee0c"
!DBLinDeLin methodsFor: 'recovered'!
newlyLoadedStateReplicationProtocol: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := stateReplicationProtocol.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getNewlyLoadedObjectsOfClass: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ac8a0; bytecode file offset 0x9a9170"
!DBLinDeLin methodsFor: 'recovered'!
loadLiteral: recoveredArg1 blobStart: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := emLiteral.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) delin: (recoveredValue1) offset: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200af5c4; bytecode file offset 0x9abe80"
!DBLinDeLin methodsFor: 'recovered'!
getLoaderForElementLoad
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := swapper.
    recoveredValue1 := (recoveredValue0) loader.
    recoveredValue2 := (recoveredValue1) deepCopy.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bdf64; bytecode file offset 0x9bb178"
!DBLinDeLin methodsFor: 'recovered'!
swapper: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    swapper := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2134; bytecode file offset 0x9beac8"
!DBLinDeLin methodsFor: 'recovered'!
object: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    object := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2b78; bytecode file offset 0x9bf474"
!DBLinDeLin methodsFor: 'recovered'!
bytes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bytes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3034; bytecode file offset 0x9bfde0"
!DBLinDeLin methodsFor: 'recovered'!
linkObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    linkObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3b38; bytecode file offset 0x9c058c"
!DBLinDeLin methodsFor: 'recovered'!
compressor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    compressor := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3d84; bytecode file offset 0x9c0bf0"
!DBLinDeLin methodsFor: 'recovered'!
state: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    state := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4480; bytecode file offset 0x9c11bc"
!DBLinDeLin methodsFor: 'recovered'!
stateReplicationProtocol: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stateReplicationProtocol := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7ce8; bytecode file offset 0x9c45bc"
!DBLinDeLin methodsFor: 'recovered'!
loadMethodFromRecord: recoveredArg1 blobStart: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LoadMethodArray.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) uint8At: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) + (1).
    recoveredValue5 := (recoveredValue0) at: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200c7cfc; bytecode file offset 0x9c45bc"
!DBLinDeLin methodsFor: 'recovered'!
newlyLoadedObjectsMethodFromRecord: recoveredArg1 blobStart: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := NewlyLoadedMethodArray.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) uint8At: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) + (1).
    recoveredValue5 := (recoveredValue0) at: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200d70ec; bytecode file offset 0x9d39ac"
!DBLinDeLin methodsFor: 'recovered'!
loadMethodFromBytes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LoadMethodArray.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) uint8At: (0).
    recoveredValue3 := (recoveredValue2) + (1).
    recoveredValue4 := (recoveredValue0) at: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d8ab4; bytecode file offset 0x9d5370"
!DBLinDeLin methodsFor: 'recovered'!
getLinkObject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) preDump: (nil).
    recoveredValue2 := (self) dumpBytes: (recoveredValue1).
    bytes := recoveredValue2.
    recoveredValue3 := linkObject.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e805c; bytecode file offset 0x9e4918"
!DBLinDeLin methodsFor: 'recovered'!
loadFromBytes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) loadMethodFromBytes: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) perform: (recoveredValue1) with: (recoveredValue2) with: (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ef150; bytecode file offset 0x9eba08"
!DBLinDeLin methodsFor: 'recovered'!
loadSelfLoading: recoveredArg1 blobStart: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := selfDumpAndLoad.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) + (1).
    recoveredValue4 := (recoveredValue0) delin: (recoveredValue1) offset: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20113a6c; bytecode file offset 0xa1032c"
!DBLinDeLin methodsFor: 'recovered'!
loadObjectFiler: recoveredArg1 blobStart: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := objectFiler.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) delin: (recoveredValue3) offset: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20113af4; bytecode file offset 0xa103b4"
!DBLinDeLin methodsFor: 'recovered'!
loadStateReplicationProtocol: recoveredArg1 blobStart: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := stateReplicationProtocol.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) delin: (recoveredValue3) offset: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20115670; bytecode file offset 0xa11f30"
!DBLinDeLin methodsFor: 'recovered'!
newMutation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objectFiler.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := objectFiler.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) loader.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) createNewClassNameMap.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126968; bytecode file offset 0xa23230"
!DBLinDeLin methodsFor: 'recovered'!
loadMethodFromRecord: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) blobStart.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := LoadMethodArray.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue4) uint8At: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) + (1).
    recoveredValue8 := (recoveredValue3) at: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20183df4; bytecode file offset 0xa806b8"
!DBLinDeLin methodsFor: 'recovered'!
getLoadedObjectFromFile: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ETASOSHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) readRecordFromFile: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            bytes := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := bytes.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := bytes.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLoadedObjectFrom: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201921e0; bytecode file offset 0xa8eaa4"
!DBLinDeLin methodsFor: 'recovered'!
removeMutatedClassNamed: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := swapper.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) loader.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) removeMutatedClassNamed: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := objectFiler.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := objectFiler.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) loader.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) removeClassMap: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019bf98; bytecode file offset 0xa98858"
!DBLinDeLin methodsFor: 'recovered'!
loadSelfASAP2Loading: recoveredArg1 blobStart: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selfDumpAndLoad.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) delin2: (recoveredStack2) offset: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) updateLinkIds.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) selectObjectsFrom.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a7ee4; bytecode file offset 0xaa47a8"
!DBLinDeLin methodsFor: 'recovered'!
getLoadedObjectFromFile: recoveredArg1 recordClass: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ETASOSHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) readRecord: (recoveredStack2) fromFile: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            bytes := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := bytes.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := bytes.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLoadedObjectFrom: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ad70c; bytecode file offset 0xaa9fd0"
!DBLinDeLin methodsFor: 'recovered'!
getLoadMethodFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCTreeRecord.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlobStartFromRecord: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadMethodFromRecord: (recoveredStack2) blobStart: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadMethodFromBytes: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b5b5c; bytecode file offset 0xab2424"
!DBLinDeLin methodsFor: 'recovered'!
addMutatedClassNamed: recoveredArg1 newClass: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := swapper.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) loader.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) addMutatedClassNamed: (recoveredStack2) newClass: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := objectFiler.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := objectFiler.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) loader.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) addClassMap: (recoveredStack2) newClassName: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bd064; bytecode file offset 0xab9928"
!DBLinDeLin methodsFor: 'recovered'!
dump: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) preDump: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) dumpBytes: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            bytes := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := bytes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := bytes.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRecord: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := bytes.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c89c8; bytecode file offset 0xac5280"
!DBLinDeLin methodsFor: 'recovered'!
cleanupInstances
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    bytes := nil.
    linkObject := nil.
    recoveredValue0 := objectFiler.
    (recoveredValue0) cleanupInstances.
    recoveredValue1 := swapper.
    (recoveredValue1) cleanupInstances.
    recoveredValue2 := selfDumpAndLoad.
    (recoveredValue2) cleanupInstances.
    recoveredValue3 := emLiteral.
    (recoveredValue3) cleanupInstances.
    ^self
! !

"ASDBase.ic method 0x201d38d8; bytecode file offset 0xad01a0"
!DBLinDeLin methodsFor: 'recovered'!
getNewlyLoadedObjectsOfClass: recoveredArg1 record: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCTreeRecord.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlobStartFromRecord: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) newlyLoadedObjectsMethodFromRecord: (recoveredStack3) blobStart: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) perform: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ece78; bytecode file offset 0xae973c"
!DBLinDeLin methodsFor: 'recovered'!
dumpLiteral: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := emLiteral.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) dump: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := emLiteral.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) bytes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            bytes := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := emLiteral.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) linkObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            linkObject := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := bytes.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201eceb0; bytecode file offset 0xae9774"
!DBLinDeLin methodsFor: 'recovered'!
dumpSelfDumping: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selfDumpAndLoad.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) dump: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := selfDumpAndLoad.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) bytes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            bytes := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := selfDumpAndLoad.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) linkObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            linkObject := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := bytes.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20220f44; bytecode file offset 0xb1d814"
!DBLinDeLin methodsFor: 'recovered'!
loadFromRecord: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) getBlobStartFromRecord: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := DBLinDeLinError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'noblob'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBasic: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadMethodFromRecord: (recoveredStack2) blobStart: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2027bf68; bytecode file offset 0xb78834"
!DBLinDeLin methodsFor: 'recovered'!
createRecord: recoveredArg1 from: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCTreeRecord.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDbObject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asRecordWith: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := selfDumpAndLoad.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbInterface.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNewDBProxy.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asRecordWith: (recoveredStack2).
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
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202925f0; bytecode file offset 0xb8eeb8"
!DBLinDeLin methodsFor: 'recovered'!
dumpSwapper: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := swapper.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) dump: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := swapper.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) bytes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            bytes := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKnowMyLinks.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLinkObject.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            linkObject := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := swapper.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLinkObject.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            linkObject := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := bytes.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20292638; bytecode file offset 0xb8ef00"
!DBLinDeLin methodsFor: 'recovered'!
dumpObjectFiler: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objectFiler.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) dump: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := objectFiler.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) bytes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            bytes := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKnowMyLinks.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLinkObject.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            linkObject := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := objectFiler.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLinkObject.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            linkObject := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := bytes.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202926dc; bytecode file offset 0xb8efa4"
!DBLinDeLin methodsFor: 'recovered'!
dumpStateReplicationProtocol: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := stateReplicationProtocol.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) dump: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := stateReplicationProtocol.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) bytes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            bytes := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKnowMyLinks.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLinkObject.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            linkObject := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := stateReplicationProtocol.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLinkObject.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            linkObject := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := bytes.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2029e8b8; bytecode file offset 0xb9b190"
!DBLinDeLin methodsFor: 'recovered'!
dumpBytes: recoveredArg1 intoFile: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) dumpBytes: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := CfsWriteFileStream.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) openEmpty: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) collection: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) bytes: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) writeOn: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) close.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e6ea4; bytecode file offset 0xbe3780"
!DBLinDeLin methodsFor: 'recovered'!
loadSwapper: recoveredArg1 blobStart: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := swapper.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) initializeInstances: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := swapper.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) delin: (recoveredStack2) offset: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCTreeRecord.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) asProxy.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) errorObject: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) fixDBError: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202e9bf8; bytecode file offset 0xbe64cc"
!DBLinDeLin methodsFor: 'recovered'!
initializeInstances
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            (recoveredBlock8Stack2 == nil) ifTrue: [recoveredBlock8PC := 26] ifFalse: [recoveredBlock8PC := 20].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) create.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            stateReplicationProtocol := recoveredBlock8Stack2.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue0) at: ('DBStateReplicationProtocol') ifPresent: (recoveredValue1).
    recoveredValue2 := DBSwapperDumperLoader.
    recoveredValue3 := (recoveredValue2) create.
    swapper := recoveredValue3.
    recoveredValue4 := DBEmLiteralDumperLoader.
    recoveredValue5 := (recoveredValue4) create.
    emLiteral := recoveredValue5.
    recoveredValue6 := DBSelfDumper.
    recoveredValue7 := (recoveredValue6) create.
    selfDumpAndLoad := recoveredValue7.
    state := 0.
    (self) initializeLoadMethodArray.
    ^self
! !

"ASDBase.ic method 0x203b6960; bytecode file offset 0xcb3250"
!DBLinDeLin methodsFor: 'recovered'!
getLoadedObjectFromNoException: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCTreeRecord.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) blobSize.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := DBLinDeLinError.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := DBLinDeLinInvalidObjectRecord.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadFromBytes: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadFromRecord: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDbObject.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) asProxy.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) dbObject: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadFromBytes: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) postLoad: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203d05c0; bytecode file offset 0xccce9c"
!DBLinDeLin methodsFor: 'recovered'!
dumpBytes: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isLiteral.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) dumpLiteral: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            bytes := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSelfDumpAndLoad.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) dumpSelfDumping: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            bytes := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := state.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'UseStateReplicationProtocol'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) dumpStateReplicationProtocol: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            bytes := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := state.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'UseObjectFiler'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) dumpObjectFiler: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            bytes := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) dumpSwapper: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            bytes := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) dumpObjectFiler: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            bytes := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := bytes.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203d33cc; bytecode file offset 0xccfcbc"
!DBLinDeLin methodsFor: 'recovered'!
restoreInstVarClasses: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280f7770Arg1 | 
    | block280f7770Value0 block280f7770Value1 |
    block280f7770Value0 := block280f7770Arg1.
    block280f7770Value1 := (block280f7770Value0) canUnderstand: ('restoreInstVars').
    block280f7770Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:block280f7794Arg1 | 
    | block280f7794Value0 block280f7794Value1 block280f7794Value2 block280f7794Value3 block280f7794Value4 block280f7794Value5 |
    block280f7794Value0 := block280f7794Arg1.
    block280f7794Value1 := (block280f7794Value0) class.
    block280f7794Value2 := (block280f7794Value1) name.
    block280f7794Value3 := (block280f7794Value2) asString.
    block280f7794Value4 := (block280f7794Value3) copyFrom: (1) to: (2).
    block280f7794Value5 := (block280f7794Value4) = ('DB').
    block280f7794Value5
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) removeAll: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 |
    recoveredBlock64Value0 := recoveredLocal2.
    recoveredBlock64Value1 := recoveredBlock64Arg1.
    recoveredBlock64Value2 := (recoveredBlock64Value0) addFirst: (recoveredBlock64Value1).
    recoveredBlock64Value2
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2040ac34; bytecode file offset 0xd07588"
!DBLinDeLin methodsFor: 'recovered'!
nilIndicesOf: recoveredArg1 from: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNilIndicesClass.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) nilIndices.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) allInstVarNames.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Stack0 recoveredBlock54Stack1 recoveredBlock54Stack2 recoveredBlock54Stack3 recoveredBlock54Stack4 recoveredBlock54PC recoveredBlock54Step recoveredBlock54Done recoveredBlock54Result |
    recoveredBlock54Stack0 := self.
    recoveredBlock54PC := 60.
    recoveredBlock54Done := false.
    [recoveredBlock54Done not] whileTrue: [
        recoveredBlock54Step := recoveredBlock54PC.
        recoveredBlock54Step = 60 ifTrue: [
            recoveredBlock54Stack1 := nil.
            recoveredBlock54PC := 61.
        ].
        recoveredBlock54Step = 61 ifTrue: [
            recoveredBlock54Stack2 := recoveredLocal4.
            recoveredBlock54PC := 64.
        ].
        recoveredBlock54Step = 64 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Arg1.
            recoveredBlock54PC := 65.
        ].
        recoveredBlock54Step = 65 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) indexOf: (recoveredBlock54Stack3).
            recoveredBlock54PC := 67.
        ].
        recoveredBlock54Step = 67 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Stack2.
            recoveredBlock54PC := 68.
        ].
        recoveredBlock54Step = 68 ifTrue: [
            recoveredLocal1 := recoveredBlock54Stack3.
            recoveredBlock54PC := 71.
        ].
        recoveredBlock54Step = 71 ifTrue: [
            recoveredBlock54Stack3 := 0.
            recoveredBlock54PC := 73.
        ].
        recoveredBlock54Step = 73 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) > (recoveredBlock54Stack3).
            recoveredBlock54PC := 74.
        ].
        recoveredBlock54Step = 74 ifTrue: [
            (recoveredBlock54Stack2) ifTrue: [recoveredBlock54PC := 78] ifFalse: [recoveredBlock54PC := 87].
        ].
        recoveredBlock54Step = 78 ifTrue: [
            recoveredBlock54PC := 79.
        ].
        recoveredBlock54Step = 79 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal2.
            recoveredBlock54PC := 82.
        ].
        recoveredBlock54Step = 82 ifTrue: [
            recoveredBlock54Stack2 := recoveredLocal1.
            recoveredBlock54PC := 85.
        ].
        recoveredBlock54Step = 85 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) add: (recoveredBlock54Stack2).
            recoveredBlock54PC := 87.
        ].
        recoveredBlock54Step = 87 ifTrue: [
            recoveredBlock54Result := recoveredBlock54Stack1.
            recoveredBlock54Done := true.
        ].
    ].
    recoveredBlock54Result
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20432784; bytecode file offset 0xd2f078"
!DBLinDeLin methodsFor: 'recovered'!
initializeInstances: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            (recoveredBlock8Stack2 == nil) ifTrue: [recoveredBlock8PC := 29] ifFalse: [recoveredBlock8PC := 20].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) create: (recoveredBlock8Stack2).
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            stateReplicationProtocol := recoveredBlock8Stack2.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue0) at: ('DBStateReplicationProtocol') ifPresent: (recoveredValue1).
    recoveredValue2 := DBSwapperDumperLoader.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) create: (recoveredValue3).
    swapper := recoveredValue4.
    recoveredValue5 := DBObjectFilerDumperLoader.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) create: (recoveredValue6).
    objectFiler := recoveredValue7.
    recoveredValue8 := DBEmLiteralDumperLoader.
    recoveredValue9 := (recoveredValue8) create.
    emLiteral := recoveredValue9.
    recoveredValue10 := DBSelfDumper.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue10) create: (recoveredValue11).
    selfDumpAndLoad := recoveredValue12.
    state := 0.
    (self) initializeLoadMethodArray.
    recoveredValue13 := swapper.
    recoveredValue14 := (recoveredValue13) loader.
    recoveredValue15 := (recoveredValue14) class.
    recoveredValue16 := (recoveredValue15) RBDBMutateClasses.
    recoveredValue17 := [:recoveredBlock76Arg1 :recoveredBlock76Arg2 | 
    | recoveredBlock76Stack0 recoveredBlock76Stack1 recoveredBlock76Stack2 recoveredBlock76Stack3 recoveredBlock76Stack4 recoveredBlock76PC recoveredBlock76Step recoveredBlock76Done recoveredBlock76Result |
    recoveredBlock76Stack0 := self.
    recoveredBlock76PC := 82.
    recoveredBlock76Done := false.
    [recoveredBlock76Done not] whileTrue: [
        recoveredBlock76Step := recoveredBlock76PC.
        recoveredBlock76Step = 82 ifTrue: [
            recoveredBlock76Stack1 := nil.
            recoveredBlock76PC := 83.
        ].
        recoveredBlock76Step = 83 ifTrue: [
            recoveredBlock76Stack2 := objectFiler.
            recoveredBlock76PC := 85.
        ].
        recoveredBlock76Step = 85 ifTrue: [
            (recoveredBlock76Stack2 == nil) ifTrue: [recoveredBlock76PC := 101] ifFalse: [recoveredBlock76PC := 88].
        ].
        recoveredBlock76Step = 88 ifTrue: [
            recoveredBlock76PC := 89.
        ].
        recoveredBlock76Step = 89 ifTrue: [
            recoveredBlock76Stack1 := objectFiler.
            recoveredBlock76PC := 91.
        ].
        recoveredBlock76Step = 91 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) loader.
            recoveredBlock76PC := 93.
        ].
        recoveredBlock76Step = 93 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) class.
            recoveredBlock76PC := 95.
        ].
        recoveredBlock76Step = 95 ifTrue: [
            recoveredBlock76Stack2 := recoveredBlock76Arg1.
            recoveredBlock76PC := 96.
        ].
        recoveredBlock76Step = 96 ifTrue: [
            recoveredBlock76Stack3 := recoveredBlock76Arg2.
            recoveredBlock76PC := 97.
        ].
        recoveredBlock76Step = 97 ifTrue: [
            recoveredBlock76Stack3 := (recoveredBlock76Stack3) asString.
            recoveredBlock76PC := 99.
        ].
        recoveredBlock76Step = 99 ifTrue: [
            recoveredBlock76Stack1 := (recoveredBlock76Stack1) addClassMap: (recoveredBlock76Stack2) newClassName: (recoveredBlock76Stack3).
            recoveredBlock76PC := 101.
        ].
        recoveredBlock76Step = 101 ifTrue: [
            recoveredBlock76Result := recoveredBlock76Stack1.
            recoveredBlock76Done := true.
        ].
    ].
    recoveredBlock76Result
].
    (recoveredValue16) keysAndValuesDo: (recoveredValue17).
    ^self
! !

"ASDBase.ic method 0x20496d20; bytecode file offset 0xd93628"
!DBLinDeLin methodsFor: 'recovered'!
dump: recoveredArg1 intoFile: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) dump: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := CfsWriteFileStream.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) openEmpty: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) createRecord: (recoveredStack3) from: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) collection: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) bytes: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) writeOn: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock60Value0 recoveredBlock60Value1 |
    recoveredBlock60Value0 := recoveredLocal2.
    recoveredBlock60Value1 := (recoveredBlock60Value0) close.
    recoveredBlock60Value1
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := ExAll.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Local1 recoveredBlock74Stack0 recoveredBlock74Stack1 recoveredBlock74Stack2 recoveredBlock74Stack3 recoveredBlock74Stack4 recoveredBlock74PC recoveredBlock74Step recoveredBlock74Done recoveredBlock74Result |
    recoveredBlock74Stack0 := self.
    recoveredBlock74PC := 80.
    recoveredBlock74Done := false.
    [recoveredBlock74Done not] whileTrue: [
        recoveredBlock74Step := recoveredBlock74PC.
        recoveredBlock74Step = 80 ifTrue: [
            recoveredBlock74Stack1 := recoveredLocal2.
            recoveredBlock74PC := 83.
        ].
        recoveredBlock74Step = 83 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) fileDescriptor.
            recoveredBlock74PC := 85.
        ].
        recoveredBlock74Step = 85 ifTrue: [
            (recoveredBlock74Stack1) close.
            recoveredBlock74PC := 87.
        ].
        recoveredBlock74Step = 87 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Arg1.
            recoveredBlock74PC := 88.
        ].
        recoveredBlock74Step = 88 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) arguments.
            recoveredBlock74PC := 90.
        ].
        recoveredBlock74Step = 90 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) firstOrNil.
            recoveredBlock74PC := 92.
        ].
        recoveredBlock74Step = 92 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Stack1.
            recoveredBlock74PC := 93.
        ].
        recoveredBlock74Step = 93 ifTrue: [
            recoveredBlock74Local1 := recoveredBlock74Stack2.
            recoveredBlock74PC := 94.
        ].
        recoveredBlock74Step = 94 ifTrue: [
            (recoveredBlock74Stack1 == nil) ifTrue: [recoveredBlock74PC := 120] ifFalse: [recoveredBlock74PC := 98].
        ].
        recoveredBlock74Step = 98 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Local1.
            recoveredBlock74PC := 99.
        ].
        recoveredBlock74Step = 99 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) platformErrno.
            recoveredBlock74PC := 101.
        ].
        recoveredBlock74Step = 101 ifTrue: [
            (recoveredBlock74Stack1 == nil) ifTrue: [recoveredBlock74PC := 120] ifFalse: [recoveredBlock74PC := 104].
        ].
        recoveredBlock74Step = 104 ifTrue: [
            recoveredBlock74Stack1 := WinError.
            recoveredBlock74PC := 106.
        ].
        recoveredBlock74Step = 106 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Local1.
            recoveredBlock74PC := 107.
        ].
        recoveredBlock74Step = 107 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) platformErrno.
            recoveredBlock74PC := 109.
        ].
        recoveredBlock74Step = 109 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) getError: (recoveredBlock74Stack2).
            recoveredBlock74PC := 111.
        ].
        recoveredBlock74Step = 111 ifTrue: [
            recoveredBlock74Local1 := recoveredBlock74Stack1.
            recoveredBlock74PC := 112.
        ].
        recoveredBlock74Step = 112 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Local1.
            recoveredBlock74PC := 113.
        ].
        recoveredBlock74Step = 113 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Stack1.
            recoveredBlock74PC := 114.
        ].
        recoveredBlock74Step = 114 ifTrue: [
            recoveredBlock74Stack3 := 0.
            recoveredBlock74PC := 116.
        ].
        recoveredBlock74Step = 116 ifTrue: [
            (recoveredBlock74Stack2) setMethodLocation: (recoveredBlock74Stack3).
            recoveredBlock74PC := 118.
        ].
        recoveredBlock74Step = 118 ifTrue: [
            (recoveredBlock74Stack1) monitor.
            recoveredBlock74PC := 120.
        ].
        recoveredBlock74Step = 120 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Arg1.
            recoveredBlock74PC := 121.
        ].
        recoveredBlock74Step = 121 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Local1.
            recoveredBlock74PC := 122.
        ].
        recoveredBlock74Step = 122 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) exitWith: (recoveredBlock74Stack2).
            recoveredBlock74PC := 124.
        ].
        recoveredBlock74Step = 124 ifTrue: [
            recoveredBlock74Result := recoveredBlock74Stack1.
            recoveredBlock74Done := true.
        ].
    ].
    recoveredBlock74Result
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b1e20; bytecode file offset 0xdae710"
!DBLinDeLin methodsFor: 'recovered'!
unLinkVarsFromAllClasses: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:block28105760Arg1 | 
    | block28105760Stack0 block28105760Stack1 block28105760Stack2 block28105760Stack3 block28105760PC block28105760Step block28105760Done block28105760Result |
    block28105760Stack0 := self.
    block28105760PC := 4.
    block28105760Done := false.
    [block28105760Done not] whileTrue: [
        block28105760Step := block28105760PC.
        block28105760Step = 4 ifTrue: [
            block28105760Stack1 := true.
            block28105760PC := 5.
        ].
        block28105760Step = 5 ifTrue: [
            block28105760Stack2 := block28105760Arg1.
            block28105760PC := 6.
        ].
        block28105760Step = 6 ifTrue: [
            block28105760Stack2 := (block28105760Stack2) basicNew.
            block28105760PC := 7.
        ].
        block28105760Step = 7 ifTrue: [
            block28105760Stack2 := (block28105760Stack2) isErrorClass.
            block28105760PC := 9.
        ].
        block28105760Step = 9 ifTrue: [
            (block28105760Stack2) ifTrue: [block28105760PC := 17] ifFalse: [block28105760PC := 12].
        ].
        block28105760Step = 12 ifTrue: [
            block28105760PC := 13.
        ].
        block28105760Step = 13 ifTrue: [
            block28105760Stack1 := block28105760Arg1.
            block28105760PC := 14.
        ].
        block28105760Step = 14 ifTrue: [
            block28105760Stack1 := (block28105760Stack1) basicNew.
            block28105760PC := 15.
        ].
        block28105760Step = 15 ifTrue: [
            block28105760Stack1 := (block28105760Stack1) isTerminalClass.
            block28105760PC := 17.
        ].
        block28105760Step = 17 ifTrue: [
            block28105760Result := block28105760Stack1.
            block28105760Done := true.
        ].
    ].
    block28105760Result
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Stack0 recoveredBlock54Stack1 recoveredBlock54Stack2 recoveredBlock54Stack3 recoveredBlock54Stack4 recoveredBlock54PC recoveredBlock54Step recoveredBlock54Done recoveredBlock54Result |
    recoveredBlock54Stack0 := self.
    recoveredBlock54PC := 60.
    recoveredBlock54Done := false.
    [recoveredBlock54Done not] whileTrue: [
        recoveredBlock54Step := recoveredBlock54PC.
        recoveredBlock54Step = 60 ifTrue: [
            recoveredBlock54Stack1 := nil.
            recoveredBlock54PC := 61.
        ].
        recoveredBlock54Step = 61 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 62.
        ].
        recoveredBlock54Step = 62 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) unLinkInstVarNames.
            recoveredBlock54PC := 64.
        ].
        recoveredBlock54Step = 64 ifTrue: [
            recoveredBlock54Stack3 := recoveredBlock54Stack2.
            recoveredBlock54PC := 65.
        ].
        recoveredBlock54Step = 65 ifTrue: [
            recoveredLocal4 := recoveredBlock54Stack3.
            recoveredBlock54PC := 68.
        ].
        recoveredBlock54Step = 68 ifTrue: [
            (recoveredBlock54Stack2 == nil) ifTrue: [recoveredBlock54PC := 125] ifFalse: [recoveredBlock54PC := 72].
        ].
        recoveredBlock54Step = 72 ifTrue: [
            recoveredBlock54PC := 73.
        ].
        recoveredBlock54Step = 73 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal4.
            recoveredBlock54PC := 76.
        ].
        recoveredBlock54Step = 76 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) notEmpty.
            recoveredBlock54PC := 78.
        ].
        recoveredBlock54Step = 78 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 82] ifFalse: [recoveredBlock54PC := 111].
        ].
        recoveredBlock54Step = 82 ifTrue: [
            recoveredBlock54Stack1 := self.
            recoveredBlock54PC := 83.
        ].
        recoveredBlock54Step = 83 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 84.
        ].
        recoveredBlock54Step = 84 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) basicNew.
            recoveredBlock54PC := 85.
        ].
        recoveredBlock54Step = 85 ifTrue: [
            recoveredBlock54Stack3 := recoveredLocal4.
            recoveredBlock54PC := 88.
        ].
        recoveredBlock54Step = 88 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) nilIndicesOf: (recoveredBlock54Stack2) from: (recoveredBlock54Stack3).
            recoveredBlock54PC := 90.
        ].
        recoveredBlock54Step = 90 ifTrue: [
            recoveredLocal2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 93.
        ].
        recoveredBlock54Step = 93 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal2.
            recoveredBlock54PC := 96.
        ].
        recoveredBlock54Step = 96 ifTrue: [
            (recoveredBlock54Stack1 == nil) ifTrue: [recoveredBlock54PC := 111] ifFalse: [recoveredBlock54PC := 100].
        ].
        recoveredBlock54Step = 100 ifTrue: [
            recoveredBlock54Stack1 := self.
            recoveredBlock54PC := 101.
        ].
        recoveredBlock54Step = 101 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 102.
        ].
        recoveredBlock54Step = 102 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) basicNew.
            recoveredBlock54PC := 103.
        ].
        recoveredBlock54Step = 103 ifTrue: [
            recoveredBlock54Stack3 := recoveredLocal4.
            recoveredBlock54PC := 106.
        ].
        recoveredBlock54Step = 106 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) nilIndicesOf: (recoveredBlock54Stack2) from: (recoveredBlock54Stack3).
            recoveredBlock54PC := 108.
        ].
        recoveredBlock54Step = 108 ifTrue: [
            recoveredLocal2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 111.
        ].
        recoveredBlock54Step = 111 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal3.
            recoveredBlock54PC := 114.
        ].
        recoveredBlock54Step = 114 ifTrue: [
            recoveredBlock54Stack2 := recoveredLocal2.
            recoveredBlock54PC := 117.
        ].
        recoveredBlock54Step = 117 ifTrue: [
            (recoveredBlock54Stack1) addLast: (recoveredBlock54Stack2).
            recoveredBlock54PC := 119.
        ].
        recoveredBlock54Step = 119 ifTrue: [
            recoveredBlock54Stack1 := recoveredLocal5.
            recoveredBlock54PC := 122.
        ].
        recoveredBlock54Step = 122 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 123.
        ].
        recoveredBlock54Step = 123 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) addLast: (recoveredBlock54Stack2).
            recoveredBlock54PC := 125.
        ].
        recoveredBlock54Step = 125 ifTrue: [
            recoveredBlock54Result := recoveredBlock54Stack1.
            recoveredBlock54Done := true.
        ].
    ].
    recoveredBlock54Result
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) asArray.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20500d78; bytecode file offset 0xdfd674"
!DBLinDeLin methodsFor: 'recovered'!
initializeLoadMethodArray
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            LoadMethodArray := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := LoadMethodArray.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := LoadMethodArray.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := 'loadLiteral:blobStart:'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 22] ifFalse: [recoveredLocal1 := nil. recoveredPC := 43]] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := LoadMethodArray.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 28.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := 'loadObjectFiler:blobStart:'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := LoadMethodArray.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := 'loadSwapper:blobStart:'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := LoadMethodArray.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 254.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := 'loadStateReplicationProtocol:blobStart:'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := LoadMethodArray.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 255.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := 'loadSelfASAP2Loading:blobStart:'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := LoadMethodArray.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := 'loadSelfLoading:blobStart:'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            NewlyLoadedMethodArray := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := NewlyLoadedMethodArray.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := NewlyLoadedMethodArray.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := 'newlyLoadedLiteral:'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 108] ifFalse: [recoveredLocal1 := nil. recoveredPC := 129]] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 127] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := NewlyLoadedMethodArray.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := 28.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := 'newlyLoadedObjectFiler:'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := NewlyLoadedMethodArray.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := 'newlyLoadedSwapper:'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := NewlyLoadedMethodArray.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := 254.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := 'newlyLoadedStateReplicationProtocol:'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := NewlyLoadedMethodArray.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := 255.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := 'newlyLoadedSelfASAP2Loading:'.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := NewlyLoadedMethodArray.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := 'newlyLoadedSelfLoading:'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20585ba8; bytecode file offset 0xe824e4"
!DBLinDeLin methodsFor: 'recovered'!
getLoadedObjectFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isCTreeRecord.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 18] ifFalse: [recoveredBlock4PC := 86].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) size.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) blobSize.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) < (recoveredBlock4Stack2).
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 30] ifFalse: [recoveredBlock4PC := 42].
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) loadFromBytes: (recoveredBlock4Stack2).
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack2.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4PC := 83.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) loadFromRecord: (recoveredBlock4Stack2).
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal1.
            recoveredBlock4PC := 55.
        ].
        recoveredBlock4Step = 55 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isDbObject.
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 60] ifFalse: [recoveredBlock4PC := 83].
        ].
        recoveredBlock4Step = 60 ifTrue: [
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal1.
            recoveredBlock4PC := 65.
        ].
        recoveredBlock4Step = 65 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) dbObject.
            recoveredBlock4PC := 67.
        ].
        recoveredBlock4Step = 67 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isDBProxy.
            recoveredBlock4PC := 69.
        ].
        recoveredBlock4Step = 69 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 83] ifFalse: [recoveredBlock4PC := 72].
        ].
        recoveredBlock4Step = 72 ifTrue: [
            recoveredBlock4PC := 73.
        ].
        recoveredBlock4Step = 73 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 76.
        ].
        recoveredBlock4Step = 76 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 79.
        ].
        recoveredBlock4Step = 79 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) asProxy.
            recoveredBlock4PC := 81.
        ].
        recoveredBlock4Step = 81 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) dbObject: (recoveredBlock4Stack2).
            recoveredBlock4PC := 83.
        ].
        recoveredBlock4Step = 83 ifTrue: [
            recoveredBlock4PC := 95.
        ].
        recoveredBlock4Step = 86 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 87.
        ].
        recoveredBlock4Step = 87 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 90.
        ].
        recoveredBlock4Step = 90 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) loadFromBytes: (recoveredBlock4Stack2).
            recoveredBlock4PC := 91.
        ].
        recoveredBlock4Step = 91 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 92.
        ].
        recoveredBlock4Step = 92 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack2.
            recoveredBlock4PC := 95.
        ].
        recoveredBlock4Step = 95 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := [:recoveredBlock98Arg1 | 
    | recoveredBlock98Stack0 recoveredBlock98Stack1 recoveredBlock98Stack2 recoveredBlock98Stack3 recoveredBlock98PC recoveredBlock98Step recoveredBlock98Done recoveredBlock98Result |
    recoveredBlock98Stack0 := self.
    recoveredBlock98PC := 104.
    recoveredBlock98Done := false.
    [recoveredBlock98Done not] whileTrue: [
        recoveredBlock98Step := recoveredBlock98PC.
        recoveredBlock98Step = 104 ifTrue: [
            recoveredBlock98Stack1 := System.
            recoveredBlock98PC := 106.
        ].
        recoveredBlock98Step = 106 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) isRuntime.
            recoveredBlock98PC := 108.
        ].
        recoveredBlock98Step = 108 ifTrue: [
            (recoveredBlock98Stack1) ifTrue: [recoveredBlock98PC := 120] ifFalse: [recoveredBlock98PC := 112].
        ].
        recoveredBlock98Step = 112 ifTrue: [
            recoveredBlock98Stack1 := CTError.
            recoveredBlock98PC := 114.
        ].
        recoveredBlock98Step = 114 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) isHaltOnError.
            recoveredBlock98PC := 116.
        ].
        recoveredBlock98Step = 116 ifTrue: [
            (recoveredBlock98Stack1) ifTrue: [recoveredBlock98PC := 166] ifFalse: [recoveredBlock98PC := 120].
        ].
        recoveredBlock98Step = 120 ifTrue: [
            recoveredBlock98Stack1 := DBLinDeLinError.
            recoveredBlock98PC := 122.
        ].
        recoveredBlock98Step = 122 ifTrue: [
            recoveredBlock98Stack2 := DBLinDeLinExceptionDuringLoad.
            recoveredBlock98PC := 124.
        ].
        recoveredBlock98Step = 124 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) createBasic: (recoveredBlock98Stack2).
            recoveredBlock98PC := 126.
        ].
        recoveredBlock98Step = 126 ifTrue: [
            recoveredLocal1 := recoveredBlock98Stack1.
            recoveredBlock98PC := 129.
        ].
        recoveredBlock98Step = 129 ifTrue: [
            recoveredBlock98Stack1 := recoveredArg1.
            recoveredBlock98PC := 132.
        ].
        recoveredBlock98Step = 132 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) isCTreeRecord.
            recoveredBlock98PC := 133.
        ].
        recoveredBlock98Step = 133 ifTrue: [
            (recoveredBlock98Stack1) ifTrue: [recoveredBlock98PC := 136] ifFalse: [recoveredBlock98PC := 157].
        ].
        recoveredBlock98Step = 136 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal1.
            recoveredBlock98PC := 139.
        ].
        recoveredBlock98Step = 139 ifTrue: [
            recoveredBlock98Stack2 := recoveredArg1.
            recoveredBlock98PC := 142.
        ].
        recoveredBlock98Step = 142 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) asProxy.
            recoveredBlock98PC := 144.
        ].
        recoveredBlock98Step = 144 ifTrue: [
            (recoveredBlock98Stack1) errorObject: (recoveredBlock98Stack2).
            recoveredBlock98PC := 146.
        ].
        recoveredBlock98Step = 146 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal1.
            recoveredBlock98PC := 149.
        ].
        recoveredBlock98Step = 149 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) errorObject.
            recoveredBlock98PC := 151.
        ].
        recoveredBlock98Step = 151 ifTrue: [
            recoveredBlock98Stack2 := selfDumpAndLoad.
            recoveredBlock98PC := 153.
        ].
        recoveredBlock98Step = 153 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) dbInterface.
            recoveredBlock98PC := 155.
        ].
        recoveredBlock98Step = 155 ifTrue: [
            (recoveredBlock98Stack1) dbInterface: (recoveredBlock98Stack2).
            recoveredBlock98PC := 157.
        ].
        recoveredBlock98Step = 157 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal1.
            recoveredBlock98PC := 160.
        ].
        recoveredBlock98Step = 160 ifTrue: [
            (recoveredBlock98Stack1) monitor.
            recoveredBlock98PC := 162.
        ].
        recoveredBlock98Step = 162 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Arg1.
            recoveredBlock98PC := 163.
        ].
        recoveredBlock98Step = 163 ifTrue: [
            recoveredBlock98Stack2 := nil.
            recoveredBlock98PC := 164.
        ].
        recoveredBlock98Step = 164 ifTrue: [
            (recoveredBlock98Stack1) exitWith: (recoveredBlock98Stack2).
            recoveredBlock98PC := 166.
        ].
        recoveredBlock98Step = 166 ifTrue: [
            recoveredBlock98Stack1 := recoveredArg1.
            recoveredBlock98PC := 169.
        ].
        recoveredBlock98Step = 169 ifTrue: [
            recoveredBlock98Stack0 := (recoveredBlock98Stack0) getLoadedObjectFromNoException: (recoveredBlock98Stack1).
            recoveredBlock98PC := 171.
        ].
        recoveredBlock98Step = 171 ifTrue: [
            recoveredBlock98Result := recoveredBlock98Stack0.
            recoveredBlock98Done := true.
        ].
    ].
    recoveredBlock98Result
].
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 262] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDbObject.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 255].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 255] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := EswPointerObjectMissingEncoding.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := swapper.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) loader.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := InstanceOfMissingClassWithEncoding.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack1) currentError: (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := DBLinDeLinError.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := swapper.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := (recoveredStack2) loader.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := (recoveredStack3) asProxy.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSwapper: (recoveredStack2) object: (recoveredStack3).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDBProxy.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 255].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := selfDumpAndLoad.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbInterface.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) dbInterface: (recoveredStack2).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) postLoad: (recoveredStack2).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

