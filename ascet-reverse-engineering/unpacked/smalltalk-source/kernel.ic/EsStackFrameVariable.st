"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20000348; bytecode file offset 0x4b474"
!EsStackFrameVariable methodsFor: 'recovered'!
value
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"kernel.ic method 0x20000ac4; bytecode file offset 0x4ba40"
!EsStackFrameVariable methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"kernel.ic method 0x2000103c; bytecode file offset 0x4bf58"
!EsStackFrameVariable methodsFor: 'recovered'!
storeOn: recoveredArg1 frameReference: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"kernel.ic method 0x20001f10; bytecode file offset 0x4ce64"
!EsStackFrameVariable methodsFor: 'recovered'!
isValid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) frame.
    recoveredValue1 := (recoveredValue0) isValid.
    ^recoveredValue1
! !

"kernel.ic method 0x20003b68; bytecode file offset 0x4ec04"
!EsStackFrameVariable methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"kernel.ic method 0x20003e64; bytecode file offset 0x4ed88"
!EsStackFrameVariable methodsFor: 'recovered'!
frame
    | recoveredValue0 |
    recoveredValue0 := frame.
    ^recoveredValue0
! !

"kernel.ic method 0x200045c0; bytecode file offset 0x4f5c4"
!EsStackFrameVariable methodsFor: 'recovered'!
isStackFrameVariable
    ^true
! !

"kernel.ic method 0x20004638; bytecode file offset 0x4f5c4"
!EsStackFrameVariable methodsFor: 'recovered'!
allowChanges
    ^true
! !

"kernel.ic method 0x20004758; bytecode file offset 0x4f794"
!EsStackFrameVariable methodsFor: 'recovered'!
isStackVariable
    ^false
! !

"kernel.ic method 0x20004778; bytecode file offset 0x4f794"
!EsStackFrameVariable methodsFor: 'recovered'!
isReceiver
    ^false
! !

"kernel.ic method 0x200047b0; bytecode file offset 0x4f794"
!EsStackFrameVariable methodsFor: 'recovered'!
isTemp
    ^false
! !

"kernel.ic method 0x200047e0; bytecode file offset 0x4f794"
!EsStackFrameVariable methodsFor: 'recovered'!
isArgument
    ^false
! !

"kernel.ic method 0x20005aa4; bytecode file offset 0x509b8"
!EsStackFrameVariable methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) name.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x200074d4; bytecode file offset 0x52538"
!EsStackFrameVariable methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007658; bytecode file offset 0x52654"
!EsStackFrameVariable methodsFor: 'recovered'!
frame: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    frame := recoveredValue0.
    ^self
! !

