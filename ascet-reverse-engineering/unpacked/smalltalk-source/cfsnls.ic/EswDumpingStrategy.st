"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x2000063c; bytecode file offset 0x2386c"
!EswDumpingStrategy methodsFor: 'recovered'!
identityReplacementFor: recoveredArg1 for: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20000d44; bytecode file offset 0x23fc0"
!EswDumpingStrategy methodsFor: 'recovered'!
dumpingReplacementForClassFieldOf: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) dumpingReplacementForClassField.
    ^recoveredValue1
! !

"cfsnls.ic method 0x20000d74; bytecode file offset 0x23fc0"
!EswDumpingStrategy methodsFor: 'recovered'!
definesClassBasedReplacementFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) definesClassBasedReplacement.
    ^recoveredValue1
! !

"cfsnls.ic method 0x20000d80; bytecode file offset 0x23fc0"
!EswDumpingStrategy methodsFor: 'recovered'!
definesLoadingReplacementFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) definesLoadingReplacement.
    ^recoveredValue1
! !

"cfsnls.ic method 0x20000d8c; bytecode file offset 0x23fc0"
!EswDumpingStrategy methodsFor: 'recovered'!
definesInstVarReplacementFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) definesInstVarReplacement.
    ^recoveredValue1
! !

"cfsnls.ic method 0x2000152c; bytecode file offset 0x2476c"
!EswDumpingStrategy methodsFor: 'recovered'!
isSpecialRootForDumping: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isSpecialRootForDumpingFor: (self).
    ^recoveredValue1
! !

"cfsnls.ic method 0x200015ec; bytecode file offset 0x24820"
!EswDumpingStrategy methodsFor: 'recovered'!
dumpingReplacementFor: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) dumpingReplacementForReplacer: (recoveredValue1).
    ^recoveredValue2
! !

"cfsnls.ic method 0x20001c04; bytecode file offset 0x24e64"
!EswDumpingStrategy methodsFor: 'recovered'!
defaultSegmentSize
    | recoveredValue0 |
    recoveredValue0 := defaultSegmentSize.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001c58; bytecode file offset 0x24ea8"
!EswDumpingStrategy methodsFor: 'recovered'!
includeInstVarNames
    | recoveredValue0 |
    recoveredValue0 := includeInstVarNames.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001c9c; bytecode file offset 0x24ee4"
!EswDumpingStrategy methodsFor: 'recovered'!
dumpCompiledMethods
    | recoveredValue0 |
    recoveredValue0 := dumpCompiledMethods.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200026f0; bytecode file offset 0x25928"
!EswDumpingStrategy methodsFor: 'recovered'!
dumpSpecialRoot: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) swapper.
    recoveredValue2 := (recoveredValue0) dumpSpecialRootFor: (recoveredValue1).
    ^recoveredValue2
! !

"cfsnls.ic method 0x20003020; bytecode file offset 0x26254"
!EswDumpingStrategy methodsFor: 'recovered'!
dumpingReplacementForInstVar: recoveredArg1 ofObject: recoveredArg2 for: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) dumpingReplacementForInstVar: (recoveredValue1) forReplacer: (self).
    ^recoveredValue2
! !

"cfsnls.ic method 0x20003fb8; bytecode file offset 0x27210"
!EswDumpingStrategy methodsFor: 'recovered'!
defaultSegmentSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultSegmentSize := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x2000400c; bytecode file offset 0x2723c"
!EswDumpingStrategy methodsFor: 'recovered'!
includeInstVarNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    includeInstVarNames := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x20004020; bytecode file offset 0x27270"
!EswDumpingStrategy methodsFor: 'recovered'!
dumpCompiledMethods: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dumpCompiledMethods := recoveredValue0.
    ^self
! !

"cfsnls.ic method 0x200061bc; bytecode file offset 0x29404"
!EswDumpingStrategy methodsFor: 'recovered'!
initialize
    super initialize.
    (self) defaultSegmentSize: (131072).
    (self) includeInstVarNames: (true).
    (self) dumpCompiledMethods: (false).
    ^self
! !

