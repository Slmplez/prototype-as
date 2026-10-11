"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x200000a8; bytecode file offset 0xe248"
!ZZZExecuterToolbox class methodsFor: 'recovered'!
mainController
    | recoveredValue0 |
    recoveredValue0 := MainController.
    ^recoveredValue0
! !

"ASDGenUtil_base.ic method 0x200000d4; bytecode file offset 0xe340"
!ZZZExecuterToolbox class methodsFor: 'recovered'!
labelString
    ^'ASCET Executer Package'
! !

"ASDGenUtil_base.ic method 0x20000600; bytecode file offset 0xe79c"
!ZZZExecuterToolbox class methodsFor: 'recovered'!
executerProfile
    | recoveredValue0 |
    recoveredValue0 := executerProfile.
    ^recoveredValue0
! !

"ASDGenUtil_base.ic method 0x200009d0; bytecode file offset 0xeb6c"
!ZZZExecuterToolbox class methodsFor: 'recovered'!
executerProfile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    executerProfile := recoveredValue0.
    ^self
! !

"ASDGenUtil_base.ic method 0x20000a78; bytecode file offset 0xec3c"
!ZZZExecuterToolbox class methodsFor: 'recovered'!
initializeToolboxAfterLoad
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := PCDExecuter.
    (recoveredValue0) executeAutoStart.
    recoveredValue1 := super initializeToolboxAfterLoad.
    ^recoveredValue1
! !

"ASDGenUtil_base.ic method 0x20000a90; bytecode file offset 0xec3c"
!ZZZExecuterToolbox class methodsFor: 'recovered'!
finalizeToolbox
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := PCDExecuter.
    (recoveredValue0) executeShutDown.
    recoveredValue1 := super finalizeToolbox.
    ^recoveredValue1
! !

"ASDGenUtil_base.ic method 0x20000ab8; bytecode file offset 0xec60"
!ZZZExecuterToolbox class methodsFor: 'recovered'!
initializeToolbox
    | recoveredValue0 |
    (self) executerProfile: (nil).
    recoveredValue0 := super initializeToolbox.
    ^recoveredValue0
! !

"ASDGenUtil_base.ic method 0x20000c2c; bytecode file offset 0xedf0"
!ZZZExecuterToolbox class methodsFor: 'recovered'!
userInterface
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28000fc8Arg1 | 
    | block28000fc8Value0 block28000fc8Value1 |
    block28000fc8Value0 := block28000fc8Arg1.
    block28000fc8Value1 := (block28000fc8Value0) userInterface.
    block28000fc8Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20000c44; bytecode file offset 0xedf0"
!ZZZExecuterToolbox class methodsFor: 'recovered'!
performCleanupAction
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28000fecArg1 | 
    | block28000fecValue0 block28000fecValue1 |
    block28000fecValue0 := block28000fecArg1.
    block28000fecValue1 := (block28000fecValue0) resetWidgetCache.
    block28000fecValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x200015b0; bytecode file offset 0xf764"
!ZZZExecuterToolbox class methodsFor: 'recovered'!
getUIClassFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGMainCtrl.
    recoveredValue1 := (recoveredValue0) UIClassMapping.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asLowercase.
    recoveredValue4 := [
    ^nil
].
    recoveredValue5 := (recoveredValue1) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) name.
    recoveredValue7 := (recoveredValue6) asSymbol.
    ^recoveredValue7
! !

