"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002e434; bytecode file offset 0x934580"
!SGAbstractNodeVisitor class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d828; bytecode file offset 0x93bf94"
!SGAbstractNodeVisitor class methodsFor: 'recovered'!
reserveTempStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGBasicTempWriteStream.
    recoveredValue1 := (recoveredValue0) reserveTempStream.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ef38; bytecode file offset 0x93bf94"
!SGAbstractNodeVisitor class methodsFor: 'recovered'!
createWriteStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGBasicWriteStream.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2018d158; bytecode file offset 0xa89a74"
!SGAbstractNodeVisitor class methodsFor: 'recovered'!
inactiveNodeVisitorSingleton
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := InactiveNodeVisitorSingleton.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280d1394Value0 block280d1394Value1 block280d1394Value2 |
    block280d1394Value0 := SGInactiveNodeVisitor.
    block280d1394Value1 := (block280d1394Value0) create.
    block280d1394Value2 := block280d1394Value1.
    InactiveNodeVisitorSingleton := block280d1394Value2.
    block280d1394Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := InactiveNodeVisitorSingleton.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

