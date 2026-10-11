"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000030; bytecode file offset 0x3c0a8"
!CompiledMethod methodsFor: 'recovered'!
emDecodableMethod
    ^self
! !

"lib.ic method 0x20000138; bytecode file offset 0x3c21c"
!CompiledMethod methodsFor: 'recovered'!
methodSignature
    | recoveredValue0 |
    recoveredValue0 := (self) signature.
    ^recoveredValue0
! !

"lib.ic method 0x20000144; bytecode file offset 0x3c21c"
!CompiledMethod methodsFor: 'recovered'!
methodSignatureForLogging
    | recoveredValue0 |
    recoveredValue0 := (self) methodSignature.
    ^recoveredValue0
! !

"lib.ic method 0x20000874; bytecode file offset 0x3c8c8"
!CompiledMethod methodsFor: 'recovered'!
isPublic
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isPrivate.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"lib.ic method 0x20000a18; bytecode file offset 0x3cba0"
!CompiledMethod methodsFor: 'recovered'!
statusBits
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) filePointer.
    recoveredValue1 := (recoveredValue0) statusBits.
    ^recoveredValue1
! !

"lib.ic method 0x20001140; bytecode file offset 0x3d1e8"
!CompiledMethod methodsFor: 'recovered'!
sourceCompressor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EmCompressor.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"lib.ic method 0x2000125c; bytecode file offset 0x3d284"
!CompiledMethod methodsFor: 'recovered'!
primitiveSourceVersion
    | recoveredValue0 |
    recoveredValue0 := (self) inheritedUserFieldAt: ('primitiveVersion').
    ^recoveredValue0
! !

"lib.ic method 0x20001a6c; bytecode file offset 0x3dab4"
!CompiledMethod methodsFor: 'recovered'!
asShadow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EmShadowCompiledMethod.
    recoveredValue1 := (recoveredValue0) for: (self).
    ^recoveredValue1
! !

"lib.ic method 0x20001df8; bytecode file offset 0x3de24"
!CompiledMethod methodsFor: 'recovered'!
isPrivate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) statusBits.
    recoveredValue1 := (self) privateStatusBit.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20002884; bytecode file offset 0x3e8ac"
!CompiledMethod methodsFor: 'recovered'!
doesCompileStatusBit
    ^7
! !

"lib.ic method 0x200028a8; bytecode file offset 0x3e8c8"
!CompiledMethod methodsFor: 'recovered'!
privateStatusBit
    ^8
! !

"lib.ic method 0x20002978; bytecode file offset 0x3e998"
!CompiledMethod methodsFor: 'recovered'!
isLoaded
    ^true
! !

"lib.ic method 0x20002f30; bytecode file offset 0x3ef84"
!CompiledMethod methodsFor: 'recovered'!
record
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EmMethodEdition.
    recoveredValue1 := (self) filePointer.
    recoveredValue2 := (recoveredValue0) using: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20003274; bytecode file offset 0x3f2a0"
!CompiledMethod methodsFor: 'recovered'!
compiledCorrectly
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) statusBits.
    recoveredValue1 := (self) doesCompileStatusBit.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) not.
    ^recoveredValue3
! !

"lib.ic method 0x200035d0; bytecode file offset 0x3f5fc"
!CompiledMethod methodsFor: 'recovered'!
primitiveFilePointer: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) statusBits.
    recoveredValue2 := (recoveredValue0) statusBits: (recoveredValue1).
    recoveredValue3 := (self) filePointer: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20003a1c; bytecode file offset 0x3fa4c"
!CompiledMethod methodsFor: 'recovered'!
timeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) cache.
    recoveredValue2 := (self) filePointer.
    recoveredValue3 := (recoveredValue1) methodTimeStampAt: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20003af0; bytecode file offset 0x3fb80"
!CompiledMethod methodsFor: 'recovered'!
localUserFieldNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := (recoveredValue2) methodLocalUserFieldNamesFor: (self).
    ^recoveredValue3
! !

