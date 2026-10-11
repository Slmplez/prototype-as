"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000068; bytecode file offset 0x3c0a8"
!EmLibraryInterface class methodsFor: 'recovered'!
_PRAGMA_NlsCatEMcsES
    ^self
! !

"lib.ic method 0x20000078; bytecode file offset 0x3c0a8"
!EmLibraryInterface class methodsFor: 'recovered'!
_PRAGMA_NlsCatEMc
    ^self
! !

"lib.ic method 0x2000046c; bytecode file offset 0x3c670"
!EmLibraryInterface class methodsFor: 'recovered'!
defaultRecordClass
    | recoveredValue0 |
    recoveredValue0 := EmRecord.
    ^recoveredValue0
! !

"lib.ic method 0x20000568; bytecode file offset 0x3c670"
!EmLibraryInterface class methodsFor: 'recovered'!
defaultObjectRecordClass
    | recoveredValue0 |
    recoveredValue0 := EmSwappedObjectRecord.
    ^recoveredValue0
! !

"lib.ic method 0x2000058c; bytecode file offset 0x3c670"
!EmLibraryInterface class methodsFor: 'recovered'!
nativeInterface
    | recoveredValue0 |
    recoveredValue0 := NativeInterface.
    ^recoveredValue0
! !

"lib.ic method 0x200005c8; bytecode file offset 0x3c670"
!EmLibraryInterface class methodsFor: 'recovered'!
serverInterface
    | recoveredValue0 |
    recoveredValue0 := ServerInterface.
    ^recoveredValue0
! !

"lib.ic method 0x20000780; bytecode file offset 0x3c804"
!EmLibraryInterface class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('createEditions' 'Deleted' 'execute' 'Extended' 'forgetLocalFields' 'forgetStoredObjects' 'logProgress' 'mapUsers' 'PrivatelyDefined' 'PubliclyDefined' 'readPrivateSource' 'readPrivateSpec' 'readPublicSource' 'readPublicSpec' 'removeComments' 'world' 'userMapping')
! !

"lib.ic method 0x200007c8; bytecode file offset 0x3c804"
!EmLibraryInterface class methodsFor: 'recovered'!
packagerIgnoreSelectors
    ^#('removeSourceStructure' 'removeCommentStructure' 'userMapping' 'userMapping:')
! !

"lib.ic method 0x20001b04; bytecode file offset 0x3db2c"
!EmLibraryInterface class methodsFor: 'recovered'!
disconnect
    | recoveredValue0 |
    recoveredValue0 := EmLibrary.
    (recoveredValue0) disconnect.
    ^self
! !

"lib.ic method 0x20003b8c; bytecode file offset 0x3fbb4"
!EmLibraryInterface class methodsFor: 'recovered'!
closeInterfaces
    ServerInterface := nil.
    NativeInterface := nil.
    ^self
! !

"lib.ic method 0x20004240; bytecode file offset 0x4026c"
!EmLibraryInterface class methodsFor: 'recovered'!
shutDown
    | recoveredValue0 |
    recoveredValue0 := EmLibrary.
    (recoveredValue0) shutDown.
    (self) closeInterfaces.
    ^self
! !

"lib.ic method 0x2000682c; bytecode file offset 0x42874"
!EmLibraryInterface class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := NlsCatEMc.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    recoveredValue2 := NlsCatEMcsES.
    recoveredValue3 := (self) defaultMessagesLocale.
    (recoveredValue2) relocalizeTo: (recoveredValue3).
    ^self
! !

"lib.ic method 0x20007100; bytecode file offset 0x43150"
!EmLibraryInterface class methodsFor: 'recovered'!
startUp
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) openInterfaces.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) startUp.
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

"lib.ic method 0x2000711c; bytecode file offset 0x43150"
!EmLibraryInterface class methodsFor: 'recovered'!
restart
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) openInterfaces.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) startUp.
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

"lib.ic method 0x200082c0; bytecode file offset 0x442f8"
!EmLibraryInterface class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) localize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) imageStarted.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) openInterfaces.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := EmUser.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) initialize.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20008dec; bytecode file offset 0x44e24"
!EmLibraryInterface class methodsFor: 'recovered'!
openInterfaces
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibraryServerPrimitives.
    (recoveredValue0) mapPlatformLibraryName.
    recoveredValue1 := EmLibraryServerPrimitives.
    recoveredValue2 := (recoveredValue1) new.
    ServerInterface := recoveredValue2.
    recoveredValue3 := EmLibraryNativePrimitives.
    (recoveredValue3) mapPlatformLibraryName.
    recoveredValue4 := EmLibraryNativePrimitives.
    recoveredValue5 := (recoveredValue4) new.
    NativeInterface := recoveredValue5.
    ^self
! !

"lib.ic method 0x20012c3c; bytecode file offset 0x4ec90"
!EmLibraryInterface class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'NativeInterface'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 'EmLibraryInterface'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) initializeToNilClassVariable: (recoveredStack2) inClassNamed: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'ServerInterface'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'EmLibraryInterface'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) initializeToNilClassVariable: (recoveredStack2) inClassNamed: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'Current'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'EmInterface'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) initializeToNilClassVariable: (recoveredStack2) inClassNamed: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'CurrentUser'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 'EmUser'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) initializeToNilClassVariable: (recoveredStack2) inClassNamed: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRunningImage.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 'CachedUsers'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 'Dictionary new'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := 'EmUser'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) initializeClassVariable: (recoveredStack2) to: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

