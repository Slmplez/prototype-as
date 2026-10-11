"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007184; bytecode file offset 0x908be4"
!SGIlExpander class methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) printString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200127bc; bytecode file offset 0x912098"
!SGIlExpander class methodsFor: 'recovered'!
current
    | recoveredValue0 |
    recoveredValue0 := Current.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019e80; bytecode file offset 0x92209c"
!SGIlExpander class methodsFor: 'recovered'!
optimizeFixedCharTableKey
    ^'OPTIMIZEFIXEDCHARTABLE'
! !

"ASDBase.ic method 0x2001c9f4; bytecode file offset 0x92209c"
!SGIlExpander class methodsFor: 'recovered'!
conditionalDataStructureKey
    ^'CONDITIONALDATASTRUCTURE'
! !

"ASDBase.ic method 0x2003cb18; bytecode file offset 0x93bf94"
!SGIlExpander class methodsFor: 'recovered'!
reserveTempStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGBasicTempWriteStream.
    recoveredValue1 := (recoveredValue0) reserveTempStream.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048990; bytecode file offset 0x945248"
!SGIlExpander class methodsFor: 'recovered'!
setNoExpandCastStrategy
    ExpandCastOpEnabled := false.
    ^self
! !

"ASDBase.ic method 0x2004a89c; bytecode file offset 0x94716c"
!SGIlExpander class methodsFor: 'recovered'!
setExpandCastStrategy
    ExpandCastOpEnabled := true.
    ^self
! !

"ASDBase.ic method 0x20053dec; bytecode file offset 0x951190"
!SGIlExpander class methodsFor: 'recovered'!
current: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Current := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005ef08; bytecode file offset 0x95b7f0"
!SGIlExpander class methodsFor: 'recovered'!
resetCurrent
    (self) current: (nil).
    ^self
! !

"ASDBase.ic method 0x2009e0ec; bytecode file offset 0x99a9a8"
!SGIlExpander class methodsFor: 'recovered'!
prepareCodeGeneration
    ExpandCastOpEnabled := nil.
    (self) resetCurrent.
    ^self
! !

"ASDBase.ic method 0x201052a8; bytecode file offset 0xa01b84"
!SGIlExpander class methodsFor: 'recovered'!
ileExpandCastOpEnabled
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ExpandCastOpEnabled.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ExpandCastOpEnabled := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ExpandCastOpEnabled.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

