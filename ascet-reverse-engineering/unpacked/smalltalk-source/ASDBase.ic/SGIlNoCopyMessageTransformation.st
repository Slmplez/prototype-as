"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2008fa58; bytecode file offset 0x98c374"
!SGIlNoCopyMessageTransformation methodsFor: 'recovered'!
declareMessageMacroDecls
    | recoveredValue0 |
    recoveredValue0 := (self) elementList.
    (recoveredValue0) allowMacrosForMessageDecls: (true).
    ^self
! !

"ASDBase.ic method 0x200bd578; bytecode file offset 0x9b9e88"
!SGIlNoCopyMessageTransformation methodsFor: 'recovered'!
createMessageCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) msgCopy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) ileMsgCopyKey.
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201b37d4; bytecode file offset 0xab00d8"
!SGIlNoCopyMessageTransformation methodsFor: 'recovered'!
receiveMessageSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) receiver.
    recoveredValue3 := (recoveredValue2) errLabel.
    recoveredValue4 := TGTarget.
    recoveredValue5 := (recoveredValue4) messageUsageVariantNoCopy.
    recoveredValue6 := (recoveredValue5) asString.
    (recoveredValue0) ileWarningNo: (51) with: ('receive') with: (recoveredValue3) with: (recoveredValue6).
    recoveredValue7 := (self) ileBuilder.
    recoveredValue8 := (recoveredValue7) emptyStmnt.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201b3800; bytecode file offset 0xab00d8"
!SGIlNoCopyMessageTransformation methodsFor: 'recovered'!
sendMessageSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) receiver.
    recoveredValue3 := (recoveredValue2) errLabel.
    recoveredValue4 := TGTarget.
    recoveredValue5 := (recoveredValue4) messageUsageVariantNoCopy.
    recoveredValue6 := (recoveredValue5) asString.
    (recoveredValue0) ileWarningNo: (51) with: ('send') with: (recoveredValue3) with: (recoveredValue6).
    recoveredValue7 := (self) ileBuilder.
    recoveredValue8 := (recoveredValue7) emptyStmnt.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201e1114; bytecode file offset 0xadd9e4"
!SGIlNoCopyMessageTransformation methodsFor: 'recovered'!
directAccess: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super directAccess: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlNode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlMessage.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementList.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileElementKey.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) allowMacroDecl: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

