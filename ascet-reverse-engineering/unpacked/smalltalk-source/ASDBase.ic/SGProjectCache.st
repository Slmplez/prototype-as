"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002b0e4; bytecode file offset 0x934580"
!SGProjectCache methodsFor: 'recovered'!
projectImplName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectType.
    recoveredValue1 := (recoveredValue0) implName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002b924; bytecode file offset 0x934580"
!SGProjectCache methodsFor: 'recovered'!
targetSpecificPathTokens
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentPlatform.
    recoveredValue1 := (recoveredValue0) targetSpecificPathTokens.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c5a4; bytecode file offset 0x934580"
!SGProjectCache methodsFor: 'recovered'!
osConfigSettings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentPlatform.
    recoveredValue1 := (recoveredValue0) osSettings.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ea34; bytecode file offset 0x934580"
!SGProjectCache methodsFor: 'recovered'!
projectName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectType.
    recoveredValue1 := (recoveredValue0) className.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031054; bytecode file offset 0x934580"
!SGProjectCache methodsFor: 'recovered'!
asam2MCOptions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) asam2MCOptions.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031584; bytecode file offset 0x934580"
!SGProjectCache methodsFor: 'recovered'!
projectId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectType.
    recoveredValue1 := (recoveredValue0) classId.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032214; bytecode file offset 0x934580"
!SGProjectCache methodsFor: 'recovered'!
projectImplId
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) projectType.
    recoveredValue1 := (recoveredValue0) implId.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036ce4; bytecode file offset 0x934580"
!SGProjectCache methodsFor: 'recovered'!
target
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentBuildCache.
    recoveredValue1 := (recoveredValue0) target.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049004; bytecode file offset 0x9458c0"
!SGProjectCache methodsFor: 'recovered'!
resetCurrentPlatform
    currentPlatform := nil.
    ^self
! !

"ASDBase.ic method 0x20067cbc; bytecode file offset 0x9646f8"
!SGProjectCache methodsFor: 'recovered'!
project
    | recoveredValue0 |
    recoveredValue0 := project.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068aac; bytecode file offset 0x965b90"
!SGProjectCache methodsFor: 'recovered'!
projectType
    | recoveredValue0 |
    recoveredValue0 := projectType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200698f0; bytecode file offset 0x966bdc"
!SGProjectCache methodsFor: 'recovered'!
context
    | recoveredValue0 |
    recoveredValue0 := context.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c8cc; bytecode file offset 0x9692b0"
!SGProjectCache methodsFor: 'recovered'!
swComponent
    | recoveredValue0 |
    recoveredValue0 := swComponent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a8a3c; bytecode file offset 0x9a5300"
!SGProjectCache methodsFor: 'recovered'!
project: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    project := recoveredValue0.
    (self) resetCurrentPlatform.
    ^self
! !

"ASDBase.ic method 0x200bfc0c; bytecode file offset 0x9bd228"
!SGProjectCache methodsFor: 'recovered'!
projectType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    projectType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1508; bytecode file offset 0x9bdf14"
!SGProjectCache methodsFor: 'recovered'!
context: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    context := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2918; bytecode file offset 0x9bf474"
!SGProjectCache methodsFor: 'recovered'!
currentPlatform: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentPlatform := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2f34; bytecode file offset 0x9bfde0"
!SGProjectCache methodsFor: 'recovered'!
swComponent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    swComponent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d4ce4; bytecode file offset 0x9d15b8"
!SGProjectCache methodsFor: 'recovered'!
updatePlatform
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentPlatform.
    (recoveredValue0) readTargetSpecificOptions.
    recoveredValue1 := (self) currentPlatform.
    (recoveredValue1) readMemoryClassDeclarationFile.
    ^self
! !

"ASDBase.ic method 0x200e5630; bytecode file offset 0x9e1f3c"
!SGProjectCache methodsFor: 'recovered'!
projectKey
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectKey.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20141318; bytecode file offset 0xa3ddcc"
!SGProjectCache methodsFor: 'recovered'!
isCTProject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) project.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) isCTProject.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x201d58cc; bytecode file offset 0xad2190"
!SGProjectCache methodsFor: 'recovered'!
currentBuildCache
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := currentBuildCache.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := SGBuildCache.
    recoveredBlock6Value1 := (recoveredBlock6Value0) create.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    (recoveredBlock6Value2) scopeCache: (self).
    recoveredBlock6Value3 := recoveredBlock6Value1.
    currentBuildCache := recoveredBlock6Value3.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := currentBuildCache.
    ^recoveredValue2
! !

