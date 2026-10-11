"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x203bfa80; bytecode file offset 0xcbc354"
!AbtViewAttachmentConstraint methodsFor: 'recovered'!
setAttachments: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasAttachments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) setConstantAttachments: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Local2 recoveredBlock17Local3 recoveredBlock17Local4 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) leftEdge.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Local4 := recoveredBlock17Stack1.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            (recoveredBlock17Stack0 == nil) ifTrue: [recoveredBlock17PC := 35] ifFalse: [recoveredBlock17PC := 30].
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Local4.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            (recoveredBlock17Stack0) attachEdge: (recoveredBlock17Stack1).
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) rightEdge.
            recoveredBlock17PC := 38.
        ].
        recoveredBlock17Step = 38 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 40.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            (recoveredBlock17Stack0 == nil) ifTrue: [recoveredBlock17PC := 49] ifFalse: [recoveredBlock17PC := 44].
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Local1.
            recoveredBlock17PC := 45.
        ].
        recoveredBlock17Step = 45 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            (recoveredBlock17Stack0) attachEdge: (recoveredBlock17Stack1).
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 50 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) topEdge.
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 53.
        ].
        recoveredBlock17Step = 53 ifTrue: [
            recoveredBlock17Local2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            (recoveredBlock17Stack0 == nil) ifTrue: [recoveredBlock17PC := 63] ifFalse: [recoveredBlock17PC := 58].
        ].
        recoveredBlock17Step = 58 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Local2.
            recoveredBlock17PC := 59.
        ].
        recoveredBlock17Step = 59 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            (recoveredBlock17Stack0) attachEdge: (recoveredBlock17Stack1).
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Stack0 := nil.
            recoveredBlock17PC := 64.
        ].
        recoveredBlock17Step = 64 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) bottomEdge.
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 68.
        ].
        recoveredBlock17Step = 68 ifTrue: [
            recoveredBlock17Local3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 69.
        ].
        recoveredBlock17Step = 69 ifTrue: [
            (recoveredBlock17Stack1 == nil) ifTrue: [recoveredBlock17PC := 77] ifFalse: [recoveredBlock17PC := 72].
        ].
        recoveredBlock17Step = 72 ifTrue: [
            recoveredBlock17PC := 73.
        ].
        recoveredBlock17Step = 73 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Local3.
            recoveredBlock17PC := 74.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 76.
        ].
        recoveredBlock17Step = 76 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) attachEdge: (recoveredBlock17Stack1).
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack0.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20439650; bytecode file offset 0xd35f4c"
!AbtViewAttachmentConstraint methodsFor: 'recovered'!
setViewAttachments: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasAttachments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) setConstantViewAttachments: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) leftEdge.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Stack0.
            recoveredBlock23PC := 32.
        ].
        recoveredBlock23Step = 32 ifTrue: [
            recoveredLocal4 := recoveredBlock23Stack1.
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            (recoveredBlock23Stack0 == nil) ifTrue: [recoveredBlock23PC := 46] ifFalse: [recoveredBlock23PC := 38].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23Stack0 := recoveredLocal4.
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg1.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            (recoveredBlock23Stack0) attachViewEdge: (recoveredBlock23Stack1).
            recoveredBlock23PC := 46.
        ].
        recoveredBlock23Step = 46 ifTrue: [
            recoveredBlock23Stack0 := self.
            recoveredBlock23PC := 47.
        ].
        recoveredBlock23Step = 47 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) rightEdge.
            recoveredBlock23PC := 49.
        ].
        recoveredBlock23Step = 49 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Stack0.
            recoveredBlock23PC := 50.
        ].
        recoveredBlock23Step = 50 ifTrue: [
            recoveredLocal3 := recoveredBlock23Stack1.
            recoveredBlock23PC := 53.
        ].
        recoveredBlock23Step = 53 ifTrue: [
            (recoveredBlock23Stack0 == nil) ifTrue: [recoveredBlock23PC := 64] ifFalse: [recoveredBlock23PC := 56].
        ].
        recoveredBlock23Step = 56 ifTrue: [
            recoveredBlock23Stack0 := recoveredLocal3.
            recoveredBlock23PC := 59.
        ].
        recoveredBlock23Step = 59 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg1.
            recoveredBlock23PC := 62.
        ].
        recoveredBlock23Step = 62 ifTrue: [
            (recoveredBlock23Stack0) attachViewEdge: (recoveredBlock23Stack1).
            recoveredBlock23PC := 64.
        ].
        recoveredBlock23Step = 64 ifTrue: [
            recoveredBlock23Stack0 := self.
            recoveredBlock23PC := 65.
        ].
        recoveredBlock23Step = 65 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) topEdge.
            recoveredBlock23PC := 67.
        ].
        recoveredBlock23Step = 67 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Stack0.
            recoveredBlock23PC := 68.
        ].
        recoveredBlock23Step = 68 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 71.
        ].
        recoveredBlock23Step = 71 ifTrue: [
            (recoveredBlock23Stack0 == nil) ifTrue: [recoveredBlock23PC := 82] ifFalse: [recoveredBlock23PC := 74].
        ].
        recoveredBlock23Step = 74 ifTrue: [
            recoveredBlock23Stack0 := recoveredLocal2.
            recoveredBlock23PC := 77.
        ].
        recoveredBlock23Step = 77 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg1.
            recoveredBlock23PC := 80.
        ].
        recoveredBlock23Step = 80 ifTrue: [
            (recoveredBlock23Stack0) attachViewEdge: (recoveredBlock23Stack1).
            recoveredBlock23PC := 82.
        ].
        recoveredBlock23Step = 82 ifTrue: [
            recoveredBlock23Stack0 := nil.
            recoveredBlock23PC := 83.
        ].
        recoveredBlock23Step = 83 ifTrue: [
            recoveredBlock23Stack1 := self.
            recoveredBlock23PC := 84.
        ].
        recoveredBlock23Step = 84 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) bottomEdge.
            recoveredBlock23PC := 86.
        ].
        recoveredBlock23Step = 86 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 87.
        ].
        recoveredBlock23Step = 87 ifTrue: [
            recoveredLocal1 := recoveredBlock23Stack2.
            recoveredBlock23PC := 90.
        ].
        recoveredBlock23Step = 90 ifTrue: [
            (recoveredBlock23Stack1 == nil) ifTrue: [recoveredBlock23PC := 102] ifFalse: [recoveredBlock23PC := 94].
        ].
        recoveredBlock23Step = 94 ifTrue: [
            recoveredBlock23PC := 95.
        ].
        recoveredBlock23Step = 95 ifTrue: [
            recoveredBlock23Stack0 := recoveredLocal1.
            recoveredBlock23PC := 98.
        ].
        recoveredBlock23Step = 98 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg1.
            recoveredBlock23PC := 101.
        ].
        recoveredBlock23Step = 101 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) attachViewEdge: (recoveredBlock23Stack1).
            recoveredBlock23PC := 102.
        ].
        recoveredBlock23Step = 102 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack0.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) setFramingWidgetValues: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20439678; bytecode file offset 0xd35f4c"
