"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003e0f8; bytecode file offset 0x93bf94"
!ASDAbstractFileBasedOperation methodsFor: 'recovered'!
hostAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGHostAccess.
    recoveredValue1 := (recoveredValue0) instance.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005067c; bytecode file offset 0x94d048"
!ASDAbstractFileBasedOperation methodsFor: 'recovered'!
execute
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20065aac; bytecode file offset 0x963428"
!ASDAbstractFileBasedOperation methodsFor: 'recovered'!
destinationPath
    | recoveredValue0 |
    recoveredValue0 := destinationPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200673cc; bytecode file offset 0x9646f8"
!ASDAbstractFileBasedOperation methodsFor: 'recovered'!
buildEnvironmentInfo
    | recoveredValue0 |
    recoveredValue0 := buildEnvironmentInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068b54; bytecode file offset 0x965b90"
!ASDAbstractFileBasedOperation methodsFor: 'recovered'!
sources
    | recoveredValue0 |
    recoveredValue0 := sources.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069ad0; bytecode file offset 0x966bdc"
!ASDAbstractFileBasedOperation methodsFor: 'recovered'!
info
    | recoveredValue0 |
    recoveredValue0 := info.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a414; bytecode file offset 0x967a18"
!ASDAbstractFileBasedOperation methodsFor: 'recovered'!
codeManager
    | recoveredValue0 |
    recoveredValue0 := codeManager.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200854ec; bytecode file offset 0x981da4"
!ASDAbstractFileBasedOperation methodsFor: 'recovered'!
destinationPath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asPathname.
    destinationPath := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200beb60; bytecode file offset 0x9bc0b4"
!ASDAbstractFileBasedOperation methodsFor: 'recovered'!
buildEnvironmentInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    buildEnvironmentInfo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c06d4; bytecode file offset 0x9bd228"
!ASDAbstractFileBasedOperation methodsFor: 'recovered'!
sources: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sources := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0aa8; bytecode file offset 0x9bdf14"
!ASDAbstractFileBasedOperation methodsFor: 'recovered'!
info: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    info := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1a3c; bytecode file offset 0x9beac8"
!ASDAbstractFileBasedOperation methodsFor: 'recovered'!
codeManager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codeManager := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ee2f0; bytecode file offset 0x9eabdc"
!ASDAbstractFileBasedOperation methodsFor: 'recovered'!
fatalError: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    (recoveredValue0) fatalError: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^self
! !