"ASDBase.ic method 0x202761ac; bytecode file offset 0xb72a78"
!SGProjectCache methodsFor: 'recovered'!
currentPlatform
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := currentPlatform.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := (self) project.
    recoveredBlock6Value1 := [:recoveredBlock6Block13Arg1 | 
    | recoveredBlock6Block13Value0 recoveredBlock6Block13Value1 recoveredBlock6Block13Value2 |
    recoveredBlock6Block13Value0 := recoveredBlock6Block13Arg1.
    recoveredBlock6Block13Value1 := (recoveredBlock6Block13Value0) currentPlatform.
    recoveredBlock6Block13Value2 := recoveredBlock6Block13Value1.
    currentPlatform := recoveredBlock6Block13Value2.
    ^recoveredBlock6Block13Value1
].
    (recoveredBlock6Value0) ifNotNil: (recoveredBlock6Value1).
    recoveredBlock6Value2 := TGPlatform.
    recoveredBlock6Value3 := (recoveredBlock6Value2) create.
    recoveredBlock6Value4 := recoveredBlock6Value3.
    currentPlatform := recoveredBlock6Value4.
    recoveredBlock6Value3
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := currentPlatform.
    ^recoveredValue2
! !

"ASDBase.ic method 0x205d169c; bytecode file offset 0xece04c"
!SGProjectCache methodsFor: 'recovered'!
update
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDayFromApplicationTimeStamp.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTimeFromApplicationTimeStamp.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDefault.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildEnvironmentInfo.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) projectSubPath.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) projectCachePath: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) projectName.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) projectName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) projectId.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) projectId: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) projectImplName.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) projectImplName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) projectImplId.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) projectImplId: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInfoString.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) libraryPath.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) projectLibraryPath: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 'Default of '.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) buildEnvironmentInfo.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) databaseName.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := '\'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) project.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) dependentVariable.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack3 ~~ nil) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := '<unknown component>'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) project.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) dependentVariable.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) sgClass.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := (recoveredStack3) libraryPath.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := (recoveredStack3) asPathnameNoTrailingSeparator.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) asQuotation.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) buildEnvironmentInfo.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) fullProjectName.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) asQuotation.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) projectDescription: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildEnvironmentInfo.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) swComponentName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) swComponentId: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) swComponentImplName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) swComponentImplId: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) swComponentLibraryPath: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) swComponentElement.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := [:recoveredBlock164Arg1 | 
    | recoveredBlock164Value0 recoveredBlock164Value1 recoveredBlock164Value2 recoveredBlock164Value3 recoveredBlock164Value4 recoveredBlock164Value5 recoveredBlock164Value6 recoveredBlock164Value7 recoveredBlock164Value8 recoveredBlock164Value9 recoveredBlock164Value10 recoveredBlock164Value11 recoveredBlock164Value12 recoveredBlock164Value13 recoveredBlock164Value14 recoveredBlock164Value15 recoveredBlock164Value16 |
    recoveredBlock164Value0 := recoveredBlock164Arg1.
    recoveredBlock164Value1 := (recoveredBlock164Value0) sgClass.
    (self) swComponent: (recoveredBlock164Value1).
    recoveredBlock164Value2 := (self) buildEnvironmentInfo.
    recoveredBlock164Value3 := recoveredBlock164Value2.
    recoveredBlock164Value4 := (self) swComponent.
    recoveredBlock164Value5 := (recoveredBlock164Value4) label.
    (recoveredBlock164Value3) swComponentName: (recoveredBlock164Value5).
    recoveredBlock164Value6 := recoveredBlock164Value2.
    recoveredBlock164Value7 := (self) swComponent.
    recoveredBlock164Value8 := (recoveredBlock164Value7) globalIdString.
    (recoveredBlock164Value6) swComponentId: (recoveredBlock164Value8).
    recoveredBlock164Value9 := (self) swComponent.
    recoveredBlock164Value10 := (recoveredBlock164Value9) libraryPath.
    (recoveredBlock164Value2) swComponentLibraryPath: (recoveredBlock164Value10).
    recoveredBlock164Value11 := (self) context.
    recoveredBlock164Value12 := (recoveredBlock164Value11) makeConfig.
    recoveredBlock164Value13 := recoveredBlock164Arg1.
    recoveredBlock164Value14 := (recoveredBlock164Value12) makeConfigForElement: (recoveredBlock164Value13).
    recoveredBlock164Value15 := [:recoveredBlock164Block209Arg1 | 
    | recoveredBlock164Block209Value0 recoveredBlock164Block209Value1 recoveredBlock164Block209Value2 recoveredBlock164Block209Value3 recoveredBlock164Block209Value4 recoveredBlock164Block209Value5 recoveredBlock164Block209Value6 recoveredBlock164Block209Value7 recoveredBlock164Block209Value8 |
    recoveredBlock164Block209Value0 := (self) buildEnvironmentInfo.
    recoveredBlock164Block209Value1 := recoveredBlock164Block209Value0.
    recoveredBlock164Block209Value2 := recoveredBlock164Block209Arg1.
    recoveredBlock164Block209Value3 := (recoveredBlock164Block209Value2) implementation.
    recoveredBlock164Block209Value4 := (recoveredBlock164Block209Value3) label.
    (recoveredBlock164Block209Value1) swComponentImplName: (recoveredBlock164Block209Value4).
    recoveredBlock164Block209Value5 := recoveredBlock164Block209Arg1.
    recoveredBlock164Block209Value6 := (recoveredBlock164Block209Value5) implementation.
    recoveredBlock164Block209Value7 := (recoveredBlock164Block209Value6) globalIdString.
    recoveredBlock164Block209Value8 := (recoveredBlock164Block209Value0) swComponentImplId: (recoveredBlock164Block209Value7).
    recoveredBlock164Block209Value8
].
    recoveredBlock164Value16 := (recoveredBlock164Value14) ifNotNil: (recoveredBlock164Value15).
    recoveredBlock164Value16
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock242Value0 recoveredBlock242Value1 recoveredBlock242Value2 recoveredBlock242Value3 recoveredBlock242Value4 recoveredBlock242Value5 recoveredBlock242Value6 recoveredBlock242Value7 recoveredBlock242Value8 recoveredBlock242Value9 recoveredBlock242Value10 recoveredBlock242Value11 recoveredBlock242Value12 |
    recoveredBlock242Value0 := (self) buildEnvironmentInfo.
    recoveredBlock242Value1 := recoveredBlock242Value0.
    recoveredBlock242Value2 := recoveredLocal2.
    recoveredBlock242Value3 := (recoveredBlock242Value2) year.
    recoveredBlock242Value4 := (recoveredBlock242Value3) asString.
    (recoveredBlock242Value1) projectSpecificationTimeStampYear: (recoveredBlock242Value4).
    recoveredBlock242Value5 := recoveredBlock242Value0.
    recoveredBlock242Value6 := recoveredLocal2.
    recoveredBlock242Value7 := (recoveredBlock242Value6) monthIndex.
    recoveredBlock242Value8 := (recoveredBlock242Value7) asString.
    (recoveredBlock242Value5) projectSpecificationTimeStampMonth: (recoveredBlock242Value8).
    recoveredBlock242Value9 := recoveredLocal2.
    recoveredBlock242Value10 := (recoveredBlock242Value9) dayOfMonth.
    recoveredBlock242Value11 := (recoveredBlock242Value10) asString.
    recoveredBlock242Value12 := (recoveredBlock242Value0) projectSpecificationTimeStampDay: (recoveredBlock242Value11).
    recoveredBlock242Value12
].
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack0) notNil: (recoveredStack1).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock285Value0 recoveredBlock285Value1 recoveredBlock285Value2 recoveredBlock285Value3 recoveredBlock285Value4 recoveredBlock285Value5 recoveredBlock285Value6 recoveredBlock285Value7 recoveredBlock285Value8 recoveredBlock285Value9 recoveredBlock285Value10 recoveredBlock285Value11 recoveredBlock285Value12 |
    recoveredBlock285Value0 := (self) buildEnvironmentInfo.
    recoveredBlock285Value1 := recoveredBlock285Value0.
    recoveredBlock285Value2 := recoveredLocal1.
    recoveredBlock285Value3 := (recoveredBlock285Value2) hours.
    recoveredBlock285Value4 := (recoveredBlock285Value3) asString.
    (recoveredBlock285Value1) projectSpecificationTimeStampHour: (recoveredBlock285Value4).
    recoveredBlock285Value5 := recoveredBlock285Value0.
    recoveredBlock285Value6 := recoveredLocal1.
    recoveredBlock285Value7 := (recoveredBlock285Value6) minutes.
    recoveredBlock285Value8 := (recoveredBlock285Value7) asString.
    (recoveredBlock285Value5) projectSpecificationTimeStampMinute: (recoveredBlock285Value8).
    recoveredBlock285Value9 := recoveredLocal1.
    recoveredBlock285Value10 := (recoveredBlock285Value9) seconds.
    recoveredBlock285Value11 := (recoveredBlock285Value10) asString.
    recoveredBlock285Value12 := (recoveredBlock285Value0) projectSpecificationTimeStampSecond: (recoveredBlock285Value11).
    recoveredBlock285Value12
].
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack0) notNil: (recoveredStack1).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack0) updatePlatform.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            (recoveredStack1) scopeCache: (recoveredStack2).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack0) update.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

