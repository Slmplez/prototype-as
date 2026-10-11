"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013fbc; bytecode file offset 0x912098"
!FamosBinaryData class methodsFor: 'recovered'!
CurrentWriteFile
    | recoveredValue0 |
    recoveredValue0 := CurrentWriteFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001578c; bytecode file offset 0x912098"
!FamosBinaryData class methodsFor: 'recovered'!
CurrentReadFile
    | recoveredValue0 |
    recoveredValue0 := CurrentReadFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016118; bytecode file offset 0x92209c"
!FamosBinaryData class methodsFor: 'recovered'!
keyWord
    ^'CS'
! !

"ASDBase.ic method 0x20025984; bytecode file offset 0x923928"
!FamosBinaryData class methodsFor: 'recovered'!
unLinkInstVarNames
    ^#('data')
! !

"ASDBase.ic method 0x20053f78; bytecode file offset 0x951190"
!FamosBinaryData class methodsFor: 'recovered'!
CurrentReadFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CurrentReadFile := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200541ac; bytecode file offset 0x951190"
!FamosBinaryData class methodsFor: 'recovered'!
CurrentWriteFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CurrentWriteFile := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200b65d8; bytecode file offset 0x9b39ac"
!FamosBinaryData class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('indexLength' 'index' 'dataLength' 'position' 'writePosition' 'data')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x202c9ee0; bytecode file offset 0xbc67c4"
!FamosBinaryData class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) data: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 4294967295.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) keyLength: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAssociation.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) index: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := Association.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := Set.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) key: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) index: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

