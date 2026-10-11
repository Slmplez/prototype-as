"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20029a74; bytecode file offset 0x934580"
!SGCgInterpolationAliasMapping methodsFor: 'recovered'!
interpolation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) interpolation.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030c74; bytecode file offset 0x934580"
!SGCgInterpolationAliasMapping methodsFor: 'recovered'!
hostAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) hostAccess.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200354c4; bytecode file offset 0x934580"
!SGCgInterpolationAliasMapping methodsFor: 'recovered'!
target
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) target.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004b0b8; bytecode file offset 0x947a60"
!SGCgInterpolationAliasMapping methodsFor: 'recovered'!
source
    | recoveredValue0 |
    recoveredValue0 := (self) source: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20065e2c; bytecode file offset 0x963428"
!SGCgInterpolationAliasMapping methodsFor: 'recovered'!
codeManager
    | recoveredValue0 |
    recoveredValue0 := codeManager.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067874; bytecode file offset 0x9646f8"
!SGCgInterpolationAliasMapping methodsFor: 'recovered'!
interpolationAliasMapping
    | recoveredValue0 |
    recoveredValue0 := mapping.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069e60; bytecode file offset 0x966bdc"
!SGCgInterpolationAliasMapping methodsFor: 'recovered'!
mappingFileChecksum
    | recoveredValue0 |
    recoveredValue0 := mappingFileChecksum.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200edad4; bytecode file offset 0x9ea394"
!SGCgInterpolationAliasMapping methodsFor: 'recovered'!
makeErrorNo: recoveredArg1 with: recoveredArg2 source: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) errorNo: (recoveredValue1) args: (recoveredValue2) category: ('Make') source: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2011de90; bytecode file offset 0xa1a754"
!SGCgInterpolationAliasMapping methodsFor: 'recovered'!
source: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGTextFileSource.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := mappingFile.
    (recoveredValue2) file: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) lineNumber: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20148dac; bytecode file offset 0xa456ac"
!SGCgInterpolationAliasMapping methodsFor: 'recovered'!
makeWarningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 source: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue5) category: ('Make') source: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20395f00; bytecode file offset 0xc927e8"
!SGCgInterpolationAliasMapping methodsFor: 'recovered'!
mappedInterpolation: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) interpolationAliasMapping.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8Stack6 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) interpolation.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack1 := [:recoveredBlock8Block15Arg1 | 
    | recoveredBlock8Block15Value0 recoveredBlock8Block15Value1 recoveredBlock8Block15Value2 recoveredBlock8Block15Value3 |
    recoveredBlock8Block15Value0 := recoveredBlock8Block15Arg1.
    recoveredBlock8Block15Value1 := (recoveredBlock8Block15Value0) identifier.
    recoveredBlock8Block15Value2 := recoveredArg1.
    recoveredBlock8Block15Value3 := (recoveredBlock8Block15Value1) = (recoveredBlock8Block15Value2).
    recoveredBlock8Block15Value3
].
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack2 := [].
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) detect: (recoveredBlock8Stack1) ifNone: (recoveredBlock8Stack2).
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            (recoveredBlock8Stack0 == nil) ifTrue: [recoveredBlock8PC := 68] ifFalse: [recoveredBlock8PC := 38].
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack0 := recoveredBlock8Local1.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) isAliasInterpolation.
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 44] ifFalse: [recoveredBlock8PC := 68].
        ].
        recoveredBlock8Step = 44 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 45.
        ].
        recoveredBlock8Step = 45 ifTrue: [
            recoveredBlock8Stack1 := 223.
            recoveredBlock8PC := 48.
        ].
        recoveredBlock8Step = 48 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg2.
            recoveredBlock8PC := 54.
        ].
        recoveredBlock8Step = 54 ifTrue: [
            recoveredBlock8Stack4 := Array.
            recoveredBlock8PC := 56.
        ].
        recoveredBlock8Step = 56 ifTrue: [
            recoveredBlock8Stack5 := self.
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            recoveredBlock8Stack5 := (recoveredBlock8Stack5) source.
            recoveredBlock8PC := 59.
        ].
        recoveredBlock8Step = 59 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) with: (recoveredBlock8Stack5).
            recoveredBlock8PC := 61.
        ].
        recoveredBlock8Step = 61 ifTrue: [
            recoveredBlock8Stack5 := #('Interpolation alias mapping file').
            recoveredBlock8PC := 63.
        ].
        recoveredBlock8Step = 63 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) createMultiSource: (recoveredBlock8Stack4) labels: (recoveredBlock8Stack5).
            recoveredBlock8PC := 65.
        ].
        recoveredBlock8Step = 65 ifTrue: [
            (recoveredBlock8Stack0) makeErrorNo: (recoveredBlock8Stack1) with: (recoveredBlock8Stack2) source: (recoveredBlock8Stack3).
            recoveredBlock8PC := 68.
        ].
        recoveredBlock8Step = 68 ifTrue: [
            recoveredBlock8Stack0 := recoveredArg1.
            recoveredBlock8PC := 71.
        ].
        recoveredBlock8Step = 71 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2061f434; bytecode file offset 0xf1bda4"
