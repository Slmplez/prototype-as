"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20000054; bytecode file offset 0x4b1b0"
!SubApplication class methodsFor: 'recovered'!
resume
    ^self
! !

"kernel.ic method 0x200000c4; bytecode file offset 0x4b1b0"
!SubApplication class methodsFor: 'recovered'!
loaded
    ^self
! !

"kernel.ic method 0x200000d4; bytecode file offset 0x4b1b0"
!SubApplication class methodsFor: 'recovered'!
startUp
    ^self
! !

"kernel.ic method 0x2000012c; bytecode file offset 0x4b1b0"
!SubApplication class methodsFor: 'recovered'!
shutDown
    ^self
! !

"kernel.ic method 0x2000014c; bytecode file offset 0x4b1b0"
!SubApplication class methodsFor: 'recovered'!
postExiting
    ^self
! !

"kernel.ic method 0x2000017c; bytecode file offset 0x4b1b0"
!SubApplication class methodsFor: 'recovered'!
saving
    ^self
! !

"kernel.ic method 0x200001a4; bytecode file offset 0x4b1b0"
!SubApplication class methodsFor: 'recovered'!
relocalize
    ^self
! !

"kernel.ic method 0x200001c4; bytecode file offset 0x4b1b0"
!SubApplication class methodsFor: 'recovered'!
preStartUp
    ^self
! !

"kernel.ic method 0x20000204; bytecode file offset 0x4b1b0"
!SubApplication class methodsFor: 'recovered'!
suspending
    ^self
! !

"kernel.ic method 0x2000020c; bytecode file offset 0x4b1b0"
!SubApplication class methodsFor: 'recovered'!
exiting
    ^self
! !

"kernel.ic method 0x20000214; bytecode file offset 0x4b1b0"
!SubApplication class methodsFor: 'recovered'!
localize
    ^self
! !

"kernel.ic method 0x2000026c; bytecode file offset 0x4b1b0"
!SubApplication class methodsFor: 'recovered'!
restart
    ^self
! !

"kernel.ic method 0x20000294; bytecode file offset 0x4b1b0"
!SubApplication class methodsFor: 'recovered'!
addToSystemMenu
    ^self
! !

"kernel.ic method 0x200018f8; bytecode file offset 0x4c844"
!SubApplication class methodsFor: 'recovered'!
primitiveCurrentlyLoaded
    | recoveredValue0 |
    recoveredValue0 := LoadedSubApplications.
    ^recoveredValue0
! !

"kernel.ic method 0x200019e4; bytecode file offset 0x4c9a8"
!SubApplication class methodsFor: 'recovered'!
instanceMethodCategories
    ^#()
! !

"kernel.ic method 0x20001a50; bytecode file offset 0x4c9a8"
!SubApplication class methodsFor: 'recovered'!
classMethodCategories
    ^#()
! !

"kernel.ic method 0x20001c40; bytecode file offset 0x4ce64"
!SubApplication class methodsFor: 'recovered'!
allVisibleClasses
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rootApplication.
    recoveredValue1 := (recoveredValue0) allVisibleClasses.
    ^recoveredValue1
! !

"kernel.ic method 0x20001d20; bytecode file offset 0x4ce64"
!SubApplication class methodsFor: 'recovered'!
allLocalClasses
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rootApplication.
    recoveredValue1 := (recoveredValue0) allLocalClasses.
    ^recoveredValue1
! !

"kernel.ic method 0x200022d8; bytecode file offset 0x4d23c"
!SubApplication class methodsFor: 'recovered'!
currentlyLoaded
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) loadedSubApplications.
    ^recoveredValue1
! !

"kernel.ic method 0x20002318; bytecode file offset 0x4d23c"
!SubApplication class methodsFor: 'recovered'!
default
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) defaultApplication.
    ^recoveredValue1
! !

"kernel.ic method 0x200025f0; bytecode file offset 0x4d500"
!SubApplication class methodsFor: 'recovered'!
hasSubApplications
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := subApplications.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"kernel.ic method 0x20002c90; bytecode file offset 0x4dce4"
!SubApplication class methodsFor: 'recovered'!
primitiveCurrentlyLoaded: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    LoadedSubApplications := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20003384; bytecode file offset 0x4e2f8"
!SubApplication class methodsFor: 'recovered'!
recomputeLoaded
    | recoveredValue0 |
    recoveredValue0 := System.
    (recoveredValue0) loadedApplicationsHaveChanged.
    ^self
