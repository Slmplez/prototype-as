"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b9cc; bytecode file offset 0x908be4"
!ASDContainer class methodsFor: 'recovered'!
defaultItemLabel
    | recoveredValue0 |
    recoveredValue0 := (self) typeLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200196a0; bytecode file offset 0x92209c"
!ASDContainer class methodsFor: 'recovered'!
typeLabel
    ^'Container'
! !

"ASDBase.ic method 0x2001dbb8; bytecode file offset 0x92209c"
!ASDContainer class methodsFor: 'recovered'!
OldClass
    ^'SGNetwork'
! !

"ASDBase.ic method 0x200269f8; bytecode file offset 0x923928"
!ASDContainer class methodsFor: 'recovered'!
apiItemTypes
    ^#('Container')
! !

"ASDBase.ic method 0x20188cd0; bytecode file offset 0xa8559c"
!ASDContainer class methodsFor: 'recovered'!
mutateObjects: recoveredArg1 fromPlatform: recoveredArg2 named: recoveredArg3 withDefinition: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg4.
    recoveredBlock7Value2 := (self) fromArray: (recoveredBlock7Value0) with: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20484080; bytecode file offset 0xd80974"
!ASDContainer class methodsFor: 'recovered'!
fromArray: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) new.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (self) allInstVarNames.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [:recoveredBlock16Arg1 :recoveredBlock16Arg2 | 
    | recoveredBlock16Local1 recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16Stack5 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredLocal3.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Arg1.
            recoveredBlock16PC := 27.
        ].
        recoveredBlock16Step = 27 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) indexOf: (recoveredBlock16Stack3).
            recoveredBlock16PC := 28.
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Stack2.
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Local1 := recoveredBlock16Stack3.
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack3 := 0.
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) = (recoveredBlock16Stack3).
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 48] ifFalse: [recoveredBlock16PC := 36].
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal2.
            recoveredBlock16PC := 40.
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local1.
            recoveredBlock16PC := 41.
        ].
        recoveredBlock16Step = 41 ifTrue: [
            recoveredBlock16Stack3 := recoveredArg1.
            recoveredBlock16PC := 44.
        ].
        recoveredBlock16Step = 44 ifTrue: [
            recoveredBlock16Stack4 := recoveredBlock16Arg2.
            recoveredBlock16PC := 45.
        ].
        recoveredBlock16Step = 45 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) at: (recoveredBlock16Stack4).
            recoveredBlock16PC := 46.
        ].
        recoveredBlock16Step = 46 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) instVarAt: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 48.
        ].
        recoveredBlock16Step = 48 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    | recoveredBlock56Value0 |
    recoveredBlock56Value0 := recoveredLocal2.
    ^recoveredBlock56Value0
].
    recoveredValue6 := (recoveredValue4) at: ('complexVariables') ifAbsent: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) at: (recoveredValue8).
    recoveredValue10 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Stack0 recoveredBlock78Stack1 recoveredBlock78Stack2 recoveredBlock78Stack3 recoveredBlock78PC recoveredBlock78Step recoveredBlock78Done recoveredBlock78Result |
    recoveredBlock78Stack0 := self.
    recoveredBlock78PC := 84.
    recoveredBlock78Done := false.
    [recoveredBlock78Done not] whileTrue: [
        recoveredBlock78Step := recoveredBlock78PC.
        recoveredBlock78Step = 84 ifTrue: [
            recoveredBlock78Stack1 := nil.
            recoveredBlock78PC := 85.
        ].
        recoveredBlock78Step = 85 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Arg1.
            recoveredBlock78PC := 86.
        ].
        recoveredBlock78Step = 86 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) isCodeNode.
            recoveredBlock78PC := 88.
        ].
        recoveredBlock78Step = 88 ifTrue: [
            (recoveredBlock78Stack2) ifTrue: [recoveredBlock78PC := 111] ifFalse: [recoveredBlock78PC := 92].
        ].
        recoveredBlock78Step = 92 ifTrue: [
            recoveredBlock78PC := 93.
        ].
        recoveredBlock78Step = 93 ifTrue: [
            recoveredBlock78Stack1 := nil.
            recoveredBlock78PC := 94.
        ].
        recoveredBlock78Step = 94 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Arg1.
            recoveredBlock78PC := 95.
        ].
        recoveredBlock78Step = 95 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) sgClassKey.
            recoveredBlock78PC := 97.
        ].
        recoveredBlock78Step = 97 ifTrue: [
            (recoveredBlock78Stack2 == nil) ifTrue: [recoveredBlock78PC := 111] ifFalse: [recoveredBlock78PC := 100].
        ].
        recoveredBlock78Step = 100 ifTrue: [
            recoveredBlock78PC := 101.
        ].
        recoveredBlock78Step = 101 ifTrue: [
            recoveredBlock78Stack1 := recoveredLocal2.
            recoveredBlock78PC := 104.
        ].
        recoveredBlock78Step = 104 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) componentProxies.
            recoveredBlock78PC := 106.
        ].
        recoveredBlock78Step = 106 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Arg1.
            recoveredBlock78PC := 107.
        ].
        recoveredBlock78Step = 107 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) sgClassKey.
            recoveredBlock78PC := 109.
        ].
        recoveredBlock78Step = 109 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) add: (recoveredBlock78Stack2).
            recoveredBlock78PC := 111.
        ].
        recoveredBlock78Step = 111 ifTrue: [
            recoveredBlock78Result := recoveredBlock78Stack1.
            recoveredBlock78Done := true.
        ].
    ].
    recoveredBlock78Result
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (recoveredValue11) dbObject.
    recoveredValue13 := (self) className.
    (recoveredValue12) className: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    ^recoveredValue14
! !

