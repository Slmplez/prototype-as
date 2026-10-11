"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006544; bytecode file offset 0x902dfc"
!EtasHTMLHelp methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
htmlHelp: recoveredArg1 pszFile: recoveredArg2 uCommand: recoveredArg3 dwData: recoveredArg4
    ^self
! !

"ASDBase.ic method 0x20016058; bytecode file offset 0x92209c"
!EtasHTMLHelp methodsFor: 'recovered'!
platformFileExtension
    ^'chm'
! !

"ASDBase.ic method 0x20075fb4; bytecode file offset 0x9757c8"
!EtasHTMLHelp methodsFor: 'recovered'!
isEtasHTMLHelp
    ^true
! !

"ASDBase.ic method 0x2009b888; bytecode file offset 0x99814c"
!EtasHTMLHelp methodsFor: 'recovered'!
showHelpOnHelp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := HTMLNotSupported.
    recoveredValue2 := (recoveredValue0) message: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) prompt.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a2358; bytecode file offset 0x99ec1c"
!EtasHTMLHelp methodsFor: 'recovered'!
showTopicString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := HTMLNotSupported.
    recoveredValue2 := (recoveredValue0) message: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) prompt.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200aa850; bytecode file offset 0x9a7160"
!EtasHTMLHelp methodsFor: 'recovered'!
widget: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) osWidget.
    recoveredValue2 := (recoveredValue1) handle.
    (self) widgetHandle: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b8eb4; bytecode file offset 0x9b5768"
!EtasHTMLHelp methodsFor: 'recovered'!
examineResult: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := windowRect.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201186a8; bytecode file offset 0xa14f6c"
!EtasHTMLHelp methodsFor: 'recovered'!
platformClose
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetHandle.
    recoveredValue1 := (self) fileName.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (self) htmlHelp: (recoveredValue0) pszFile: (recoveredValue2) uCommand: (18) dwData: (0).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20180a74; bytecode file offset 0xa7d340"
!EtasHTMLHelp methodsFor: 'recovered'!
showContents
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) getCurrentWindow.
    recoveredValue0 := (self) widgetHandle.
    recoveredValue1 := (self) fileName.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (self) htmlHelp: (recoveredValue0) pszFile: (recoveredValue2) uCommand: (0) dwData: (0).
    recoveredValue4 := (self) examineResult: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20180aac; bytecode file offset 0xa7d378"
!EtasHTMLHelp methodsFor: 'recovered'!
showIndex
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) getCurrentWindow.
    recoveredValue0 := (self) widgetHandle.
    recoveredValue1 := (self) fileName.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (self) htmlHelp: (recoveredValue0) pszFile: (recoveredValue2) uCommand: (2) dwData: (0).
    recoveredValue4 := (self) examineResult: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2018d530; bytecode file offset 0xa89df8"
!EtasHTMLHelp methodsFor: 'recovered'!
getCurrentWindow
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSRect.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            windowRect := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := OSHwnd.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getForegroundWindow.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := windowRect.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getWindowRect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            windowRect := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025a988; bytecode file offset 0xb57254"
!EtasHTMLHelp methodsFor: 'recovered'!
showTopicId: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    (self) getCurrentWindow.
    recoveredValue0 := (self) widgetHandle.
    recoveredValue1 := (self) fileName.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := (self) htmlHelp: (recoveredValue0) pszFile: (recoveredValue2) uCommand: (0) dwData: (0).
    (self) examineResult: (recoveredValue3).
    recoveredValue4 := (self) widgetHandle.
    recoveredValue5 := (self) fileName.
    recoveredValue6 := (recoveredValue5) asPSZ.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) htmlHelp: (recoveredValue4) pszFile: (recoveredValue6) uCommand: (15) dwData: (recoveredValue7).
    recoveredValue9 := (self) examineResult: (recoveredValue8).
    ^recoveredValue9
! !

