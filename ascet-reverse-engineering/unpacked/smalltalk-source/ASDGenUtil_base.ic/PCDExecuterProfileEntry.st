"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x20000508; bytecode file offset 0xe6b4"
!PCDExecuterProfileEntry methodsFor: 'recovered'!
window
    | recoveredValue0 |
    recoveredValue0 := window.
    ^recoveredValue0
! !

"ASDGenUtil_base.ic method 0x20000534; bytecode file offset 0xe6d0"
!PCDExecuterProfileEntry methodsFor: 'recovered'!
menu
    | recoveredValue0 |
    recoveredValue0 := menu.
    ^recoveredValue0
! !

"ASDGenUtil_base.ic method 0x20000548; bytecode file offset 0xe6e4"
!PCDExecuterProfileEntry methodsFor: 'recovered'!
submenu
    | recoveredValue0 |
    recoveredValue0 := submenu.
    ^recoveredValue0
! !

"ASDGenUtil_base.ic method 0x2000055c; bytecode file offset 0xe700"
!PCDExecuterProfileEntry methodsFor: 'recovered'!
item
    | recoveredValue0 |
    recoveredValue0 := item.
    ^recoveredValue0
! !

"ASDGenUtil_base.ic method 0x20000578; bytecode file offset 0xe714"
!PCDExecuterProfileEntry methodsFor: 'recovered'!
icon
    | recoveredValue0 |
    recoveredValue0 := icon.
    ^recoveredValue0
! !

"ASDGenUtil_base.ic method 0x2000058c; bytecode file offset 0xe728"
!PCDExecuterProfileEntry methodsFor: 'recovered'!
description
    | recoveredValue0 |
    recoveredValue0 := description.
    ^recoveredValue0
! !

"ASDGenUtil_base.ic method 0x200005a8; bytecode file offset 0xe744"
!PCDExecuterProfileEntry methodsFor: 'recovered'!
enable
    | recoveredValue0 |
    recoveredValue0 := enable.
    ^recoveredValue0
! !

"ASDGenUtil_base.ic method 0x200005c4; bytecode file offset 0xe760"
!PCDExecuterProfileEntry methodsFor: 'recovered'!
key
    | recoveredValue0 |
    recoveredValue0 := key.
    ^recoveredValue0
! !

"ASDGenUtil_base.ic method 0x20000764; bytecode file offset 0xe904"
!PCDExecuterProfileEntry methodsFor: 'recovered'!
addExecutable: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := entries.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDGenUtil_base.ic method 0x20000904; bytecode file offset 0xeac8"
!PCDExecuterProfileEntry methodsFor: 'recovered'!
parse: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    executable := recoveredValue0.
    ^self
! !

"ASDGenUtil_base.ic method 0x20000e00; bytecode file offset 0xefa0"
!PCDExecuterProfileEntry methodsFor: 'recovered'!
enableInScope: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := enable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := enable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) executeInScope: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x2000186c; bytecode file offset 0xfa0c"
!PCDExecuterProfileEntry methodsFor: 'recovered'!
key: recoveredArg1 window: recoveredArg2 menu: recoveredArg3 item: recoveredArg4 icon: recoveredArg5 description: recoveredArg6 enable: recoveredArg7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    key := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    window := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    menu := recoveredValue2.
    submenu := ''.
    recoveredValue3 := recoveredArg4.
    item := recoveredValue3.
    recoveredValue4 := recoveredArg5.
    icon := recoveredValue4.
    recoveredValue5 := recoveredArg6.
    description := recoveredValue5.
    recoveredValue6 := recoveredArg7.
    enable := recoveredValue6.
    ^self
! !

"ASDGenUtil_base.ic method 0x2000189c; bytecode file offset 0xfa38"
!PCDExecuterProfileEntry methodsFor: 'recovered'!
key: recoveredArg1 window: recoveredArg2 menu: recoveredArg3 submenu: recoveredArg4 item: recoveredArg5 icon: recoveredArg6 description: recoveredArg7 enable: recoveredArg8
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    key := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    window := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    menu := recoveredValue2.
    recoveredValue3 := recoveredArg4.
    submenu := recoveredValue3.
    recoveredValue4 := recoveredArg5.
    item := recoveredValue4.
    recoveredValue5 := recoveredArg6.
    icon := recoveredValue5.
    recoveredValue6 := recoveredArg7.
    description := recoveredValue6.
    recoveredValue7 := recoveredArg8.
    enable := recoveredValue7.
    ^self
