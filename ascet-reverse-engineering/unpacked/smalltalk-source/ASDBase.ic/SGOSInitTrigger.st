"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022484; bytecode file offset 0x92209c"
!SGOSInitTrigger methodsFor: 'recovered'!
triggerType
    ^''
! !

"ASDBase.ic method 0x20048eec; bytecode file offset 0x9457b8"
!SGOSInitTrigger methodsFor: 'recovered'!
initPriority
    priority := nil.
    ^self
! !

"ASDBase.ic method 0x20071b24; bytecode file offset 0x96e578"
!SGOSInitTrigger methodsFor: 'recovered'!
priority
    ^0
! !

"ASDBase.ic method 0x200773e4; bytecode file offset 0x9757c8"
!SGOSInitTrigger methodsFor: 'recovered'!
isInitTrigger
    ^true
! !

"ASDBase.ic method 0x2007c864; bytecode file offset 0x97c330"
!SGOSInitTrigger methodsFor: 'recovered'!
supportsPriority
    ^false
! !

"ASDBase.ic method 0x2007cea4; bytecode file offset 0x97c330"
!SGOSInitTrigger methodsFor: 'recovered'!
supportsScheduling
    ^false
! !

"ASDBase.ic method 0x2007f8d4; bytecode file offset 0x97c330"
!SGOSInitTrigger methodsFor: 'recovered'!
supportsHooks
    ^false
! !

"ASDBase.ic method 0x200d83bc; bytecode file offset 0x9d4cb8"
!SGOSInitTrigger methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) openComplex: ('Init').
    (recoveredValue0) closeComplex.
    ^self
! !

"ASDBase.ic method 0x200dca70; bytecode file offset 0x9d933c"
!SGOSInitTrigger methodsFor: 'recovered'!
buildMdl: recoveredArg1 task: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) mdlAttributes: (recoveredValue0) task: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) initTask.
    ^self
! !

