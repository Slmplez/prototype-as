"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006b3f8; bytecode file offset 0x96873c"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
menu
    | recoveredValue0 |
    recoveredValue0 := menu.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c1ac; bytecode file offset 0x9692b0"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
item
    | recoveredValue0 |
    recoveredValue0 := item.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ca68; bytecode file offset 0x969c04"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
enable
    | recoveredValue0 |
    recoveredValue0 := enable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d8c4; bytecode file offset 0x96a390"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
toggle
    | recoveredValue0 |
    recoveredValue0 := toggle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dc60; bytecode file offset 0x96a9dc"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
actionKey
    | recoveredValue0 |
    recoveredValue0 := actionKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072500; bytecode file offset 0x96ee04"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
bitDynamicMenu
    ^1
! !

"ASDBase.ic method 0x2007c834; bytecode file offset 0x97c330"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
isSubmenuCall
    ^false
! !

"ASDBase.ic method 0x200c2560; bytecode file offset 0x9bf474"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
menu: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    menu := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2f24; bytecode file offset 0x9bfde0"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
item: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    item := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c35b0; bytecode file offset 0x9c058c"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
enable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    enable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3d0c; bytecode file offset 0x9c0bf0"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
toggle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    toggle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4628; bytecode file offset 0x9c11bc"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
actionKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    actionKey := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cee88; bytecode file offset 0x9cb740"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
clearDynamicMenu
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (0).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ceebc; bytecode file offset 0x9cb774"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
setDynamicMenu
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (1).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ceefc; bytecode file offset 0x9cb7b4"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
isDynamicMenu
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2011f14c; bytecode file offset 0xa1ba58"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
statePrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isDynamicMenu.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isDynamicMenu: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x2023ed44; bytecode file offset 0xb3b61c"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) menu.
    recoveredValue5 := ('        menu: ') , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , (' item: ').
    recoveredValue7 := (self) item.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    (recoveredValue3) nextPutAll: (recoveredValue8).
    (recoveredValue1) cr.
    ^self
! !

"ASDBase.ic method 0x202970ec; bytecode file offset 0xb939c0"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) menu: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) item: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:block280e334cArg1 | 
    true
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) enable: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:block280e3370Arg1 | 
    false
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) toggle: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ac2d4; bytecode file offset 0xba8c28"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
stateTest
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: (' ').
    recoveredLocal1 := recoveredValue1.
    (self) setDynamicMenu.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('--------setDynamicMenu--------').
    (recoveredValue2) cr.
    recoveredValue4 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue4).
    (self) clearDynamicMenu.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('--------clearDynamicMenu--------').
    (recoveredValue5) cr.
    recoveredValue7 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) contents.
    (recoveredValue9) edit.
    ^self
! !

