"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012dc8; bytecode file offset 0x912098"
!RBOnlineDLLManager class methodsFor: 'recovered'!
defaultOnlineDLLClass
    | recoveredValue0 |
    recoveredValue0 := RBOnlineDLL32.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013bfc; bytecode file offset 0x912098"
!RBOnlineDLLManager class methodsFor: 'recovered'!
defaultTimeChannelDataType
    | recoveredValue0 |
    recoveredValue0 := Dulong.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200140dc; bytecode file offset 0x912098"
!RBOnlineDLLManager class methodsFor: 'recovered'!
defaultGroupClass
    | recoveredValue0 |
    recoveredValue0 := RBOnlineDLLChannelGroup.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014a48; bytecode file offset 0x912098"
!RBOnlineDLLManager class methodsFor: 'recovered'!
defaultDataChannelClass
    | recoveredValue0 |
    recoveredValue0 := RBOnlineDLLDataChannel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001512c; bytecode file offset 0x912098"
!RBOnlineDLLManager class methodsFor: 'recovered'!
defaultOfflineDLLClass
    | recoveredValue0 |
    recoveredValue0 := RBOfflineDataDLL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f9c4; bytecode file offset 0x92209c"
!RBOnlineDLLManager class methodsFor: 'recovered'!
defaultPixelBufferSize
    ^32000
! !

"ASDBase.ic method 0x20034bd4; bytecode file offset 0x934580"
!RBOnlineDLLManager class methodsFor: 'recovered'!
checkVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) defaultOnlineDLLClass.
    recoveredValue1 := (recoveredValue0) checkVersionAndExistance.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200718a4; bytecode file offset 0x96e578"
!RBOnlineDLLManager class methodsFor: 'recovered'!
defaultTimeChannelId
    ^0
! !

"ASDBase.ic method 0x20071ce0; bytecode file offset 0x96e60c"
!RBOnlineDLLManager class methodsFor: 'recovered'!
defaultMaxChannels
    ^128
! !

"ASDBase.ic method 0x20071d9c; bytecode file offset 0x96e680"
!RBOnlineDLLManager class methodsFor: 'recovered'!
defaultMaxCurves
    ^256
! !

"ASDBase.ic method 0x20074634; bytecode file offset 0x970f98"
!RBOnlineDLLManager class methodsFor: 'recovered'!
defaultMaxGroups
    ^10
! !

"ASDBase.ic method 0x20074810; bytecode file offset 0x9710d4"
!RBOnlineDLLManager class methodsFor: 'recovered'!
defaultMaxWindows
    ^12
! !

"ASDBase.ic method 0x2007fcf4; bytecode file offset 0x97c600"
!RBOnlineDLLManager class methodsFor: 'recovered'!
defaultMaxDisplayChannels
    ^30
! !

"ASDBase.ic method 0x20080a5c; bytecode file offset 0x97d320"
!RBOnlineDLLManager class methodsFor: 'recovered'!
defaultDataBufferSizeSeconds
    ^80
! !

"ASDBase.ic method 0x200a0b5c; bytecode file offset 0x99d414"
!RBOnlineDLLManager class methodsFor: 'recovered'!
defaultOfflineBufferSize
    (self) unfinished.
    ^200
! !

"ASDBase.ic method 0x20137c24; bytecode file offset 0xa344e4"
!RBOnlineDLLManager class methodsFor: 'recovered'!
create
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialize.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