!SGCgInterpolationAliasMapping methodsFor: 'recovered'!
initialize: recoveredArg1 codeManager: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            codeManager := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            mapping := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) osConfigSettings.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) interpolationMapping.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathTokens.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 'P_TGROOT'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := (recoveredStack4) target.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) getTargetBasePath.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := 'P_TARGET'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) target.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) getTargetSpecificPath.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := $;.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Local1 recoveredBlock60Stack0 recoveredBlock60Stack1 recoveredBlock60Stack2 recoveredBlock60Stack3 recoveredBlock60Stack4 recoveredBlock60PC recoveredBlock60Step recoveredBlock60Done recoveredBlock60Result |
    recoveredBlock60Stack0 := self.
    recoveredBlock60PC := 66.
    recoveredBlock60Done := false.
    [recoveredBlock60Done not] whileTrue: [
        recoveredBlock60Step := recoveredBlock60PC.
        recoveredBlock60Step = 66 ifTrue: [
            recoveredBlock60Stack1 := nil.
            recoveredBlock60PC := 67.
        ].
        recoveredBlock60Step = 67 ifTrue: [
            recoveredBlock60Stack2 := mappingFile.
            recoveredBlock60PC := 69.
        ].
        recoveredBlock60Step = 69 ifTrue: [
            (recoveredBlock60Stack2 ~~ nil) ifTrue: [recoveredBlock60PC := 97] ifFalse: [recoveredBlock60PC := 72].
        ].
        recoveredBlock60Step = 72 ifTrue: [
            recoveredBlock60PC := 73.
        ].
        recoveredBlock60Step = 73 ifTrue: [
            recoveredBlock60Stack1 := recoveredBlock60Arg1.
            recoveredBlock60PC := 74.
        ].
        recoveredBlock60Step = 74 ifTrue: [
            recoveredBlock60Stack2 := recoveredLocal3.
            recoveredBlock60PC := 77.
        ].
        recoveredBlock60Step = 77 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) asFilename: (recoveredBlock60Stack2).
            recoveredBlock60PC := 79.
        ].
        recoveredBlock60Step = 79 ifTrue: [
            recoveredBlock60Local1 := recoveredBlock60Stack1.
            recoveredBlock60PC := 80.
        ].
        recoveredBlock60Step = 80 ifTrue: [
            recoveredBlock60Stack1 := nil.
            recoveredBlock60PC := 81.
        ].
        recoveredBlock60Step = 81 ifTrue: [
            recoveredBlock60Stack2 := self.
            recoveredBlock60PC := 82.
        ].
        recoveredBlock60Step = 82 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) hostAccess.
            recoveredBlock60PC := 84.
        ].
        recoveredBlock60Step = 84 ifTrue: [
            recoveredBlock60Stack3 := recoveredBlock60Local1.
            recoveredBlock60PC := 85.
        ].
        recoveredBlock60Step = 85 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) checkForExistency: (recoveredBlock60Stack3).
            recoveredBlock60PC := 87.
        ].
        recoveredBlock60Step = 87 ifTrue: [
            (recoveredBlock60Stack2) ifTrue: [recoveredBlock60PC := 90] ifFalse: [recoveredBlock60PC := 95].
        ].
        recoveredBlock60Step = 90 ifTrue: [
            recoveredBlock60PC := 91.
        ].
        recoveredBlock60Step = 91 ifTrue: [
            recoveredBlock60Stack1 := recoveredBlock60Local1.
            recoveredBlock60PC := 92.
        ].
        recoveredBlock60Step = 92 ifTrue: [
            recoveredBlock60Stack2 := recoveredBlock60Stack1.
            recoveredBlock60PC := 93.
        ].
        recoveredBlock60Step = 93 ifTrue: [
            mappingFile := recoveredBlock60Stack2.
            recoveredBlock60PC := 95.
        ].
        recoveredBlock60Step = 95 ifTrue: [
            recoveredBlock60Stack2 := nil.
            recoveredBlock60PC := 96.
        ].
        recoveredBlock60Step = 96 ifTrue: [
            recoveredBlock60Local1 := recoveredBlock60Stack2.
            recoveredBlock60PC := 97.
        ].
        recoveredBlock60Step = 97 ifTrue: [
            recoveredBlock60Result := recoveredBlock60Stack1.
            recoveredBlock60Done := true.
        ].
    ].
    recoveredBlock60Result
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := mappingFile.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 534] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) hostAccess.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := mappingFile.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) calculateChecksum: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            mappingFileChecksum := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) hostAccess.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := mappingFile.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := [:recoveredBlock120Arg1 | 
    | recoveredBlock120Value0 recoveredBlock120Value1 recoveredBlock120Value2 recoveredBlock120Value3 recoveredBlock120Value4 recoveredBlock120Value5 recoveredBlock120Value6 |
    recoveredBlock120Value0 := (self) errorHandler.
    recoveredBlock120Value1 := (self) source.
    recoveredBlock120Value2 := Array.
    recoveredBlock120Value3 := recoveredBlock120Arg1.
    recoveredBlock120Value4 := (recoveredBlock120Value2) with: (recoveredBlock120Value3).
    recoveredBlock120Value5 := (recoveredBlock120Value1) createMultiSource: (#(nil)) labels: (recoveredBlock120Value4).
    recoveredBlock120Value6 := (recoveredBlock120Value0) fatalMessage: ('Failed to parse interpolation mapping file') source: (recoveredBlock120Value5).
    recoveredBlock120Value6
].
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) readIniFile: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := [:block2811eb1cArg1 | 
    | block2811eb1cValue0 block2811eb1cValue1 block2811eb1cValue2 |
    block2811eb1cValue0 := block2811eb1cArg1.
    block2811eb1cValue1 := (block2811eb1cValue0) name.
    block2811eb1cValue2 := (block2811eb1cValue1) equalsIgnoringCase: ('Mapping').
    block2811eb1cValue2
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 526] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) entryList.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := [:recoveredBlock185Arg1 | 
    | recoveredBlock185Local1 recoveredBlock185Local2 recoveredBlock185Stack0 recoveredBlock185Stack1 recoveredBlock185Stack2 recoveredBlock185Stack3 recoveredBlock185Stack4 recoveredBlock185Stack5 recoveredBlock185Stack6 recoveredBlock185Stack7 recoveredBlock185PC recoveredBlock185Step recoveredBlock185Done recoveredBlock185Result |
    recoveredBlock185Stack0 := self.
    recoveredBlock185PC := 192.
    recoveredBlock185Done := false.
    [recoveredBlock185Done not] whileTrue: [
        recoveredBlock185Step := recoveredBlock185PC.
        recoveredBlock185Step = 192 ifTrue: [
            recoveredBlock185Stack1 := mapping.
            recoveredBlock185PC := 194.
        ].
        recoveredBlock185Step = 194 ifTrue: [
            recoveredBlock185Stack2 := recoveredBlock185Arg1.
            recoveredBlock185PC := 197.
        ].
        recoveredBlock185Step = 197 ifTrue: [
            recoveredBlock185Stack2 := (recoveredBlock185Stack2) name.
            recoveredBlock185PC := 199.
        ].
        recoveredBlock185Step = 199 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) includesKey: (recoveredBlock185Stack2).
            recoveredBlock185PC := 201.
        ].
        recoveredBlock185Step = 201 ifTrue: [
            (recoveredBlock185Stack1) ifTrue: [recoveredBlock185PC := 204] ifFalse: [recoveredBlock185PC := 230].
        ].
        recoveredBlock185Step = 204 ifTrue: [
            recoveredBlock185Stack1 := self.
            recoveredBlock185PC := 205.
        ].
        recoveredBlock185Step = 205 ifTrue: [
            recoveredBlock185Stack2 := 224.
            recoveredBlock185PC := 208.
        ].
        recoveredBlock185Step = 208 ifTrue: [
            recoveredBlock185Stack3 := recoveredBlock185Arg1.
            recoveredBlock185PC := 211.
        ].
        recoveredBlock185Step = 211 ifTrue: [
            recoveredBlock185Stack3 := (recoveredBlock185Stack3) name.
            recoveredBlock185PC := 213.
        ].
        recoveredBlock185Step = 213 ifTrue: [
            recoveredBlock185Stack4 := mappingFile.
            recoveredBlock185PC := 215.
        ].
        recoveredBlock185Step = 215 ifTrue: [
            recoveredBlock185Stack5 := self.
            recoveredBlock185PC := 216.
        ].
        recoveredBlock185Step = 216 ifTrue: [
            recoveredBlock185Stack6 := recoveredBlock185Arg1.
            recoveredBlock185PC := 219.
        ].
        recoveredBlock185Step = 219 ifTrue: [
            recoveredBlock185Stack6 := (recoveredBlock185Stack6) lineNumber.
            recoveredBlock185PC := 221.
        ].
        recoveredBlock185Step = 221 ifTrue: [
            recoveredBlock185Stack5 := (recoveredBlock185Stack5) source: (recoveredBlock185Stack6).
            recoveredBlock185PC := 223.
        ].
        recoveredBlock185Step = 223 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) makeWarningNo: (recoveredBlock185Stack2) with: (recoveredBlock185Stack3) with: (recoveredBlock185Stack4) source: (recoveredBlock185Stack5).
            recoveredBlock185PC := 226.
        ].
        recoveredBlock185Step = 226 ifTrue: [
            recoveredBlock185PC := 523.
        ].
        recoveredBlock185Step = 230 ifTrue: [
            recoveredBlock185Stack1 := self.
            recoveredBlock185PC := 231.
        ].
        recoveredBlock185Step = 231 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) interpolation.
            recoveredBlock185PC := 233.
        ].
        recoveredBlock185Step = 233 ifTrue: [
            recoveredBlock185Stack2 := [:recoveredBlock185Block233Arg1 | 
    | recoveredBlock185Block233Value0 recoveredBlock185Block233Value1 recoveredBlock185Block233Value2 recoveredBlock185Block233Value3 recoveredBlock185Block233Value4 |
    recoveredBlock185Block233Value0 := recoveredBlock185Block233Arg1.
    recoveredBlock185Block233Value1 := (recoveredBlock185Block233Value0) identifier.
    recoveredBlock185Block233Value2 := recoveredBlock185Arg1.
    recoveredBlock185Block233Value3 := (recoveredBlock185Block233Value2) name.
    recoveredBlock185Block233Value4 := (recoveredBlock185Block233Value1) = (recoveredBlock185Block233Value3).
    recoveredBlock185Block233Value4
].
            recoveredBlock185PC := 250.
        ].
        recoveredBlock185Step = 250 ifTrue: [
            recoveredBlock185Stack3 := [
    | recoveredBlock185Block250Value0 recoveredBlock185Block250Value1 recoveredBlock185Block250Value2 recoveredBlock185Block250Value3 recoveredBlock185Block250Value4 recoveredBlock185Block250Value5 |
    recoveredBlock185Block250Value0 := recoveredBlock185Arg1.
    recoveredBlock185Block250Value1 := (recoveredBlock185Block250Value0) name.
    recoveredBlock185Block250Value2 := mappingFile.
    recoveredBlock185Block250Value3 := recoveredBlock185Arg1.
    recoveredBlock185Block250Value4 := (recoveredBlock185Block250Value3) lineNumber.
    recoveredBlock185Block250Value5 := (self) source: (recoveredBlock185Block250Value4).
    (self) makeWarningNo: (221) with: (recoveredBlock185Block250Value1) with: (recoveredBlock185Block250Value2) source: (recoveredBlock185Block250Value5).
    nil
].
            recoveredBlock185PC := 280.
        ].
        recoveredBlock185Step = 280 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) detect: (recoveredBlock185Stack2) ifNone: (recoveredBlock185Stack3).
            recoveredBlock185PC := 282.
        ].
        recoveredBlock185Step = 282 ifTrue: [
            recoveredBlock185Local2 := recoveredBlock185Stack1.
            recoveredBlock185PC := 285.
        ].
        recoveredBlock185Step = 285 ifTrue: [
            recoveredBlock185Stack1 := recoveredBlock185Local2.
            recoveredBlock185PC := 288.
        ].
        recoveredBlock185Step = 288 ifTrue: [
            (recoveredBlock185Stack1 == nil) ifTrue: [recoveredBlock185PC := 326] ifFalse: [recoveredBlock185PC := 292].
        ].
        recoveredBlock185Step = 292 ifTrue: [
            recoveredBlock185Stack1 := recoveredBlock185Local2.
            recoveredBlock185PC := 295.
        ].
        recoveredBlock185Step = 295 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) isAliasInterpolation.
            recoveredBlock185PC := 297.
        ].
        recoveredBlock185Step = 297 ifTrue: [
            (recoveredBlock185Stack1) ifTrue: [recoveredBlock185PC := 326] ifFalse: [recoveredBlock185PC := 300].
        ].
        recoveredBlock185Step = 300 ifTrue: [
            recoveredBlock185Stack1 := self.
            recoveredBlock185PC := 301.
        ].
        recoveredBlock185Step = 301 ifTrue: [
            recoveredBlock185Stack2 := 222.
            recoveredBlock185PC := 304.
        ].
        recoveredBlock185Step = 304 ifTrue: [
            recoveredBlock185Stack3 := recoveredBlock185Arg1.
            recoveredBlock185PC := 307.
        ].
        recoveredBlock185Step = 307 ifTrue: [
            recoveredBlock185Stack3 := (recoveredBlock185Stack3) name.
            recoveredBlock185PC := 309.
        ].
        recoveredBlock185Step = 309 ifTrue: [
            recoveredBlock185Stack4 := mappingFile.
            recoveredBlock185PC := 311.
        ].
        recoveredBlock185Step = 311 ifTrue: [
            recoveredBlock185Stack5 := self.
            recoveredBlock185PC := 312.
        ].
        recoveredBlock185Step = 312 ifTrue: [
            recoveredBlock185Stack6 := recoveredBlock185Arg1.
            recoveredBlock185PC := 315.
        ].
        recoveredBlock185Step = 315 ifTrue: [
            recoveredBlock185Stack6 := (recoveredBlock185Stack6) lineNumber.
            recoveredBlock185PC := 317.
        ].
        recoveredBlock185Step = 317 ifTrue: [
            recoveredBlock185Stack5 := (recoveredBlock185Stack5) source: (recoveredBlock185Stack6).
            recoveredBlock185PC := 319.
        ].
        recoveredBlock185Step = 319 ifTrue: [
            (recoveredBlock185Stack1) makeWarningNo: (recoveredBlock185Stack2) with: (recoveredBlock185Stack3) with: (recoveredBlock185Stack4) source: (recoveredBlock185Stack5).
            recoveredBlock185PC := 322.
        ].
        recoveredBlock185Step = 322 ifTrue: [
            recoveredBlock185Stack1 := nil.
            recoveredBlock185PC := 323.
        ].
        recoveredBlock185Step = 323 ifTrue: [
            recoveredBlock185Local2 := recoveredBlock185Stack1.
            recoveredBlock185PC := 326.
        ].
        recoveredBlock185Step = 326 ifTrue: [
            recoveredBlock185Stack1 := self.
            recoveredBlock185PC := 327.
        ].
        recoveredBlock185Step = 327 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) interpolation.
            recoveredBlock185PC := 329.
        ].
        recoveredBlock185Step = 329 ifTrue: [
            recoveredBlock185Stack2 := [:recoveredBlock185Block329Arg1 | 
    | recoveredBlock185Block329Value0 recoveredBlock185Block329Value1 recoveredBlock185Block329Value2 recoveredBlock185Block329Value3 recoveredBlock185Block329Value4 |
    recoveredBlock185Block329Value0 := recoveredBlock185Block329Arg1.
    recoveredBlock185Block329Value1 := (recoveredBlock185Block329Value0) identifier.
    recoveredBlock185Block329Value2 := recoveredBlock185Arg1.
    recoveredBlock185Block329Value3 := (recoveredBlock185Block329Value2) value.
    recoveredBlock185Block329Value4 := (recoveredBlock185Block329Value1) = (recoveredBlock185Block329Value3).
    recoveredBlock185Block329Value4
].
            recoveredBlock185PC := 346.
        ].
        recoveredBlock185Step = 346 ifTrue: [
            recoveredBlock185Stack3 := [
    | recoveredBlock185Block346Value0 recoveredBlock185Block346Value1 recoveredBlock185Block346Value2 recoveredBlock185Block346Value3 recoveredBlock185Block346Value4 recoveredBlock185Block346Value5 |
    recoveredBlock185Block346Value0 := recoveredBlock185Arg1.
    recoveredBlock185Block346Value1 := (recoveredBlock185Block346Value0) value.
    recoveredBlock185Block346Value2 := mappingFile.
    recoveredBlock185Block346Value3 := recoveredBlock185Arg1.
    recoveredBlock185Block346Value4 := (recoveredBlock185Block346Value3) lineNumber.
    recoveredBlock185Block346Value5 := (self) source: (recoveredBlock185Block346Value4).
    (self) makeWarningNo: (221) with: (recoveredBlock185Block346Value1) with: (recoveredBlock185Block346Value2) source: (recoveredBlock185Block346Value5).
    nil
].
            recoveredBlock185PC := 376.
        ].
        recoveredBlock185Step = 376 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) detect: (recoveredBlock185Stack2) ifNone: (recoveredBlock185Stack3).
            recoveredBlock185PC := 378.
        ].
        recoveredBlock185Step = 378 ifTrue: [
            recoveredBlock185Local1 := recoveredBlock185Stack1.
            recoveredBlock185PC := 381.
        ].
        recoveredBlock185Step = 381 ifTrue: [
            recoveredBlock185Stack1 := recoveredBlock185Local1.
            recoveredBlock185PC := 384.
        ].
        recoveredBlock185Step = 384 ifTrue: [
            (recoveredBlock185Stack1 == nil) ifTrue: [recoveredBlock185PC := 422] ifFalse: [recoveredBlock185PC := 388].
        ].
        recoveredBlock185Step = 388 ifTrue: [
            recoveredBlock185Stack1 := recoveredBlock185Local1.
            recoveredBlock185PC := 391.
        ].
        recoveredBlock185Step = 391 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) isAliasInterpolation.
            recoveredBlock185PC := 393.
        ].
        recoveredBlock185Step = 393 ifTrue: [
            (recoveredBlock185Stack1) ifTrue: [recoveredBlock185PC := 396] ifFalse: [recoveredBlock185PC := 422].
        ].
        recoveredBlock185Step = 396 ifTrue: [
            recoveredBlock185Stack1 := self.
            recoveredBlock185PC := 397.
        ].
        recoveredBlock185Step = 397 ifTrue: [
            recoveredBlock185Stack2 := 223.
            recoveredBlock185PC := 400.
        ].
        recoveredBlock185Step = 400 ifTrue: [
            recoveredBlock185Stack3 := recoveredBlock185Arg1.
            recoveredBlock185PC := 403.
        ].
        recoveredBlock185Step = 403 ifTrue: [
            recoveredBlock185Stack3 := (recoveredBlock185Stack3) name.
            recoveredBlock185PC := 405.
        ].
        recoveredBlock185Step = 405 ifTrue: [
            recoveredBlock185Stack4 := mappingFile.
            recoveredBlock185PC := 407.
        ].
        recoveredBlock185Step = 407 ifTrue: [
            recoveredBlock185Stack5 := self.
            recoveredBlock185PC := 408.
        ].
        recoveredBlock185Step = 408 ifTrue: [
            recoveredBlock185Stack6 := recoveredBlock185Arg1.
            recoveredBlock185PC := 411.
        ].
        recoveredBlock185Step = 411 ifTrue: [
            recoveredBlock185Stack6 := (recoveredBlock185Stack6) lineNumber.
            recoveredBlock185PC := 413.
        ].
        recoveredBlock185Step = 413 ifTrue: [
            recoveredBlock185Stack5 := (recoveredBlock185Stack5) source: (recoveredBlock185Stack6).
            recoveredBlock185PC := 415.
        ].
        recoveredBlock185Step = 415 ifTrue: [
            (recoveredBlock185Stack1) makeWarningNo: (recoveredBlock185Stack2) with: (recoveredBlock185Stack3) with: (recoveredBlock185Stack4) source: (recoveredBlock185Stack5).
            recoveredBlock185PC := 418.
        ].
        recoveredBlock185Step = 418 ifTrue: [
            recoveredBlock185Stack1 := nil.
            recoveredBlock185PC := 419.
        ].
        recoveredBlock185Step = 419 ifTrue: [
            recoveredBlock185Local1 := recoveredBlock185Stack1.
            recoveredBlock185PC := 422.
        ].
        recoveredBlock185Step = 422 ifTrue: [
            recoveredBlock185Stack1 := nil.
            recoveredBlock185PC := 423.
        ].
        recoveredBlock185Step = 423 ifTrue: [
            recoveredBlock185Stack2 := recoveredBlock185Local2.
            recoveredBlock185PC := 426.
        ].
        recoveredBlock185Step = 426 ifTrue: [
            (recoveredBlock185Stack2 == nil) ifTrue: [recoveredBlock185PC := 515] ifFalse: [recoveredBlock185PC := 430].
        ].
        recoveredBlock185Step = 430 ifTrue: [
            recoveredBlock185Stack2 := recoveredBlock185Local1.
            recoveredBlock185PC := 433.
        ].
        recoveredBlock185Step = 433 ifTrue: [
            (recoveredBlock185Stack2 == nil) ifTrue: [recoveredBlock185PC := 515] ifFalse: [recoveredBlock185PC := 436].
        ].
        recoveredBlock185Step = 436 ifTrue: [
            recoveredBlock185PC := 437.
        ].
        recoveredBlock185Step = 437 ifTrue: [
            recoveredBlock185Stack1 := recoveredBlock185Local2.
            recoveredBlock185PC := 440.
        ].
        recoveredBlock185Step = 440 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) isDecreasingMonotonyAllowed.
            recoveredBlock185PC := 442.
        ].
        recoveredBlock185Step = 442 ifTrue: [
            recoveredBlock185Stack2 := recoveredBlock185Local1.
            recoveredBlock185PC := 445.
        ].
        recoveredBlock185Step = 445 ifTrue: [
            recoveredBlock185Stack2 := (recoveredBlock185Stack2) isDecreasingMonotonyAllowed.
            recoveredBlock185PC := 447.
        ].
        recoveredBlock185Step = 447 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) ~= (recoveredBlock185Stack2).
            recoveredBlock185PC := 448.
        ].
        recoveredBlock185Step = 448 ifTrue: [
            (recoveredBlock185Stack1) ifTrue: [recoveredBlock185PC := 452] ifFalse: [recoveredBlock185PC := 469].
        ].
        recoveredBlock185Step = 452 ifTrue: [
            recoveredBlock185Stack1 := self.
            recoveredBlock185PC := 453.
        ].
        recoveredBlock185Step = 453 ifTrue: [
            recoveredBlock185Stack2 := 222.
            recoveredBlock185PC := 456.
        ].
        recoveredBlock185Step = 456 ifTrue: [
            recoveredBlock185Stack3 := 'Disallow Decreasing axis'.
            recoveredBlock185PC := 458.
        ].
        recoveredBlock185Step = 458 ifTrue: [
            recoveredBlock185Stack4 := self.
            recoveredBlock185PC := 459.
        ].
        recoveredBlock185Step = 459 ifTrue: [
            recoveredBlock185Stack5 := recoveredBlock185Arg1.
            recoveredBlock185PC := 462.
        ].
        recoveredBlock185Step = 462 ifTrue: [
            recoveredBlock185Stack5 := (recoveredBlock185Stack5) lineNumber.
            recoveredBlock185PC := 464.
        ].
        recoveredBlock185Step = 464 ifTrue: [
            recoveredBlock185Stack4 := (recoveredBlock185Stack4) source: (recoveredBlock185Stack5).
            recoveredBlock185PC := 466.
        ].
        recoveredBlock185Step = 466 ifTrue: [
            (recoveredBlock185Stack1) makeErrorNo: (recoveredBlock185Stack2) with: (recoveredBlock185Stack3) source: (recoveredBlock185Stack4).
            recoveredBlock185PC := 469.
        ].
        recoveredBlock185Step = 469 ifTrue: [
            recoveredBlock185Stack1 := recoveredBlock185Local2.
            recoveredBlock185PC := 472.
        ].
        recoveredBlock185Step = 472 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) isIncreasingMonotonyAllowed.
            recoveredBlock185PC := 474.
        ].
        recoveredBlock185Step = 474 ifTrue: [
            recoveredBlock185Stack2 := recoveredBlock185Local1.
            recoveredBlock185PC := 477.
        ].
        recoveredBlock185Step = 477 ifTrue: [
            recoveredBlock185Stack2 := (recoveredBlock185Stack2) isIncreasingMonotonyAllowed.
            recoveredBlock185PC := 479.
        ].
        recoveredBlock185Step = 479 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) ~= (recoveredBlock185Stack2).
            recoveredBlock185PC := 480.
        ].
        recoveredBlock185Step = 480 ifTrue: [
            (recoveredBlock185Stack1) ifTrue: [recoveredBlock185PC := 484] ifFalse: [recoveredBlock185PC := 501].
        ].
        recoveredBlock185Step = 484 ifTrue: [
            recoveredBlock185Stack1 := self.
            recoveredBlock185PC := 485.
        ].
        recoveredBlock185Step = 485 ifTrue: [
            recoveredBlock185Stack2 := 222.
            recoveredBlock185PC := 488.
        ].
        recoveredBlock185Step = 488 ifTrue: [
            recoveredBlock185Stack3 := 'Disallow Increasing axis'.
            recoveredBlock185PC := 490.
        ].
        recoveredBlock185Step = 490 ifTrue: [
            recoveredBlock185Stack4 := self.
            recoveredBlock185PC := 491.
        ].
        recoveredBlock185Step = 491 ifTrue: [
            recoveredBlock185Stack5 := recoveredBlock185Arg1.
            recoveredBlock185PC := 494.
        ].
        recoveredBlock185Step = 494 ifTrue: [
            recoveredBlock185Stack5 := (recoveredBlock185Stack5) lineNumber.
            recoveredBlock185PC := 496.
        ].
        recoveredBlock185Step = 496 ifTrue: [
            recoveredBlock185Stack4 := (recoveredBlock185Stack4) source: (recoveredBlock185Stack5).
            recoveredBlock185PC := 498.
        ].
        recoveredBlock185Step = 498 ifTrue: [
            (recoveredBlock185Stack1) makeErrorNo: (recoveredBlock185Stack2) with: (recoveredBlock185Stack3) source: (recoveredBlock185Stack4).
            recoveredBlock185PC := 501.
        ].
        recoveredBlock185Step = 501 ifTrue: [
            recoveredBlock185Stack1 := mapping.
            recoveredBlock185PC := 503.
        ].
        recoveredBlock185Step = 503 ifTrue: [
            recoveredBlock185Stack2 := recoveredBlock185Arg1.
            recoveredBlock185PC := 506.
        ].
        recoveredBlock185Step = 506 ifTrue: [
            recoveredBlock185Stack2 := (recoveredBlock185Stack2) name.
            recoveredBlock185PC := 508.
        ].
        recoveredBlock185Step = 508 ifTrue: [
            recoveredBlock185Stack3 := recoveredBlock185Arg1.
            recoveredBlock185PC := 511.
        ].
        recoveredBlock185Step = 511 ifTrue: [
            recoveredBlock185Stack3 := (recoveredBlock185Stack3) value.
            recoveredBlock185PC := 513.
        ].
        recoveredBlock185Step = 513 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) at: (recoveredBlock185Stack2) put: (recoveredBlock185Stack3).
            recoveredBlock185PC := 515.
        ].
        recoveredBlock185Step = 515 ifTrue: [
            recoveredBlock185Stack2 := nil.
            recoveredBlock185PC := 516.
        ].
        recoveredBlock185Step = 516 ifTrue: [
            recoveredBlock185Stack3 := recoveredBlock185Stack2.
            recoveredBlock185PC := 517.
        ].
        recoveredBlock185Step = 517 ifTrue: [
            recoveredBlock185Local2 := recoveredBlock185Stack3.
            recoveredBlock185PC := 520.
        ].
        recoveredBlock185Step = 520 ifTrue: [
            recoveredBlock185Local1 := recoveredBlock185Stack2.
            recoveredBlock185PC := 523.
        ].
        recoveredBlock185Step = 523 ifTrue: [
            recoveredBlock185Result := recoveredBlock185Stack1.
            recoveredBlock185Done := true.
        ].
    ].
    recoveredBlock185Result
].
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