! !

"kernel.ic method 0x20003414; bytecode file offset 0x4e354"
!SubApplication class methodsFor: 'recovered'!
defaultMessagesLocale
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) startUpClass.
    recoveredValue2 := (recoveredValue1) defaultMessagesLocale.
    ^recoveredValue2
! !

"kernel.ic method 0x20003b04; bytecode file offset 0x4ea1c"
!SubApplication class methodsFor: 'recovered'!
hasResidentApplication
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owningImage.
    recoveredValue1 := (recoveredValue0) loadedSubApplications.
    recoveredValue2 := (recoveredValue1) includes: (self).
    ^recoveredValue2
! !

"kernel.ic method 0x20004240; bytecode file offset 0x4f14c"
!SubApplication class methodsFor: 'recovered'!
timeStamp
    | recoveredValue0 |
    recoveredValue0 := timeStamp.
    ^recoveredValue0
! !

"kernel.ic method 0x20004284; bytecode file offset 0x4f190"
!SubApplication class methodsFor: 'recovered'!
timeStamps
    | recoveredValue0 |
    recoveredValue0 := timeStamps.
    ^recoveredValue0
! !

"kernel.ic method 0x200042a0; bytecode file offset 0x4f1bc"
!SubApplication class methodsFor: 'recovered'!
defined
    | recoveredValue0 |
    recoveredValue0 := defined.
    ^recoveredValue0
! !

"kernel.ic method 0x200042cc; bytecode file offset 0x4f1e0"
!SubApplication class methodsFor: 'recovered'!
extended
    | recoveredValue0 |
    recoveredValue0 := extended.
    ^recoveredValue0
! !

"kernel.ic method 0x200042e8; bytecode file offset 0x4f204"
!SubApplication class methodsFor: 'recovered'!
undefined
    | recoveredValue0 |
    recoveredValue0 := undefined.
    ^recoveredValue0
! !

"kernel.ic method 0x2000430c; bytecode file offset 0x4f228"
!SubApplication class methodsFor: 'recovered'!
subApplications
    | recoveredValue0 |
    recoveredValue0 := subApplications.
    ^recoveredValue0
! !

"kernel.ic method 0x20004330; bytecode file offset 0x4f244"
!SubApplication class methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := parent.
    ^recoveredValue0
! !

"kernel.ic method 0x2000434c; bytecode file offset 0x4f258"
!SubApplication class methodsFor: 'recovered'!
rootApplication
    | recoveredValue0 |
    recoveredValue0 := rootApplication.
    ^recoveredValue0
! !

"kernel.ic method 0x20004698; bytecode file offset 0x4f5c4"
!SubApplication class methodsFor: 'recovered'!
isSubApplication
    ^true
! !

"kernel.ic method 0x20004768; bytecode file offset 0x4f794"
!SubApplication class methodsFor: 'recovered'!
isApplication
    ^false
! !

"kernel.ic method 0x200055bc; bytecode file offset 0x504d0"
!SubApplication class methodsFor: 'recovered'!
becomeDefault
    | recoveredValue0 |
    recoveredValue0 := (self) owningImage.
    (recoveredValue0) defaultApplication: (self).
    ^self
! !

"kernel.ic method 0x20007ae4; bytecode file offset 0x52a10"
!SubApplication class methodsFor: 'recovered'!
timeStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    timeStamp := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007b38; bytecode file offset 0x52a5c"
!SubApplication class methodsFor: 'recovered'!
timeStamps: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    timeStamps := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007bbc; bytecode file offset 0x52ac8"
!SubApplication class methodsFor: 'recovered'!
scratchEditionStatus: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isScratchEdition := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007e80; bytecode file offset 0x52d98"
!SubApplication class methodsFor: 'recovered'!
timeStampFor: recoveredArg1 is: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) timeStamps.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) symbol.
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"kernel.ic method 0x20008c54; bytecode file offset 0x53b6c"
!SubApplication class methodsFor: 'recovered'!
allSubApplications
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) addAllSubApplicationsTo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"kernel.ic method 0x20009874; bytecode file offset 0x5478c"
!SubApplication class methodsFor: 'recovered'!
withAllSubApplications
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: (self).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) addAllSubApplicationsTo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"kernel.ic method 0x2000bb40; bytecode file offset 0x56a58"
!SubApplication class methodsFor: 'recovered'!
residentApplication
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadedSubApplications.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
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
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000d268; bytecode file offset 0x5818c"
!SubApplication class methodsFor: 'recovered'!
timeStampFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamps.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280086dcValue0 block280086dcValue1 |
    block280086dcValue0 := EmTimeStamp.
    block280086dcValue1 := (block280086dcValue0) undefined.
    block280086dcValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000daac; bytecode file offset 0x589c4"
