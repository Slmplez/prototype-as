"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002bc84; bytecode file offset 0x934580"
!AbtXmlMappedObjectCreationContext methodsFor: 'recovered'!
peek
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contentStream.
    recoveredValue1 := (recoveredValue0) peek.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002de34; bytecode file offset 0x934580"
!AbtXmlMappedObjectCreationContext methodsFor: 'recovered'!
atEnd
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contentStream.
    recoveredValue1 := (recoveredValue0) atEnd.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032124; bytecode file offset 0x934580"
!AbtXmlMappedObjectCreationContext methodsFor: 'recovered'!
contents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contentStream.
    recoveredValue1 := (recoveredValue0) contents.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035734; bytecode file offset 0x934580"
!AbtXmlMappedObjectCreationContext methodsFor: 'recovered'!
next
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contentStream.
    recoveredValue1 := (recoveredValue0) next.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200580f8; bytecode file offset 0x956284"
!AbtXmlMappedObjectCreationContext methodsFor: 'recovered'!
select: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20063fb4; bytecode file offset 0x961970"
!AbtXmlMappedObjectCreationContext methodsFor: 'recovered'!
reset
    | recoveredValue0 |
    recoveredValue0 := (self) contentStream.
    (recoveredValue0) reset.
    ^self
! !

"ASDBase.ic method 0x200659ac; bytecode file offset 0x963428"
!AbtXmlMappedObjectCreationContext methodsFor: 'recovered'!
contentStream
    | recoveredValue0 |
    recoveredValue0 := contentStream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067abc; bytecode file offset 0x9646f8"
!AbtXmlMappedObjectCreationContext methodsFor: 'recovered'!
currentElement
    | recoveredValue0 |
    recoveredValue0 := currentElement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200691ac; bytecode file offset 0x965b90"
!AbtXmlMappedObjectCreationContext methodsFor: 'recovered'!
attributes
    | recoveredValue0 |
    recoveredValue0 := attributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a008; bytecode file offset 0x966bdc"
!AbtXmlMappedObjectCreationContext methodsFor: 'recovered'!
deserializer
    | recoveredValue0 |
    recoveredValue0 := deserializer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20099ce8; bytecode file offset 0x997194"
!AbtXmlMappedObjectCreationContext methodsFor: 'recovered'!
detect: recoveredArg1 ifNone: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ab6e8; bytecode file offset 0x9a8250"
!AbtXmlMappedObjectCreationContext methodsFor: 'recovered'!
remove: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be84c; bytecode file offset 0x9bb178"
!AbtXmlMappedObjectCreationContext methodsFor: 'recovered'!
contentStream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    contentStream := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bebd8; bytecode file offset 0x9bc0b4"
!AbtXmlMappedObjectCreationContext methodsFor: 'recovered'!
currentElement: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentElement := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bff04; bytecode file offset 0x9bd228"
!AbtXmlMappedObjectCreationContext methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1098; bytecode file offset 0x9bdf14"
!AbtXmlMappedObjectCreationContext methodsFor: 'recovered'!
deserializer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    deserializer := recoveredValue0.
    ^self
! !