! !

"ASDGenUtil_base.ic method 0x20001e90; bytecode file offset 0x1003c"
!PCDExecuterProfileEntry methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := window.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) tab.
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := menu.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) tab.
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := item.
    (recoveredValue8) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) tab.
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := icon.
    recoveredValue13 := (recoveredValue12) printString.
    (recoveredValue11) nextPutAll: (recoveredValue13).
    (recoveredValue0) cr.
    ^self
! !

"ASDGenUtil_base.ic method 0x200042e4; bytecode file offset 0x124e0"
!PCDExecuterProfileEntry methodsFor: 'recovered'!
executeInScope: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := Log.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := Date.
    recoveredValue3 := (recoveredValue2) today.
    recoveredValue4 := (recoveredValue3) printString.
    (recoveredValue1) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) tab.
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := window.
    recoveredValue8 := (recoveredValue7) , (' ').
    recoveredValue9 := menu.
    recoveredValue10 := (recoveredValue8) , (recoveredValue9).
    recoveredValue11 := (recoveredValue10) , (' ').
    recoveredValue12 := item.
    recoveredValue13 := (recoveredValue11) , (recoveredValue12).
    recoveredValue14 := (recoveredValue13) , (' ').
    recoveredValue15 := description.
    recoveredValue16 := (recoveredValue14) , (recoveredValue15).
    (recoveredValue6) nextPutAll: (recoveredValue16).
    (recoveredValue0) cr.
    recoveredValue17 := recoveredArg1.
    super executeInScope: (recoveredValue17).
    recoveredValue18 := ('Kk') == ('Call_82706').
    recoveredLocal1 := true.
    recoveredValue19 := [
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 |
    recoveredBlock64Value0 := [
    | recoveredBlock64Block70Value0 recoveredBlock64Block70Value1 recoveredBlock64Block70Value2 |
    recoveredBlock64Block70Value0 := System.
    recoveredBlock64Block70Value1 := [
    | recoveredBlock64Block70Block78Value0 recoveredBlock64Block70Block78Value1 recoveredBlock64Block70Block78Value2 |
    recoveredBlock64Block70Block78Value0 := entries.
    recoveredBlock64Block70Block78Value1 := [:recoveredBlock64Block70Block78Block86Arg1 | 
    | recoveredBlock64Block70Block78Block86Value0 recoveredBlock64Block70Block78Block86Value1 recoveredBlock64Block70Block78Block86Value2 |
    recoveredBlock64Block70Block78Block86Value0 := recoveredBlock64Block70Block78Block86Arg1.
    recoveredBlock64Block70Block78Block86Value1 := recoveredArg1.
    recoveredBlock64Block70Block78Block86Value2 := (recoveredBlock64Block70Block78Block86Value0) executeInScope: (recoveredBlock64Block70Block78Block86Value1).
    recoveredBlock64Block70Block78Block86Value2
].
    recoveredBlock64Block70Block78Value2 := (recoveredBlock64Block70Block78Value0) do: (recoveredBlock64Block70Block78Value1).
    recoveredBlock64Block70Block78Value2
].
    recoveredBlock64Block70Value2 := (recoveredBlock64Block70Value0) showBusyCursorWhile: (recoveredBlock64Block70Value1).
    recoveredBlock64Block70Value2
].
    recoveredBlock64Value1 := [
    recoveredLocal1 := false.
    false
].
    recoveredBlock64Value2 := (recoveredBlock64Value0) ensure: (recoveredBlock64Value1).
    recoveredBlock64Value2
].
    (recoveredValue19) forkWithName: ('Executer').
    recoveredValue20 := CwAppContext.
    recoveredValue21 := (recoveredValue20) default.
    recoveredValue22 := [
    | recoveredBlock129Value0 |
    recoveredBlock129Value0 := recoveredLocal1.
    recoveredBlock129Value0
].
    (recoveredValue21) readAndDispatchAndSleepWhile: (recoveredValue22).
    recoveredValue23 := ZZZExecuterToolbox.
    (recoveredValue23) performCleanupAction.
    ^self
! !

