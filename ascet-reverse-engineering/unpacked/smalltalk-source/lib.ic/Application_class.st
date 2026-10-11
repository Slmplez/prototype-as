"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000370; bytecode file offset 0x3c670"
!Application class methodsFor: 'recovered'!
editionRecordClass
    | recoveredValue0 |
    recoveredValue0 := EmApplicationEdition.
    ^recoveredValue0
! !

"lib.ic method 0x20000418; bytecode file offset 0x3c670"
!Application class methodsFor: 'recovered'!
shadowClass
    | recoveredValue0 |
    recoveredValue0 := EmShadowApplication.
    ^recoveredValue0
! !

"lib.ic method 0x20000454; bytecode file offset 0x3c670"
!Application class methodsFor: 'recovered'!
builderClass
    | recoveredValue0 |
    recoveredValue0 := EmBuilderApplication.
    ^recoveredValue0
! !

"lib.ic method 0x20000544; bytecode file offset 0x3c670"
!Application class methodsFor: 'recovered'!
partsRecordClass
    | recoveredValue0 |
    recoveredValue0 := EmApplicationParts.
    ^recoveredValue0
! !

"lib.ic method 0x200009b8; bytecode file offset 0x3cba0"
!Application class methodsFor: 'recovered'!
prerequisiteConfigurations
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) editionRecord.
    recoveredValue1 := (recoveredValue0) prerequisiteConfigurations.
    ^recoveredValue1
! !

"lib.ic method 0x200013dc; bytecode file offset 0x3d664"
!Application class methodsFor: 'recovered'!
releasedPrerequisiteNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) editionRecord.
    recoveredValue1 := (self) releasedPrerequisiteNamesUsing: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x200019f4; bytecode file offset 0x3da5c"
!Application class methodsFor: 'recovered'!
releasedPrerequisiteNamesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) editionRecord.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) prerequisiteNamesFor: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20006c4c; bytecode file offset 0x42c80"
!Application class methodsFor: 'recovered'!
errorPrerequisite: recoveredArg1 missing: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := NlsCatEMb.
    recoveredValue1 := (recoveredValue0) residentMsg: ('MxEMb2').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) bindWith: (recoveredValue2) with: (recoveredValue3).
    (self) error: (recoveredValue4).
    ^self
! !