"lib.ic method 0x20003b20; bytecode file offset 0x3fb80"
!CompiledMethod methodsFor: 'recovered'!
inheritedUserFieldNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := (recoveredValue2) methodInheritedUserFieldNamesFor: (self).
    ^recoveredValue3
! !

"lib.ic method 0x20003f08; bytecode file offset 0x3ff34"
!CompiledMethod methodsFor: 'recovered'!
emWriteBytesOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) bytecodes.
    recoveredValue2 := (recoveredValue1) emAsLinkerBytes.
    (recoveredValue0) writeByteArray: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20004588; bytecode file offset 0x405c8"
!CompiledMethod methodsFor: 'recovered'!
updateRecordWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmMethodEdition.
    recoveredValue1 := (self) filePointer.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) using: (recoveredValue1) updateUsing: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x200046bc; bytecode file offset 0x406e8"
!CompiledMethod methodsFor: 'recovered'!
statusBits: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) filePointer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) statusBits: (recoveredValue1).
    (self) filePointer: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20004df8; bytecode file offset 0x40e40"
!CompiledMethod methodsFor: 'recovered'!
private
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) statusBits.
    recoveredValue1 := (self) privateStatusBit.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    (self) statusBits: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20004e10; bytecode file offset 0x40e40"
!CompiledMethod methodsFor: 'recovered'!
public
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) statusBits.
    recoveredValue1 := (self) privateStatusBit.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    (self) statusBits: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20004ec8; bytecode file offset 0x40ef4"
!CompiledMethod methodsFor: 'recovered'!
replacing: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) filePointer.
    (self) filePointer: (recoveredValue1).
    (self) doesCompile.
    ^self
! !

"lib.ic method 0x20004f3c; bytecode file offset 0x40f6c"
!CompiledMethod methodsFor: 'recovered'!
emReadByteCodesFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EsByteCodeArray.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) readByteArray.
    recoveredValue3 := (recoveredValue0) emFromLinkerBytes: (recoveredValue2).
    (self) bytecodes: (recoveredValue3).
    ^self
! !

"lib.ic method 0x20004f94; bytecode file offset 0x41084"
!CompiledMethod methodsFor: 'recovered'!
localUserFieldAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) methodLocalUserFieldAtFor: (self) atName: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20004fac; bytecode file offset 0x41084"
!CompiledMethod methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) methodInheritedUserFieldAtFor: (self) atName: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20005094; bytecode file offset 0x4113c"
!CompiledMethod methodsFor: 'recovered'!
deleteInheritedUserFieldAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) methodDeleteInheritedUserFieldAtFor: (self) atName: (recoveredValue3).
    ^self
! !

"lib.ic method 0x200050dc; bytecode file offset 0x4113c"
!CompiledMethod methodsFor: 'recovered'!
deleteLocalUserFieldAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) methodDeleteLocalUserFieldAtFor: (self) atName: (recoveredValue3).
    ^self
! !

"lib.ic method 0x200055ac; bytecode file offset 0x41650"
!CompiledMethod methodsFor: 'recovered'!
description
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmImageSupport.
    recoveredValue1 := (recoveredValue0) textFilter.
    recoveredValue2 := (self) localUserFieldAt: ('description').
    recoveredValue3 := (recoveredValue1) filter: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20006028; bytecode file offset 0x42100"
!CompiledMethod methodsFor: 'recovered'!
localUserFieldAt: recoveredArg1 putRecord: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) methodLocalUserFieldAtPutRecordFor: (self) atName: (recoveredValue3) putRecord: (recoveredValue4).
    ^self
! !

"lib.ic method 0x20006070; bytecode file offset 0x42100"
!CompiledMethod methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) methodInheritedUserFieldAtPutFor: (self) atName: (recoveredValue3) put: (recoveredValue4).
    ^self
! !

"lib.ic method 0x20006088; bytecode file offset 0x42100"
!CompiledMethod methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1 putRecord: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) methodInheritedUserFieldAtPutRecordFor: (self) atName: (recoveredValue3) putRecord: (recoveredValue4).
    ^self
