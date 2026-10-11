"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200011a4; bytecode file offset 0x626a4"
!SstEnhancedSelect class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('SST-API' 'SST-Infrastructure' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20001540; bytecode file offset 0x626a4"
!SstEnhancedSelect class methodsFor: 'recovered'!
classMethodCategories
    ^#('SST-API' 'SST-Infrastructure' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20002928; bytecode file offset 0x63b1c"
!SstEnhancedSelect class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x2000bbfc; bytecode file offset 0x6ccd0"
!SstEnhancedSelect class methodsFor: 'recovered'!
preStartUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SstSocketDemultiplexor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800a6ecArg1 | 
    | block2800a6ecValue0 block2800a6ecValue1 |
    block2800a6ecValue0 := block2800a6ecArg1.
    block2800a6ecValue1 := (block2800a6ecValue0) attemptInstallation.
    block2800a6ecValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) withAllSubclassesDo: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001875c; bytecode file offset 0x79c2c"
!SstEnhancedSelect class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800b1c0Arg1 | 
    | block2800b1c0Stack0 block2800b1c0Stack1 block2800b1c0Stack2 block2800b1c0Stack3 block2800b1c0Stack4 block2800b1c0PC block2800b1c0Step block2800b1c0Done block2800b1c0Result |
    block2800b1c0Stack0 := self.
    block2800b1c0PC := 4.
    block2800b1c0Done := false.
    [block2800b1c0Done not] whileTrue: [
        block2800b1c0Step := block2800b1c0PC.
        block2800b1c0Step = 4 ifTrue: [
            block2800b1c0Stack1 := block2800b1c0Arg1.
            block2800b1c0PC := 5.
        ].
        block2800b1c0Step = 5 ifTrue: [
            block2800b1c0Stack2 := 'setupAfterLoad'.
            block2800b1c0PC := 7.
        ].
        block2800b1c0Step = 7 ifTrue: [
            block2800b1c0Stack1 := (block2800b1c0Stack1) respondsTo: (block2800b1c0Stack2).
            block2800b1c0PC := 8.
        ].
        block2800b1c0Step = 8 ifTrue: [
            (block2800b1c0Stack1) ifTrue: [block2800b1c0PC := 12] ifFalse: [block2800b1c0PC := 15].
        ].
        block2800b1c0Step = 12 ifTrue: [
            block2800b1c0Stack1 := block2800b1c0Arg1.
            block2800b1c0PC := 13.
        ].
        block2800b1c0Step = 13 ifTrue: [
            (block2800b1c0Stack1) setupAfterLoad.
            block2800b1c0PC := 15.
        ].
        block2800b1c0Step = 15 ifTrue: [
            block2800b1c0Stack1 := nil.
            block2800b1c0PC := 16.
        ].
        block2800b1c0Step = 16 ifTrue: [
            block2800b1c0Stack2 := block2800b1c0Arg1.
            block2800b1c0PC := 17.
        ].
        block2800b1c0Step = 17 ifTrue: [
            block2800b1c0Stack2 := (block2800b1c0Stack2) class.
            block2800b1c0PC := 18.
        ].
        block2800b1c0Step = 18 ifTrue: [
            block2800b1c0Stack3 := 'setupAfterLoadNonInherited'.
            block2800b1c0PC := 20.
        ].
        block2800b1c0Step = 20 ifTrue: [
            block2800b1c0Stack2 := (block2800b1c0Stack2) includesSelector: (block2800b1c0Stack3).
            block2800b1c0PC := 22.
        ].
        block2800b1c0Step = 22 ifTrue: [
            (block2800b1c0Stack2) ifTrue: [block2800b1c0PC := 26] ifFalse: [block2800b1c0PC := 30].
        ].
        block2800b1c0Step = 26 ifTrue: [
            block2800b1c0PC := 27.
        ].
        block2800b1c0Step = 27 ifTrue: [
            block2800b1c0Stack1 := block2800b1c0Arg1.
            block2800b1c0PC := 28.
        ].
        block2800b1c0Step = 28 ifTrue: [
            block2800b1c0Stack1 := (block2800b1c0Stack1) setupAfterLoadNonInherited.
            block2800b1c0PC := 30.
        ].
        block2800b1c0Step = 30 ifTrue: [
            block2800b1c0Result := block2800b1c0Stack1.
            block2800b1c0Done := true.
        ].
    ].
    block2800b1c0Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20018954; bytecode file offset 0x79c2c"
