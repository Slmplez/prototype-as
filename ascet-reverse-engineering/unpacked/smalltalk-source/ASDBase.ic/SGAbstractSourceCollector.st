"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005170; bytecode file offset 0x90206c"
!SGAbstractSourceCollector methodsFor: 'recovered'!
makeNode: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005900; bytecode file offset 0x902744"
!SGAbstractSourceCollector methodsFor: 'recovered'!
addAdditionalFilesHandle: recoveredArg1 makeNode: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20039b84; bytecode file offset 0x938608"
!SGAbstractSourceCollector methodsFor: 'recovered'!
makeMethodInterfaceNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a220; bytecode file offset 0x938608"
!SGAbstractSourceCollector methodsFor: 'recovered'!
anyMakeNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) visitMakeNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a37c; bytecode file offset 0x938608"
!SGAbstractSourceCollector methodsFor: 'recovered'!
makeProjectNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeModuleNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003a91c; bytecode file offset 0x938608"
!SGAbstractSourceCollector methodsFor: 'recovered'!
makeModuleNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeComponentNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ac7c; bytecode file offset 0x938608"
!SGAbstractSourceCollector methodsFor: 'recovered'!
makeARSRInterfaceNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeDataTypeNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ad78; bytecode file offset 0x938608"
!SGAbstractSourceCollector methodsFor: 'recovered'!
makeRecordNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeDataTypeNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b534; bytecode file offset 0x938608"
!SGAbstractSourceCollector methodsFor: 'recovered'!
makeARCSInterfaceNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeMethodInterfaceNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b9e4; bytecode file offset 0x938608"
!SGAbstractSourceCollector methodsFor: 'recovered'!
makeEnumNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeDataTypeNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003baec; bytecode file offset 0x938608"
!SGAbstractSourceCollector methodsFor: 'recovered'!
makeClassNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeComponentNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bb88; bytecode file offset 0x938608"
!SGAbstractSourceCollector methodsFor: 'recovered'!
makeComponentNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeDataTypeNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bba0; bytecode file offset 0x938608"
!SGAbstractSourceCollector methodsFor: 'recovered'!
makeARModeGroupNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeEnumNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bc60; bytecode file offset 0x938608"
!SGAbstractSourceCollector methodsFor: 'recovered'!
makeARComponentNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeComponentNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bd2c; bytecode file offset 0x938608"
!SGAbstractSourceCollector methodsFor: 'recovered'!
makeDataTypeNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) makeNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054e70; bytecode file offset 0x952a9c"
!SGAbstractSourceCollector methodsFor: 'recovered'!
visitMakeNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) acceptMakeNodeVisitor: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007f7e4; bytecode file offset 0x97c330"
!SGAbstractSourceCollector methodsFor: 'recovered'!
requiresBanner
    ^false
! !

