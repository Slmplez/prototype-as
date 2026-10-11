"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000120; bytecode file offset 0x7c350"
!CommonWidgetsEmulated class methodsFor: 'recovered'!
_PRAGMA_NlsCatCW
    ^self
! !

"winsys.ic method 0x20020650; bytecode file offset 0x9c844"
!CommonWidgetsEmulated class methodsFor: 'recovered'!
packagerIncludeDoitMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := CwAppContext.
    recoveredValue4 := (recoveredValue3) class.
    recoveredValue5 := (recoveredValue4) >> ('initializeSystem').
    (recoveredValue2) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := CgScreen.
    recoveredValue8 := (recoveredValue7) class.
    recoveredValue9 := (recoveredValue8) >> ('bitmapPath:').
    (recoveredValue6) add: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := CommonWidgets.
    recoveredValue12 := (recoveredValue11) class.
    recoveredValue13 := (recoveredValue12) >> ('reinitialize').
    (recoveredValue10) add: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := CwWidget.
    recoveredValue16 := (recoveredValue15) class.
    recoveredValue17 := (recoveredValue16) >> ('strictClipping').
    (recoveredValue14) add: (recoveredValue17).
    ^recoveredValue1
! !

"winsys.ic method 0x20026ed4; bytecode file offset 0xa30c0"
!CommonWidgetsEmulated class methodsFor: 'recovered'!
packagerIncludeSelectors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := CwConstants.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12Stack5 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) key.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) size.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack3 := 3.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) > (recoveredBlock12Stack3).
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 30] ifFalse: [recoveredBlock12PC := 61].
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) key.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack3 := 1.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack4 := 3.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) copyFrom: (recoveredBlock12Stack3) to: (recoveredBlock12Stack4).
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack3 := 'XmN'.
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) = (recoveredBlock12Stack3).
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 44] ifFalse: [recoveredBlock12PC := 61].
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) value.
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isSymbol.
            recoveredBlock12PC := 49.
        ].
        recoveredBlock12Step = 49 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 52] ifFalse: [recoveredBlock12PC := 61].
        ].
        recoveredBlock12Step = 52 ifTrue: [
            recoveredBlock12PC := 53.
        ].
        recoveredBlock12Step = 53 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 56.
        ].
        recoveredBlock12Step = 56 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 57.
        ].
        recoveredBlock12Step = 57 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) value.
            recoveredBlock12PC := 59.
        ].
        recoveredBlock12Step = 59 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 61.
        ].
        recoveredBlock12Step = 61 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) associationsDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"winsys.ic method 0x200378e8; bytecode file offset 0xb3b44"
!CommonWidgetsEmulated class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PTR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '9635'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'Default'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'CwAppContext'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) initializeToNilClassVariable: (recoveredStack2) inClassNamed: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block280093c4Arg1 | 
    | block280093c4Value0 block280093c4Value1 block280093c4Value2 |
    block280093c4Value0 := block280093c4Arg1.
    block280093c4Value1 := (block280093c4Value0) reductionPolicy.
    block280093c4Value2 := (block280093c4Value1) isRuntimeReductionPolicy.
    block280093c4Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := [:block280093e8Arg1 | 
    | block280093e8Value0 block280093e8Value1 block280093e8Value2 block280093e8Value3 block280093e8Value4 block280093e8Value5 block280093e8Value6 block280093e8Value7 block280093e8Value8 |
    block280093e8Value0 := block280093e8Arg1.
    (block280093e8Value0) ignoreNoImplementorErrorsForMessageSend: ('isPopupMenu') inClassMethod: ('cleanUpBeforeWalkback') inClassNamed: ('CwBasicWidget').
    block280093e8Value1 := block280093e8Arg1.
    (block280093e8Value1) ignoreNoImplementorErrorsForMessageSend: ('menuHistory:') inMethod: ('callActivateCallback:') inClassNamed: ('CwDrawnButton').
    block280093e8Value2 := block280093e8Arg1.
    (block280093e8Value2) ignoreNoImplementorErrorsForMessageSend: ('mask') inMethod: ('processMnemonicsAndAccelerators:excluding:') inClassNamed: ('CwLabel').
    block280093e8Value3 := block280093e8Arg1.
    (block280093e8Value3) ignoreNoImplementorErrorsForMessageSend: ('mask') inMethod: ('updateAccelerator') inClassNamed: ('CwLabel').
    block280093e8Value4 := block280093e8Arg1.
    (block280093e8Value4) ignoreNoImplementorErrorsForMessageSend: ('isBarMenu') inMethod: ('insertChild:') inClassNamed: ('CwMainWindow').
    block280093e8Value5 := block280093e8Arg1.
    (block280093e8Value5) ignoreNoImplementorErrorsForMessageSend: ('isBarMenu') inMethod: ('isValidWorkWindow:') inClassNamed: ('CwMainWindow').
    block280093e8Value6 := block280093e8Arg1.
    (block280093e8Value6) ignoreNoImplementorErrorsForMessageSend: ('menuHistory:') inMethod: ('callActivateCallback:') inClassNamed: ('CwPushButton').
    block280093e8Value7 := block280093e8Arg1.
    block280093e8Value8 := (block280093e8Value7) ignoreNoImplementorErrorsForMessageSend: ('entry:clientData:callData:') inMethod: ('callActivateCallback:') inClassNamed: ('CwPushButton').
    block280093e8Value8
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := [:block2800940cArg1 | 
    nil
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) condition: (recoveredStack2) ifTrue: (recoveredStack3) ifFalse: (recoveredStack4).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRunningImage.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 'ActivitySemaphore'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := 'Semaphore new'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack4 := 'CwAppContext'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) initializeClassVariable: (recoveredStack2) to: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := 'AsyncIOActive'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := 'CwAppContext asyncIOActive'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack4 := 'CwAppContext'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) initializeClassVariable: (recoveredStack2) to: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := 'LargeText'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := 'CwText largeText'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack4 := 'CwText'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) initializeClassVariable: (recoveredStack2) to: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

