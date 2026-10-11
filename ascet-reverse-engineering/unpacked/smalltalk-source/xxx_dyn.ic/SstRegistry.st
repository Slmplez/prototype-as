"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000255c; bytecode file offset 0x6363c"
!SstRegistry methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := objects.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200037a4; bytecode file offset 0x649e8"
!SstRegistry methodsFor: 'recovered'!
currentKey
    | recoveredValue0 |
    recoveredValue0 := lastKey.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003b9c; bytecode file offset 0x64d78"
!SstRegistry methodsFor: 'recovered'!
keys
    | recoveredValue0 |
    recoveredValue0 := keys.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004bf0; bytecode file offset 0x65cf4"
!SstRegistry methodsFor: 'recovered'!
keysAndValuesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := objects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20004bfc; bytecode file offset 0x65cf4"
!SstRegistry methodsFor: 'recovered'!
includesKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := objects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includesKey: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20004c14; bytecode file offset 0x65cf4"
!SstRegistry methodsFor: 'recovered'!
at: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := objects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x20004c78; bytecode file offset 0x65d40"
!SstRegistry methodsFor: 'recovered'!
includes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := keys.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includes: (recoveredValue1).
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x200066a8; bytecode file offset 0x6776c"
!SstRegistry methodsFor: 'recovered'!
nextKey
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := lastKey.
    recoveredValue1 := (recoveredValue0) + (1).
    recoveredValue2 := recoveredValue1.
    lastKey := recoveredValue2.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200071bc; bytecode file offset 0x68284"
!SstRegistry methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := objects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007d84; bytecode file offset 0x68f50"
!SstRegistry methodsFor: 'recovered'!
initialKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastKey := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000b84c; bytecode file offset 0x6c968"
!SstRegistry methodsFor: 'recovered'!
remove: recoveredArg1
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
            recoveredStack2 := [
    | block2800a65cValue0 block2800a65cValue1 |
    block2800a65cValue0 := ExCLDTObjectNotFound.
    block2800a65cValue1 := (block2800a65cValue0) signal.
    block2800a65cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000b87c; bytecode file offset 0x6c968"
!SstRegistry methodsFor: 'recovered'!
removeKey: recoveredArg1
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
            recoveredStack2 := [
    | block2800a6a4Value0 block2800a6a4Value1 |
    block2800a6a4Value0 := ExCLDTKeyNotFound.
    block2800a6a4Value1 := (block2800a6a4Value0) signal.
    block2800a6a4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000b894; bytecode file offset 0x6c968"
!SstRegistry methodsFor: 'recovered'!
atObject: recoveredArg1
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
            recoveredStack2 := [
    | block2800a6c8Value0 block2800a6c8Value1 |
    block2800a6c8Value0 := ExCLDTObjectNotFound.
    block2800a6c8Value1 := (block2800a6c8Value0) signal.
    block2800a6c8Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) atObject: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20011ec8; bytecode file offset 0x72f98"
!SstRegistry methodsFor: 'recovered'!
atObject: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := keys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) findKeyFor: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20013f38; bytecode file offset 0x75008"
!SstRegistry methodsFor: 'recovered'!
removeKey: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := keys.
    recoveredValue1 := objects.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := recoveredArg2.
    recoveredBlock11Value1 := (recoveredBlock11Value0) value.
    ^recoveredBlock11Value1
].
    recoveredValue4 := (recoveredValue1) removeKey: (recoveredValue2) ifAbsent: (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue0) remove: (recoveredValue4) ifAbsent: (recoveredValue5).
    ^recoveredValue6
! !

"xxx_dyn.ic method 0x20015bf0; bytecode file offset 0x76cc4"
!SstRegistry methodsFor: 'recovered'!
keysClass: recoveredArg1 objectsClass: recoveredArg2 size: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            objects := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstUsesIdentity.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := IdentitySet.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            keys := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := keys.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            keys := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            lastKey := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200173cc; bytecode file offset 0x784a0"
!SstRegistry methodsFor: 'recovered'!
reset
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := objects.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := objects.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue3) // (2).
    recoveredValue5 := (recoveredValue4) max: (10).
    recoveredValue6 := (recoveredValue1) new: (recoveredValue5).
    objects := recoveredValue6.
    recoveredValue7 := keys.
    recoveredValue8 := (recoveredValue7) class.
    recoveredValue9 := keys.
    recoveredValue10 := (recoveredValue9) size.
    recoveredValue11 := (recoveredValue10) // (2).
    recoveredValue12 := (recoveredValue11) max: (10).
    recoveredValue13 := (recoveredValue8) new: (recoveredValue12).
    keys := recoveredValue13.
    lastKey := 0.
    ^self
! !

"xxx_dyn.ic method 0x2001844c; bytecode file offset 0x79520"
!SstRegistry methodsFor: 'recovered'!
remove: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := keys.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredArg2.
    recoveredBlock9Value1 := (recoveredBlock9Value0) value.
    ^recoveredBlock9Value1
].
    (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) findKeyFor: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := objects.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) removeKey: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"xxx_dyn.ic method 0x20018f0c; bytecode file offset 0x79fec"
!SstRegistry methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := ExCLDTInvalidArgument.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := keys.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) findKeyFor: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextKey.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := keys.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := objects.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001a6f4; bytecode file offset 0x7b7d4"
!SstRegistry methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := ExCLDTInvalidArgument.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := keys.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := keys.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001a84c; bytecode file offset 0x7b92c"
!SstRegistry methodsFor: 'recovered'!
at: recoveredArg1 ifAbsentPut: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := ExCLDTInvalidArgument.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := keys.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001ff84; bytecode file offset 0x81058"
!SstRegistry methodsFor: 'recovered'!
findKeyFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := keys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstUsesIdentity.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) value.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack3 := recoveredArg1.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            (recoveredBlock12Stack2 ~~ recoveredBlock12Stack3) ifTrue: [recoveredBlock12PC := 32] ifFalse: [recoveredBlock12PC := 28].
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) key.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40Stack4 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := nil.
            recoveredBlock40PC := 47.
        ].
        recoveredBlock40Step = 47 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 48.
        ].
        recoveredBlock40Step = 48 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) value.
            recoveredBlock40PC := 49.
        ].
        recoveredBlock40Step = 49 ifTrue: [
            recoveredBlock40Stack3 := recoveredArg1.
            recoveredBlock40PC := 52.
        ].
        recoveredBlock40Step = 52 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) = (recoveredBlock40Stack3).
            recoveredBlock40PC := 53.
        ].
        recoveredBlock40Step = 53 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 56] ifFalse: [recoveredBlock40PC := 60].
        ].
        recoveredBlock40Step = 56 ifTrue: [
            recoveredBlock40PC := 57.
        ].
        recoveredBlock40Step = 57 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 58.
        ].
        recoveredBlock40Step = 58 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) key.
            recoveredBlock40PC := 59.
        ].
        recoveredBlock40Step = 59 ifTrue: [
            ^recoveredBlock40Stack1
        ].
        recoveredBlock40Step = 60 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