! !

"lib.ic method 0x200060d0; bytecode file offset 0x42100"
!CompiledMethod methodsFor: 'recovered'!
localUserFieldAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) methodLocalUserFieldAtPutFor: (self) atName: (recoveredValue3) put: (recoveredValue4).
    ^self
! !

"lib.ic method 0x20008368; bytecode file offset 0x443c0"
!CompiledMethod methodsFor: 'recovered'!
doesCompile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVoid.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) statusBits.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) doesCompileStatusBit.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) clearBit: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) statusBits: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20008388; bytecode file offset 0x443c0"
!CompiledMethod methodsFor: 'recovered'!
doesNotCompile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePointer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVoid.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) statusBits.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) doesCompileStatusBit.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) setBit: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) statusBits: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20009468; bytecode file offset 0x45494"
!CompiledMethod methodsFor: 'recovered'!
storeByteCodes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) application.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) addNewByteCodesFor: (self).
    recoveredBlock9Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) updateRecordWith: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000a7f8; bytecode file offset 0x46828"
!CompiledMethod methodsFor: 'recovered'!
canSee: recoveredArg1 ifNot: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) application.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodClass.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) userHasRightTo: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000b408; bytecode file offset 0x47440"
!CompiledMethod methodsFor: 'recovered'!
filePosition
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFilePointer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNumber.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 1073741823.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000c644; bytecode file offset 0x48670"
!CompiledMethod methodsFor: 'recovered'!
mustCompileStatusByte
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) canMethodBeLinked: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustCompileMethodFirst: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000d8b4; bytecode file offset 0x498f8"
!CompiledMethod methodsFor: 'recovered'!
editionStamp
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'MxEMc11'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) timeStamp.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) signature.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) application.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack3 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := NlsCatEMc.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := 'MxEMc12'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) residentMsg: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000e17c; bytecode file offset 0x4a1c8"
!CompiledMethod methodsFor: 'recovered'!
description: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) application.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 67.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) methodClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'description'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) localUserFieldAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000e1d8; bytecode file offset 0x4a224"
!CompiledMethod methodsFor: 'recovered'!
primitiveSourceVersion: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) application.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 68.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) methodClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'primitiveVersion'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) inheritedUserFieldAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000e484; bytecode file offset 0x4a4b8"
!CompiledMethod methodsFor: 'recovered'!
clearFilePosition
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFilePointer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadOnly.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) markReadOnly: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) markReadOnly: (recoveredStack1).
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

"lib.ic method 0x200106dc; bytecode file offset 0x4c71c"
!CompiledMethod methodsFor: 'recovered'!
loadPrevious
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) record.
    recoveredValue1 := (recoveredValue0) previousTimeStamp.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) methodClass.
    recoveredValue3 := (self) selector.
    recoveredValue4 := (recoveredValue2) shadowEditionsOf: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) timeStamp.
    recoveredBlock15Value2 := recoveredLocal1.
    recoveredBlock15Value3 := (recoveredBlock15Value1) = (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    recoveredValue6 := [
    ^false
].
    recoveredValue7 := (recoveredValue4) detect: (recoveredValue5) ifNone: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) load.
    ^recoveredValue8
! !

"lib.ic method 0x20010b70; bytecode file offset 0x4cbbc"
!CompiledMethod methodsFor: 'recovered'!
filePointer
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFilePointer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNumber.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := EmLibraryPointer.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromNumber: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) flags.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitShift: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) statusBits: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := EmLibraryPointer.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) void.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20010c68; bytecode file offset 0x4ccb8"
!CompiledMethod methodsFor: 'recovered'!
comment
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrivate.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'readPrivateSpec'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'readPublicSpec'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := NlsCatEMc.
    recoveredBlock18Value1 := (recoveredBlock18Value0) residentMsg: ('MxEMc10').
    ^recoveredBlock18Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) canSee: (recoveredStack1) ifNot: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) textFilter.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'comment'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) inheritedUserFieldAt: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) filter: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20012a78; bytecode file offset 0x4eab0"
