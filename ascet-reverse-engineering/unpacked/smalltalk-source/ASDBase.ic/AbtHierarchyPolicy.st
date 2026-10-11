"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20041964; bytecode file offset 0x93e414"
!AbtHierarchyPolicy methodsFor: 'recovered'!
leftMargin
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := widgetHierarchyPolicy.
    recoveredValue1 := (recoveredValue0) leftMargin.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004197c; bytecode file offset 0x93e414"
!AbtHierarchyPolicy methodsFor: 'recovered'!
lines
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := widgetHierarchyPolicy.
    recoveredValue1 := (recoveredValue0) lines.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041994; bytecode file offset 0x93e414"
!AbtHierarchyPolicy methodsFor: 'recovered'!
indentationWidth
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := widgetHierarchyPolicy.
    recoveredValue1 := (recoveredValue0) indentationWidth.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041a9c; bytecode file offset 0x93e414"
!AbtHierarchyPolicy methodsFor: 'recovered'!
rightMargin
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := widgetHierarchyPolicy.
    recoveredValue1 := (recoveredValue0) rightMargin.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c1f84; bytecode file offset 0x9beac8"
!AbtHierarchyPolicy methodsFor: 'recovered'!
widgetHierarchyPolicy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    widgetHierarchyPolicy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d62fc; bytecode file offset 0x9d3134"
!AbtHierarchyPolicy methodsFor: 'recovered'!
initialize
    super initialize.
    (self) initializeWidgetHierarchyPolicy.
    ^self
! !

"ASDBase.ic method 0x20105e00; bytecode file offset 0xa026d0"
!AbtHierarchyPolicy methodsFor: 'recovered'!
widgetHierarchyPolicy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetHierarchyPolicy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initializeWidgetHierarchyPolicy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := widgetHierarchyPolicy.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010b310; bytecode file offset 0xa07bd4"
!AbtHierarchyPolicy methodsFor: 'recovered'!
initializeWidgetHierarchyPolicy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) widgetHierarchyPolicyClass.
    recoveredValue2 := (recoveredValue1) default.
    widgetHierarchyPolicy := recoveredValue2.
    recoveredValue3 := widgetHierarchyPolicy.
    (recoveredValue3) lines: (true).
    ^self
! !

"ASDBase.ic method 0x2010cbdc; bytecode file offset 0xa094d8"
!AbtHierarchyPolicy methodsFor: 'recovered'!
lines: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := widgetHierarchyPolicy.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) lines: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) signalEvent: ('linesChanged') with: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010cbf0; bytecode file offset 0xa094d8"
!AbtHierarchyPolicy methodsFor: 'recovered'!
leftMargin: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := widgetHierarchyPolicy.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) leftMargin: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) signalEvent: ('leftMarginChanged') with: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010cc04; bytecode file offset 0xa094d8"
!AbtHierarchyPolicy methodsFor: 'recovered'!
indentationWidth: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := widgetHierarchyPolicy.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) indentationWidth: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) signalEvent: ('indentationWidthChanged') with: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010cc18; bytecode file offset 0xa094d8"
!AbtHierarchyPolicy methodsFor: 'recovered'!
rightMargin: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := widgetHierarchyPolicy.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) rightMargin: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) signalEvent: ('rightMarginChanged') with: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2019d454; bytecode file offset 0xa99d14"
!AbtHierarchyPolicy methodsFor: 'recovered'!
abtPrimitiveCloneWithRecursionSet: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := widgetHierarchyPolicy.
    recoveredLocal1 := recoveredValue0.
    widgetHierarchyPolicy := nil.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := super abtPrimitiveCloneWithRecursionSet: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    widgetHierarchyPolicy := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := widgetHierarchyPolicy.
    recoveredValue6 := (recoveredValue4) widgetHierarchyPolicy: (recoveredValue5).
    ^recoveredValue6
! !