"lib.ic method 0x20007898; bytecode file offset 0x438d8"
!Application class methodsFor: 'recovered'!
releasedPrerequisiteNamesUsing: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) configurationExpression.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) prerequisiteNames.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) configurationExpression.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) prerequisiteNamesFor: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000eca0; bytecode file offset 0x4ace0"
!Application class methodsFor: 'recovered'!
allNamesWithoutPackages
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1FI579S'.
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
            recoveredStack0 := (recoveredStack0) allNames.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280045d0Arg1 | 
    | block280045d0Stack0 block280045d0Stack1 block280045d0Stack2 block280045d0Stack3 block280045d0Stack4 block280045d0Stack5 block280045d0PC block280045d0Step block280045d0Done block280045d0Result |
    block280045d0Stack0 := self.
    block280045d0PC := 4.
    block280045d0Done := false.
    [block280045d0Done not] whileTrue: [
        block280045d0Step := block280045d0PC.
        block280045d0Step = 4 ifTrue: [
            block280045d0Stack1 := true.
            block280045d0PC := 5.
        ].
        block280045d0Step = 5 ifTrue: [
            block280045d0Stack2 := '<Pkg>'.
            block280045d0PC := 7.
        ].
        block280045d0Step = 7 ifTrue: [
            block280045d0Stack3 := block280045d0Arg1.
            block280045d0PC := 8.
        ].
        block280045d0Step = 8 ifTrue: [
            block280045d0Stack4 := 1.
            block280045d0PC := 10.
        ].
        block280045d0Step = 10 ifTrue: [
            block280045d0Stack2 := (block280045d0Stack2) occursIn: (block280045d0Stack3) at: (block280045d0Stack4).
            block280045d0PC := 12.
        ].
        block280045d0Step = 12 ifTrue: [
            (block280045d0Stack2) ifTrue: [block280045d0PC := 24] ifFalse: [block280045d0PC := 16].
        ].
        block280045d0Step = 16 ifTrue: [
            block280045d0PC := 17.
        ].
        block280045d0Step = 17 ifTrue: [
            block280045d0Stack1 := '<STASIS><Pkg>'.
            block280045d0PC := 19.
        ].
        block280045d0Step = 19 ifTrue: [
            block280045d0Stack2 := block280045d0Arg1.
            block280045d0PC := 20.
        ].
        block280045d0Step = 20 ifTrue: [
            block280045d0Stack3 := 1.
            block280045d0PC := 22.
        ].
        block280045d0Step = 22 ifTrue: [
            block280045d0Stack1 := (block280045d0Stack1) occursIn: (block280045d0Stack2) at: (block280045d0Stack3).
            block280045d0PC := 24.
        ].
        block280045d0Step = 24 ifTrue: [
            block280045d0Result := block280045d0Stack1.
            block280045d0Done := true.
        ].
    ].
    block280045d0Result
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20013748; bytecode file offset 0x4f798"
!Application class methodsFor: 'recovered'!
deletePrerequisiteNamed: recoveredArg1 from: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    ^false
].
    (recoveredValue2) applicationDeletePrerequisiteFor: (self) prereqName: (recoveredValue3) fromExpr: (recoveredValue4) ifUnable: (recoveredValue5).
    recoveredValue6 := (self) owningImage.
    recoveredValue7 := NlsCatEMc.
    recoveredValue8 := (recoveredValue7) residentMsg: ('MxEMc2').
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue10) storeString.
    recoveredValue12 := (self) signature.
    recoveredValue13 := (recoveredValue8) bindWith: (recoveredValue9) with: (recoveredValue11) with: (recoveredValue12).
    (recoveredValue6) logApplicationNotice: (recoveredValue13).
    ^true
! !

"lib.ic method 0x200137b8; bytecode file offset 0x4f808"
!Application class methodsFor: 'recovered'!
addPrerequisiteNamed: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [
    ^nil
].
    (recoveredValue2) applicationAddPrerequisiteFor: (self) prereqName: (recoveredValue3) toExpr: (recoveredValue4) ifUnable: (recoveredValue5).
    recoveredValue6 := (self) owningImage.
    recoveredValue7 := NlsCatEMc.
    recoveredValue8 := (recoveredValue7) residentMsg: ('MxEMc1').
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue10) storeString.
    recoveredValue12 := (self) signature.
    recoveredValue13 := (recoveredValue8) bindWith: (recoveredValue9) with: (recoveredValue11) with: (recoveredValue12).
    (recoveredValue6) logApplicationNotice: (recoveredValue13).
    ^self
! !