!SstEnhancedSelect class methodsFor: 'recovered'!
removing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800b3b8Arg1 | 
    | block2800b3b8Stack0 block2800b3b8Stack1 block2800b3b8Stack2 block2800b3b8Stack3 block2800b3b8Stack4 block2800b3b8PC block2800b3b8Step block2800b3b8Done block2800b3b8Result |
    block2800b3b8Stack0 := self.
    block2800b3b8PC := 4.
    block2800b3b8Done := false.
    [block2800b3b8Done not] whileTrue: [
        block2800b3b8Step := block2800b3b8PC.
        block2800b3b8Step = 4 ifTrue: [
            block2800b3b8Stack1 := block2800b3b8Arg1.
            block2800b3b8PC := 5.
        ].
        block2800b3b8Step = 5 ifTrue: [
            block2800b3b8Stack2 := 'cleanUpBeforeRemove'.
            block2800b3b8PC := 7.
        ].
        block2800b3b8Step = 7 ifTrue: [
            block2800b3b8Stack1 := (block2800b3b8Stack1) respondsTo: (block2800b3b8Stack2).
            block2800b3b8PC := 8.
        ].
        block2800b3b8Step = 8 ifTrue: [
            (block2800b3b8Stack1) ifTrue: [block2800b3b8PC := 12] ifFalse: [block2800b3b8PC := 15].
        ].
        block2800b3b8Step = 12 ifTrue: [
            block2800b3b8Stack1 := block2800b3b8Arg1.
            block2800b3b8PC := 13.
        ].
        block2800b3b8Step = 13 ifTrue: [
            (block2800b3b8Stack1) cleanUpBeforeRemove.
            block2800b3b8PC := 15.
        ].
        block2800b3b8Step = 15 ifTrue: [
            block2800b3b8Stack1 := nil.
            block2800b3b8PC := 16.
        ].
        block2800b3b8Step = 16 ifTrue: [
            block2800b3b8Stack2 := block2800b3b8Arg1.
            block2800b3b8PC := 17.
        ].
        block2800b3b8Step = 17 ifTrue: [
            block2800b3b8Stack2 := (block2800b3b8Stack2) class.
            block2800b3b8PC := 18.
        ].
        block2800b3b8Step = 18 ifTrue: [
            block2800b3b8Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b3b8PC := 20.
        ].
        block2800b3b8Step = 20 ifTrue: [
            block2800b3b8Stack2 := (block2800b3b8Stack2) includesSelector: (block2800b3b8Stack3).
            block2800b3b8PC := 22.
        ].
        block2800b3b8Step = 22 ifTrue: [
            (block2800b3b8Stack2) ifTrue: [block2800b3b8PC := 26] ifFalse: [block2800b3b8PC := 30].
        ].
        block2800b3b8Step = 26 ifTrue: [
            block2800b3b8PC := 27.
        ].
        block2800b3b8Step = 27 ifTrue: [
            block2800b3b8Stack1 := block2800b3b8Arg1.
            block2800b3b8PC := 28.
        ].
        block2800b3b8Step = 28 ifTrue: [
            block2800b3b8Stack1 := (block2800b3b8Stack1) cleanUpBeforeRemoveNonInherited.
            block2800b3b8PC := 30.
        ].
        block2800b3b8Step = 30 ifTrue: [
            block2800b3b8Result := block2800b3b8Stack1.
            block2800b3b8Done := true.
        ].
    ].
    block2800b3b8Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20027da0; bytecode file offset 0x88ea8"
!SstEnhancedSelect class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) excludeMethod: ('addExcept:') inClassNamed: ('SstSocketDemultiplexor').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) excludeMethod: ('addRead:') inClassNamed: ('SstSocketDemultiplexor').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) excludeMethod: ('addWrite:') inClassNamed: ('SstSocketDemultiplexor').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) excludeMethod: ('isExceptional:') inClassNamed: ('SstSocketDemultiplexor').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) excludeMethod: ('isReadable:') inClassNamed: ('SstSocketDemultiplexor').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) excludeMethod: ('isWriteable:') inClassNamed: ('SstSocketDemultiplexor').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) excludeMethod: ('nextForExcept') inClassNamed: ('SstSocketDemultiplexor').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) excludeMethod: ('nextForRead') inClassNamed: ('SstSocketDemultiplexor').
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) excludeMethod: ('nextForWrite') inClassNamed: ('SstSocketDemultiplexor').
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) excludeMethod: ('poll') inClassNamed: ('SstSocketDemultiplexor').
    recoveredValue11 := recoveredValue0.
    (recoveredValue11) excludeMethod: ('removeExcept:') inClassNamed: ('SstSocketDemultiplexor').
    recoveredValue12 := recoveredValue0.
    (recoveredValue12) excludeMethod: ('removeRead:') inClassNamed: ('SstSocketDemultiplexor').
    recoveredValue13 := recoveredValue0.
    (recoveredValue13) excludeMethod: ('removeWrite:') inClassNamed: ('SstSocketDemultiplexor').
    recoveredValue14 := recoveredValue0.
    (recoveredValue14) excludeMethod: ('select') inClassNamed: ('SstSocketDemultiplexor').
    (recoveredValue0) excludeMethod: ('timeout:') inClassNamed: ('SstSocketDemultiplexor').
    ^self
! !

