"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000dce0; bytecode file offset 0x90ab8c"
!SGBdlDirectOutputPort methodsFor: 'recovered'!
buildMdlAccessOp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) buildMdl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ee950; bytecode file offset 0x9eb234"
!SGBdlDirectOutputPort methodsFor: 'recovered'!
dataModelRef
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) block.
    recoveredValue1 := (recoveredValue0) dataModelRef.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) sgClass.
    recoveredValue4 := (self) aliasName.
    recoveredValue5 := (recoveredValue3) elementAliasName: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20171b70; bytecode file offset 0xa6e440"
!SGBdlDirectOutputPort methodsFor: 'recovered'!
buildMdl
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) block.
    (recoveredValue0) buildMdl.
    recoveredValue1 := (self) mdlBuilder.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) block.
    recoveredValue4 := (recoveredValue3) source.
    (recoveredValue2) source: (recoveredValue4).
    recoveredValue5 := (self) mdlName.
    (recoveredValue1) directAccessId: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20205ec8; bytecode file offset 0xb027bc"
!SGBdlDirectOutputPort methodsFor: 'recovered'!
mdlName
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataModelRef.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'element with alias name of block <'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) block.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataModelRef.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := '>. Advice: save model again'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) fatalExpect: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