!SubApplication class methodsFor: 'recovered'!
defined: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            defined := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000dad8; bytecode file offset 0x589f0"
!SubApplication class methodsFor: 'recovered'!
extended: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Set.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            extended := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000f0d4; bytecode file offset 0x59fe8"
!SubApplication class methodsFor: 'recovered'!
primitiveSubApplications: recoveredArg1
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            subApplications := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000f3a0; bytecode file offset 0x5a2c0"
!SubApplication class methodsFor: 'recovered'!
allParents
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
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
            recoveredStack0 := (recoveredStack0) allParents.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20010700; bytecode file offset 0x5b624"
!SubApplication class methodsFor: 'recovered'!
addExtended: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) extended.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) extended.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) removeReservedClassName: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) addApplication: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200114b8; bytecode file offset 0x5c3ec"
!SubApplication class methodsFor: 'recovered'!
addSubApplication: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) parent: (self).
    recoveredValue1 := (self) subApplications.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) , (recoveredValue4).
    recoveredValue6 := Class.
    recoveredValue7 := (recoveredValue6) sortBlock.
    recoveredValue8 := (recoveredValue5) asSortedCollection: (recoveredValue7).
    recoveredValue9 := (recoveredValue8) asArray.
    (self) primitiveSubApplications: (recoveredValue9).
    ^self
! !

"kernel.ic method 0x200127e8; bytecode file offset 0x5d710"
!SubApplication class methodsFor: 'recovered'!
subApplications: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) parent: (self).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := Class.
    recoveredValue4 := (recoveredValue3) sortBlock.
    recoveredValue5 := (recoveredValue2) asSortedCollection: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) asArray.
    (self) primitiveSubApplications: (recoveredValue6).
    ^self
! !

"kernel.ic method 0x20013a48; bytecode file offset 0x5e968"
!SubApplication class methodsFor: 'recovered'!
removeReservedClassName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) undefined.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) symbol.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            (recoveredBlock6Stack2 ~~ recoveredBlock6Stack3) ifTrue: [recoveredBlock6PC := 27] ifFalse: [recoveredBlock6PC := 22].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) undefined.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) remove: (recoveredBlock6Stack2).
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x20015f58; bytecode file offset 0x60e7c"
!SubApplication class methodsFor: 'recovered'!
initializeApplication
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    defined := #().
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    extended := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    undefined := recoveredValue3.
    recoveredValue4 := Dictionary.
    recoveredValue5 := (recoveredValue4) new.
    timeStamps := recoveredValue5.
    recoveredValue6 := Dictionary.
    recoveredValue7 := (recoveredValue6) new.
    privileges := recoveredValue7.
    (self) primitiveSubApplications: (#()).
    (self) scratchEditionStatus: (false).
    ^self
! !

"kernel.ic method 0x20016448; bytecode file offset 0x6136c"
!SubApplication class methodsFor: 'recovered'!
privateClasses
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) defined.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isPrivate.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 24] ifFalse: [recoveredBlock11PC := 31].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"kernel.ic method 0x2001696c; bytecode file offset 0x61894"
!SubApplication class methodsFor: 'recovered'!
classes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) defined.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (self) extended.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (self) undefined.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := (recoveredValue5) + (recoveredValue7).
    recoveredValue9 := (recoveredValue0) new: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := (self) defined.
    (recoveredValue11) addAll: (recoveredValue12).
    recoveredValue13 := recoveredValue10.
    recoveredValue14 := (self) extended.
    (recoveredValue13) addAll: (recoveredValue14).
    recoveredValue15 := recoveredValue10.
    recoveredValue16 := (self) undefined.
    (recoveredValue15) addAll: (recoveredValue16).
    ^recoveredValue10
! !