!AbtViewAttachmentConstraint methodsFor: 'recovered'!
setViewAttachmentsBlock: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasAttachments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) setConstantViewAttachmentsBlock: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) leftEdge.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Stack0.
            recoveredBlock23PC := 32.
        ].
        recoveredBlock23Step = 32 ifTrue: [
            recoveredLocal4 := recoveredBlock23Stack1.
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            (recoveredBlock23Stack0 == nil) ifTrue: [recoveredBlock23PC := 46] ifFalse: [recoveredBlock23PC := 38].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23Stack0 := recoveredLocal4.
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg1.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            (recoveredBlock23Stack0) attachViewEdge: (recoveredBlock23Stack1).
            recoveredBlock23PC := 46.
        ].
        recoveredBlock23Step = 46 ifTrue: [
            recoveredBlock23Stack0 := self.
            recoveredBlock23PC := 47.
        ].
        recoveredBlock23Step = 47 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) rightEdge.
            recoveredBlock23PC := 49.
        ].
        recoveredBlock23Step = 49 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Stack0.
            recoveredBlock23PC := 50.
        ].
        recoveredBlock23Step = 50 ifTrue: [
            recoveredLocal3 := recoveredBlock23Stack1.
            recoveredBlock23PC := 53.
        ].
        recoveredBlock23Step = 53 ifTrue: [
            (recoveredBlock23Stack0 == nil) ifTrue: [recoveredBlock23PC := 64] ifFalse: [recoveredBlock23PC := 56].
        ].
        recoveredBlock23Step = 56 ifTrue: [
            recoveredBlock23Stack0 := recoveredLocal3.
            recoveredBlock23PC := 59.
        ].
        recoveredBlock23Step = 59 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg1.
            recoveredBlock23PC := 62.
        ].
        recoveredBlock23Step = 62 ifTrue: [
            (recoveredBlock23Stack0) attachViewEdge: (recoveredBlock23Stack1).
            recoveredBlock23PC := 64.
        ].
        recoveredBlock23Step = 64 ifTrue: [
            recoveredBlock23Stack0 := self.
            recoveredBlock23PC := 65.
        ].
        recoveredBlock23Step = 65 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) topEdge.
            recoveredBlock23PC := 67.
        ].
        recoveredBlock23Step = 67 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Stack0.
            recoveredBlock23PC := 68.
        ].
        recoveredBlock23Step = 68 ifTrue: [
            recoveredLocal2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 71.
        ].
        recoveredBlock23Step = 71 ifTrue: [
            (recoveredBlock23Stack0 == nil) ifTrue: [recoveredBlock23PC := 82] ifFalse: [recoveredBlock23PC := 74].
        ].
        recoveredBlock23Step = 74 ifTrue: [
            recoveredBlock23Stack0 := recoveredLocal2.
            recoveredBlock23PC := 77.
        ].
        recoveredBlock23Step = 77 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg1.
            recoveredBlock23PC := 80.
        ].
        recoveredBlock23Step = 80 ifTrue: [
            (recoveredBlock23Stack0) attachViewEdge: (recoveredBlock23Stack1).
            recoveredBlock23PC := 82.
        ].
        recoveredBlock23Step = 82 ifTrue: [
            recoveredBlock23Stack0 := nil.
            recoveredBlock23PC := 83.
        ].
        recoveredBlock23Step = 83 ifTrue: [
            recoveredBlock23Stack1 := self.
            recoveredBlock23PC := 84.
        ].
        recoveredBlock23Step = 84 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) bottomEdge.
            recoveredBlock23PC := 86.
        ].
        recoveredBlock23Step = 86 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 87.
        ].
        recoveredBlock23Step = 87 ifTrue: [
            recoveredLocal1 := recoveredBlock23Stack2.
            recoveredBlock23PC := 90.
        ].
        recoveredBlock23Step = 90 ifTrue: [
            (recoveredBlock23Stack1 == nil) ifTrue: [recoveredBlock23PC := 102] ifFalse: [recoveredBlock23PC := 94].
        ].
        recoveredBlock23Step = 94 ifTrue: [
            recoveredBlock23PC := 95.
        ].
        recoveredBlock23Step = 95 ifTrue: [
            recoveredBlock23Stack0 := recoveredLocal1.
            recoveredBlock23PC := 98.
        ].
        recoveredBlock23Step = 98 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg1.
            recoveredBlock23PC := 101.
        ].
        recoveredBlock23Step = 101 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) attachViewEdge: (recoveredBlock23Stack1).
            recoveredBlock23PC := 102.
        ].
        recoveredBlock23Step = 102 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack0.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) setFramingWidgetValuesBlock: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20493e64; bytecode file offset 0xd90740"
