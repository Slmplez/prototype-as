"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000088; bytecode file offset 0x8ffcfc"
!ASAP2Description methodsFor: 'recovered'!
parentForDescription
    ^self
! !

"ASDBase.ic method 0x20002d20; bytecode file offset 0x8ffcfc"
!ASAP2Description methodsFor: 'recovered'!
clearVisualLabelCache
    ^self
! !

"ASDBase.ic method 0x2003ff1c; bytecode file offset 0x93d278"
!ASAP2Description methodsFor: 'recovered'!
asap2Children
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) asap2Children.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040360; bytecode file offset 0x93d278"
!ASAP2Description methodsFor: 'recovered'!
getHardwareObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) getHardwareObject.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040414; bytecode file offset 0x93d278"
!ASAP2Description methodsFor: 'recovered'!
name
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) name.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004042c; bytecode file offset 0x93d278"
!ASAP2Description methodsFor: 'recovered'!
isCharacteristic
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) isCharacteristic.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040750; bytecode file offset 0x93d278"
!ASAP2Description methodsFor: 'recovered'!
getCommentObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) getCommentObject.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d1fc; bytecode file offset 0x959af0"
!ASAP2Description methodsFor: 'recovered'!
clearReadOnly
    | recoveredValue0 |
    recoveredValue0 := asap2.
    (recoveredValue0) clearReadOnly.
    ^self
! !

"ASDBase.ic method 0x20065f34; bytecode file offset 0x963428"
!ASAP2Description methodsFor: 'recovered'!
asap2
    | recoveredValue0 |
    recoveredValue0 := asap2.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20081a74; bytecode file offset 0x97e554"
!ASAP2Description methodsFor: 'recovered'!
addToCommentModule: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) addToCommentModule: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081aec; bytecode file offset 0x97e554"
!ASAP2Description methodsFor: 'recovered'!
addToHardwareModule: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) addToHardwareModule: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081bb8; bytecode file offset 0x97e554"
!ASAP2Description methodsFor: 'recovered'!
removeFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) removeFrom: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20092718; bytecode file offset 0x98f084"
!ASAP2Description methodsFor: 'recovered'!
addToSpecificationModule: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asap2.
    recoveredValue3 := (recoveredValue0) addToSpecificationModule: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20092778; bytecode file offset 0x98f084"
!ASAP2Description methodsFor: 'recovered'!
addToProject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asap2.
    recoveredValue3 := (recoveredValue0) addToProject: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ac234; bytecode file offset 0x9a8af0"
!ASAP2Description methodsFor: 'recovered'!
sameType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) asap2.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asap2.
    recoveredValue4 := (recoveredValue3) class.
    recoveredValue5 := (recoveredValue1) = (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200be27c; bytecode file offset 0x9bb178"
!ASAP2Description methodsFor: 'recovered'!
asap2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    asap2 := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d74cc; bytecode file offset 0x9d3ef8"
!ASAP2Description methodsFor: 'recovered'!
removeAnnotation: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) removeAnnotation: (recoveredValue1).
    (self) setASAP2Modified.
    ^self
! !

"ASDBase.ic method 0x200df170; bytecode file offset 0x9dba44"
!ASAP2Description methodsFor: 'recovered'!
createAnnotation
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASAP2Annotation.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    (self) annotation: (recoveredValue1).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

