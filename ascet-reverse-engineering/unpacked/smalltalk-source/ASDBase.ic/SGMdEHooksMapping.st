"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001b70; bytecode file offset 0x8ffcfc"
!SGMdEHooksMapping methodsFor: 'recovered'!
updateMdlClassSource
    ^self
! !

"ASDBase.ic method 0x2000bb40; bytecode file offset 0x908be4"
!SGMdEHooksMapping methodsFor: 'recovered'!
mdlName
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200279bc; bytecode file offset 0x9242d4"
!SGMdEHooksMapping methodsFor: 'recovered'!
isMdlTargetMissing
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ehooksElementAttributes.
    recoveredValue1 := (recoveredValue0) isNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b3d4; bytecode file offset 0x934580"
!SGMdEHooksMapping methodsFor: 'recovered'!
mdlMessageKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fromVarDeclReceiver.
    recoveredValue1 := (recoveredValue0) mdlMessageKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f034; bytecode file offset 0x934580"
!SGMdEHooksMapping methodsFor: 'recovered'!
name
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ehooksElementAttributes.
    recoveredValue1 := (recoveredValue0) name.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054a74; bytecode file offset 0x952a9c"
!SGMdEHooksMapping methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlEHooksMapping: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200588d8; bytecode file offset 0x956284"
!SGMdEHooksMapping methodsFor: 'recovered'!
addCalledByBypassFunction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) calledByBypassFunctions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) add: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006dbe8; bytecode file offset 0x96a9dc"
!SGMdEHooksMapping methodsFor: 'recovered'!
calledByBypassFunctions
    | recoveredValue0 |
    recoveredValue0 := calledByBypassFunctions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e20c; bytecode file offset 0x96af48"
!SGMdEHooksMapping methodsFor: 'recovered'!
ehooksElementAttributes
    | recoveredValue0 |
    recoveredValue0 := ehooksElementAttributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007bb54; bytecode file offset 0x97c330"
!SGMdEHooksMapping methodsFor: 'recovered'!
isMdlRecordMapping
    ^false
! !

"ASDBase.ic method 0x20089948; bytecode file offset 0x986214"
!SGMdEHooksMapping methodsFor: 'recovered'!
resetBypassFunctions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    calledByBypassFunctions := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20097ac4; bytecode file offset 0x995850"
!SGMdEHooksMapping methodsFor: 'recovered'!
printTargetOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ehooksElementAttributes.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c4a64; bytecode file offset 0x9c16b0"
!SGMdEHooksMapping methodsFor: 'recovered'!
ehooksElementAttributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ehooksElementAttributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d6658; bytecode file offset 0x9d3134"
!SGMdEHooksMapping methodsFor: 'recovered'!
initialize
    super initialize.
    (self) resetBypassFunctions.
    ^self
! !

