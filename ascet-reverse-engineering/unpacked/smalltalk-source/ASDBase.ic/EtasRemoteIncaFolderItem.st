"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200228b0; bytecode file offset 0x92209c"
!EtasRemoteIncaFolderItem methodsFor: 'recovered'!
iconName
    ^'GeneralFolderClosed'
! !

"ASDBase.ic method 0x20042854; bytecode file offset 0x93f170"
!EtasRemoteIncaFolderItem methodsFor: 'recovered'!
expandedIconName
    | recoveredValue0 |
    recoveredValue0 := ('GeneralFolderOpened') asString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007518c; bytecode file offset 0x9757c8"
!EtasRemoteIncaFolderItem methodsFor: 'recovered'!
isFolder
    ^true
! !

"ASDBase.ic method 0x20494e64; bytecode file offset 0xd9176c"
!EtasRemoteIncaFolderItem methodsFor: 'recovered'!
initWithWrapper: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    super initWithWrapper: (recoveredValue0).
    recoveredValue1 := (self) wrapper.
    recoveredValue2 := (recoveredValue1) getAllIncaSubFolders.
    recoveredValue3 := (recoveredValue2) getData.
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Local1 recoveredBlock16Local2 recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 recoveredBlock16Value6 recoveredBlock16Value7 recoveredBlock16Value8 recoveredBlock16Value9 recoveredBlock16Value10 |
    recoveredBlock16Value0 := OleAutomationObject.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (recoveredBlock16Value1) pdispVal.
    recoveredBlock16Value3 := (recoveredBlock16Value0) forDispatch: (recoveredBlock16Value2).
    recoveredBlock16Local1 := recoveredBlock16Value3.
    recoveredBlock16Value4 := ASDIncaApiWrapperIncaFolder.
    recoveredBlock16Value5 := (recoveredBlock16Value4) new.
    recoveredBlock16Value6 := recoveredBlock16Value5.
    recoveredBlock16Local2 := recoveredBlock16Value6.
    recoveredBlock16Value7 := recoveredBlock16Local1.
    (recoveredBlock16Value5) automationObject: (recoveredBlock16Value7).
    recoveredBlock16Value8 := (self) childWrappers.
    recoveredBlock16Value9 := recoveredBlock16Local2.
    recoveredBlock16Value10 := (recoveredBlock16Value8) add: (recoveredBlock16Value9).
    recoveredBlock16Value10
].
    (recoveredValue3) do: (recoveredValue5).
    recoveredValue6 := (self) wrapper.
    recoveredValue7 := (recoveredValue6) getAllComponents.
    recoveredValue8 := (recoveredValue7) getData.
    recoveredValue9 := recoveredValue8.
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Local1 recoveredBlock55Local2 recoveredBlock55Stack0 recoveredBlock55Stack1 recoveredBlock55Stack2 recoveredBlock55Stack3 recoveredBlock55Stack4 recoveredBlock55PC recoveredBlock55Step recoveredBlock55Done recoveredBlock55Result |
    recoveredBlock55Stack0 := self.
    recoveredBlock55PC := 62.
    recoveredBlock55Done := false.
    [recoveredBlock55Done not] whileTrue: [
        recoveredBlock55Step := recoveredBlock55PC.
        recoveredBlock55Step = 62 ifTrue: [
            recoveredBlock55Stack1 := OleAutomationObject.
            recoveredBlock55PC := 64.
        ].
        recoveredBlock55Step = 64 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Arg1.
            recoveredBlock55PC := 65.
        ].
        recoveredBlock55Step = 65 ifTrue: [
            recoveredBlock55Stack2 := (recoveredBlock55Stack2) pdispVal.
            recoveredBlock55PC := 67.
        ].
        recoveredBlock55Step = 67 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) forDispatch: (recoveredBlock55Stack2).
            recoveredBlock55PC := 69.
        ].
        recoveredBlock55Step = 69 ifTrue: [
            recoveredBlock55Local1 := recoveredBlock55Stack1.
            recoveredBlock55PC := 70.
        ].
        recoveredBlock55Step = 70 ifTrue: [
            recoveredBlock55Stack1 := ASDIncaApiWrapperComponent.
            recoveredBlock55PC := 72.
        ].
        recoveredBlock55Step = 72 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) new.
            recoveredBlock55PC := 74.
        ].
        recoveredBlock55Step = 74 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Stack1.
            recoveredBlock55PC := 75.
        ].
        recoveredBlock55Step = 75 ifTrue: [
            recoveredBlock55Local2 := recoveredBlock55Stack2.
            recoveredBlock55PC := 76.
        ].
        recoveredBlock55Step = 76 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Local1.
            recoveredBlock55PC := 77.
        ].
        recoveredBlock55Step = 77 ifTrue: [
            (recoveredBlock55Stack1) automationObject: (recoveredBlock55Stack2).
            recoveredBlock55PC := 79.
        ].
        recoveredBlock55Step = 79 ifTrue: [
            recoveredBlock55Stack1 := recoveredBlock55Local2.
            recoveredBlock55PC := 80.
        ].
        recoveredBlock55Step = 80 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) isHardwareConfiguration.
            recoveredBlock55PC := 82.
        ].
        recoveredBlock55Step = 82 ifTrue: [
            (recoveredBlock55Stack1) ifTrue: [recoveredBlock55PC := 86] ifFalse: [recoveredBlock55PC := 98].
        ].
        recoveredBlock55Step = 86 ifTrue: [
            recoveredBlock55Stack1 := ASDIncaApiWrapperHardwareConfiguration.
            recoveredBlock55PC := 88.
        ].
        recoveredBlock55Step = 88 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) new.
            recoveredBlock55PC := 90.
        ].
        recoveredBlock55Step = 90 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Stack1.
            recoveredBlock55PC := 91.
        ].
        recoveredBlock55Step = 91 ifTrue: [
            recoveredBlock55Local2 := recoveredBlock55Stack2.
            recoveredBlock55PC := 92.
        ].
        recoveredBlock55Step = 92 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Local1.
            recoveredBlock55PC := 93.
        ].
        recoveredBlock55Step = 93 ifTrue: [
            (recoveredBlock55Stack1) automationObject: (recoveredBlock55Stack2).
            recoveredBlock55PC := 95.
        ].
        recoveredBlock55Step = 95 ifTrue: [
            recoveredBlock55PC := 113.
        ].
        recoveredBlock55Step = 98 ifTrue: [
            recoveredBlock55Stack1 := recoveredBlock55Local2.
            recoveredBlock55PC := 99.
        ].
        recoveredBlock55Step = 99 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) isProject.
            recoveredBlock55PC := 101.
        ].
        recoveredBlock55Step = 101 ifTrue: [
            (recoveredBlock55Stack1) ifTrue: [recoveredBlock55PC := 104] ifFalse: [recoveredBlock55PC := 113].
        ].
        recoveredBlock55Step = 104 ifTrue: [
            recoveredBlock55Stack1 := ASDIncaApiWrapperAsap2Project.
            recoveredBlock55PC := 106.
        ].
        recoveredBlock55Step = 106 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) new.
            recoveredBlock55PC := 108.
        ].
        recoveredBlock55Step = 108 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Stack1.
            recoveredBlock55PC := 109.
        ].
        recoveredBlock55Step = 109 ifTrue: [
            recoveredBlock55Local2 := recoveredBlock55Stack2.
            recoveredBlock55PC := 110.
        ].
        recoveredBlock55Step = 110 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Local1.
            recoveredBlock55PC := 111.
        ].
        recoveredBlock55Step = 111 ifTrue: [
            (recoveredBlock55Stack1) automationObject: (recoveredBlock55Stack2).
            recoveredBlock55PC := 113.
        ].
        recoveredBlock55Step = 113 ifTrue: [
            recoveredBlock55Stack1 := nil.
            recoveredBlock55PC := 114.
        ].
        recoveredBlock55Step = 114 ifTrue: [
            recoveredBlock55Stack2 := self.
            recoveredBlock55PC := 115.
        ].
        recoveredBlock55Step = 115 ifTrue: [
            recoveredBlock55Stack3 := recoveredBlock55Local2.
            recoveredBlock55PC := 116.
        ].
        recoveredBlock55Step = 116 ifTrue: [
            recoveredBlock55Stack2 := (recoveredBlock55Stack2) isAllowedChildComponent: (recoveredBlock55Stack3).
            recoveredBlock55PC := 118.
        ].
        recoveredBlock55Step = 118 ifTrue: [
            (recoveredBlock55Stack2) ifTrue: [recoveredBlock55PC := 122] ifFalse: [recoveredBlock55PC := 129].
        ].
        recoveredBlock55Step = 122 ifTrue: [
            recoveredBlock55PC := 123.
        ].
        recoveredBlock55Step = 123 ifTrue: [
            recoveredBlock55Stack1 := self.
            recoveredBlock55PC := 124.
        ].
        recoveredBlock55Step = 124 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) childWrappers.
            recoveredBlock55PC := 126.
        ].
        recoveredBlock55Step = 126 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Local2.
            recoveredBlock55PC := 127.
        ].
        recoveredBlock55Step = 127 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) add: (recoveredBlock55Stack2).
            recoveredBlock55PC := 129.
        ].
        recoveredBlock55Step = 129 ifTrue: [
            recoveredBlock55Result := recoveredBlock55Stack1.
            recoveredBlock55Done := true.
        ].
    ].
    recoveredBlock55Result
].
    (recoveredValue8) do: (recoveredValue10).
    ^self
! !

