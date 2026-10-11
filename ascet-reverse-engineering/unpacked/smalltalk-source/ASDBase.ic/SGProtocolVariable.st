"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20062708; bytecode file offset 0x95f8b0"
!SGProtocolVariable methodsFor: 'recovered'!
aliasName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) elementName.
    recoveredValue1 := (self) sgClassLabel.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006f788; bytecode file offset 0x96c1f4"
!SGProtocolVariable methodsFor: 'recovered'!
fieldName
    | recoveredValue0 |
    recoveredValue0 := fieldName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c5d70; bytecode file offset 0x9c2804"
!SGProtocolVariable methodsFor: 'recovered'!
setFieldName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fieldName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fa74c; bytecode file offset 0x9f7070"
!SGProtocolVariable methodsFor: 'recovered'!
initialize
    super initialize.
    (self) setFieldName: ('unused').
    ^self
! !

"ASDBase.ic method 0x20164d58; bytecode file offset 0xa61618"
!SGProtocolVariable methodsFor: 'recovered'!
isSameVarAs: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultGlobalLabel.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultGlobalLabel.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) sameType: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

