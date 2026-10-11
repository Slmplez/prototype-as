"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200726e0; bytecode file offset 0x96f1c4"
!RBDBObjectFiler class methodsFor: 'recovered'!
getFormat
    ^2
! !

"ASDBase.ic method 0x200742d4; bytecode file offset 0x970bc8"
!RBDBObjectFiler class methodsFor: 'recovered'!
version
    ^7
! !

"ASDBase.ic method 0x20084134; bytecode file offset 0x9809e8"
!RBDBObjectFiler class methodsFor: 'recovered'!
versionCanBeLoaded: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) = (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20084148; bytecode file offset 0x9809fc"
!RBDBObjectFiler class methodsFor: 'recovered'!
versionHasDllInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) = (6).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20152cc4; bytecode file offset 0xa4f584"
!RBDBObjectFiler class methodsFor: 'recovered'!
versionCanBeDescribed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: (3) with: (4) with: (5) with: (6).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) includes: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20276c34; bytecode file offset 0xb73508"
!RBDBObjectFiler class methodsFor: 'recovered'!
initErrorClass: recoveredArg1
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
            recoveredStack2 := 'fileOutSurrogate:'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesSelector: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'fileInActivate:'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesSelector: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ErrorClasses.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) subclasses.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := (self) initErrorClass: (recoveredBlock28Value0).
    recoveredBlock28Value1
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204060b0; bytecode file offset 0xd029ec"
!RBDBObjectFiler class methodsFor: 'recovered'!
initSingularIds
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := IdentityDictionary.
    recoveredValue1 := (recoveredValue0) new: (31).
    SingularObjects := recoveredValue1.
    recoveredValue2 := SingularObjects.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: (true) put: (2).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: (false) put: (3).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := Metaclass.
    (recoveredValue5) at: (recoveredValue6) put: (4).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := Smalltalk.
    (recoveredValue7) at: (recoveredValue8) put: (5).
    recoveredValue9 := Processor.
    (recoveredValue2) at: (recoveredValue9) put: (8).
    recoveredValue10 := Array.
    recoveredValue11 := NumPredefinedIds.
    recoveredValue12 := (recoveredValue10) new: (recoveredValue11).
    SingularNames := recoveredValue12.
    recoveredValue13 := SingularNames.
    recoveredValue14 := recoveredValue13.
    (recoveredValue14) at: (1) put: ('nil').
    recoveredValue15 := recoveredValue13.
    (recoveredValue15) at: (2) put: ('true').
    recoveredValue16 := recoveredValue13.
    (recoveredValue16) at: (3) put: ('false').
    recoveredValue17 := recoveredValue13.
    (recoveredValue17) at: (4) put: ('Metaclass').
    recoveredValue18 := recoveredValue13.
    (recoveredValue18) at: (5) put: ('Smalltalk').
    (recoveredValue13) at: (8) put: ('Processor').
    ^self
! !