!AbtViewAttachmentConstraint methodsFor: 'recovered'!
initWidgetSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftEdge.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) topEdge.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftEdge.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) initWidgetLeft.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) topEdge.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) initWidgetTop.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightEdge.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) bottomEdge.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightEdge.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) initWidgetWidth.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) bottomEdge.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) initWidgetHeight.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftEdge.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) initWidgetLeft.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) topEdge.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) initWidgetTop.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightEdge.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) initWidgetWidth.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) bottomEdge.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) initWidgetHeight.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) extent: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 133.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightEdge.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) bottomEdge.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightEdge.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) initWidgetWidth.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) bottomEdge.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) initWidgetHeight.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightEdge.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) initWidgetWidth.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottomEdge.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) initWidgetHeight.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 133.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f06d0; bytecode file offset 0xded014"
!AbtViewAttachmentConstraint methodsFor: 'recovered'!
setConstantViewAttachmentsBlock: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PTR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PTR7895'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Local2 recoveredBlock19Local3 recoveredBlock19Local4 recoveredBlock19Local5 recoveredBlock19Local6 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19Stack6 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg1.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) framingWidget.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Local6 := recoveredBlock19Stack1.
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) leftEdge.
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            (recoveredBlock19Stack0 == nil) ifTrue: [recoveredBlock19PC := 46] ifFalse: [recoveredBlock19PC := 36].
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) leftEdge.
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) offset.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Local5 := recoveredBlock19Stack1.
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            (recoveredBlock19Stack0 ~~ nil) ifTrue: [recoveredBlock19PC := 54] ifFalse: [recoveredBlock19PC := 46].
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local6.
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) abtPrimaryCommonWidget.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) x.
            recoveredBlock19PC := 52.
        ].
        recoveredBlock19Step = 52 ifTrue: [
            recoveredBlock19Local5 := recoveredBlock19Stack0.
            recoveredBlock19PC := 54.
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) topEdge.
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            (recoveredBlock19Stack0 == nil) ifTrue: [recoveredBlock19PC := 70] ifFalse: [recoveredBlock19PC := 60].
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) topEdge.
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) offset.
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 66.
        ].
        recoveredBlock19Step = 66 ifTrue: [
            recoveredBlock19Local4 := recoveredBlock19Stack1.
            recoveredBlock19PC := 67.
        ].
        recoveredBlock19Step = 67 ifTrue: [
            (recoveredBlock19Stack0 ~~ nil) ifTrue: [recoveredBlock19PC := 77] ifFalse: [recoveredBlock19PC := 70].
        ].
        recoveredBlock19Step = 70 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local6.
            recoveredBlock19PC := 72.
        ].
        recoveredBlock19Step = 72 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) abtPrimaryCommonWidget.
            recoveredBlock19PC := 74.
        ].
        recoveredBlock19Step = 74 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) y.
            recoveredBlock19PC := 76.
        ].
        recoveredBlock19Step = 76 ifTrue: [
            recoveredBlock19Local4 := recoveredBlock19Stack0.
            recoveredBlock19PC := 77.
        ].
        recoveredBlock19Step = 77 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 78.
        ].
        recoveredBlock19Step = 78 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) rightEdge.
            recoveredBlock19PC := 80.
        ].
        recoveredBlock19Step = 80 ifTrue: [
            (recoveredBlock19Stack0 ~~ nil) ifTrue: [recoveredBlock19PC := 100] ifFalse: [recoveredBlock19PC := 84].
        ].
        recoveredBlock19Step = 84 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 85.
        ].
        recoveredBlock19Step = 85 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) bottomEdge.
            recoveredBlock19PC := 87.
        ].
        recoveredBlock19Step = 87 ifTrue: [
            (recoveredBlock19Stack0 ~~ nil) ifTrue: [recoveredBlock19PC := 100] ifFalse: [recoveredBlock19PC := 90].
        ].
        recoveredBlock19Step = 90 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local6.
            recoveredBlock19PC := 92.
        ].
        recoveredBlock19Step = 92 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local5.
            recoveredBlock19PC := 94.
        ].
        recoveredBlock19Step = 94 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local4.
            recoveredBlock19PC := 95.
        ].
        recoveredBlock19Step = 95 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) moveWidget: (recoveredBlock19Stack1) y: (recoveredBlock19Stack2).
            recoveredBlock19PC := 97.
        ].
        recoveredBlock19Step = 97 ifTrue: [
            recoveredBlock19PC := 165.
        ].
        recoveredBlock19Step = 100 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 101.
        ].
        recoveredBlock19Step = 101 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) rightEdge.
            recoveredBlock19PC := 103.
        ].
        recoveredBlock19Step = 103 ifTrue: [
            (recoveredBlock19Stack0 == nil) ifTrue: [recoveredBlock19PC := 116] ifFalse: [recoveredBlock19PC := 106].
        ].
        recoveredBlock19Step = 106 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 107.
        ].
        recoveredBlock19Step = 107 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) rightEdge.
            recoveredBlock19PC := 109.
        ].
        recoveredBlock19Step = 109 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) offset.
            recoveredBlock19PC := 111.
        ].
        recoveredBlock19Step = 111 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 112.
        ].
        recoveredBlock19Step = 112 ifTrue: [
            recoveredBlock19Local3 := recoveredBlock19Stack1.
            recoveredBlock19PC := 113.
        ].
        recoveredBlock19Step = 113 ifTrue: [
            (recoveredBlock19Stack0 ~~ nil) ifTrue: [recoveredBlock19PC := 123] ifFalse: [recoveredBlock19PC := 116].
        ].
        recoveredBlock19Step = 116 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local6.
            recoveredBlock19PC := 118.
        ].
        recoveredBlock19Step = 118 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) abtPrimaryCommonWidget.
            recoveredBlock19PC := 120.
        ].
        recoveredBlock19Step = 120 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) width.
            recoveredBlock19PC := 122.
        ].
        recoveredBlock19Step = 122 ifTrue: [
            recoveredBlock19Local3 := recoveredBlock19Stack0.
            recoveredBlock19PC := 123.
        ].
        recoveredBlock19Step = 123 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 124.
        ].
        recoveredBlock19Step = 124 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) bottomEdge.
            recoveredBlock19PC := 126.
        ].
        recoveredBlock19Step = 126 ifTrue: [
            (recoveredBlock19Stack0 == nil) ifTrue: [recoveredBlock19PC := 140] ifFalse: [recoveredBlock19PC := 130].
        ].
        recoveredBlock19Step = 130 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 131.
        ].
        recoveredBlock19Step = 131 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) bottomEdge.
            recoveredBlock19PC := 133.
        ].
        recoveredBlock19Step = 133 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) offset.
            recoveredBlock19PC := 135.
        ].
        recoveredBlock19Step = 135 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 136.
        ].
        recoveredBlock19Step = 136 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 137.
        ].
        recoveredBlock19Step = 137 ifTrue: [
            (recoveredBlock19Stack0 ~~ nil) ifTrue: [recoveredBlock19PC := 147] ifFalse: [recoveredBlock19PC := 140].
        ].
        recoveredBlock19Step = 140 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local6.
            recoveredBlock19PC := 142.
        ].
        recoveredBlock19Step = 142 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) abtPrimaryCommonWidget.
            recoveredBlock19PC := 144.
        ].
        recoveredBlock19Step = 144 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) height.
            recoveredBlock19PC := 146.
        ].
        recoveredBlock19Step = 146 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack0.
            recoveredBlock19PC := 147.
        ].
        recoveredBlock19Step = 147 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local6.
            recoveredBlock19PC := 149.
        ].
        recoveredBlock19Step = 149 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) abtPrimaryCommonWidget.
            recoveredBlock19PC := 151.
        ].
        recoveredBlock19Step = 151 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) borderWidth.
            recoveredBlock19PC := 153.
        ].
        recoveredBlock19Step = 153 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 154.
        ].
        recoveredBlock19Step = 154 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local6.
            recoveredBlock19PC := 156.
        ].
        recoveredBlock19Step = 156 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local5.
            recoveredBlock19PC := 158.
        ].
        recoveredBlock19Step = 158 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local4.
            recoveredBlock19PC := 159.
        ].
        recoveredBlock19Step = 159 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Local3.
            recoveredBlock19PC := 160.
        ].
        recoveredBlock19Step = 160 ifTrue: [
            recoveredBlock19Stack4 := recoveredBlock19Local2.
            recoveredBlock19PC := 161.
        ].
        recoveredBlock19Step = 161 ifTrue: [
            recoveredBlock19Stack5 := recoveredBlock19Local1.
            recoveredBlock19PC := 162.
        ].
        recoveredBlock19Step = 162 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) configureWidget: (recoveredBlock19Stack1) y: (recoveredBlock19Stack2) width: (recoveredBlock19Stack3) height: (recoveredBlock19Stack4) borderWidth: (recoveredBlock19Stack5).
            recoveredBlock19PC := 165.
        ].
        recoveredBlock19Step = 165 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack0.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) setFramingWidgetValuesBlock: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f071c; bytecode file offset 0xded014"
