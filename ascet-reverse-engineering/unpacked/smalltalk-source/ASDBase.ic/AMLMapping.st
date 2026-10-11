"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065e6c; bytecode file offset 0x963428"
!AMLMapping methodsFor: 'recovered'!
amlName
    | recoveredValue0 |
    recoveredValue0 := amlName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066f0c; bytecode file offset 0x9646f8"
!AMLMapping methodsFor: 'recovered'!
class
    | recoveredValue0 |
    recoveredValue0 := class.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068574; bytecode file offset 0x965b90"
!AMLMapping methodsFor: 'recovered'!
accessMethods
    | recoveredValue0 |
    recoveredValue0 := accessMethods.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be72c; bytecode file offset 0x9bb178"
!AMLMapping methodsFor: 'recovered'!
amlName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    amlName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf7b8; bytecode file offset 0x9bc0b4"
!AMLMapping methodsFor: 'recovered'!
class: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    class := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfa7c; bytecode file offset 0x9bd228"
!AMLMapping methodsFor: 'recovered'!
accessMethods: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    accessMethods := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201e88bc; bytecode file offset 0xae5184"
!AMLMapping methodsFor: 'recovered'!
mapAml: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := accessMethods.
    recoveredValue1 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value2) parts.
    recoveredBlock6Value4 := recoveredBlock6Arg2.
    recoveredBlock6Value5 := (recoveredBlock6Value3) at: (recoveredBlock6Value4).
    recoveredBlock6Value6 := (recoveredBlock6Value5) value.
    recoveredBlock6Value7 := (recoveredBlock6Value0) perform: (recoveredBlock6Value1) with: (recoveredBlock6Value6).
    recoveredBlock6Value7
].
    (recoveredValue0) doWithIndex: (recoveredValue1).
    ^self
! !

