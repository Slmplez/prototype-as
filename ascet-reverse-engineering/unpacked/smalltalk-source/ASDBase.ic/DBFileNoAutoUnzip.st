"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200001a8; bytecode file offset 0x8ffcfc"
!DBFileNoAutoUnzip methodsFor: 'recovered'!
object
    ^self
! !

"ASDBase.ic method 0x20001890; bytecode file offset 0x8ffcfc"
!DBFileNoAutoUnzip methodsFor: 'recovered'!
dbClass
    ^self
! !

"ASDBase.ic method 0x200051d8; bytecode file offset 0x90206c"
!DBFileNoAutoUnzip methodsFor: 'recovered'!
postLoad: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20059f74; bytecode file offset 0x956828"
!DBFileNoAutoUnzip methodsFor: 'recovered'!
create: recoveredArg1 with: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x202d198c; bytecode file offset 0xbce254"
!DBFileNoAutoUnzip methodsFor: 'recovered'!
writeZippedFile
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := compress.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ETASOSHandle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := path.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := contents.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := contents.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := 5.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFile: (recoveredStack2) bytes: (recoveredStack3) write: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) compress.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := ETASOSHandle.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := path.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := contents.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := contents.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := 5.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFile: (recoveredStack2) bytes: (recoveredStack3) write: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) expand.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