"ASDGenUtil_base.ic method 0x200017cc; bytecode file offset 0xf994"
!ZZZExecuterToolbox class methodsFor: 'recovered'!
disableMenusFor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) windowMenuBar.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '~File'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) menuAtTitle: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) entries.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [:block2800107cArg1 | 
    | block2800107cValue0 block2800107cValue1 block2800107cValue2 |
    block2800107cValue0 := block2800107cArg1.
    block2800107cValue1 := (block2800107cValue0) label.
    block2800107cValue2 := (block2800107cValue1) includesSubstring: ('Exit').
    block2800107cValue2
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) enable: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x2000605c; bytecode file offset 0x14278"
!ZZZExecuterToolbox class methodsFor: 'recovered'!
toolboxDescriptor
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasToolboxDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) labelString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'BIP-GeneralUtilities'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 'None'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) packageName: (recoveredStack3) application: (recoveredStack4) fileName: (recoveredStack5).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) executerProfile.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := PCDExecuterProfile.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) executerProfile: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) parse: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) entries.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Local1 recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51Stack4 recoveredBlock51Stack5 recoveredBlock51Stack6 recoveredBlock51Stack7 recoveredBlock51Stack8 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 61.
        ].
        recoveredBlock51Step = 61 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) window.
            recoveredBlock51PC := 63.
        ].
        recoveredBlock51Step = 63 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) getUIClassFor: (recoveredBlock51Stack1).
            recoveredBlock51PC := 65.
        ].
        recoveredBlock51Step = 65 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Stack0.
            recoveredBlock51PC := 66.
        ].
        recoveredBlock51Step = 66 ifTrue: [
            recoveredBlock51Local1 := recoveredBlock51Stack1.
            recoveredBlock51PC := 69.
        ].
        recoveredBlock51Step = 69 ifTrue: [
            (recoveredBlock51Stack0 == nil) ifTrue: [recoveredBlock51PC := 292] ifFalse: [recoveredBlock51PC := 72].
        ].
        recoveredBlock51Step = 72 ifTrue: [
            recoveredBlock51Stack0 := recoveredBlock51Arg1.
            recoveredBlock51PC := 75.
        ].
        recoveredBlock51Step = 75 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) submenu.
            recoveredBlock51PC := 77.
        ].
        recoveredBlock51Step = 77 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) isEmpty.
            recoveredBlock51PC := 79.
        ].
        recoveredBlock51Step = 79 ifTrue: [
            (recoveredBlock51Stack0) ifTrue: [recoveredBlock51PC := 82] ifFalse: [recoveredBlock51PC := 184].
        ].
        recoveredBlock51Step = 82 ifTrue: [
            recoveredBlock51Stack0 := recoveredLocal2.
            recoveredBlock51PC := 85.
        ].
        recoveredBlock51Step = 85 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local1.
            recoveredBlock51PC := 88.
        ].
        recoveredBlock51Step = 88 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 91.
        ].
        recoveredBlock51Step = 91 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) menu.
            recoveredBlock51PC := 93.
        ].
        recoveredBlock51Step = 93 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Arg1.
            recoveredBlock51PC := 96.
        ].
        recoveredBlock51Step = 96 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) item.
            recoveredBlock51PC := 98.
        ].
        recoveredBlock51Step = 98 ifTrue: [
            recoveredBlock51Stack4 := [:recoveredBlock51Block98Arg1 | 
    | recoveredBlock51Block98Value0 recoveredBlock51Block98Value1 recoveredBlock51Block98Value2 |
    recoveredBlock51Block98Value0 := recoveredBlock51Arg1.
    recoveredBlock51Block98Value1 := recoveredBlock51Block98Arg1.
    recoveredBlock51Block98Value2 := (recoveredBlock51Block98Value0) enableInScope: (recoveredBlock51Block98Value1).
    recoveredBlock51Block98Value2
].
            recoveredBlock51PC := 111.
        ].
        recoveredBlock51Step = 111 ifTrue: [
            recoveredBlock51Stack5 := [:recoveredBlock51Block111Arg1 | 
    | recoveredBlock51Block111Value0 recoveredBlock51Block111Value1 recoveredBlock51Block111Value2 |
    recoveredBlock51Block111Value0 := recoveredBlock51Arg1.
    recoveredBlock51Block111Value1 := recoveredBlock51Block111Arg1.
    recoveredBlock51Block111Value2 := (recoveredBlock51Block111Value0) executeInScope: (recoveredBlock51Block111Value1).
    recoveredBlock51Block111Value2
].
            recoveredBlock51PC := 125.
        ].
        recoveredBlock51Step = 125 ifTrue: [
            recoveredBlock51Stack6 := recoveredBlock51Arg1.
            recoveredBlock51PC := 128.
        ].
        recoveredBlock51Step = 128 ifTrue: [
            recoveredBlock51Stack6 := (recoveredBlock51Stack6) description.
            recoveredBlock51PC := 130.
        ].
        recoveredBlock51Step = 130 ifTrue: [
            (recoveredBlock51Stack0) addMenuCall: (recoveredBlock51Stack1) menu: (recoveredBlock51Stack2) item: (recoveredBlock51Stack3) enable: (recoveredBlock51Stack4) action: (recoveredBlock51Stack5) description: (recoveredBlock51Stack6).
            recoveredBlock51PC := 133.
        ].
        recoveredBlock51Step = 133 ifTrue: [
            recoveredBlock51Stack0 := nil.
            recoveredBlock51PC := 134.
        ].
        recoveredBlock51Step = 134 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 137.
        ].
        recoveredBlock51Step = 137 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) icon.
            recoveredBlock51PC := 139.
        ].
        recoveredBlock51Step = 139 ifTrue: [
            (recoveredBlock51Stack1 == nil) ifTrue: [recoveredBlock51PC := 181] ifFalse: [recoveredBlock51PC := 142].
        ].
        recoveredBlock51Step = 142 ifTrue: [
            recoveredBlock51PC := 143.
        ].
        recoveredBlock51Step = 143 ifTrue: [
            recoveredBlock51Stack0 := recoveredLocal2.
            recoveredBlock51PC := 146.
        ].
        recoveredBlock51Step = 146 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local1.
            recoveredBlock51PC := 149.
        ].
        recoveredBlock51Step = 149 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 152.
        ].
        recoveredBlock51Step = 152 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) icon.
            recoveredBlock51PC := 154.
        ].
        recoveredBlock51Step = 154 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Arg1.
            recoveredBlock51PC := 157.
        ].
        recoveredBlock51Step = 157 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) description.
            recoveredBlock51PC := 159.
        ].
        recoveredBlock51Step = 159 ifTrue: [
            recoveredBlock51Stack4 := [:recoveredBlock51Block159Arg1 | 
    | recoveredBlock51Block159Value0 recoveredBlock51Block159Value1 recoveredBlock51Block159Value2 |
    recoveredBlock51Block159Value0 := recoveredBlock51Arg1.
    recoveredBlock51Block159Value1 := recoveredBlock51Block159Arg1.
    recoveredBlock51Block159Value2 := (recoveredBlock51Block159Value0) executeInScope: (recoveredBlock51Block159Value1).
    recoveredBlock51Block159Value2
].
            recoveredBlock51PC := 173.
        ].
        recoveredBlock51Step = 173 ifTrue: [
            recoveredBlock51Stack5 := recoveredBlock51Arg1.
            recoveredBlock51PC := 176.
        ].
        recoveredBlock51Step = 176 ifTrue: [
            recoveredBlock51Stack5 := (recoveredBlock51Stack5) description.
            recoveredBlock51PC := 178.
        ].
        recoveredBlock51Step = 178 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) addToolbarCall: (recoveredBlock51Stack1) icon: (recoveredBlock51Stack2) helpText: (recoveredBlock51Stack3) action: (recoveredBlock51Stack4) description: (recoveredBlock51Stack5).
            recoveredBlock51PC := 181.
        ].
        recoveredBlock51Step = 181 ifTrue: [
            recoveredBlock51PC := 289.
        ].
        recoveredBlock51Step = 184 ifTrue: [
            recoveredBlock51Stack0 := recoveredLocal2.
            recoveredBlock51PC := 187.
        ].
        recoveredBlock51Step = 187 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local1.
            recoveredBlock51PC := 190.
        ].
        recoveredBlock51Step = 190 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 193.
        ].
        recoveredBlock51Step = 193 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) menu.
            recoveredBlock51PC := 195.
        ].
        recoveredBlock51Step = 195 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Arg1.
            recoveredBlock51PC := 198.
        ].
        recoveredBlock51Step = 198 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) submenu.
            recoveredBlock51PC := 200.
        ].
        recoveredBlock51Step = 200 ifTrue: [
            recoveredBlock51Stack4 := recoveredBlock51Arg1.
            recoveredBlock51PC := 203.
        ].
        recoveredBlock51Step = 203 ifTrue: [
            recoveredBlock51Stack4 := (recoveredBlock51Stack4) item.
            recoveredBlock51PC := 205.
        ].
        recoveredBlock51Step = 205 ifTrue: [
            recoveredBlock51Stack5 := [:recoveredBlock51Block205Arg1 | 
    | recoveredBlock51Block205Value0 recoveredBlock51Block205Value1 recoveredBlock51Block205Value2 |
    recoveredBlock51Block205Value0 := recoveredBlock51Arg1.
    recoveredBlock51Block205Value1 := recoveredBlock51Block205Arg1.
    recoveredBlock51Block205Value2 := (recoveredBlock51Block205Value0) enableInScope: (recoveredBlock51Block205Value1).
    recoveredBlock51Block205Value2
].
            recoveredBlock51PC := 219.
        ].
        recoveredBlock51Step = 219 ifTrue: [
            recoveredBlock51Stack6 := [:recoveredBlock51Block219Arg1 | 
    | recoveredBlock51Block219Value0 recoveredBlock51Block219Value1 recoveredBlock51Block219Value2 |
    recoveredBlock51Block219Value0 := recoveredBlock51Arg1.
    recoveredBlock51Block219Value1 := recoveredBlock51Block219Arg1.
    recoveredBlock51Block219Value2 := (recoveredBlock51Block219Value0) executeInScope: (recoveredBlock51Block219Value1).
    recoveredBlock51Block219Value2
].
            recoveredBlock51PC := 233.
        ].
        recoveredBlock51Step = 233 ifTrue: [
            recoveredBlock51Stack7 := recoveredBlock51Arg1.
            recoveredBlock51PC := 236.
        ].
        recoveredBlock51Step = 236 ifTrue: [
            recoveredBlock51Stack7 := (recoveredBlock51Stack7) description.
            recoveredBlock51PC := 238.
        ].
        recoveredBlock51Step = 238 ifTrue: [
            (recoveredBlock51Stack0) addSubMenuCall: (recoveredBlock51Stack1) menu: (recoveredBlock51Stack2) submenu: (recoveredBlock51Stack3) item: (recoveredBlock51Stack4) enable: (recoveredBlock51Stack5) action: (recoveredBlock51Stack6) description: (recoveredBlock51Stack7).
            recoveredBlock51PC := 241.
        ].
        recoveredBlock51Step = 241 ifTrue: [
            recoveredBlock51Stack0 := nil.
            recoveredBlock51PC := 242.
        ].
        recoveredBlock51Step = 242 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 245.
        ].
        recoveredBlock51Step = 245 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) icon.
            recoveredBlock51PC := 247.
        ].
        recoveredBlock51Step = 247 ifTrue: [
            (recoveredBlock51Stack1 == nil) ifTrue: [recoveredBlock51PC := 289] ifFalse: [recoveredBlock51PC := 250].
        ].
        recoveredBlock51Step = 250 ifTrue: [
            recoveredBlock51PC := 251.
        ].
        recoveredBlock51Step = 251 ifTrue: [
            recoveredBlock51Stack0 := recoveredLocal2.
            recoveredBlock51PC := 254.
        ].
        recoveredBlock51Step = 254 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Local1.
            recoveredBlock51PC := 257.
        ].
        recoveredBlock51Step = 257 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 260.
        ].
        recoveredBlock51Step = 260 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) icon.
            recoveredBlock51PC := 262.
        ].
        recoveredBlock51Step = 262 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Arg1.
            recoveredBlock51PC := 265.
        ].
        recoveredBlock51Step = 265 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) description.
            recoveredBlock51PC := 267.
        ].
        recoveredBlock51Step = 267 ifTrue: [
            recoveredBlock51Stack4 := [:recoveredBlock51Block267Arg1 | 
    | recoveredBlock51Block267Value0 recoveredBlock51Block267Value1 recoveredBlock51Block267Value2 |
    recoveredBlock51Block267Value0 := recoveredBlock51Arg1.
    recoveredBlock51Block267Value1 := recoveredBlock51Block267Arg1.
    recoveredBlock51Block267Value2 := (recoveredBlock51Block267Value0) executeInScope: (recoveredBlock51Block267Value1).
    recoveredBlock51Block267Value2
].
            recoveredBlock51PC := 281.
        ].
        recoveredBlock51Step = 281 ifTrue: [
            recoveredBlock51Stack5 := recoveredBlock51Arg1.
            recoveredBlock51PC := 284.
        ].
        recoveredBlock51Step = 284 ifTrue: [
            recoveredBlock51Stack5 := (recoveredBlock51Stack5) description.
            recoveredBlock51PC := 286.
        ].
        recoveredBlock51Step = 286 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) addToolbarCall: (recoveredBlock51Stack1) icon: (recoveredBlock51Stack2) helpText: (recoveredBlock51Stack3) action: (recoveredBlock51Stack4) description: (recoveredBlock51Stack5).
            recoveredBlock51PC := 289.
        ].
        recoveredBlock51Step = 289 ifTrue: [
            recoveredBlock51PC := 314.
        ].
        recoveredBlock51Step = 292 ifTrue: [
            recoveredBlock51Stack0 := SGMonitorStreamDummy.
            recoveredBlock51PC := 294.
        ].
        recoveredBlock51Step = 294 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) create.
            recoveredBlock51PC := 296.
        ].
        recoveredBlock51Step = 296 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Stack0.
            recoveredBlock51PC := 297.
        ].
        recoveredBlock51Step = 297 ifTrue: [
            (recoveredBlock51Stack1) cr.
            recoveredBlock51PC := 299.
        ].
        recoveredBlock51Step = 299 ifTrue: [
            recoveredBlock51Stack1 := 'Window not found: '.
            recoveredBlock51PC := 301.
        ].
        recoveredBlock51Step = 301 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 304.
        ].
        recoveredBlock51Step = 304 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) window.
            recoveredBlock51PC := 306.
        ].
        recoveredBlock51Step = 306 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) , (recoveredBlock51Stack2).
            recoveredBlock51PC := 308.
        ].
        recoveredBlock51Step = 308 ifTrue: [
            recoveredBlock51Stack2 := '.'.
            recoveredBlock51PC := 310.
        ].
        recoveredBlock51Step = 310 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) , (recoveredBlock51Stack2).
            recoveredBlock51PC := 312.
        ].
        recoveredBlock51Step = 312 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) addText: (recoveredBlock51Stack1).
            recoveredBlock51PC := 314.
        ].
        recoveredBlock51Step = 314 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack0.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