"kernel.ic method 0x20016d20; bytecode file offset 0x61c54"
!SubApplication class methodsFor: 'recovered'!
addDefines: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmSortedHierarchy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) defined.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) sort: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) defined: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) undefined.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := (recoveredBlock23Value0) symbol.
    recoveredBlock23Value2 := (self) removeReservedClassName: (recoveredBlock23Value1).
    recoveredBlock23Value2
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"kernel.ic method 0x200171d0; bytecode file offset 0x620dc"
!SubApplication class methodsFor: 'recovered'!
clearAllState
    privileges := nil.
    library := nil.
    isScratchEdition := nil.
    configurationExpression := nil.
    rootApplication := nil.
    parent := nil.
    subApplications := nil.
    undefined := nil.
    extended := nil.
    defined := nil.
    timeStamps := nil.
    timeStamp := nil.
    ^self
! !

"kernel.ic method 0x20017a18; bytecode file offset 0x62940"
!SubApplication class methodsFor: 'recovered'!
publicClasses
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) defined.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) defined.
    recoveredValue5 := [:recoveredBlock14Arg1 | 
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
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) isPublic.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 28] ifFalse: [recoveredBlock14PC := 35].
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"kernel.ic method 0x20019ab8; bytecode file offset 0x649f4"
!SubApplication class methodsFor: 'recovered'!
addDefined: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) defined.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 34].
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
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := NlsCatEM.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'MxEM1'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) controller: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) addDefines: (recoveredStack1).
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

"kernel.ic method 0x20019e10; bytecode file offset 0x64d34"
!SubApplication class methodsFor: 'recovered'!
parent: recoveredArg1
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
            parent := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            rootApplication := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplications.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            (recoveredBlock21Stack1) enableApplicationProtocol.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 33.
        ].
        recoveredBlock21Step = 33 ifTrue: [
            recoveredBlock21Stack3 := 'parent:'.
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) respondsTo: (recoveredBlock21Stack3).
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 40] ifFalse: [recoveredBlock21PC := 44].
        ].
        recoveredBlock21Step = 40 ifTrue: [
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) parent: (recoveredBlock21Stack2).
            recoveredBlock21PC := 44.
        ].
        recoveredBlock21Step = 44 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001c0b0; bytecode file offset 0x66fec"
