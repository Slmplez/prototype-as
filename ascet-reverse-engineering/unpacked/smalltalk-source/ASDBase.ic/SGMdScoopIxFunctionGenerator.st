"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200038a0; bytecode file offset 0x90206c"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
mdlAbstractComponentInterface: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200057a0; bytecode file offset 0x90206c"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
method: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2001cf70; bytecode file offset 0x92209c"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
inactiveAppMode
    ^'inactive'
! !

"ASDBase.ic method 0x20028b94; bytecode file offset 0x934580"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
scoopIXFunctionElementsInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sixAdapter.
    recoveredValue1 := (recoveredValue0) scoopIXFunctionElementsInfo.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b254; bytecode file offset 0x934580"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
scoopixContentsOrFilename
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (recoveredValue0) scoopixContentsOrFilename.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b304; bytecode file offset 0x934580"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
currentMdlComponentInterface
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentMdlComponent.
    recoveredValue1 := (recoveredValue0) interface.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ede4; bytecode file offset 0x934580"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
fileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentMdlComponentInterface.
    recoveredValue1 := (recoveredValue0) fileName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035f44; bytecode file offset 0x934580"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
projectInterface
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) importsTable.
    recoveredValue1 := (recoveredValue0) mdlProjectInterface.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055980; bytecode file offset 0x952a9c"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
visitMdlNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlAcceptNodeVisitor: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006829c; bytecode file offset 0x965b90"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
sixAdapter
    | recoveredValue0 |
    recoveredValue0 := sixAdapter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069cd0; bytecode file offset 0x966bdc"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
currentMdlComponent
    | recoveredValue0 |
    recoveredValue0 := currentMdlComponent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078d24; bytecode file offset 0x9757c8"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
isEnabled
    ^true
! !

"ASDBase.ic method 0x20084da4; bytecode file offset 0x981ca4"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
mdlProjectInterface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) mdlModuleInterface: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20091790; bytecode file offset 0x98e0cc"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
initialize
    super initialize.
    ^self
! !

"ASDBase.ic method 0x200a9828; bytecode file offset 0x9a60e4"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
currentGeneratedModuleCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) scoopIXFunctionElementsInfo.
    (recoveredValue0) scoopIXFunctionElements: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bfdec; bytecode file offset 0x9bd228"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
sixAdapter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sixAdapter := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1140; bytecode file offset 0x9bdf14"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
currentMdlComponent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentMdlComponent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e97c4; bytecode file offset 0x9e6084"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
mdlClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) currentMdlComponent: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) interface.
    (self) anyMdlNode: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201dad6c; bytecode file offset 0xad763c"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
mdlModuleInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) sixAdapter.
    recoveredValue1 := (recoveredValue0) sixGenerator.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) mdlInterface: (recoveredValue2).
    recoveredValue3 := (self) currentMdlComponent.
    recoveredValue4 := (recoveredValue3) allMethodsSorted.
    recoveredValue5 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (self) anyMdlNode: (recoveredBlock13Value0).
    recoveredBlock13Value1
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x202b7424; bytecode file offset 0xbb3d0c"
!SGMdScoopIxFunctionGenerator methodsFor: 'recovered'!
process: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := SGMdScoopIXFunctionElement.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) declaration.
    recoveredValue3 := (recoveredValue0) create: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := (self) sixAdapter.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) sortedUsedRcvMsgsRecursive.
    recoveredValue9 := (recoveredValue6) filterMessageAccesses: (recoveredValue8).
    (recoveredValue5) rcvMessages: (recoveredValue9).
    recoveredValue10 := recoveredValue4.
    recoveredValue11 := (self) sixAdapter.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) sortedUsedSndMsgsRecursive.
    recoveredValue14 := (recoveredValue11) filterMessageAccesses: (recoveredValue13).
    (recoveredValue10) sndMessages: (recoveredValue14).
    recoveredValue15 := recoveredValue4.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) declaration.
    recoveredValue18 := (recoveredValue17) analysisInfo.
    recoveredValue19 := (recoveredValue18) calledByTasks.
    (recoveredValue15) taskList: (recoveredValue19).
    recoveredValue20 := (self) sixAdapter.
    recoveredValue21 := recoveredLocal1.
    (recoveredValue20) genSixFunctionElement: (recoveredValue21).
    ^self
! !

