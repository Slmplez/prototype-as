"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20073618; bytecode file offset 0x970b34"
!AbtXmlDOMParser methodsFor: 'recovered'!
nameSpaceSupport
    ^nil
! !

"ASDBase.ic method 0x200d7ca4; bytecode file offset 0x9d4560"
!AbtXmlDOMParser methodsFor: 'recovered'!
parseDTD: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) parseExternalDTD: (nil) publicId: (nil) systemId: (recoveredValue0).
    recoveredValue1 := (self) dtd.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2010baf8; bytecode file offset 0xa085f0"
!AbtXmlDOMParser methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := AbtXmlSaxDOMHandler.
    recoveredValue1 := (recoveredValue0) new.
    (self) setAllHandlersTo: (recoveredValue1).
    ^self
! !

