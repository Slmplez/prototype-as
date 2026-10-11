"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20003940; bytecode file offset 0x7fbb0"
!CwTwoButtonPrompter methodsFor: 'recovered'!
button1Name
    | recoveredValue0 |
    recoveredValue0 := button1Name.
    ^recoveredValue0
! !

"winsys.ic method 0x20003a88; bytecode file offset 0x7fc78"
!CwTwoButtonPrompter methodsFor: 'recovered'!
button2Name
    | recoveredValue0 |
    recoveredValue0 := button2Name.
    ^recoveredValue0
! !

"winsys.ic method 0x20003b38; bytecode file offset 0x7fd28"
!CwTwoButtonPrompter methodsFor: 'recovered'!
button1
    | recoveredValue0 |
    recoveredValue0 := button1.
    ^recoveredValue0
! !

"winsys.ic method 0x20003bbc; bytecode file offset 0x7fdc4"
!CwTwoButtonPrompter methodsFor: 'recovered'!
button2
    | recoveredValue0 |
    recoveredValue0 := button2.
    ^recoveredValue0
! !

"winsys.ic method 0x20004790; bytecode file offset 0x80960"
!CwTwoButtonPrompter methodsFor: 'recovered'!
button1ClientData
    ^nil
! !

"winsys.ic method 0x200047a0; bytecode file offset 0x80960"
!CwTwoButtonPrompter methodsFor: 'recovered'!
button2ClientData
    ^nil
! !

"winsys.ic method 0x20007e78; bytecode file offset 0x84048"
!CwTwoButtonPrompter methodsFor: 'recovered'!
button1Name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    button1Name := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007ea4; bytecode file offset 0x840d4"
!CwTwoButtonPrompter methodsFor: 'recovered'!
button2Name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    button2Name := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007f70; bytecode file offset 0x84168"
!CwTwoButtonPrompter methodsFor: 'recovered'!
button1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    button1 := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007fcc; bytecode file offset 0x841fc"
!CwTwoButtonPrompter methodsFor: 'recovered'!
button2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    button2 := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20008a74; bytecode file offset 0x84c44"
!CwTwoButtonPrompter methodsFor: 'recovered'!
button2: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) cancel: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    ^self
! !

"winsys.ic method 0x20008a80; bytecode file offset 0x84c44"
!CwTwoButtonPrompter methodsFor: 'recovered'!
button1: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) ok: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    ^self
! !

"winsys.ic method 0x2000b574; bytecode file offset 0x87748"
!CwTwoButtonPrompter methodsFor: 'recovered'!
createBulletinBoard
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (self) bulletinBoardArgs.
    recoveredValue2 := (recoveredValue0) createForm: ('form') argBlock: (recoveredValue1).
    (self) bulletinBoardWidget: (recoveredValue2).
    ^self
! !

"winsys.ic method 0x2000ea3c; bytecode file offset 0x8ac14"
!CwTwoButtonPrompter methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := MxESTa10.
    (self) button1Name: (recoveredValue0).
    recoveredValue1 := MxESTa11.
    (self) button2Name: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x20017b44; bytecode file offset 0x93d24"
!CwTwoButtonPrompter methodsFor: 'recovered'!
addButtonCallbacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) button1.
    recoveredValue1 := XmNactivateCallback.
    recoveredValue2 := (self) button1ClientData.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('button1:clientData:callData:') clientData: (recoveredValue2).
    recoveredValue3 := (self) button2.
    recoveredValue4 := XmNactivateCallback.
    recoveredValue5 := (self) button2ClientData.
    (recoveredValue3) addCallback: (recoveredValue4) receiver: (self) selector: ('button2:clientData:callData:') clientData: (recoveredValue5).
    ^self
! !

"winsys.ic method 0x2002a230; bytecode file offset 0xa643c"
!CwTwoButtonPrompter methodsFor: 'recovered'!
createChildren
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) bulletinBoardWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) button1Name.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [:block280091a8Arg1 | 
    | block280091a8Value0 block280091a8Value1 block280091a8Value2 block280091a8Value3 block280091a8Value4 block280091a8Value5 |
    block280091a8Value0 := block280091a8Arg1.
    block280091a8Value1 := block280091a8Value0.
    block280091a8Value2 := XmATTACHPOSITION.
    (block280091a8Value1) rightAttachment: (block280091a8Value2).
    block280091a8Value3 := block280091a8Value0.
    (block280091a8Value3) rightPosition: (48).
    block280091a8Value4 := XmATTACHFORM.
    block280091a8Value5 := (block280091a8Value0) bottomAttachment: (block280091a8Value4).
    block280091a8Value5
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) button1: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) button1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) defaultButton: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) button2Name.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := [:block280091ccArg1 | 
    | block280091ccValue0 block280091ccValue1 block280091ccValue2 block280091ccValue3 block280091ccValue4 block280091ccValue5 |
    block280091ccValue0 := block280091ccArg1.
    block280091ccValue1 := block280091ccValue0.
    block280091ccValue2 := XmATTACHPOSITION.
    (block280091ccValue1) leftAttachment: (block280091ccValue2).
    block280091ccValue3 := block280091ccValue0.
    (block280091ccValue3) leftPosition: (52).
    block280091ccValue4 := XmATTACHFORM.
    block280091ccValue5 := (block280091ccValue0) bottomAttachment: (block280091ccValue4).
    block280091ccValue5
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) button2: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) addButtonCallbacks.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