!CompiledMethod methodsFor: 'recovered'!
emWriteLiteralsOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicAt: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) emWriteLiteralOn: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) position.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := EmMethodDecoding.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) raiseDecodeExceptionFor: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 47]] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20013c6c; bytecode file offset 0x4fca8"
!CompiledMethod methodsFor: 'recovered'!
emReadLiteralsFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) literalSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) readLiteral.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := BlockContextTemplate.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) methodContext: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) markReadOnly: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 12] ifFalse: [recoveredLocal2 := nil. recoveredPC := 51]] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20014188; bytecode file offset 0x501d8"
!CompiledMethod methodsFor: 'recovered'!
comment: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) application.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 66.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) methodClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodClass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) application.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) modifyIn: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 'comment'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) inheritedUserFieldAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20017750; bytecode file offset 0x537b4"
!CompiledMethod methodsFor: 'recovered'!
filePointer: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFilePointer.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := NlsCatEMcsES.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'MxEMcsES6'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadOnly.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) markReadOnly: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) asFilePosition.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) flags.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 65532.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) statusBits.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := -6.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitShift: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) flags: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) markReadOnly: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001b33c; bytecode file offset 0x573bc"
!CompiledMethod methodsFor: 'recovered'!
removeSource
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCurrentSupervisor.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EmImageSupport.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorReporter.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 374.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := #().
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) reportError: (recoveredStack2) withParms: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) canMethodBeLinked: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := '_PRAGMA_*'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) match: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:block28004cd8Arg1 | 
    | block28004cd8Value0 block28004cd8Value1 |
    block28004cd8Value0 := block28004cd8Arg1.
    block28004cd8Value1 := (block28004cd8Value0) removeSource.
    block28004cd8Value1
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) updateRecordWith: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorLog.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 'MxEMc148'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodClass.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001f158; bytecode file offset 0x5b1cc"
!CompiledMethod methodsFor: 'recovered'!
sourceString
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1PQCXCI'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDoit.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrivate.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'readPrivateSource'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'readPublicSource'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) canSee: (recoveredStack1) ifNot: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodClass.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentClass.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) classHasSourceFor: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) classSuppliedSourceFor: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) cache.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) filePointer.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodSourceAt: (recoveredStack1) decompress: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceFilter.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) filter: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20022050; bytecode file offset 0x5e0c4"
!CompiledMethod methodsFor: 'recovered'!
testVisibilityIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4Stack6 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg1.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isAssociation.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 18] ifFalse: [recoveredBlock4PC := 134].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := System.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) image.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) globalNamespace.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Arg1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) key.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack4 := [].
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) at: (recoveredBlock4Stack3) ifAbsent: (recoveredBlock4Stack4).
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 134] ifFalse: [recoveredBlock4PC := 36].
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Arg1.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) key.
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isNameVisible: (recoveredBlock4Stack3).
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 134] ifFalse: [recoveredBlock4PC := 52].
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 56.
        ].
        recoveredBlock4Step = 56 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) key.
            recoveredBlock4PC := 58.
        ].
        recoveredBlock4Step = 58 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            recoveredBlock4Stack1 := System.
            recoveredBlock4PC := 63.
        ].
        recoveredBlock4Step = 63 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) image.
            recoveredBlock4PC := 64.
        ].
        recoveredBlock4Step = 64 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) globalNamespace.
            recoveredBlock4PC := 65.
        ].
        recoveredBlock4Step = 65 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) allNamespaceNames.
            recoveredBlock4PC := 67.
        ].
        recoveredBlock4Step = 67 ifTrue: [
            recoveredBlock4Stack2 := [:recoveredBlock4Block67Arg1 | 
    | recoveredBlock4Block67Local1 recoveredBlock4Block67Stack0 recoveredBlock4Block67Stack1 recoveredBlock4Block67Stack2 recoveredBlock4Block67Stack3 recoveredBlock4Block67Stack4 recoveredBlock4Block67PC recoveredBlock4Block67Step recoveredBlock4Block67Done recoveredBlock4Block67Result |
    recoveredBlock4Block67Stack0 := nil.
    recoveredBlock4Block67PC := 74.
    recoveredBlock4Block67Done := false.
    [recoveredBlock4Block67Done not] whileTrue: [
        recoveredBlock4Block67Step := recoveredBlock4Block67PC.
        recoveredBlock4Block67Step = 74 ifTrue: [
            recoveredBlock4Block67Stack1 := System.
            recoveredBlock4Block67PC := 76.
        ].
        recoveredBlock4Block67Step = 76 ifTrue: [
            recoveredBlock4Block67Stack1 := (recoveredBlock4Block67Stack1) image.
            recoveredBlock4Block67PC := 77.
        ].
        recoveredBlock4Block67Step = 77 ifTrue: [
            recoveredBlock4Block67Stack1 := (recoveredBlock4Block67Stack1) globalNamespace.
            recoveredBlock4Block67PC := 78.
        ].
        recoveredBlock4Block67Step = 78 ifTrue: [
            recoveredBlock4Block67Stack2 := recoveredBlock4Block67Arg1.
            recoveredBlock4Block67PC := 79.
        ].
        recoveredBlock4Block67Step = 79 ifTrue: [
            recoveredBlock4Block67Stack1 := (recoveredBlock4Block67Stack1) namespaceAt: (recoveredBlock4Block67Stack2).
            recoveredBlock4Block67PC := 81.
        ].
        recoveredBlock4Block67Step = 81 ifTrue: [
            recoveredBlock4Block67Local1 := recoveredBlock4Block67Stack1.
            recoveredBlock4Block67PC := 82.
        ].
        recoveredBlock4Block67Step = 82 ifTrue: [
            recoveredBlock4Block67Stack1 := nil.
            recoveredBlock4Block67PC := 83.
        ].
        recoveredBlock4Block67Step = 83 ifTrue: [
            recoveredBlock4Block67Stack2 := recoveredBlock4Block67Local1.
            recoveredBlock4Block67PC := 84.
        ].
        recoveredBlock4Block67Step = 84 ifTrue: [
            recoveredBlock4Block67Stack3 := recoveredBlock4Arg1.
            recoveredBlock4Block67PC := 87.
        ].
        recoveredBlock4Block67Step = 87 ifTrue: [
            recoveredBlock4Block67Stack3 := (recoveredBlock4Block67Stack3) key.
            recoveredBlock4Block67PC := 89.
        ].
        recoveredBlock4Block67Step = 89 ifTrue: [
            recoveredBlock4Block67Stack2 := (recoveredBlock4Block67Stack2) includesKey: (recoveredBlock4Block67Stack3).
            recoveredBlock4Block67PC := 91.
        ].
        recoveredBlock4Block67Step = 91 ifTrue: [
            (recoveredBlock4Block67Stack2) ifTrue: [recoveredBlock4Block67PC := 94] ifFalse: [recoveredBlock4Block67PC := 109].
        ].
        recoveredBlock4Block67Step = 94 ifTrue: [
            recoveredBlock4Block67PC := 95.
        ].
        recoveredBlock4Block67Step = 95 ifTrue: [
            recoveredBlock4Block67Stack1 := '%1::%2'.
            recoveredBlock4Block67PC := 97.
        ].
        recoveredBlock4Block67Step = 97 ifTrue: [
            recoveredBlock4Block67Stack2 := recoveredBlock4Block67Arg1.
            recoveredBlock4Block67PC := 98.
        ].
        recoveredBlock4Block67Step = 98 ifTrue: [
            recoveredBlock4Block67Stack3 := recoveredBlock4Arg1.
            recoveredBlock4Block67PC := 101.
        ].
        recoveredBlock4Block67Step = 101 ifTrue: [
            recoveredBlock4Block67Stack3 := (recoveredBlock4Block67Stack3) key.
            recoveredBlock4Block67PC := 103.
        ].
        recoveredBlock4Block67Step = 103 ifTrue: [
            recoveredBlock4Block67Stack1 := (recoveredBlock4Block67Stack1) bindWith: (recoveredBlock4Block67Stack2) with: (recoveredBlock4Block67Stack3).
            recoveredBlock4Block67PC := 105.
        ].
        recoveredBlock4Block67Step = 105 ifTrue: [
            recoveredBlock4Block67Stack2 := recoveredBlock4Block67Stack1.
            recoveredBlock4Block67PC := 106.
        ].
        recoveredBlock4Block67Step = 106 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Block67Stack2.
            recoveredBlock4Block67PC := 109.
        ].
        recoveredBlock4Block67Step = 109 ifTrue: [
            recoveredBlock4Block67Result := recoveredBlock4Block67Stack1.
            recoveredBlock4Block67Done := true.
        ].
    ].
    recoveredBlock4Block67Result
].
            recoveredBlock4PC := 110.
        ].
        recoveredBlock4Step = 110 ifTrue: [
            (recoveredBlock4Stack1) do: (recoveredBlock4Stack2).
            recoveredBlock4PC := 112.
        ].
        recoveredBlock4Step = 112 ifTrue: [
            recoveredBlock4Stack1 := EmImageSupport.
            recoveredBlock4PC := 114.
        ].
        recoveredBlock4Step = 114 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) errorReporter.
            recoveredBlock4PC := 116.
        ].
        recoveredBlock4Step = 116 ifTrue: [
            recoveredBlock4Stack2 := 49.
            recoveredBlock4PC := 118.
        ].
        recoveredBlock4Step = 118 ifTrue: [
            recoveredBlock4Stack3 := Array.
            recoveredBlock4PC := 120.
        ].
        recoveredBlock4Step = 120 ifTrue: [
            recoveredBlock4Stack4 := self.
            recoveredBlock4PC := 121.
        ].
        recoveredBlock4Step = 121 ifTrue: [
            recoveredBlock4Stack4 := (recoveredBlock4Stack4) printString.
            recoveredBlock4PC := 123.
        ].
        recoveredBlock4Step = 123 ifTrue: [
            recoveredBlock4Stack5 := recoveredBlock4Local1.
            recoveredBlock4PC := 126.
        ].
        recoveredBlock4Step = 126 ifTrue: [
            recoveredBlock4Stack3 := (recoveredBlock4Stack3) with: (recoveredBlock4Stack4) with: (recoveredBlock4Stack5).
            recoveredBlock4PC := 128.
        ].
        recoveredBlock4Step = 128 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) logError: (recoveredBlock4Stack2) withParms: (recoveredBlock4Stack3).
            recoveredBlock4PC := 130.
        ].
        recoveredBlock4Step = 130 ifTrue: [
            recoveredBlock4Stack2 := nil.
            recoveredBlock4PC := 131.
        ].
        recoveredBlock4Step = 131 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack2.
            recoveredBlock4PC := 134.
        ].
        recoveredBlock4Step = 134 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) allLiteralsDo: (recoveredValue0).
    ^self
! !

"lib.ic method 0x20022f4c; bytecode file offset 0x5efe0"
!CompiledMethod methodsFor: 'recovered'!
editionStampWithCategories
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) application.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := NlsCatEMcsES.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'MxEMcsES1'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) categoriesFor: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := NlsCatEMcsES.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'MxEMcsES2'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) signature.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWith: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := WriteStream.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) preferredStringClass.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := NlsCatEMcsES.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := 'MxEMcsES3'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) residentMsg: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 82] ifFalse: [recoveredLocal1 := nil. recoveredPC := 110]] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := NlsCatEMcsES.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'MxEMcsES4'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := NlsCatEMcsES.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := 'MxEMcsES5'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) timeStamp.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) signature.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := (recoveredStack3) contents.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWith: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

