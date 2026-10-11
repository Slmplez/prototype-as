"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20001910; bytecode file offset 0x7dae0"
!CgGIFFileHeader methodsFor: 'recovered'!
screenWidth
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"winsys.ic method 0x20001948; bytecode file offset 0x7db30"
!CgGIFFileHeader methodsFor: 'recovered'!
screenHeight
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"winsys.ic method 0x200019ac; bytecode file offset 0x7db88"
!CgGIFFileHeader methodsFor: 'recovered'!
packed
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (10).
    ^recoveredValue0
! !

"winsys.ic method 0x200019e4; bytecode file offset 0x7dba8"
!CgGIFFileHeader methodsFor: 'recovered'!
background
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (11).
    ^recoveredValue0
! !

"winsys.ic method 0x20001a04; bytecode file offset 0x7dbd4"
!CgGIFFileHeader methodsFor: 'recovered'!
aspect
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (12).
    ^recoveredValue0
! !

"winsys.ic method 0x2000549c; bytecode file offset 0x81664"
!CgGIFFileHeader methodsFor: 'recovered'!
globalColorTableSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) packed.
    recoveredValue1 := (recoveredValue0) bitAnd: (7).
    recoveredValue2 := (recoveredValue1) + (1).
    ^recoveredValue2
! !

"winsys.ic method 0x2000626c; bytecode file offset 0x82430"
!CgGIFFileHeader methodsFor: 'recovered'!
signature
    | recoveredValue0 |
    recoveredValue0 := (self) memcpyStringFrom: (0) to: (2).
    ^recoveredValue0
! !

"winsys.ic method 0x200062b8; bytecode file offset 0x8247c"
!CgGIFFileHeader methodsFor: 'recovered'!
version
    | recoveredValue0 |
    recoveredValue0 := (self) memcpyStringFrom: (3) to: (5).
    ^recoveredValue0
! !

"winsys.ic method 0x200065ec; bytecode file offset 0x827c8"
!CgGIFFileHeader methodsFor: 'recovered'!
screenWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20006658; bytecode file offset 0x8281c"
!CgGIFFileHeader methodsFor: 'recovered'!
screenHeight: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x200066a0; bytecode file offset 0x82864"
!CgGIFFileHeader methodsFor: 'recovered'!
packed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (10) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x200066b8; bytecode file offset 0x8287c"
!CgGIFFileHeader methodsFor: 'recovered'!
background: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (11) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x200066dc; bytecode file offset 0x828ac"
!CgGIFFileHeader methodsFor: 'recovered'!
aspect: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (12) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20006d54; bytecode file offset 0x82f1c"
!CgGIFFileHeader methodsFor: 'recovered'!
colorTableIsSorted
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) packed.
    recoveredValue1 := (recoveredValue0) bitAnd: (8).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"winsys.ic method 0x20009498; bytecode file offset 0x85660"
!CgGIFFileHeader methodsFor: 'recovered'!
hasGlobalColorTable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) packed.
    recoveredValue1 := (recoveredValue0) bitAnd: (128).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"winsys.ic method 0x2000a220; bytecode file offset 0x863e8"
!CgGIFFileHeader methodsFor: 'recovered'!
colorResolution
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) packed.
    recoveredValue1 := (recoveredValue0) bitAnd: (112).
    recoveredValue2 := (recoveredValue1) // (16).
    recoveredValue3 := (recoveredValue2) + (1).
    ^recoveredValue3
! !

"winsys.ic method 0x2000b878; bytecode file offset 0x87a3c"
!CgGIFFileHeader methodsFor: 'recovered'!
signature: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) memcpyFrom: (0) to: (2) into: (self) startingAt: (0).
    ^self
! !

"winsys.ic method 0x2000b894; bytecode file offset 0x87a58"
!CgGIFFileHeader methodsFor: 'recovered'!
version: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) memcpyFrom: (0) to: (2) into: (self) startingAt: (3).
    ^self
! !

"winsys.ic method 0x2001714c; bytecode file offset 0x9331c"
!CgGIFFileHeader methodsFor: 'recovered'!
colorTableIsSorted: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) packed.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitOr: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) packed: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) packed.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 247.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitAnd: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) packed: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001719c; bytecode file offset 0x9336c"
!CgGIFFileHeader methodsFor: 'recovered'!
hasGlobalColorTable: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) packed.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitOr: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) packed: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) packed.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 127.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitAnd: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) packed: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001bdd8; bytecode file offset 0x97fc8"
!CgGIFFileHeader methodsFor: 'recovered'!
globalColorTableSize: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ExCLDTValueOutOfRange.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) packed.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 248.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) packed: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001d780; bytecode file offset 0x99954"
!CgGIFFileHeader methodsFor: 'recovered'!
colorResolution: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ExCLDTValueOutOfRange.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) packed.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 143.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) packed: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2002306c; bytecode file offset 0x9f25c"
!CgGIFFileHeader methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) signature.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) nextPut: ($().
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := (self) version.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    (recoveredValue0) nextPutAll: (', ').
    recoveredValue6 := (self) screenWidth.
    recoveredValue7 := (self) screenHeight.
    recoveredValue8 := (recoveredValue6) @ (recoveredValue7).
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) printOn: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredValue10.
    (recoveredValue11) nextPutAll: (', ').
    recoveredValue12 := recoveredValue10.
    recoveredValue13 := (self) globalColorTableSize.
    recoveredValue14 := (recoveredValue13) printString.
    (recoveredValue12) nextPutAll: (recoveredValue14).
    recoveredValue15 := MxCGa2.
    (recoveredValue10) nextPutAll: (recoveredValue15).
    ^self
! !