"ASDBase.ic method 0x204cc960; bytecode file offset 0xdc92a4"
!RBDBObjectFiler class methodsFor: 'recovered'!
initialize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
    recoveredValue0 := Character.
    recoveredValue1 := (recoveredValue0) value: (27).
    Seal := recoveredValue1.
    recoveredValue2 := (0) asCharacter.
    NUL := recoveredValue2.
    recoveredValue3 := (1) asCharacter.
    TagClass := recoveredValue3.
    recoveredValue4 := (2) asCharacter.
    TagMetaClass := recoveredValue4.
    recoveredValue5 := (1) asCharacter.
    RepFixedPointers := recoveredValue5.
    recoveredValue6 := (2) asCharacter.
    RepVariablePointers := recoveredValue6.
    recoveredValue7 := (3) asCharacter.
    RepVariableBytes := recoveredValue7.
    ClassIdSymbol := 1.
    ClassIdDBSymbol := 2.
    IdNUL := 0.
    IdNil := 1.
    recoveredValue8 := Set.
    recoveredValue9 := (recoveredValue8) new.
    SingularClasses := recoveredValue9.
    recoveredValue10 := SingularClasses.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := UndefinedObject.
    (recoveredValue11) add: (recoveredValue12).
    recoveredValue13 := recoveredValue10.
    recoveredValue14 := True.
    (recoveredValue13) add: (recoveredValue14).
    recoveredValue15 := recoveredValue10.
    recoveredValue16 := False.
    (recoveredValue15) add: (recoveredValue16).
    recoveredValue17 := Metaclass.
    recoveredValue18 := (recoveredValue17) class.
    (recoveredValue10) add: (recoveredValue18).
    NumPredefinedIds := 11.
    (self) initSingularIds.
    recoveredValue19 := Set.
    recoveredValue20 := (recoveredValue19) new.
    TerminalClasses := recoveredValue20.
    recoveredValue21 := TerminalClasses.
    recoveredValue22 := recoveredValue21.
    recoveredValue23 := SingularClasses.
    (recoveredValue22) addAll: (recoveredValue23).
    recoveredValue24 := Integer.
    recoveredValue25 := (recoveredValue24) withAllSubclasses.
    (recoveredValue21) addAll: (recoveredValue25).
    recoveredValue26 := Set.
    recoveredValue27 := (recoveredValue26) new.
    ErrorClasses := recoveredValue27.
    recoveredValue28 := [:recoveredBlock119Arg1 | 
    | recoveredBlock119Stack0 recoveredBlock119Stack1 recoveredBlock119Stack2 recoveredBlock119Stack3 recoveredBlock119Stack4 recoveredBlock119Stack5 recoveredBlock119PC recoveredBlock119Step recoveredBlock119Done recoveredBlock119Result |
    recoveredBlock119Stack0 := self.
    recoveredBlock119PC := 126.
    recoveredBlock119Done := false.
    [recoveredBlock119Done not] whileTrue: [
        recoveredBlock119Step := recoveredBlock119PC.
        recoveredBlock119Step = 126 ifTrue: [
            recoveredBlock119Stack1 := nil.
            recoveredBlock119PC := 127.
        ].
        recoveredBlock119Step = 127 ifTrue: [
            recoveredBlock119Stack2 := Smalltalk.
            recoveredBlock119PC := 129.
        ].
        recoveredBlock119Step = 129 ifTrue: [
            recoveredBlock119Stack3 := recoveredBlock119Arg1.
            recoveredBlock119PC := 130.
        ].
        recoveredBlock119Step = 130 ifTrue: [
            recoveredBlock119Stack4 := [].
            recoveredBlock119PC := 132.
        ].
        recoveredBlock119Step = 132 ifTrue: [
            recoveredBlock119Stack2 := (recoveredBlock119Stack2) at: (recoveredBlock119Stack3) ifAbsent: (recoveredBlock119Stack4).
            recoveredBlock119PC := 134.
        ].
        recoveredBlock119Step = 134 ifTrue: [
            recoveredBlock119Stack3 := recoveredBlock119Stack2.
            recoveredBlock119PC := 135.
        ].
        recoveredBlock119Step = 135 ifTrue: [
            recoveredLocal1 := recoveredBlock119Stack3.
            recoveredBlock119PC := 138.
        ].
        recoveredBlock119Step = 138 ifTrue: [
            (recoveredBlock119Stack2 == nil) ifTrue: [recoveredBlock119PC := 149] ifFalse: [recoveredBlock119PC := 142].
        ].
        recoveredBlock119Step = 142 ifTrue: [
            recoveredBlock119PC := 143.
        ].
        recoveredBlock119Step = 143 ifTrue: [
            recoveredBlock119Stack1 := self.
            recoveredBlock119PC := 144.
        ].
        recoveredBlock119Step = 144 ifTrue: [
            recoveredBlock119Stack2 := recoveredLocal1.
            recoveredBlock119PC := 147.
        ].
        recoveredBlock119Step = 147 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) initErrorClass: (recoveredBlock119Stack2).
            recoveredBlock119PC := 149.
        ].
        recoveredBlock119Step = 149 ifTrue: [
            recoveredBlock119Result := recoveredBlock119Stack1.
            recoveredBlock119Done := true.
        ].
    ].
    recoveredBlock119Result
].
    (#('CompiledMethod' 'Context' 'Process' 'SortedCollection')) do: (recoveredValue28).
    ^self
! !

