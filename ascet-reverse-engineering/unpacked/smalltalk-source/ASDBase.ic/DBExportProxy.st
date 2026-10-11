"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200014d8; bytecode file offset 0x8ffcfc"
!DBExportProxy methodsFor: 'recovered'!
asDBExportProxy
    ^self
! !

"ASDBase.ic method 0x20007b8c; bytecode file offset 0x908be4"
!DBExportProxy methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a030; bytecode file offset 0x966bdc"
!DBExportProxy methodsFor: 'recovered'!
offset
    | recoveredValue0 |
    recoveredValue0 := offset.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a8ac; bytecode file offset 0x967a18"
!DBExportProxy methodsFor: 'recovered'!
fileName
    | recoveredValue0 |
    recoveredValue0 := fileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b5e8; bytecode file offset 0x96873c"
!DBExportProxy methodsFor: 'recovered'!
attachedFiles
    | recoveredValue0 |
    recoveredValue0 := attachedFiles.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c96c; bytecode file offset 0x9692b0"
!DBExportProxy methodsFor: 'recovered'!
attributeOffsets
    | recoveredValue0 |
    recoveredValue0 := attributeOffsets.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cfe0; bytecode file offset 0x969c04"
!DBExportProxy methodsFor: 'recovered'!
attachedOffsets
    | recoveredValue0 |
    recoveredValue0 := attachedOffsets.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d83c; bytecode file offset 0x96a390"
!DBExportProxy methodsFor: 'recovered'!
classNameToDetectInterface
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d87c; bytecode file offset 0x96a390"
!DBExportProxy methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20089894; bytecode file offset 0x986180"
!DBExportProxy methodsFor: 'recovered'!
newAttributeOffsets
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    attributeOffsets := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200898e0; bytecode file offset 0x9861bc"
!DBExportProxy methodsFor: 'recovered'!
newAttachedOffsets
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    attachedOffsets := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20092ebc; bytecode file offset 0x98f7b0"
!DBExportProxy methodsFor: 'recovered'!
addAttributeOffset: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := attributeOffsets.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092f44; bytecode file offset 0x98f814"
!DBExportProxy methodsFor: 'recovered'!
addAttachedOffset: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := attachedOffsets.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c11e8; bytecode file offset 0x9bdf14"
!DBExportProxy methodsFor: 'recovered'!
offset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    offset := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1f5c; bytecode file offset 0x9beac8"
!DBExportProxy methodsFor: 'recovered'!
fileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2b68; bytecode file offset 0x9bf474"
!DBExportProxy methodsFor: 'recovered'!
attachedFiles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attachedFiles := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c33d4; bytecode file offset 0x9bfde0"
!DBExportProxy methodsFor: 'recovered'!
attributeOffsets: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributeOffsets := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3bc8; bytecode file offset 0x9c058c"
!DBExportProxy methodsFor: 'recovered'!
attachedOffsets: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attachedOffsets := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4264; bytecode file offset 0x9c0bf0"
!DBExportProxy methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20115e74; bytecode file offset 0xa1272c"
!DBExportProxy methodsFor: 'recovered'!
minimizeCollections
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attachedFiles.
    (recoveredValue0) minimizeSize.
    recoveredValue1 := attributeOffsets.
    (recoveredValue1) minimizeSize.
    recoveredValue2 := attachedOffsets.
    (recoveredValue2) minimizeSize.
    ^self
! !

"ASDBase.ic method 0x20269fd8; bytecode file offset 0xb6689c"
!DBExportProxy methodsFor: 'recovered'!
estimateExportExtSpace
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := ('Kk') == ('Call_71182').
    recoveredValue1 := attachedOffsets.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) * (8).
    recoveredValue4 := (128) - (recoveredValue3).
    recoveredValue5 := (recoveredValue4) max: (0).
    recoveredValue6 := attributeOffsets.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := (recoveredValue7) * (8).
    recoveredValue9 := (128) - (recoveredValue8).
    recoveredValue10 := (recoveredValue9) max: (0).
    recoveredValue11 := (recoveredValue5) + (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x20296f00; bytecode file offset 0xb937e0"
!DBExportProxy methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initialize.
    recoveredValue0 := ('Kk') == ('Call_71182').
    recoveredValue1 := ('Kk') == ('ASC_MaxDatabaseSize').
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) dummyExportOffset.
    offset := recoveredValue3.
    fileName := nil.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    attachedFiles := recoveredValue5.
    (self) newAttributeOffsets.
    (self) newAttachedOffsets.
    ^self
! !

"ASDBase.ic method 0x20410890; bytecode file offset 0xd0d174"
!DBExportProxy methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super printOn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := interface.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) readProxy.
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
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) className.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'name '.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := name.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'offset '.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := offset.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'attributeOffsets: '.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := attributeOffsets.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'attachedFiles: '.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := attachedFiles.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := ' atOffsets: '.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := attachedOffsets.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