!SubApplication class methodsFor: 'recovered'!
locallyRemove: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRemoved.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamps.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) defined.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) defined.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWithout: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) defined: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) extended.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) undefined.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20020968; bytecode file offset 0x6b8bc"
!SubApplication class methodsFor: 'recovered'!
visiblePublicClasses
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) defined.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (self) extended.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (recoveredValue0) new: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (self) defined.
    recoveredValue8 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isPublic.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 34] ifFalse: [recoveredBlock19PC := 41].
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := (self) extended.
    recoveredValue10 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Stack0 recoveredBlock46Stack1 recoveredBlock46Stack2 recoveredBlock46Stack3 recoveredBlock46PC recoveredBlock46Step recoveredBlock46Done recoveredBlock46Result |
    recoveredBlock46Stack0 := self.
    recoveredBlock46PC := 52.
    recoveredBlock46Done := false.
    [recoveredBlock46Done not] whileTrue: [
        recoveredBlock46Step := recoveredBlock46PC.
        recoveredBlock46Step = 52 ifTrue: [
            recoveredBlock46Stack1 := nil.
            recoveredBlock46PC := 53.
        ].
        recoveredBlock46Step = 53 ifTrue: [
            recoveredBlock46Stack2 := recoveredBlock46Arg1.
            recoveredBlock46PC := 54.
        ].
        recoveredBlock46Step = 54 ifTrue: [
            recoveredBlock46Stack2 := (recoveredBlock46Stack2) isPublic.
            recoveredBlock46PC := 56.
        ].
        recoveredBlock46Step = 56 ifTrue: [
            (recoveredBlock46Stack2) ifTrue: [recoveredBlock46PC := 60] ifFalse: [recoveredBlock46PC := 67].
        ].
        recoveredBlock46Step = 60 ifTrue: [
            recoveredBlock46PC := 61.
        ].
        recoveredBlock46Step = 61 ifTrue: [
            recoveredBlock46Stack1 := recoveredLocal1.
            recoveredBlock46PC := 64.
        ].
        recoveredBlock46Step = 64 ifTrue: [
            recoveredBlock46Stack2 := recoveredBlock46Arg1.
            recoveredBlock46PC := 65.
        ].
        recoveredBlock46Step = 65 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) add: (recoveredBlock46Stack2).
            recoveredBlock46PC := 67.
        ].
        recoveredBlock46Step = 67 ifTrue: [
            recoveredBlock46Result := recoveredBlock46Stack1.
            recoveredBlock46Done := true.
        ].
    ].
    recoveredBlock46Result
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"kernel.ic method 0x20020990; bytecode file offset 0x6b8bc"
!SubApplication class methodsFor: 'recovered'!
visiblePrivateClasses
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) defined.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (self) extended.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (recoveredValue0) new: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (self) defined.
    recoveredValue8 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isPrivate.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 34] ifFalse: [recoveredBlock19PC := 41].
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := (self) extended.
    recoveredValue10 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Stack0 recoveredBlock46Stack1 recoveredBlock46Stack2 recoveredBlock46Stack3 recoveredBlock46PC recoveredBlock46Step recoveredBlock46Done recoveredBlock46Result |
    recoveredBlock46Stack0 := self.
    recoveredBlock46PC := 52.
    recoveredBlock46Done := false.
    [recoveredBlock46Done not] whileTrue: [
        recoveredBlock46Step := recoveredBlock46PC.
        recoveredBlock46Step = 52 ifTrue: [
            recoveredBlock46Stack1 := nil.
            recoveredBlock46PC := 53.
        ].
        recoveredBlock46Step = 53 ifTrue: [
            recoveredBlock46Stack2 := recoveredBlock46Arg1.
            recoveredBlock46PC := 54.
        ].
        recoveredBlock46Step = 54 ifTrue: [
            recoveredBlock46Stack2 := (recoveredBlock46Stack2) isPrivate.
            recoveredBlock46PC := 56.
        ].
        recoveredBlock46Step = 56 ifTrue: [
            (recoveredBlock46Stack2) ifTrue: [recoveredBlock46PC := 60] ifFalse: [recoveredBlock46PC := 67].
        ].
        recoveredBlock46Step = 60 ifTrue: [
            recoveredBlock46PC := 61.
        ].
        recoveredBlock46Step = 61 ifTrue: [
            recoveredBlock46Stack1 := recoveredLocal1.
            recoveredBlock46PC := 64.
        ].
        recoveredBlock46Step = 64 ifTrue: [
            recoveredBlock46Stack2 := recoveredBlock46Arg1.
            recoveredBlock46PC := 65.
        ].
        recoveredBlock46Step = 65 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) add: (recoveredBlock46Stack2).
            recoveredBlock46PC := 67.
        ].
        recoveredBlock46Step = 67 ifTrue: [
            recoveredBlock46Result := recoveredBlock46Stack1.
            recoveredBlock46Done := true.
        ].
    ].
    recoveredBlock46Result
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"kernel.ic method 0x20022650; bytecode file offset 0x6d584"
!SubApplication class methodsFor: 'recovered'!
addAllSubApplicationsTo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplications.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) subApplications.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplications.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) addAllSubApplicationsTo: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) subApplications.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := Class.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := recoveredArg1.
            recoveredBlock52PC := 61.
        ].
        recoveredBlock52Step = 61 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 62.
        ].
        recoveredBlock52Step = 62 ifTrue: [
            (recoveredBlock52Stack1) add: (recoveredBlock52Stack2).
            recoveredBlock52PC := 64.
        ].
        recoveredBlock52Step = 64 ifTrue: [
            recoveredBlock52Stack1 := nil.
            recoveredBlock52PC := 65.
        ].
        recoveredBlock52Step = 65 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 66.
        ].
        recoveredBlock52Step = 66 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) subApplications.
            recoveredBlock52PC := 67.
        ].
        recoveredBlock52Step = 67 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) notEmpty.
            recoveredBlock52PC := 69.
        ].
        recoveredBlock52Step = 69 ifTrue: [
            (recoveredBlock52Stack2) ifTrue: [recoveredBlock52PC := 72] ifFalse: [recoveredBlock52PC := 79].
        ].
        recoveredBlock52Step = 72 ifTrue: [
            recoveredBlock52PC := 73.
        ].
        recoveredBlock52Step = 73 ifTrue: [
            recoveredBlock52Stack1 := recoveredBlock52Arg1.
            recoveredBlock52PC := 74.
        ].
        recoveredBlock52Step = 74 ifTrue: [
            recoveredBlock52Stack2 := recoveredArg1.
            recoveredBlock52PC := 77.
        ].
        recoveredBlock52Step = 77 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) addAllSubApplicationsTo: (recoveredBlock52Stack2).
            recoveredBlock52PC := 79.
        ].
        recoveredBlock52Step = 79 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

