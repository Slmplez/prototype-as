"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006e8b8; bytecode file offset 0x96b41c"
!RBUserQuestionMultiLine methodsFor: 'recovered'!
answerString
    | recoveredValue0 |
    recoveredValue0 := answerString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c4e68; bytecode file offset 0x9c1afc"
!RBUserQuestionMultiLine methodsFor: 'recovered'!
answerString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    answerString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x203ead2c; bytecode file offset 0xce7648"
!RBUserQuestionMultiLine methodsFor: 'recovered'!
dialog
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SCConfirm.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := ' - '.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) context.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 'Shikhar'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'Call_49581'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 recoveredBlock38Value6 recoveredBlock38Value7 recoveredBlock38Value8 recoveredBlock38Value9 recoveredBlock38Value10 recoveredBlock38Value11 recoveredBlock38Value12 recoveredBlock38Value13 recoveredBlock38Value14 recoveredBlock38Value15 |
    recoveredBlock38Value0 := CwReadOnlyMultiLineTextPrompter.
    recoveredBlock38Value1 := (recoveredBlock38Value0) new.
    recoveredBlock38Value2 := recoveredBlock38Value1.
    recoveredBlock38Value3 := (self) messageString.
    (recoveredBlock38Value2) messageString: (recoveredBlock38Value3).
    recoveredBlock38Value4 := recoveredBlock38Value1.
    recoveredBlock38Value5 := (self) answerString.
    (recoveredBlock38Value4) answerString: (recoveredBlock38Value5).
    recoveredBlock38Value6 := recoveredBlock38Value1.
    recoveredBlock38Value7 := recoveredLocal1.
    (recoveredBlock38Value6) title: (recoveredBlock38Value7).
    recoveredBlock38Value8 := recoveredBlock38Value1.
    recoveredBlock38Value9 := CgRGBColor.
    recoveredBlock38Value10 := OS.
    recoveredBlock38Value11 := ColorBtnface.
    recoveredBlock38Value12 := (recoveredBlock38Value10) getSysColor: (recoveredBlock38Value11).
    recoveredBlock38Value13 := (recoveredBlock38Value9) fromOSRGB: (recoveredBlock38Value12).
    (recoveredBlock38Value8) textBackgroundColor: (recoveredBlock38Value13).
    recoveredBlock38Value14 := (recoveredBlock38Value1) prompt.
    recoveredBlock38Value15 := (self) answer: (recoveredBlock38Value14).
    recoveredBlock38Value15
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) syncExecInUI: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) answer.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