"lib.ic method 0x20013ba8; bytecode file offset 0x4fbfc"
!Application class methodsFor: 'recovered'!
allowedToRemove
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) signature.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentApplications.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 122.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) dependentApplications.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := '\'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := [:block280049c0Arg1 :block280049c0Arg2 | 
    | block280049c0Value0 block280049c0Value1 block280049c0Value2 block280049c0Value3 block280049c0Value4 |
    block280049c0Value0 := block280049c0Arg1.
    block280049c0Value1 := (block280049c0Value0) , ('\').
    block280049c0Value2 := block280049c0Arg2.
    block280049c0Value3 := (block280049c0Value2) signature.
    block280049c0Value4 := (block280049c0Value1) , (block280049c0Value3).
    block280049c0Value4
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := (recoveredStack4) inject: (recoveredStack5) into: (recoveredStack6).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) addLineDelimiters.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001d890; bytecode file offset 0x59914"
!Application class methodsFor: 'recovered'!
remove
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) signature.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentApplications.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 122.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) dependentApplications.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := '\'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := [:block28004d8cArg1 :block28004d8cArg2 | 
    | block28004d8cValue0 block28004d8cValue1 block28004d8cValue2 block28004d8cValue3 block28004d8cValue4 |
    block28004d8cValue0 := block28004d8cArg1.
    block28004d8cValue1 := (block28004d8cValue0) , ('\').
    block28004d8cValue2 := block28004d8cArg2.
    block28004d8cValue3 := (block28004d8cValue2) signature.
    block28004d8cValue4 := (block28004d8cValue1) , (block28004d8cValue3).
    block28004d8cValue4
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := (recoveredStack4) inject: (recoveredStack5) into: (recoveredStack6).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) addLineDelimiters.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) prerequisites.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := super primitiveRemove.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 |
    recoveredBlock67Value0 := recoveredBlock67Arg1.
    recoveredBlock67Value1 := (recoveredBlock67Value0) removeDependentApplication: (self).
    recoveredBlock67Value1
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) loadedApplicationsHaveChanged.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 'MxEMc4'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) logApplicationNotice: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002116c; bytecode file offset 0x5d1f8"
!Application class methodsFor: 'recovered'!
newPrerequisites: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadedApplications.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := EmImageSupport.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorReporter.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 120.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) reportError: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35Stack5 recoveredBlock35Stack6 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 43.
        ].
        recoveredBlock35Step = 43 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg1.
            recoveredBlock35PC := 44.
        ].
        recoveredBlock35Step = 44 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) allPrerequisites.
            recoveredBlock35PC := 46.
        ].
        recoveredBlock35Step = 46 ifTrue: [
            recoveredBlock35Stack3 := self.
            recoveredBlock35PC := 47.
        ].
        recoveredBlock35Step = 47 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) includes: (recoveredBlock35Stack3).
            recoveredBlock35PC := 49.
        ].
        recoveredBlock35Step = 49 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 52] ifFalse: [recoveredBlock35PC := 74].
        ].
        recoveredBlock35Step = 52 ifTrue: [
            recoveredBlock35PC := 53.
        ].
        recoveredBlock35Step = 53 ifTrue: [
            recoveredBlock35Stack1 := EmImageSupport.
            recoveredBlock35PC := 55.
        ].
        recoveredBlock35Step = 55 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) errorReporter.
            recoveredBlock35PC := 57.
        ].
        recoveredBlock35Step = 57 ifTrue: [
            recoveredBlock35Stack2 := 175.
            recoveredBlock35PC := 60.
        ].
        recoveredBlock35Step = 60 ifTrue: [
            recoveredBlock35Stack3 := Array.
            recoveredBlock35PC := 62.
        ].
        recoveredBlock35Step = 62 ifTrue: [
            recoveredBlock35Stack4 := recoveredBlock35Arg1.
            recoveredBlock35PC := 63.
        ].
        recoveredBlock35Step = 63 ifTrue: [
            recoveredBlock35Stack4 := (recoveredBlock35Stack4) name.
            recoveredBlock35PC := 65.
        ].
        recoveredBlock35Step = 65 ifTrue: [
            recoveredBlock35Stack5 := self.
            recoveredBlock35PC := 66.
        ].
        recoveredBlock35Step = 66 ifTrue: [
            recoveredBlock35Stack5 := (recoveredBlock35Stack5) name.
            recoveredBlock35PC := 68.
        ].
        recoveredBlock35Step = 68 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) with: (recoveredBlock35Stack4) with: (recoveredBlock35Stack5).
            recoveredBlock35PC := 70.
        ].
        recoveredBlock35Step = 70 ifTrue: [
            (recoveredBlock35Stack1) logError: (recoveredBlock35Stack2) withParms: (recoveredBlock35Stack3).
            recoveredBlock35PC := 72.
        ].
        recoveredBlock35Step = 72 ifTrue: [
            recoveredBlock35Stack1 := false.
            recoveredBlock35PC := 73.
        ].
        recoveredBlock35Step = 73 ifTrue: [
            ^recoveredBlock35Stack1
        ].
        recoveredBlock35Step = 74 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack1.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) operationsInterface.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := [
    ^false
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) applicationNewPrerequisitesFor: (recoveredStack2) prereqs: (recoveredStack3) inExpr: (recoveredStack4) ifUnable: (recoveredStack5).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) prerequisites: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) loadedApplicationsHaveChanged.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'MxEMc3'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) storeString.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) logApplicationNotice: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20026244; bytecode file offset 0x622f4"
!Application class methodsFor: 'recovered'!
create: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
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
            recoveredStack2 := 373.
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadedApplications.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := EmImageSupport.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorReporter.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 120.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) reportError: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalNamespace.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) classAt: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) isApplication.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) prerequisites.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := NlsCatEMb.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := 'MxEMb1'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) residentMsg: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := Application.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) creatorClass.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := System.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := (recoveredStack3) image.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := (recoveredStack3) globalNamespace.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack5 := System.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack5 := (recoveredStack5) image.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack5 := (recoveredStack5) globalNamespace.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack6 := 'Application'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack5 := (recoveredStack5) classAt: (recoveredStack6).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack6 := System.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack6 := (recoveredStack6) image.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack6 := (recoveredStack6) globalNamespace.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack7 := 'Application'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack6 := (recoveredStack6) classAt: (recoveredStack7).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack6 := (recoveredStack6) instanceShape.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack7 := #().
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack8 := #().
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack9 := #().
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack10 := #().
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) createClassNamed: (recoveredStack2) in: (recoveredStack3) for: (recoveredStack4) subclassOf: (recoveredStack5) instanceShape: (recoveredStack6) classInstanceVariables: (recoveredStack7) instanceVariables: (recoveredStack8) classVariables: (recoveredStack9) sharedPoolNames: (recoveredStack10).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) enableApplicationProtocol.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack2) initializeApplication.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack2) prerequisites: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack2) insertInLibrary.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := (recoveredStack2) storeString.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) configurationExpression: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) loadedApplicationsHaveChanged.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) becomeDefault.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2002c8c8; bytecode file offset 0x68954"
!Application class methodsFor: 'recovered'!
isConfigurationConsistent: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := super isConfigurationConsistent: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) prerequisites.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) releasedPrerequisiteNamesUsing: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 |
    recoveredBlock36Value0 := recoveredLocal2.
    recoveredBlock36Value1 := recoveredBlock36Arg1.
    recoveredBlock36Value2 := (recoveredBlock36Value1) symbol.
    recoveredBlock36Value3 := [
    | recoveredBlock36Block50Value0 recoveredBlock36Block50Value1 recoveredBlock36Block50Value2 recoveredBlock36Block50Value3 recoveredBlock36Block50Value4 recoveredBlock36Block50Value5 recoveredBlock36Block50Value6 recoveredBlock36Block50Value7 recoveredBlock36Block50Value8 recoveredBlock36Block50Value9 recoveredBlock36Block50Value10 |
    recoveredBlock36Block50Value0 := EmImageSupport.
    recoveredBlock36Block50Value1 := (recoveredBlock36Block50Value0) errorReporter.
    recoveredBlock36Block50Value2 := Array.
    recoveredBlock36Block50Value3 := recoveredBlock36Arg1.
    recoveredBlock36Block50Value4 := (recoveredBlock36Block50Value3) name.
    recoveredBlock36Block50Value5 := (self) name.
    recoveredBlock36Block50Value6 := (recoveredBlock36Block50Value2) with: (recoveredBlock36Block50Value4) with: (recoveredBlock36Block50Value5).
    (recoveredBlock36Block50Value1) logError: (34) withParms: (recoveredBlock36Block50Value6).
    recoveredBlock36Block50Value7 := recoveredLocal3.
    recoveredBlock36Block50Value8 := recoveredBlock36Arg1.
    recoveredBlock36Block50Value9 := (recoveredBlock36Block50Value7) copyWithout: (recoveredBlock36Block50Value8).
    recoveredBlock36Block50Value10 := recoveredBlock36Block50Value9.
    recoveredLocal3 := recoveredBlock36Block50Value10.
    recoveredBlock36Block50Value9
].
    recoveredBlock36Value4 := (recoveredBlock36Value0) remove: (recoveredBlock36Value2) ifAbsent: (recoveredBlock36Value3).
    recoveredBlock36Value4
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := [:recoveredBlock97Arg1 | 
    | recoveredBlock97Stack0 recoveredBlock97Stack1 recoveredBlock97Stack2 recoveredBlock97Stack3 recoveredBlock97Stack4 recoveredBlock97Stack5 recoveredBlock97Stack6 recoveredBlock97PC recoveredBlock97Step recoveredBlock97Done recoveredBlock97Result |
    recoveredBlock97Stack0 := self.
    recoveredBlock97PC := 104.
    recoveredBlock97Done := false.
    [recoveredBlock97Done not] whileTrue: [
        recoveredBlock97Step := recoveredBlock97PC.
        recoveredBlock97Step = 104 ifTrue: [
            recoveredBlock97Stack1 := EmImageSupport.
            recoveredBlock97PC := 106.
        ].
        recoveredBlock97Step = 106 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) errorReporter.
            recoveredBlock97PC := 108.
        ].
        recoveredBlock97Step = 108 ifTrue: [
            recoveredBlock97Stack2 := 35.
            recoveredBlock97PC := 110.
        ].
        recoveredBlock97Step = 110 ifTrue: [
            recoveredBlock97Stack3 := Array.
            recoveredBlock97PC := 112.
        ].
        recoveredBlock97Step = 112 ifTrue: [
            recoveredBlock97Stack4 := self.
            recoveredBlock97PC := 113.
        ].
        recoveredBlock97Step = 113 ifTrue: [
            recoveredBlock97Stack4 := (recoveredBlock97Stack4) name.
            recoveredBlock97PC := 115.
        ].
        recoveredBlock97Step = 115 ifTrue: [
            recoveredBlock97Stack5 := recoveredBlock97Arg1.
            recoveredBlock97PC := 116.
        ].
        recoveredBlock97Step = 116 ifTrue: [
            recoveredBlock97Stack3 := (recoveredBlock97Stack3) with: (recoveredBlock97Stack4) with: (recoveredBlock97Stack5).
            recoveredBlock97PC := 118.
        ].
        recoveredBlock97Step = 118 ifTrue: [
            (recoveredBlock97Stack1) logError: (recoveredBlock97Stack2) withParms: (recoveredBlock97Stack3).
            recoveredBlock97PC := 120.
        ].
        recoveredBlock97Step = 120 ifTrue: [
            recoveredBlock97Stack0 := (recoveredBlock97Stack0) owningImage.
            recoveredBlock97PC := 122.
        ].
        recoveredBlock97Step = 122 ifTrue: [
            recoveredBlock97Stack0 := (recoveredBlock97Stack0) globalNamespace.
            recoveredBlock97PC := 124.
        ].
        recoveredBlock97Step = 124 ifTrue: [
            recoveredBlock97Stack1 := recoveredBlock97Arg1.
            recoveredBlock97PC := 125.
        ].
        recoveredBlock97Step = 125 ifTrue: [
            recoveredBlock97Stack0 := (recoveredBlock97Stack0) classAt: (recoveredBlock97Stack1).
            recoveredBlock97PC := 127.
        ].
        recoveredBlock97Step = 127 ifTrue: [
            recoveredLocal1 := recoveredBlock97Stack0.
            recoveredBlock97PC := 130.
        ].
        recoveredBlock97Step = 130 ifTrue: [
            recoveredBlock97Stack0 := recoveredLocal1.
            recoveredBlock97PC := 133.
        ].
        recoveredBlock97Step = 133 ifTrue: [
            (recoveredBlock97Stack0 == nil) ifTrue: [recoveredBlock97PC := 168] ifFalse: [recoveredBlock97PC := 136].
        ].
        recoveredBlock97Step = 136 ifTrue: [
            recoveredBlock97Stack0 := recoveredLocal1.
            recoveredBlock97PC := 139.
        ].
        recoveredBlock97Step = 139 ifTrue: [
            recoveredBlock97Stack0 := (recoveredBlock97Stack0) superclass.
            recoveredBlock97PC := 141.
        ].
        recoveredBlock97Step = 141 ifTrue: [
            recoveredBlock97Stack1 := self.
            recoveredBlock97PC := 142.
        ].
        recoveredBlock97Step = 142 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) superclass.
            recoveredBlock97PC := 144.
        ].
        recoveredBlock97Step = 144 ifTrue: [
            (recoveredBlock97Stack0 ~~ recoveredBlock97Stack1) ifTrue: [recoveredBlock97PC := 168] ifFalse: [recoveredBlock97PC := 148].
        ].
        recoveredBlock97Step = 148 ifTrue: [
            recoveredBlock97Stack0 := recoveredLocal3.
            recoveredBlock97PC := 151.
        ].
        recoveredBlock97Step = 151 ifTrue: [
            recoveredBlock97Stack1 := Array.
            recoveredBlock97PC := 153.
        ].
        recoveredBlock97Step = 153 ifTrue: [
            recoveredBlock97Stack2 := recoveredLocal1.
            recoveredBlock97PC := 156.
        ].
        recoveredBlock97Step = 156 ifTrue: [
            recoveredBlock97Stack1 := (recoveredBlock97Stack1) with: (recoveredBlock97Stack2).
            recoveredBlock97PC := 158.
        ].
        recoveredBlock97Step = 158 ifTrue: [
            recoveredBlock97Stack0 := (recoveredBlock97Stack0) , (recoveredBlock97Stack1).
            recoveredBlock97PC := 160.
        ].
        recoveredBlock97Step = 160 ifTrue: [
            recoveredBlock97Stack1 := recoveredBlock97Stack0.
            recoveredBlock97PC := 161.
        ].
        recoveredBlock97Step = 161 ifTrue: [
            recoveredLocal3 := recoveredBlock97Stack1.
            recoveredBlock97PC := 164.
        ].
        recoveredBlock97Step = 164 ifTrue: [
            recoveredBlock97PC := 173.
        ].
        recoveredBlock97Step = 168 ifTrue: [
            recoveredBlock97Stack0 := false.
            recoveredBlock97PC := 169.
        ].
        recoveredBlock97Step = 169 ifTrue: [
            recoveredBlock97Stack1 := recoveredBlock97Stack0.
            recoveredBlock97PC := 170.
        ].
        recoveredBlock97Step = 170 ifTrue: [
            recoveredLocal5 := recoveredBlock97Stack1.
            recoveredBlock97PC := 173.
        ].
        recoveredBlock97Step = 173 ifTrue: [
            recoveredBlock97Result := recoveredBlock97Stack0.
            recoveredBlock97Done := true.
        ].
    ].
    recoveredBlock97Result
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 280] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 225].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadedApplications.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 225] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := 174.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := [:recoveredBlock228Arg1 | 
    | recoveredBlock228Stack0 recoveredBlock228Stack1 recoveredBlock228Stack2 recoveredBlock228Stack3 recoveredBlock228Stack4 recoveredBlock228Stack5 recoveredBlock228Stack6 recoveredBlock228PC recoveredBlock228Step recoveredBlock228Done recoveredBlock228Result |
    recoveredBlock228Stack0 := self.
    recoveredBlock228PC := 234.
    recoveredBlock228Done := false.
    [recoveredBlock228Done not] whileTrue: [
        recoveredBlock228Step := recoveredBlock228PC.
        recoveredBlock228Step = 234 ifTrue: [
            recoveredBlock228Stack1 := nil.
            recoveredBlock228PC := 235.
        ].
        recoveredBlock228Step = 235 ifTrue: [
            recoveredBlock228Stack2 := recoveredBlock228Arg1.
            recoveredBlock228PC := 236.
        ].
        recoveredBlock228Step = 236 ifTrue: [
            recoveredBlock228Stack2 := (recoveredBlock228Stack2) allPrerequisites.
            recoveredBlock228PC := 238.
        ].
        recoveredBlock228Step = 238 ifTrue: [
            recoveredBlock228Stack3 := self.
            recoveredBlock228PC := 239.
        ].
        recoveredBlock228Step = 239 ifTrue: [
            recoveredBlock228Stack2 := (recoveredBlock228Stack2) includes: (recoveredBlock228Stack3).
            recoveredBlock228PC := 241.
        ].
        recoveredBlock228Step = 241 ifTrue: [
            (recoveredBlock228Stack2) ifTrue: [recoveredBlock228PC := 244] ifFalse: [recoveredBlock228PC := 266].
        ].
        recoveredBlock228Step = 244 ifTrue: [
            recoveredBlock228PC := 245.
        ].
        recoveredBlock228Step = 245 ifTrue: [
            recoveredBlock228Stack1 := EmImageSupport.
            recoveredBlock228PC := 247.
        ].
        recoveredBlock228Step = 247 ifTrue: [
            recoveredBlock228Stack1 := (recoveredBlock228Stack1) errorReporter.
            recoveredBlock228PC := 249.
        ].
        recoveredBlock228Step = 249 ifTrue: [
            recoveredBlock228Stack2 := 175.
            recoveredBlock228PC := 252.
        ].
        recoveredBlock228Step = 252 ifTrue: [
            recoveredBlock228Stack3 := Array.
            recoveredBlock228PC := 254.
        ].
        recoveredBlock228Step = 254 ifTrue: [
            recoveredBlock228Stack4 := recoveredBlock228Arg1.
            recoveredBlock228PC := 255.
        ].
        recoveredBlock228Step = 255 ifTrue: [
            recoveredBlock228Stack4 := (recoveredBlock228Stack4) name.
            recoveredBlock228PC := 257.
        ].
        recoveredBlock228Step = 257 ifTrue: [
            recoveredBlock228Stack5 := self.
            recoveredBlock228PC := 258.
        ].
        recoveredBlock228Step = 258 ifTrue: [
            recoveredBlock228Stack5 := (recoveredBlock228Stack5) name.
            recoveredBlock228PC := 260.
        ].
        recoveredBlock228Step = 260 ifTrue: [
            recoveredBlock228Stack3 := (recoveredBlock228Stack3) with: (recoveredBlock228Stack4) with: (recoveredBlock228Stack5).
            recoveredBlock228PC := 262.
        ].
        recoveredBlock228Step = 262 ifTrue: [
            (recoveredBlock228Stack1) logError: (recoveredBlock228Stack2) withParms: (recoveredBlock228Stack3).
            recoveredBlock228PC := 264.
        ].
        recoveredBlock228Step = 264 ifTrue: [
            recoveredBlock228Stack1 := false.
            recoveredBlock228PC := 265.
        ].
        recoveredBlock228Step = 265 ifTrue: [
            ^recoveredBlock228Stack1
        ].
        recoveredBlock228Step = 266 ifTrue: [
            recoveredBlock228Result := recoveredBlock228Stack1.
            recoveredBlock228Done := true.
        ].
    ].
    recoveredBlock228Result
].
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack0) prerequisites: (recoveredStack1).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack0) loadedApplicationsHaveChanged.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