"ASDBase.ic method 0x2055c8b4; bytecode file offset 0xe591d8"
!RBToolboxCallFromMenu methodsFor: 'recovered'!
appendToMenu: recoveredArg1 window: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DirectedMessageWithText.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'value:'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := (recoveredStack4) action.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := (recoveredStack5) item.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack6 := $~.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := (recoveredStack5) copyWithout: (recoveredStack6).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector: (recoveredStack2) arguments: (recoveredStack3) receiver: (recoveredStack4) text: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) identifier.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) identifier.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) addMenuID: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 |
    recoveredBlock62Value0 := (self) enable.
    recoveredBlock62Value1 := recoveredArg2.
    recoveredBlock62Value2 := (recoveredBlock62Value0) value: (recoveredBlock62Value1).
    recoveredBlock62Value2
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock75Value0 recoveredBlock75Value1 recoveredBlock75Value2 |
    recoveredBlock75Value0 := (self) toggle.
    recoveredBlock75Value1 := recoveredArg2.
    recoveredBlock75Value2 := (recoveredBlock75Value0) value: (recoveredBlock75Value1).
    recoveredBlock75Value2
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) addWithID: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3) toggle: (recoveredStack4) for: (recoveredStack5).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock107Value0 recoveredBlock107Value1 recoveredBlock107Value2 |
    recoveredBlock107Value0 := (self) enable.
    recoveredBlock107Value1 := recoveredArg2.
    recoveredBlock107Value2 := (recoveredBlock107Value0) value: (recoveredBlock107Value1).
    recoveredBlock107Value2
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock121Value0 recoveredBlock121Value1 recoveredBlock121Value2 |
    recoveredBlock121Value0 := (self) toggle.
    recoveredBlock121Value1 := recoveredArg2.
    recoveredBlock121Value2 := (recoveredBlock121Value0) value: (recoveredBlock121Value1).
    recoveredBlock121Value2
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3) toggle: (recoveredStack4).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) actionKey.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock141Value0 recoveredBlock141Value1 recoveredBlock141Value2 recoveredBlock141Value3 recoveredBlock141Value4 recoveredBlock141Value5 recoveredBlock141Value6 recoveredBlock141Value7 recoveredBlock141Value8 recoveredBlock141Value9 recoveredBlock141Value10 recoveredBlock141Value11 |
    recoveredBlock141Value0 := recoveredArg1.
    recoveredBlock141Value1 := recoveredLocal1.
    recoveredBlock141Value2 := RBExtendedPrimitive.
    recoveredBlock141Value3 := (self) actionKey.
    recoveredBlock141Value4 := (recoveredBlock141Value2) getStringForActionKey: (recoveredBlock141Value3).
    (recoveredBlock141Value0) setAcceleratorAt: (recoveredBlock141Value1) to: (nil) text: (recoveredBlock141Value4).
    recoveredBlock141Value5 := recoveredArg2.
    recoveredBlock141Value6 := (recoveredBlock141Value5) widgetKeyActions.
    recoveredBlock141Value7 := recoveredArg2.
    recoveredBlock141Value8 := (recoveredBlock141Value7) shell.
    recoveredBlock141Value9 := [
    | recoveredBlock141Block175Local1 recoveredBlock141Block175Value0 recoveredBlock141Block175Value1 recoveredBlock141Block175Value2 recoveredBlock141Block175Value3 recoveredBlock141Block175Value4 recoveredBlock141Block175Value5 recoveredBlock141Block175Value6 recoveredBlock141Block175Value7 recoveredBlock141Block175Value8 recoveredBlock141Block175Value9 |
    recoveredBlock141Block175Value0 := Dictionary.
    recoveredBlock141Block175Value1 := (recoveredBlock141Block175Value0) new.
    recoveredBlock141Block175Local1 := recoveredBlock141Block175Value1.
    recoveredBlock141Block175Value2 := recoveredBlock141Block175Local1.
    recoveredBlock141Block175Value3 := (self) actionKey.
    recoveredBlock141Block175Value4 := recoveredLocal1.
    (recoveredBlock141Block175Value2) at: (recoveredBlock141Block175Value3) put: (recoveredBlock141Block175Value4).
    recoveredBlock141Block175Value5 := recoveredArg2.
    recoveredBlock141Block175Value6 := recoveredBlock141Block175Local1.
    recoveredBlock141Block175Value7 := recoveredArg2.
    recoveredBlock141Block175Value8 := (recoveredBlock141Block175Value7) shell.
    recoveredBlock141Block175Value9 := (recoveredBlock141Block175Value5) setActionDict: (recoveredBlock141Block175Value6) forWidget: (recoveredBlock141Block175Value8).
    recoveredBlock141Block175Value9
].
    recoveredBlock141Value10 := [:recoveredBlock141Block208Arg1 | 
    | recoveredBlock141Block208Value0 recoveredBlock141Block208Value1 recoveredBlock141Block208Value2 recoveredBlock141Block208Value3 |
    recoveredBlock141Block208Value0 := recoveredBlock141Block208Arg1.
    recoveredBlock141Block208Value1 := actionKey.
    recoveredBlock141Block208Value2 := recoveredLocal1.
    recoveredBlock141Block208Value3 := (recoveredBlock141Block208Value0) at: (recoveredBlock141Block208Value1) put: (recoveredBlock141Block208Value2).
    recoveredBlock141Block208Value3
].
    recoveredBlock141Value11 := (recoveredBlock141Value6) at: (recoveredBlock141Value8) ifAbsent: (recoveredBlock141Value9) ifPresent: (recoveredBlock141Value10).
    recoveredBlock141Value11
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) notNil: (recoveredStack1).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