!AbtViewAttachmentConstraint methodsFor: 'recovered'!
setConstantViewAttachments: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PTR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PTR7895'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Local2 recoveredBlock19Local3 recoveredBlock19Local4 recoveredBlock19Local5 recoveredBlock19Local6 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19Stack6 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg1.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) framingWidget.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Local6 := recoveredBlock19Stack1.
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) leftEdge.
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            (recoveredBlock19Stack0 == nil) ifTrue: [recoveredBlock19PC := 46] ifFalse: [recoveredBlock19PC := 36].
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) leftEdge.
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) offset.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Local5 := recoveredBlock19Stack1.
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            (recoveredBlock19Stack0 ~~ nil) ifTrue: [recoveredBlock19PC := 54] ifFalse: [recoveredBlock19PC := 46].
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local6.
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) abtPrimaryCommonWidget.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) x.
            recoveredBlock19PC := 52.
        ].
        recoveredBlock19Step = 52 ifTrue: [
            recoveredBlock19Local5 := recoveredBlock19Stack0.
            recoveredBlock19PC := 54.
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) topEdge.
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            (recoveredBlock19Stack0 == nil) ifTrue: [recoveredBlock19PC := 70] ifFalse: [recoveredBlock19PC := 60].
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) topEdge.
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) offset.
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 66.
        ].
        recoveredBlock19Step = 66 ifTrue: [
            recoveredBlock19Local4 := recoveredBlock19Stack1.
            recoveredBlock19PC := 67.
        ].
        recoveredBlock19Step = 67 ifTrue: [
            (recoveredBlock19Stack0 ~~ nil) ifTrue: [recoveredBlock19PC := 77] ifFalse: [recoveredBlock19PC := 70].
        ].
        recoveredBlock19Step = 70 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local6.
            recoveredBlock19PC := 72.
        ].
        recoveredBlock19Step = 72 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) abtPrimaryCommonWidget.
            recoveredBlock19PC := 74.
        ].
        recoveredBlock19Step = 74 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) y.
            recoveredBlock19PC := 76.
        ].
        recoveredBlock19Step = 76 ifTrue: [
            recoveredBlock19Local4 := recoveredBlock19Stack0.
            recoveredBlock19PC := 77.
        ].
        recoveredBlock19Step = 77 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 78.
        ].
        recoveredBlock19Step = 78 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) rightEdge.
            recoveredBlock19PC := 80.
        ].
        recoveredBlock19Step = 80 ifTrue: [
            (recoveredBlock19Stack0 ~~ nil) ifTrue: [recoveredBlock19PC := 100] ifFalse: [recoveredBlock19PC := 84].
        ].
        recoveredBlock19Step = 84 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 85.
        ].
        recoveredBlock19Step = 85 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) bottomEdge.
            recoveredBlock19PC := 87.
        ].
        recoveredBlock19Step = 87 ifTrue: [
            (recoveredBlock19Stack0 ~~ nil) ifTrue: [recoveredBlock19PC := 100] ifFalse: [recoveredBlock19PC := 90].
        ].
        recoveredBlock19Step = 90 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local6.
            recoveredBlock19PC := 92.
        ].
        recoveredBlock19Step = 92 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local5.
            recoveredBlock19PC := 94.
        ].
        recoveredBlock19Step = 94 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local4.
            recoveredBlock19PC := 95.
        ].
        recoveredBlock19Step = 95 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) moveWidget: (recoveredBlock19Stack1) y: (recoveredBlock19Stack2).
            recoveredBlock19PC := 97.
        ].
        recoveredBlock19Step = 97 ifTrue: [
            recoveredBlock19PC := 165.
        ].
        recoveredBlock19Step = 100 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 101.
        ].
        recoveredBlock19Step = 101 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) rightEdge.
            recoveredBlock19PC := 103.
        ].
        recoveredBlock19Step = 103 ifTrue: [
            (recoveredBlock19Stack0 == nil) ifTrue: [recoveredBlock19PC := 116] ifFalse: [recoveredBlock19PC := 106].
        ].
        recoveredBlock19Step = 106 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 107.
        ].
        recoveredBlock19Step = 107 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) rightEdge.
            recoveredBlock19PC := 109.
        ].
        recoveredBlock19Step = 109 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) offset.
            recoveredBlock19PC := 111.
        ].
        recoveredBlock19Step = 111 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 112.
        ].
        recoveredBlock19Step = 112 ifTrue: [
            recoveredBlock19Local3 := recoveredBlock19Stack1.
            recoveredBlock19PC := 113.
        ].
        recoveredBlock19Step = 113 ifTrue: [
            (recoveredBlock19Stack0 ~~ nil) ifTrue: [recoveredBlock19PC := 123] ifFalse: [recoveredBlock19PC := 116].
        ].
        recoveredBlock19Step = 116 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local6.
            recoveredBlock19PC := 118.
        ].
        recoveredBlock19Step = 118 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) abtPrimaryCommonWidget.
            recoveredBlock19PC := 120.
        ].
        recoveredBlock19Step = 120 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) width.
            recoveredBlock19PC := 122.
        ].
        recoveredBlock19Step = 122 ifTrue: [
            recoveredBlock19Local3 := recoveredBlock19Stack0.
            recoveredBlock19PC := 123.
        ].
        recoveredBlock19Step = 123 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 124.
        ].
        recoveredBlock19Step = 124 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) bottomEdge.
            recoveredBlock19PC := 126.
        ].
        recoveredBlock19Step = 126 ifTrue: [
            (recoveredBlock19Stack0 == nil) ifTrue: [recoveredBlock19PC := 140] ifFalse: [recoveredBlock19PC := 130].
        ].
        recoveredBlock19Step = 130 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 131.
        ].
        recoveredBlock19Step = 131 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) bottomEdge.
            recoveredBlock19PC := 133.
        ].
        recoveredBlock19Step = 133 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) offset.
            recoveredBlock19PC := 135.
        ].
        recoveredBlock19Step = 135 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 136.
        ].
        recoveredBlock19Step = 136 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 137.
        ].
        recoveredBlock19Step = 137 ifTrue: [
            (recoveredBlock19Stack0 ~~ nil) ifTrue: [recoveredBlock19PC := 147] ifFalse: [recoveredBlock19PC := 140].
        ].
        recoveredBlock19Step = 140 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local6.
            recoveredBlock19PC := 142.
        ].
        recoveredBlock19Step = 142 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) abtPrimaryCommonWidget.
            recoveredBlock19PC := 144.
        ].
        recoveredBlock19Step = 144 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) height.
            recoveredBlock19PC := 146.
        ].
        recoveredBlock19Step = 146 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack0.
            recoveredBlock19PC := 147.
        ].
        recoveredBlock19Step = 147 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local6.
            recoveredBlock19PC := 149.
        ].
        recoveredBlock19Step = 149 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) abtPrimaryCommonWidget.
            recoveredBlock19PC := 151.
        ].
        recoveredBlock19Step = 151 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) borderWidth.
            recoveredBlock19PC := 153.
        ].
        recoveredBlock19Step = 153 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 154.
        ].
        recoveredBlock19Step = 154 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Local6.
            recoveredBlock19PC := 156.
        ].
        recoveredBlock19Step = 156 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local5.
            recoveredBlock19PC := 158.
        ].
        recoveredBlock19Step = 158 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local4.
            recoveredBlock19PC := 159.
        ].
        recoveredBlock19Step = 159 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Local3.
            recoveredBlock19PC := 160.
        ].
        recoveredBlock19Step = 160 ifTrue: [
            recoveredBlock19Stack4 := recoveredBlock19Local2.
            recoveredBlock19PC := 161.
        ].
        recoveredBlock19Step = 161 ifTrue: [
            recoveredBlock19Stack5 := recoveredBlock19Local1.
            recoveredBlock19PC := 162.
        ].
        recoveredBlock19Step = 162 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) configureWidget: (recoveredBlock19Stack1) y: (recoveredBlock19Stack2) width: (recoveredBlock19Stack3) height: (recoveredBlock19Stack4) borderWidth: (recoveredBlock19Stack5).
            recoveredBlock19PC := 165.
        ].
        recoveredBlock19Step = 165 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack0.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) setFramingWidgetValues: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052cd9c; bytecode file offset 0xe2969c"
