"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200439dc; bytecode file offset 0x9451f8"
!SGStartUpWindow methodsFor: 'recovered'!
message
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('message').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004421c; bytecode file offset 0x9451f8"
!SGStartUpWindow methodsFor: 'recovered'!
progressBar
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('progressBar').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fc50; bytecode file offset 0x96c6ac"
!SGStartUpWindow methodsFor: 'recovered'!
toolName
    | recoveredValue0 |
    recoveredValue0 := toolName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fe6c; bytecode file offset 0x96c850"
!SGStartUpWindow methodsFor: 'recovered'!
messageStringBasic
    | recoveredValue0 |
    recoveredValue0 := messageString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084654; bytecode file offset 0x981ca4"
!SGStartUpWindow methodsFor: 'recovered'!
message: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) messageString: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c61c0; bytecode file offset 0x9c2bec"
!SGStartUpWindow methodsFor: 'recovered'!
toolName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    toolName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c639c; bytecode file offset 0x9c2dd0"
!SGStartUpWindow methodsFor: 'recovered'!
messageStringBasic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    messageString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20167bf0; bytecode file offset 0xa644cc"
!SGStartUpWindow methodsFor: 'recovered'!
fractionComplete: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressBar.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressBar.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) progressBar.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) fractionComplete: (recoveredStack1).
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

"ASDBase.ic method 0x202b78a8; bytecode file offset 0xbb4188"
!SGStartUpWindow methodsFor: 'recovered'!
messageString: recoveredArg1
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
            (recoveredStack0) messageStringBasic: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) message.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) messageStringBasic.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) updateDisplay.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) message.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidth: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203194d4; bytecode file offset 0xc15db8"
!SGStartUpWindow methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (self) toolName.
    (recoveredValue0) title: (recoveredValue1).
    recoveredValue2 := CgScreen.
    recoveredValue3 := (recoveredValue2) default.
    recoveredValue4 := (recoveredValue3) width.
    recoveredValue5 := (recoveredValue4) // (2).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := CgScreen.
    recoveredValue7 := (recoveredValue6) default.
    recoveredValue8 := (recoveredValue7) height.
    recoveredValue9 := (recoveredValue8) // (2).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := (self) shell.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (recoveredValue11) - (150).
    (recoveredValue10) x: (recoveredValue12).
    recoveredValue13 := (self) shell.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) - (50).
    (recoveredValue13) y: (recoveredValue15).
    (self) updateFonts.
    recoveredValue16 := (self) progressBar.
    (recoveredValue16) unmanageChild.
    ^self
! !

"ASDBase.ic method 0x205b8ae0; bytecode file offset 0xeb5450"
!SGStartUpWindow methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'xx'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block281173b8Arg1 | 
    | block281173b8Value0 block281173b8Value1 block281173b8Value2 block281173b8Value3 block281173b8Value4 block281173b8Value5 |
    block281173b8Value0 := block281173b8Arg1.
    block281173b8Value1 := block281173b8Value0.
    (block281173b8Value1) title: ('ETAS').
    block281173b8Value2 := block281173b8Value0.
    block281173b8Value3 := MWMDECORBORDER.
    (block281173b8Value2) mwmDecorations: (block281173b8Value3).
    block281173b8Value4 := block281173b8Value0.
    (block281173b8Value4) height: (150).
    block281173b8Value5 := (block281173b8Value0) width: (300).
    block281173b8Value5
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'topShell'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'message'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := [:recoveredBlock111Arg1 | 
    | recoveredBlock111Value0 recoveredBlock111Value1 recoveredBlock111Value2 recoveredBlock111Value3 recoveredBlock111Value4 recoveredBlock111Value5 recoveredBlock111Value6 |
    recoveredBlock111Value0 := recoveredBlock111Arg1.
    recoveredBlock111Value1 := recoveredBlock111Value0.
    (recoveredBlock111Value1) x: (100).
    recoveredBlock111Value2 := recoveredBlock111Value0.
    recoveredBlock111Value3 := (self) messageStringBasic.
    (recoveredBlock111Value2) labelString: (recoveredBlock111Value3).
    recoveredBlock111Value4 := recoveredBlock111Value0.
    (recoveredBlock111Value4) y: (100).
    recoveredBlock111Value5 := recoveredBlock111Value0.
    (recoveredBlock111Value5) height: (20).
    recoveredBlock111Value6 := (recoveredBlock111Value0) width: (50).
    recoveredBlock111Value6
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := 'message'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := 'progressBar'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := [:block281173dcArg1 | 
    | block281173dcValue0 block281173dcValue1 block281173dcValue2 block281173dcValue3 |
    block281173dcValue0 := block281173dcArg1.
    block281173dcValue1 := block281173dcValue0.
    (block281173dcValue1) y: (20).
    block281173dcValue2 := block281173dcValue0.
    (block281173dcValue2) width: (245).
    block281173dcValue3 := (block281173dcValue0) height: (20).
    block281173dcValue3
].
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCwProgressBar: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := 'progressBar'.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := [:recoveredBlock213Arg1 | 
    | recoveredBlock213Value0 recoveredBlock213Value1 recoveredBlock213Value2 |
    recoveredBlock213Value0 := recoveredBlock213Arg1.
    recoveredBlock213Value1 := recoveredLocal3.
    recoveredBlock213Value2 := (recoveredBlock213Value0) workWindow: (recoveredBlock213Value1).
    recoveredBlock213Value2
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := [:block28117400Arg1 | 
    | block28117400Value0 block28117400Value1 block28117400Value2 block28117400Value3 block28117400Value4 block28117400Value5 block28117400Value6 block28117400Value7 block28117400Value8 |
    block28117400Value0 := block28117400Arg1.
    block28117400Value1 := block28117400Value0.
    block28117400Value2 := XmATTACHFORM.
    (block28117400Value1) bottomAttachment: (block28117400Value2).
    block28117400Value3 := block28117400Value0.
    (block28117400Value3) bottomOffset: (50).
    block28117400Value4 := block28117400Value0.
    block28117400Value5 := XmATTACHFORM.
    (block28117400Value4) leftAttachment: (block28117400Value5).
    block28117400Value6 := block28117400Value0.
    block28117400Value7 := XmATTACHFORM.
    (block28117400Value6) rightAttachment: (block28117400Value7).
    block28117400Value8 := (block28117400Value0) rightOffset: (5).
    block28117400Value8
].
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := [:block28117424Arg1 | 
    | block28117424Value0 block28117424Value1 block28117424Value2 block28117424Value3 block28117424Value4 block28117424Value5 block28117424Value6 block28117424Value7 block28117424Value8 block28117424Value9 |
    block28117424Value0 := block28117424Arg1.
    block28117424Value1 := block28117424Value0.
    block28117424Value2 := XmATTACHFORM.
    (block28117424Value1) topAttachment: (block28117424Value2).
    block28117424Value3 := block28117424Value0.
    (block28117424Value3) topOffset: (20).
    block28117424Value4 := block28117424Value0.
    block28117424Value5 := XmATTACHFORM.
    (block28117424Value4) leftAttachment: (block28117424Value5).
    block28117424Value6 := block28117424Value0.
    (block28117424Value6) leftOffset: (10).
    block28117424Value7 := block28117424Value0.
    block28117424Value8 := XmATTACHFORM.
    (block28117424Value7) rightAttachment: (block28117424Value8).
    block28117424Value9 := (block28117424Value0) rightOffset: (10).
    block28117424Value9
].
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