!AbtViewAttachmentConstraint methodsFor: 'recovered'!
setConstantAttachments: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PTR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PTR7895'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 199] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftEdge.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftEdge.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) offset.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtPrimaryCommonWidget.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) topEdge.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) topEdge.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) offset.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtPrimaryCommonWidget.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightEdge.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottomEdge.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) moveWidget: (recoveredStack2) y: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 199.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightEdge.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightEdge.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) offset.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtPrimaryCommonWidget.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottomEdge.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottomEdge.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) offset.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtPrimaryCommonWidget.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtPrimaryCommonWidget.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) borderWidth.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := [:recoveredBlock165Arg1 | 
    | recoveredBlock165Value0 recoveredBlock165Value1 recoveredBlock165Value2 recoveredBlock165Value3 recoveredBlock165Value4 recoveredBlock165Value5 recoveredBlock165Value6 recoveredBlock165Value7 recoveredBlock165Value8 |
    recoveredBlock165Value0 := recoveredBlock165Arg1.
    recoveredBlock165Value1 := recoveredBlock165Value0.
    recoveredBlock165Value2 := recoveredLocal5.
    (recoveredBlock165Value1) x: (recoveredBlock165Value2).
    recoveredBlock165Value3 := recoveredBlock165Value0.
    recoveredBlock165Value4 := recoveredLocal4.
    (recoveredBlock165Value3) y: (recoveredBlock165Value4).
    recoveredBlock165Value5 := recoveredBlock165Value0.
    recoveredBlock165Value6 := recoveredLocal3.
    (recoveredBlock165Value5) width: (recoveredBlock165Value6).
    recoveredBlock165Value7 := recoveredLocal2.
    recoveredBlock165Value8 := (recoveredBlock165Value0) height: (recoveredBlock165Value7).
    recoveredBlock165Value8
].
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

