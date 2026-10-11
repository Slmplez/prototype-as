"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000ce74; bytecode file offset 0x909ab8"
!RBUserWindow class methodsFor: 'recovered'!
simClass: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x20073cd0; bytecode file offset 0x970b34"
!RBUserWindow class methodsFor: 'recovered'!
simClassOffline
    ^nil
! !

"ASDBase.ic method 0x20073d18; bytecode file offset 0x970b34"
!RBUserWindow class methodsFor: 'recovered'!
simClassOnline
    ^nil
! !

"ASDBase.ic method 0x20094250; bytecode file offset 0x990b08"
!RBUserWindow class methodsFor: 'recovered'!
menuIDs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    MenuIDs := recoveredValue0.
    recoveredValue1 := MenuIDs.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2012acd4; bytecode file offset 0xa275d0"
!RBUserWindow class methodsFor: 'recovered'!
buttonIDs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := buttonIDs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            buttonIDs := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := buttonIDs.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202e4004; bytecode file offset 0xbe08cc"
!RBUserWindow class methodsFor: 'recovered'!
addMenuID: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) menuIDs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := (self) menuIDs.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := recoveredArg2.
    recoveredBlock8Value3 := (recoveredBlock8Value0) at: (recoveredBlock8Value1) put: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) printString.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            recoveredBlock24Stack3 := recoveredArg2.
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) printString.
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) = (recoveredBlock24Stack3).
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 45] ifFalse: [recoveredBlock24PC := 42].
        ].
        recoveredBlock24Step = 42 ifTrue: [
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredBlock24Stack1 := self.
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) etasDevHalt.
            recoveredBlock24PC := 45.
        ].
        recoveredBlock24Step = 45 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2) ifPresent: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x206c7b84; bytecode file offset 0xfc4cac"
!RBUserWindow class methodsFor: 'recovered'!
menuIDs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'ASCETLINKS'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PROD105089'.
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
            recoveredStack1 := 'Kk'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'ASC_MaxDatabaseSize'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := MenuIDs.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 5301] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            MenuIDs := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := MenuIDs.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 1001.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := 'menuBuildGenerate'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := 1002.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := 'menuBuildCompile'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 1003.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := 'menuBuildLink'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := 1004.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := 'menuBuildBuild'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 1005.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := 'menuBuildBuildFrom'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := 1006.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := 'menuBuildReBuild'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := 1007.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := 'menuBuildTransfer'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := 1008.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := 'menuBuildExperiment'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := 1009.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := 'menuBuildFlash'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := 1010.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := 'menuBuildReconnect'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := 1011.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := 'menuEditUndo'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := 1012.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := 'menuEditRedo'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := 1013.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := 'menuEditCutFocus'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := 1014.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack4 := 'menuEditCopyFocus'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := 1015.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack4 := 'menuEditPasteFocus'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := 1016.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack4 := 'menuEditDeleteFocus'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := 1017.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack4 := 'menuEditRenameFocus'.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := 1018.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack4 := 'menuEditReplace'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := 1019.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack4 := 'menuEditFind'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := 1020.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack4 := 'menuEditSearch'.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := 1021.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack4 := 'menuEditOpen'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := 1022.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack4 := 'menuEditElementProperties'.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack3 := 1023.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack4 := 'menuEditElementData'.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := 1024.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := 'menuEditElementImplementation'.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := 1025.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := 'menuEditComponentLayout'.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := 1026.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack4 := 'menuEditElementNotes'.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack3 := 1027.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack4 := 'menuEditElementDistribution'.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := 1029.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack4 := 'menuExtrasParentComponent'.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := 1030.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack4 := 'menuExtrasParentHierarchy'.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := 1031.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack4 := 'menuExtrasUpdateImplementation'.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack3 := 1032.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack4 := 'menuExtrasCheckDependency'.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := 1033.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack4 := 'menuExtrasCopyCCode'.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack3 := 1034.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack4 := 'menuExtrasReplaceFormula'.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack3 := 1036.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack4 := 'menuFileLoadFromFile'.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack3 := 1037.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack4 := 'menuFileSaveToFile'.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack3 := 1038.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack4 := 'menuFileSave'.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack3 := 1039.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack4 := 'menuFilePrint'.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack3 := 1040.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack4 := 'menuFilePrintSetup'.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := 1041.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack4 := 'menuToolsOptions'.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack3 := 1042.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack4 := 'menuInsertComponent'.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack3 := 1043.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack4 := 'menuInsertElement'.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack3 := 1044.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack4 := 'menuInsertMethod'.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack3 := 1045.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack4 := 'menuInsertTrigger'.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack3 := 1046.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack4 := 'menuInsertAction'.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack3 := 1047.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack4 := 'menuInsertCondition'.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack3 := 1048.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack4 := 'menuInsertDiagramPublic'.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack3 := 1049.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack4 := 'menuFileProperties'.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack3 := 1050.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack4 := 'menuViewGrid'.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack3 := 1051.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack4 := 'menuBuildAnalyzeDiagram'.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack3 := 1052.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack4 := 'menuWindowLoadDiagram'.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack3 := 1053.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack4 := 'menuWindowMoveUpMethod'.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack3 := 1054.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack4 := 'menuWindowMoveDownMethod'.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack3 := 1055.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack4 := 'menuWindowMoveMethod'.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack3 := 1056.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack4 := 'menuWindowViews'.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack3 := 1057.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack4 := 'menuWindowRedraw'.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack3 := 1058.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack4 := 'menuWindowRebuildConnections'.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack3 := 1059.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack4 := 'menuBuildTouchFlat'.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack3 := 1060.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack4 := 'menuBuildTouchRecursive'.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack3 := 1061.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack4 := 'menuEditSeqCallResetDiagram'.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack3 := 1062.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack4 := 'menuEditSeqCallResetMethod'.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack3 := 1063.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack4 := 'menuEditSeqCallResetSelected'.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack3 := 1064.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack4 := 'menuEditSeqCallScaleDiagram'.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack3 := 1065.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack4 := 'menuEditSeqCallScaleMethod'.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack3 := 1066.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack4 := 'menuEditSeqCallSequencingIgnore'.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack3 := 1067.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack4 := 'menuEditSeqCallSequencingStart'.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack3 := 1068.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack4 := 'menuEditSeqCallSequencingAppend'.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack3 := 1069.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack4 := 'subMenuEditSeqCallReset'.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack3 := 1070.
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack4 := 'subMenuEditSeqCallSequencing'.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack3 := 1071.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack4 := 'subMenuEditSeqCallScaleToStep'.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack3 := 1072.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack4 := 'menuExtrasDataFileOut'.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack3 := 1073.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack4 := 'menuExtrasDataFileIn'.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack3 := 1074.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack4 := 'menuFileExportDataComponent'.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack3 := 1075.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack4 := 'menuExtrasDefProjOpen'.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack3 := 1076.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack4 := 'menuExtrasDefProjResolveGlobals'.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack3 := 1077.
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack4 := 'menuExtrasDefProjDeleteGlobals'.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack3 := 1078.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack4 := 'menuExtrasGlobalElementsResolveGlobals'.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack3 := 1080.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack4 := 'menuExtrasShowHierarchyPath'.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack3 := 1081.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack4 := 'menuExtrasShowPath'.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack3 := 1082.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack4 := 'menuExtrasShowOccurences'.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            recoveredStack3 := 1083.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack4 := 'menuBuildCodeView'.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack3 := 1084.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack4 := 'menuFileExportCodeFileOutFlat'.
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack3 := 1085.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack4 := 'menuFileExportCodeFileOutGeneric'.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack3 := 1086.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredStack4 := 'menuFilePrintDiagram'.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack3 := 1087.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack4 := 'menuFilePrintScaled'.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack3 := 1088.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack4 := 'menuFilePrintAll'.
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack3 := 1089.
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack4 := 'menuFileSaveAsPS'.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack3 := 1090.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack4 := 'menuFileSaveAsBMP'.
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack3 := 1091.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack4 := 'menuFileSaveAsGIF'.
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 813.
        ].
        recoveredStep = 813 ifTrue: [
            recoveredStack3 := 1092.
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            recoveredStack4 := 'menuFileSaveAsRTF'.
            recoveredPC := 820.
        ].
        recoveredStep = 820 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack3 := 1093.
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack4 := 'menuToolsASAM2MCWrite'.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredStack3 := 1094.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            recoveredStack4 := 'menuToolsASAM2MCReadHEXFile'.
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            recoveredStack3 := 1095.
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            recoveredStack4 := 'menuViewConfigureToolbarGenaral'.
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            recoveredStack3 := 1096.
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            recoveredStack4 := 'menuViewConfigureToolbarElements'.
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack3 := 1097.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack4 := 'menuViewConfigureToolbarGraphics'.
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredStack3 := 1098.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack4 := 'menuViewPageLayoutPortrait'.
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack3 := 1099.
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            recoveredStack4 := 'menuViewPageLayoutLandscape'.
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredStack3 := 1100.
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            recoveredStack4 := 'menuViewSeqCallHideDiagram'.
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 903.
        ].
        recoveredStep = 903 ifTrue: [
            recoveredStack3 := 1101.
            recoveredPC := 906.
        ].
        recoveredStep = 906 ifTrue: [
            recoveredStack4 := 'menuViewSeqCallHideMethod'.
            recoveredPC := 910.
        ].
        recoveredStep = 910 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 913.
        ].
        recoveredStep = 913 ifTrue: [
            recoveredStack3 := 1102.
            recoveredPC := 916.
        ].
        recoveredStep = 916 ifTrue: [
            recoveredStack4 := 'menuViewSeqCallHideSelected'.
            recoveredPC := 920.
        ].
        recoveredStep = 920 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 923.
        ].
        recoveredStep = 923 ifTrue: [
            recoveredStack3 := 1103.
            recoveredPC := 926.
        ].
        recoveredStep = 926 ifTrue: [
            recoveredStack4 := 'menuViewSeqCallHideUnused'.
            recoveredPC := 930.
        ].
        recoveredStep = 930 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            recoveredStack3 := 1104.
            recoveredPC := 936.
        ].
        recoveredStep = 936 ifTrue: [
            recoveredStack4 := 'menuViewSeqCallShowDiagram'.
            recoveredPC := 940.
        ].
        recoveredStep = 940 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            recoveredStack3 := 1105.
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredStack4 := 'menuViewSeqCallShowMethod'.
            recoveredPC := 950.
        ].
        recoveredStep = 950 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            recoveredStack3 := 1106.
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack4 := 'menuViewSeqCallShowSelected'.
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 963.
        ].
        recoveredStep = 963 ifTrue: [
            recoveredStack3 := 1107.
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredStack4 := 'menuViewSeqCallShowUnused'.
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            recoveredStack3 := 1108.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredStack4 := 'menuViewSeqCallNext'.
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 983.
        ].
        recoveredStep = 983 ifTrue: [
            recoveredStack3 := 1109.
            recoveredPC := 986.
        ].
        recoveredStep = 986 ifTrue: [
            recoveredStack4 := 'menuViewSeqCallPrev'.
            recoveredPC := 990.
        ].
        recoveredStep = 990 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 993.
        ].
        recoveredStep = 993 ifTrue: [
            recoveredStack3 := 1110.
            recoveredPC := 996.
        ].
        recoveredStep = 996 ifTrue: [
            recoveredStack4 := 'menuViewShowHideElementsList'.
            recoveredPC := 1000.
        ].
        recoveredStep = 1000 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1003.
        ].
        recoveredStep = 1003 ifTrue: [
            recoveredStack3 := 1112.
            recoveredPC := 1006.
        ].
        recoveredStep = 1006 ifTrue: [
            recoveredStack4 := 'menuViewShowHideConnectedElements'.
            recoveredPC := 1010.
        ].
        recoveredStep = 1010 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            recoveredStack3 := 1113.
            recoveredPC := 1016.
        ].
        recoveredStep = 1016 ifTrue: [
            recoveredStack4 := 'menuViewShowHidePaletteElements'.
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1023.
        ].
        recoveredStep = 1023 ifTrue: [
            recoveredStack3 := 1114.
            recoveredPC := 1026.
        ].
        recoveredStep = 1026 ifTrue: [
            recoveredStack4 := 'menuViewShowHidePaletteGraphics'.
            recoveredPC := 1030.
        ].
        recoveredStep = 1030 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1033.
        ].
        recoveredStep = 1033 ifTrue: [
            recoveredStack3 := 1115.
            recoveredPC := 1036.
        ].
        recoveredStep = 1036 ifTrue: [
            recoveredStack4 := 'menuViewShowHideToolbarGeneral'.
            recoveredPC := 1040.
        ].
        recoveredStep = 1040 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1043.
        ].
        recoveredStep = 1043 ifTrue: [
            recoveredStack3 := 1116.
            recoveredPC := 1046.
        ].
        recoveredStep = 1046 ifTrue: [
            recoveredStack4 := 'menuViewShowHideToolbarElements'.
            recoveredPC := 1050.
        ].
        recoveredStep = 1050 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1053.
        ].
        recoveredStep = 1053 ifTrue: [
            recoveredStack3 := 1117.
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            recoveredStack4 := 'menuViewShowHideToolbarGraphics'.
            recoveredPC := 1060.
        ].
        recoveredStep = 1060 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1063.
        ].
        recoveredStep = 1063 ifTrue: [
            recoveredStack3 := 1118.
            recoveredPC := 1066.
        ].
        recoveredStep = 1066 ifTrue: [
            recoveredStack4 := 'menuFileExportCodeFileOutRecursive'.
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1073.
        ].
        recoveredStep = 1073 ifTrue: [
            recoveredStack3 := 1119.
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            recoveredStack4 := 'menuEditComponentData'.
            recoveredPC := 1080.
        ].
        recoveredStep = 1080 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1083.
        ].
        recoveredStep = 1083 ifTrue: [
            recoveredStack3 := 1120.
            recoveredPC := 1086.
        ].
        recoveredStep = 1086 ifTrue: [
            recoveredStack4 := 'menuEditComponentImplementation'.
            recoveredPC := 1090.
        ].
        recoveredStep = 1090 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1093.
        ].
        recoveredStep = 1093 ifTrue: [
            recoveredStack3 := 1121.
            recoveredPC := 1096.
        ].
        recoveredStep = 1096 ifTrue: [
            recoveredStack4 := 'menuEditComponentNotes'.
            recoveredPC := 1100.
        ].
        recoveredStep = 1100 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1103.
        ].
        recoveredStep = 1103 ifTrue: [
            recoveredStack3 := 1122.
            recoveredPC := 1106.
        ].
        recoveredStep = 1106 ifTrue: [
            recoveredStack4 := 'menuFileExportDataElement'.
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1113.
        ].
        recoveredStep = 1113 ifTrue: [
            recoveredStack3 := 1123.
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            recoveredStack4 := 'menuFileImportDataElement'.
            recoveredPC := 1120.
        ].
        recoveredStep = 1120 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredStack3 := 1124.
            recoveredPC := 1126.
        ].
        recoveredStep = 1126 ifTrue: [
            recoveredStack4 := 'menuInsertDiagramPrivate'.
            recoveredPC := 1130.
        ].
        recoveredStep = 1130 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1133.
        ].
        recoveredStep = 1133 ifTrue: [
            recoveredStack3 := 1125.
            recoveredPC := 1136.
        ].
        recoveredStep = 1136 ifTrue: [
            recoveredStack4 := 'menuInsertDiagramPrivateBDE'.
            recoveredPC := 1140.
        ].
        recoveredStep = 1140 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1143.
        ].
        recoveredStep = 1143 ifTrue: [
            recoveredStack3 := 1126.
            recoveredPC := 1146.
        ].
        recoveredStep = 1146 ifTrue: [
            recoveredStack4 := 'menuInsertDiagramPrivateESDL'.
            recoveredPC := 1150.
        ].
        recoveredStep = 1150 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1153.
        ].
        recoveredStep = 1153 ifTrue: [
            recoveredStack3 := 1129.
            recoveredPC := 1156.
        ].
        recoveredStep = 1156 ifTrue: [
            recoveredStack4 := 'menuEditSelectAll'.
            recoveredPC := 1160.
        ].
        recoveredStep = 1160 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1163.
        ].
        recoveredStep = 1163 ifTrue: [
            recoveredStack3 := 1130.
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            recoveredStack4 := 'menuToolsCopyCCodeTo'.
            recoveredPC := 1170.
        ].
        recoveredStep = 1170 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1173.
        ].
        recoveredStep = 1173 ifTrue: [
            recoveredStack3 := 1131.
            recoveredPC := 1176.
        ].
        recoveredStep = 1176 ifTrue: [
            recoveredStack4 := 'menuToolsCopyCCodeFrom'.
            recoveredPC := 1180.
        ].
        recoveredStep = 1180 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1183.
        ].
        recoveredStep = 1183 ifTrue: [
            recoveredStack3 := 1132.
            recoveredPC := 1186.
        ].
        recoveredStep = 1186 ifTrue: [
            recoveredStack4 := 'menuColumnRemove'.
            recoveredPC := 1190.
        ].
        recoveredStep = 1190 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1193.
        ].
        recoveredStep = 1193 ifTrue: [
            recoveredStack3 := 1133.
            recoveredPC := 1196.
        ].
        recoveredStep = 1196 ifTrue: [
            recoveredStack4 := 'menuColumnMoveLeft'.
            recoveredPC := 1200.
        ].
        recoveredStep = 1200 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1203.
        ].
        recoveredStep = 1203 ifTrue: [
            recoveredStack3 := 1134.
            recoveredPC := 1206.
        ].
        recoveredStep = 1206 ifTrue: [
            recoveredStack4 := 'menuColumnMoveRight'.
            recoveredPC := 1210.
        ].
        recoveredStep = 1210 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1213.
        ].
        recoveredStep = 1213 ifTrue: [
            recoveredStack3 := 1135.
            recoveredPC := 1216.
        ].
        recoveredStep = 1216 ifTrue: [
            recoveredStack4 := 'menuRowAppend'.
            recoveredPC := 1220.
        ].
        recoveredStep = 1220 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1223.
        ].
        recoveredStep = 1223 ifTrue: [
            recoveredStack3 := 1136.
            recoveredPC := 1226.
        ].
        recoveredStep = 1226 ifTrue: [
            recoveredStack4 := 'menuRowDelete'.
            recoveredPC := 1230.
        ].
        recoveredStep = 1230 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1233.
        ].
        recoveredStep = 1233 ifTrue: [
            recoveredStack3 := 1137.
            recoveredPC := 1236.
        ].
        recoveredStep = 1236 ifTrue: [
            recoveredStack4 := 'menuRowMoveUp'.
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1243.
        ].
        recoveredStep = 1243 ifTrue: [
            recoveredStack3 := 1138.
            recoveredPC := 1246.
        ].
        recoveredStep = 1246 ifTrue: [
            recoveredStack4 := 'menuRowMoveDown'.
            recoveredPC := 1250.
        ].
        recoveredStep = 1250 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1253.
        ].
        recoveredStep = 1253 ifTrue: [
            recoveredStack3 := 1139.
            recoveredPC := 1256.
        ].
        recoveredStep = 1256 ifTrue: [
            recoveredStack4 := 'menuColumnAppendCondition'.
            recoveredPC := 1260.
        ].
        recoveredStep = 1260 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1263.
        ].
        recoveredStep = 1263 ifTrue: [
            recoveredStack3 := 1140.
            recoveredPC := 1266.
        ].
        recoveredStep = 1266 ifTrue: [
            recoveredStack4 := 'menuColumnAppendInstruction'.
            recoveredPC := 1270.
        ].
        recoveredStep = 1270 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1273.
        ].
        recoveredStep = 1273 ifTrue: [
            recoveredStack3 := 1141.
            recoveredPC := 1276.
        ].
        recoveredStep = 1276 ifTrue: [
            recoveredStack4 := 'menuInputAppend'.
            recoveredPC := 1280.
        ].
        recoveredStep = 1280 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1283.
        ].
        recoveredStep = 1283 ifTrue: [
            recoveredStack3 := 1142.
            recoveredPC := 1286.
        ].
        recoveredStep = 1286 ifTrue: [
            recoveredStack4 := 'menuInputInsert'.
            recoveredPC := 1290.
        ].
        recoveredStep = 1290 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1293.
        ].
        recoveredStep = 1293 ifTrue: [
            recoveredStack3 := 1143.
            recoveredPC := 1296.
        ].
        recoveredStep = 1296 ifTrue: [
            recoveredStack4 := 'menuInputRemove'.
            recoveredPC := 1300.
        ].
        recoveredStep = 1300 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1303.
        ].
        recoveredStep = 1303 ifTrue: [
            recoveredStack3 := 1144.
            recoveredPC := 1306.
        ].
        recoveredStep = 1306 ifTrue: [
            recoveredStack4 := 'menuInputRename'.
            recoveredPC := 1310.
        ].
        recoveredStep = 1310 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1313.
        ].
        recoveredStep = 1313 ifTrue: [
            recoveredStack3 := 1145.
            recoveredPC := 1316.
        ].
        recoveredStep = 1316 ifTrue: [
            recoveredStack4 := 'menuInputMoveLeft'.
            recoveredPC := 1320.
        ].
        recoveredStep = 1320 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1323.
        ].
        recoveredStep = 1323 ifTrue: [
            recoveredStack3 := 1146.
            recoveredPC := 1326.
        ].
        recoveredStep = 1326 ifTrue: [
            recoveredStack4 := 'menuInputMoveRight'.
            recoveredPC := 1330.
        ].
        recoveredStep = 1330 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1333.
        ].
        recoveredStep = 1333 ifTrue: [
            recoveredStack3 := 1147.
            recoveredPC := 1336.
        ].
        recoveredStep = 1336 ifTrue: [
            recoveredStack4 := 'menuOutputAppend'.
            recoveredPC := 1340.
        ].
        recoveredStep = 1340 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1343.
        ].
        recoveredStep = 1343 ifTrue: [
            recoveredStack3 := 1148.
            recoveredPC := 1346.
        ].
        recoveredStep = 1346 ifTrue: [
            recoveredStack4 := 'menuOutputInsert'.
            recoveredPC := 1350.
        ].
        recoveredStep = 1350 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1353.
        ].
        recoveredStep = 1353 ifTrue: [
            recoveredStack3 := 1149.
            recoveredPC := 1356.
        ].
        recoveredStep = 1356 ifTrue: [
            recoveredStack4 := 'menuOutputRemove'.
            recoveredPC := 1360.
        ].
        recoveredStep = 1360 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1363.
        ].
        recoveredStep = 1363 ifTrue: [
            recoveredStack3 := 1150.
            recoveredPC := 1366.
        ].
        recoveredStep = 1366 ifTrue: [
            recoveredStack4 := 'menuOutputRename'.
            recoveredPC := 1370.
        ].
        recoveredStep = 1370 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1373.
        ].
        recoveredStep = 1373 ifTrue: [
            recoveredStack3 := 1151.
            recoveredPC := 1376.
        ].
        recoveredStep = 1376 ifTrue: [
            recoveredStack4 := 'menuOutputMoveLeft'.
            recoveredPC := 1380.
        ].
        recoveredStep = 1380 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1383.
        ].
        recoveredStep = 1383 ifTrue: [
            recoveredStack3 := 1152.
            recoveredPC := 1386.
        ].
        recoveredStep = 1386 ifTrue: [
            recoveredStack4 := 'menuOutputMoveRight'.
            recoveredPC := 1390.
        ].
        recoveredStep = 1390 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1393.
        ].
        recoveredStep = 1393 ifTrue: [
            recoveredStack3 := 1153.
            recoveredPC := 1396.
        ].
        recoveredStep = 1396 ifTrue: [
            recoveredStack4 := 'menuCombiAppend'.
            recoveredPC := 1400.
        ].
        recoveredStep = 1400 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1403.
        ].
        recoveredStep = 1403 ifTrue: [
            recoveredStack3 := 1154.
            recoveredPC := 1406.
        ].
        recoveredStep = 1406 ifTrue: [
            recoveredStack4 := 'menuCombiInsert'.
            recoveredPC := 1410.
        ].
        recoveredStep = 1410 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1413.
        ].
        recoveredStep = 1413 ifTrue: [
            recoveredStack3 := 1155.
            recoveredPC := 1416.
        ].
        recoveredStep = 1416 ifTrue: [
            recoveredStack4 := 'menuCombiRemove'.
            recoveredPC := 1420.
        ].
        recoveredStep = 1420 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1423.
        ].
        recoveredStep = 1423 ifTrue: [
            recoveredStack3 := 1156.
            recoveredPC := 1426.
        ].
        recoveredStep = 1426 ifTrue: [
            recoveredStack4 := 'menuCombiMoveUp'.
            recoveredPC := 1430.
        ].
        recoveredStep = 1430 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1433.
        ].
        recoveredStep = 1433 ifTrue: [
            recoveredStack3 := 1157.
            recoveredPC := 1436.
        ].
        recoveredStep = 1436 ifTrue: [
            recoveredStack4 := 'menuCombiMoveDown'.
            recoveredPC := 1440.
        ].
        recoveredStep = 1440 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1443.
        ].
        recoveredStep = 1443 ifTrue: [
            recoveredStack3 := 1160.
            recoveredPC := 1446.
        ].
        recoveredStep = 1446 ifTrue: [
            recoveredStack4 := 'menuCollapseElementList'.
            recoveredPC := 1450.
        ].
        recoveredStep = 1450 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1453.
        ].
        recoveredStep = 1453 ifTrue: [
            recoveredStack3 := 1161.
            recoveredPC := 1456.
        ].
        recoveredStep = 1456 ifTrue: [
            recoveredStack4 := 'menuExpandElementList'.
            recoveredPC := 1460.
        ].
        recoveredStep = 1460 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1463.
        ].
        recoveredStep = 1463 ifTrue: [
            recoveredStack3 := 1162.
            recoveredPC := 1466.
        ].
        recoveredStep = 1466 ifTrue: [
            recoveredStack4 := 'menuPrintAllFlat'.
            recoveredPC := 1470.
        ].
        recoveredStep = 1470 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1473.
        ].
        recoveredStep = 1473 ifTrue: [
            recoveredStack3 := 1163.
            recoveredPC := 1476.
        ].
        recoveredStep = 1476 ifTrue: [
            recoveredStack4 := 'menuPrintAllRecursive'.
            recoveredPC := 1480.
        ].
        recoveredStep = 1480 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1483.
        ].
        recoveredStep = 1483 ifTrue: [
            recoveredStack3 := 1164.
            recoveredPC := 1486.
        ].
        recoveredStep = 1486 ifTrue: [
            recoveredStack4 := 'menuOpenModuleBinding'.
            recoveredPC := 1490.
        ].
        recoveredStep = 1490 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1493.
        ].
        recoveredStep = 1493 ifTrue: [
            recoveredStack3 := 1165.
            recoveredPC := 1496.
        ].
        recoveredStep = 1496 ifTrue: [
            recoveredStack4 := 'menuOpenModuleCommunication'.
            recoveredPC := 1500.
        ].
        recoveredStep = 1500 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1503.
        ].
        recoveredStep = 1503 ifTrue: [
            recoveredStack3 := 1166.
            recoveredPC := 1506.
        ].
        recoveredStep = 1506 ifTrue: [
            recoveredStack4 := 'menuGlobFormulaAdd'.
            recoveredPC := 1510.
        ].
        recoveredStep = 1510 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1513.
        ].
        recoveredStep = 1513 ifTrue: [
            recoveredStack3 := 1167.
            recoveredPC := 1516.
        ].
        recoveredStep = 1516 ifTrue: [
            recoveredStack4 := 'menuGlobFormulaRename'.
            recoveredPC := 1520.
        ].
        recoveredStep = 1520 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1523.
        ].
        recoveredStep = 1523 ifTrue: [
            recoveredStack3 := 1168.
            recoveredPC := 1526.
        ].
        recoveredStep = 1526 ifTrue: [
            recoveredStack4 := 'menuGlobFormulaDelete'.
            recoveredPC := 1530.
        ].
        recoveredStep = 1530 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1533.
        ].
        recoveredStep = 1533 ifTrue: [
            recoveredStack3 := 1169.
            recoveredPC := 1536.
        ].
        recoveredStep = 1536 ifTrue: [
            recoveredStack4 := 'menuGlobFormulaEdit'.
            recoveredPC := 1540.
        ].
        recoveredStep = 1540 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1543.
        ].
        recoveredStep = 1543 ifTrue: [
            recoveredStack3 := 1170.
            recoveredPC := 1546.
        ].
        recoveredStep = 1546 ifTrue: [
            recoveredStack4 := 'menuFormulaSelectAll'.
            recoveredPC := 1550.
        ].
        recoveredStep = 1550 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1553.
        ].
        recoveredStep = 1553 ifTrue: [
            recoveredStack3 := 1171.
            recoveredPC := 1556.
        ].
        recoveredStep = 1556 ifTrue: [
            recoveredStack4 := 'menuFormulaFileInSelected'.
            recoveredPC := 1560.
        ].
        recoveredStep = 1560 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1563.
        ].
        recoveredStep = 1563 ifTrue: [
            recoveredStack3 := 1172.
            recoveredPC := 1566.
        ].
        recoveredStep = 1566 ifTrue: [
            recoveredStack4 := 'menuFormulaFileOutSelected'.
            recoveredPC := 1570.
        ].
        recoveredStep = 1570 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1573.
        ].
        recoveredStep = 1573 ifTrue: [
            recoveredStack3 := 1173.
            recoveredPC := 1576.
        ].
        recoveredStep = 1576 ifTrue: [
            recoveredStack4 := 'menuImplTypeEdit'.
            recoveredPC := 1580.
        ].
        recoveredStep = 1580 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1583.
        ].
        recoveredStep = 1583 ifTrue: [
            recoveredStack3 := 1174.
            recoveredPC := 1586.
        ].
        recoveredStep = 1586 ifTrue: [
            recoveredStack4 := 'menuImplTypeCopy'.
            recoveredPC := 1590.
        ].
        recoveredStep = 1590 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1593.
        ].
        recoveredStep = 1593 ifTrue: [
            recoveredStack3 := 1175.
            recoveredPC := 1596.
        ].
        recoveredStep = 1596 ifTrue: [
            recoveredStack4 := 'menuImplTypePaste'.
            recoveredPC := 1600.
        ].
        recoveredStep = 1600 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1603.
        ].
        recoveredStep = 1603 ifTrue: [
            recoveredStack3 := 1176.
            recoveredPC := 1606.
        ].
        recoveredStep = 1606 ifTrue: [
            recoveredStack4 := 'menuImplTypeRename'.
            recoveredPC := 1610.
        ].
        recoveredStep = 1610 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1613.
        ].
        recoveredStep = 1613 ifTrue: [
            recoveredStack3 := 1177.
            recoveredPC := 1616.
        ].
        recoveredStep = 1616 ifTrue: [
            recoveredStack4 := 'menuImplTypeDelete'.
            recoveredPC := 1620.
        ].
        recoveredStep = 1620 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1623.
        ].
        recoveredStep = 1623 ifTrue: [
            recoveredStack3 := 1178.
            recoveredPC := 1626.
        ].
        recoveredStep = 1626 ifTrue: [
            recoveredStack4 := 'menuImplTypesSelectAll'.
            recoveredPC := 1630.
        ].
        recoveredStep = 1630 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1633.
        ].
        recoveredStep = 1633 ifTrue: [
            recoveredStack3 := 1179.
            recoveredPC := 1636.
        ].
        recoveredStep = 1636 ifTrue: [
            recoveredStack4 := 'menuImplTypeFileInSelected'.
            recoveredPC := 1640.
        ].
        recoveredStep = 1640 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1643.
        ].
        recoveredStep = 1643 ifTrue: [
            recoveredStack3 := 1180.
            recoveredPC := 1646.
        ].
        recoveredStep = 1646 ifTrue: [
            recoveredStack4 := 'menuImplTypeFileOutSelected'.
            recoveredPC := 1650.
        ].
        recoveredStep = 1650 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1653.
        ].
        recoveredStep = 1653 ifTrue: [
            recoveredStack3 := 1181.
            recoveredPC := 1656.
        ].
        recoveredStep = 1656 ifTrue: [
            recoveredStack4 := 'menuImplTypeAddCont'.
            recoveredPC := 1660.
        ].
        recoveredStep = 1660 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1663.
        ].
        recoveredStep = 1663 ifTrue: [
            recoveredStack3 := 1182.
            recoveredPC := 1666.
        ].
        recoveredStep = 1666 ifTrue: [
            recoveredStack4 := 'menuImplTypeAddSdisc'.
            recoveredPC := 1670.
        ].
        recoveredStep = 1670 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1673.
        ].
        recoveredStep = 1673 ifTrue: [
            recoveredStack3 := 1183.
            recoveredPC := 1676.
        ].
        recoveredStep = 1676 ifTrue: [
            recoveredStack4 := 'menuImplTypeAddUdisc'.
            recoveredPC := 1680.
        ].
        recoveredStep = 1680 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1683.
        ].
        recoveredStep = 1683 ifTrue: [
            recoveredStack3 := 1184.
            recoveredPC := 1686.
        ].
        recoveredStep = 1686 ifTrue: [
            recoveredStack4 := 'menuProjectFileView'.
            recoveredPC := 1690.
        ].
        recoveredStep = 1690 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1693.
        ].
        recoveredStep = 1693 ifTrue: [
            recoveredStack3 := 1185.
            recoveredPC := 1696.
        ].
        recoveredStep = 1696 ifTrue: [
            recoveredStack4 := 'menuProjectFileEdit'.
            recoveredPC := 1700.
        ].
        recoveredStep = 1700 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1703.
        ].
        recoveredStep = 1703 ifTrue: [
            recoveredStack3 := 1186.
            recoveredPC := 1706.
        ].
        recoveredStep = 1706 ifTrue: [
            recoveredStack4 := 'menuProjectFileAdd'.
            recoveredPC := 1710.
        ].
        recoveredStep = 1710 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1713.
        ].
        recoveredStep = 1713 ifTrue: [
            recoveredStack3 := 1187.
            recoveredPC := 1716.
        ].
        recoveredStep = 1716 ifTrue: [
            recoveredStack4 := 'menuProjectFileDelete'.
            recoveredPC := 1720.
        ].
        recoveredStep = 1720 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1723.
        ].
        recoveredStep = 1723 ifTrue: [
            recoveredStack3 := 1188.
            recoveredPC := 1726.
        ].
        recoveredStep = 1726 ifTrue: [
            recoveredStack4 := 'menuProjectFileUpdate'.
            recoveredPC := 1730.
        ].
        recoveredStep = 1730 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1733.
        ].
        recoveredStep = 1733 ifTrue: [
            recoveredStack3 := 1189.
            recoveredPC := 1736.
        ].
        recoveredStep = 1736 ifTrue: [
            recoveredStack4 := 'menuProjectFilesSelectAll'.
            recoveredPC := 1740.
        ].
        recoveredStep = 1740 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1743.
        ].
        recoveredStep = 1743 ifTrue: [
            recoveredStack3 := 1190.
            recoveredPC := 1746.
        ].
        recoveredStep = 1746 ifTrue: [
            recoveredStack4 := 'menuProjectFileGet'.
            recoveredPC := 1750.
        ].
        recoveredStep = 1750 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1753.
        ].
        recoveredStep = 1753 ifTrue: [
            recoveredStack3 := 1191.
            recoveredPC := 1756.
        ].
        recoveredStep = 1756 ifTrue: [
            recoveredStack4 := 'menuProjectFileGetWithDestination'.
            recoveredPC := 1760.
        ].
        recoveredStep = 1760 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1763.
        ].
        recoveredStep = 1763 ifTrue: [
            recoveredStack3 := 1192.
            recoveredPC := 1766.
        ].
        recoveredStep = 1766 ifTrue: [
            recoveredStack4 := 'menuProjectFileShowDefaultPath'.
            recoveredPC := 1770.
        ].
        recoveredStep = 1770 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1773.
        ].
        recoveredStep = 1773 ifTrue: [
            recoveredStack3 := 1193.
            recoveredPC := 1776.
        ].
        recoveredStep = 1776 ifTrue: [
            recoveredStack4 := 'menuProjectFileExploreDefaultPath'.
            recoveredPC := 1780.
        ].
        recoveredStep = 1780 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1783.
        ].
        recoveredStep = 1783 ifTrue: [
            recoveredStack3 := 1194.
            recoveredPC := 1786.
        ].
        recoveredStep = 1786 ifTrue: [
            recoveredStack4 := 'menuProjectFileCopyFromTarget'.
            recoveredPC := 1790.
        ].
        recoveredStep = 1790 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1793.
        ].
        recoveredStep = 1793 ifTrue: [
            recoveredStack3 := 1195.
            recoveredPC := 1796.
        ].
        recoveredStep = 1796 ifTrue: [
            recoveredStack4 := 'menuProjectFileCopyToTarget'.
            recoveredPC := 1800.
        ].
        recoveredStep = 1800 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1803.
        ].
        recoveredStep = 1803 ifTrue: [
            recoveredStack3 := 1196.
            recoveredPC := 1806.
        ].
        recoveredStep = 1806 ifTrue: [
            recoveredStack4 := 'menuProjectFileReplaceWithBackupFiles'.
            recoveredPC := 1810.
        ].
        recoveredStep = 1810 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1813.
        ].
        recoveredStep = 1813 ifTrue: [
            recoveredStack3 := 1197.
            recoveredPC := 1816.
        ].
        recoveredStep = 1816 ifTrue: [
            recoveredStack4 := 'menuOperatingModeAdd'.
            recoveredPC := 1820.
        ].
        recoveredStep = 1820 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1823.
        ].
        recoveredStep = 1823 ifTrue: [
            recoveredStack3 := 1198.
            recoveredPC := 1826.
        ].
        recoveredStep = 1826 ifTrue: [
            recoveredStack4 := 'menuOperatingModeRename'.
            recoveredPC := 1830.
        ].
        recoveredStep = 1830 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1833.
        ].
        recoveredStep = 1833 ifTrue: [
            recoveredStack3 := 1199.
            recoveredPC := 1836.
        ].
        recoveredStep = 1836 ifTrue: [
            recoveredStack4 := 'menuOperatingModeDelete'.
            recoveredPC := 1840.
        ].
        recoveredStep = 1840 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1843.
        ].
        recoveredStep = 1843 ifTrue: [
            recoveredStack3 := 1200.
            recoveredPC := 1846.
        ].
        recoveredStep = 1846 ifTrue: [
            recoveredStack4 := 'menuOperatingModeAsStartingMode'.
            recoveredPC := 1850.
        ].
        recoveredStep = 1850 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1853.
        ].
        recoveredStep = 1853 ifTrue: [
            recoveredStack3 := 1201.
            recoveredPC := 1856.
        ].
        recoveredStep = 1856 ifTrue: [
            recoveredStack4 := 'menuOperatingModeAsCTMode'.
            recoveredPC := 1860.
        ].
        recoveredStep = 1860 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1863.
        ].
        recoveredStep = 1863 ifTrue: [
            recoveredStack3 := 1202.
            recoveredPC := 1866.
        ].
        recoveredStep = 1866 ifTrue: [
            recoveredStack4 := 'menuOperatingModeAssign'.
            recoveredPC := 1870.
        ].
        recoveredStep = 1870 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1873.
        ].
        recoveredStep = 1873 ifTrue: [
            recoveredStack3 := 1203.
            recoveredPC := 1876.
        ].
        recoveredStep = 1876 ifTrue: [
            recoveredStack4 := 'menuOperatingModeSelectTasks'.
            recoveredPC := 1880.
        ].
        recoveredStep = 1880 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1883.
        ].
        recoveredStep = 1883 ifTrue: [
            recoveredStack3 := 1204.
            recoveredPC := 1886.
        ].
        recoveredStep = 1886 ifTrue: [
            recoveredStack4 := 'menuOperatingModeSelectInitTasks'.
            recoveredPC := 1890.
        ].
        recoveredStep = 1890 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1893.
        ].
        recoveredStep = 1893 ifTrue: [
            recoveredStack3 := 1205.
            recoveredPC := 1896.
        ].
        recoveredStep = 1896 ifTrue: [
            recoveredStack4 := 'menuProcesseAssign'.
            recoveredPC := 1900.
        ].
        recoveredStep = 1900 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1903.
        ].
        recoveredStep = 1903 ifTrue: [
            recoveredStack3 := 1206.
            recoveredPC := 1906.
        ].
        recoveredStep = 1906 ifTrue: [
            recoveredStack4 := 'menuProcesseShow'.
            recoveredPC := 1910.
        ].
        recoveredStep = 1910 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1913.
        ].
        recoveredStep = 1913 ifTrue: [
            recoveredStack3 := 1207.
            recoveredPC := 1916.
        ].
        recoveredStep = 1916 ifTrue: [
            recoveredStack4 := 'menuTaskAdd'.
            recoveredPC := 1920.
        ].
        recoveredStep = 1920 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1923.
        ].
        recoveredStep = 1923 ifTrue: [
            recoveredStack3 := 1208.
            recoveredPC := 1926.
        ].
        recoveredStep = 1926 ifTrue: [
            recoveredStack4 := 'menuTaskRename'.
            recoveredPC := 1930.
        ].
        recoveredStep = 1930 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1933.
        ].
        recoveredStep = 1933 ifTrue: [
            recoveredStack3 := 1209.
            recoveredPC := 1936.
        ].
        recoveredStep = 1936 ifTrue: [
            recoveredStack4 := 'menuTaskDelete'.
            recoveredPC := 1940.
        ].
        recoveredStep = 1940 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1943.
        ].
        recoveredStep = 1943 ifTrue: [
            recoveredStack3 := 1210.
            recoveredPC := 1946.
        ].
        recoveredStep = 1946 ifTrue: [
            recoveredStack4 := 'menuTaskOrProcessShiftUp'.
            recoveredPC := 1950.
        ].
        recoveredStep = 1950 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1953.
        ].
        recoveredStep = 1953 ifTrue: [
            recoveredStack3 := 1211.
            recoveredPC := 1956.
        ].
        recoveredStep = 1956 ifTrue: [
            recoveredStack4 := 'menuTaskOrProcessShiftDown'.
            recoveredPC := 1960.
        ].
        recoveredStep = 1960 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1963.
        ].
        recoveredStep = 1963 ifTrue: [
            recoveredStack3 := 1212.
            recoveredPC := 1966.
        ].
        recoveredStep = 1966 ifTrue: [
            recoveredStack4 := 'menuOperatingModeDeassign'.
            recoveredPC := 1970.
        ].
        recoveredStep = 1970 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1973.
        ].
        recoveredStep = 1973 ifTrue: [
            recoveredStack3 := 1213.
            recoveredPC := 1976.
        ].
        recoveredStep = 1976 ifTrue: [
            recoveredStack4 := 'menuProcesseDeassign'.
            recoveredPC := 1980.
        ].
        recoveredStep = 1980 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1983.
        ].
        recoveredStep = 1983 ifTrue: [
            recoveredStack3 := 1214.
            recoveredPC := 1986.
        ].
        recoveredStep = 1986 ifTrue: [
            recoveredStack4 := 'menuProcesseDeleteUndef'.
            recoveredPC := 1990.
        ].
        recoveredStep = 1990 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1993.
        ].
        recoveredStep = 1993 ifTrue: [
            recoveredStack3 := 1215.
            recoveredPC := 1996.
        ].
        recoveredStep = 1996 ifTrue: [
            recoveredStack4 := 'menuOpenCorrespondingModule'.
            recoveredPC := 2000.
        ].
        recoveredStep = 2000 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2003.
        ].
        recoveredStep = 2003 ifTrue: [
            recoveredStack3 := 1216.
            recoveredPC := 2006.
        ].
        recoveredStep = 2006 ifTrue: [
            recoveredStack4 := 'menuTaskProcessShow'.
            recoveredPC := 2010.
        ].
        recoveredStep = 2010 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2013.
        ].
        recoveredStep = 2013 ifTrue: [
            recoveredStack3 := 1217.
            recoveredPC := 2016.
        ].
        recoveredStep = 2016 ifTrue: [
            recoveredStack4 := 'menuTaskSelectOperatingModes'.
            recoveredPC := 2020.
        ].
        recoveredStep = 2020 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2023.
        ].
        recoveredStep = 2023 ifTrue: [
            recoveredStack3 := 1218.
            recoveredPC := 2026.
        ].
        recoveredStep = 2026 ifTrue: [
            recoveredStack4 := 'menuCopyFromTarget'.
            recoveredPC := 2030.
        ].
        recoveredStep = 2030 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2033.
        ].
        recoveredStep = 2033 ifTrue: [
            recoveredStack3 := 1219.
            recoveredPC := 2036.
        ].
        recoveredStep = 2036 ifTrue: [
            recoveredStack4 := 'menuCopyToTarget'.
            recoveredPC := 2040.
        ].
        recoveredStep = 2040 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2043.
        ].
        recoveredStep = 2043 ifTrue: [
            recoveredStack3 := 1220.
            recoveredPC := 2046.
        ].
        recoveredStep = 2046 ifTrue: [
            recoveredStack4 := 'menuToolsSelectHardware'.
            recoveredPC := 2050.
        ].
        recoveredStep = 2050 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2053.
        ].
        recoveredStep = 2053 ifTrue: [
            recoveredStack3 := 1221.
            recoveredPC := 2056.
        ].
        recoveredStep = 2056 ifTrue: [
            recoveredStack4 := 'menuEditShowMethodImplementations'.
            recoveredPC := 2060.
        ].
        recoveredStep = 2060 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2063.
        ].
        recoveredStep = 2063 ifTrue: [
            recoveredStack3 := 1222.
            recoveredPC := 2066.
        ].
        recoveredStep = 2066 ifTrue: [
            recoveredStack4 := 'menuInsertMethodInCell'.
            recoveredPC := 2070.
        ].
        recoveredStep = 2070 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2073.
        ].
        recoveredStep = 2073 ifTrue: [
            recoveredStack3 := 1225.
            recoveredPC := 2076.
        ].
        recoveredStep = 2076 ifTrue: [
            recoveredStack4 := 'menuToolsNewOptions'.
            recoveredPC := 2080.
        ].
        recoveredStep = 2080 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2083.
        ].
        recoveredStep = 2083 ifTrue: [
            recoveredStack3 := 1226.
            recoveredPC := 2086.
        ].
        recoveredStep = 2086 ifTrue: [
            recoveredStack4 := 'menuViewShowHidePaletteLibrary'.
            recoveredPC := 2090.
        ].
        recoveredStep = 2090 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2093.
        ].
        recoveredStep = 2093 ifTrue: [
            recoveredStack3 := 1227.
            recoveredPC := 2096.
        ].
        recoveredStep = 2096 ifTrue: [
            recoveredStack4 := 'menuGlobFormulaAddMissing'.
            recoveredPC := 2100.
        ].
        recoveredStep = 2100 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2103.
        ].
        recoveredStep = 2103 ifTrue: [
            recoveredStack3 := 1228.
            recoveredPC := 2106.
        ].
        recoveredStep = 2106 ifTrue: [
            recoveredStack4 := 'menuBuildCleanCodeDirectory'.
            recoveredPC := 2110.
        ].
        recoveredStep = 2110 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2113.
        ].
        recoveredStep = 2113 ifTrue: [
            recoveredStack3 := 1229.
            recoveredPC := 2116.
        ].
        recoveredStep = 2116 ifTrue: [
            recoveredStack4 := 'menuModelPathCopyPath'.
            recoveredPC := 2120.
        ].
        recoveredStep = 2120 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2123.
        ].
        recoveredStep = 2123 ifTrue: [
            recoveredStack3 := 1230.
            recoveredPC := 2126.
        ].
        recoveredStep = 2126 ifTrue: [
            recoveredStack4 := 'menuModelPathCopyAsdLink'.
            recoveredPC := 2130.
        ].
        recoveredStep = 2130 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2133.
        ].
        recoveredStep = 2133 ifTrue: [
            recoveredStack3 := 1231.
            recoveredPC := 2136.
        ].
        recoveredStep = 2136 ifTrue: [
            recoveredStack4 := 'menuDatabasePathCopyPath'.
            recoveredPC := 2140.
        ].
        recoveredStep = 2140 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2143.
        ].
        recoveredStep = 2143 ifTrue: [
            recoveredStack3 := 1232.
            recoveredPC := 2146.
        ].
        recoveredStep = 2146 ifTrue: [
            recoveredStack4 := 'menuDatabasePathCopyAsdLink'.
            recoveredPC := 2150.
        ].
        recoveredStep = 2150 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2153.
        ].
        recoveredStep = 2153 ifTrue: [
            recoveredStack3 := 1233.
            recoveredPC := 2156.
        ].
        recoveredStep = 2156 ifTrue: [
            recoveredStack4 := 'menuCacheOn'.
            recoveredPC := 2160.
        ].
        recoveredStep = 2160 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2163.
        ].
        recoveredStep = 2163 ifTrue: [
            recoveredStack3 := 1234.
            recoveredPC := 2166.
        ].
        recoveredStep = 2166 ifTrue: [
            recoveredStack4 := 'menuCacheOff'.
            recoveredPC := 2170.
        ].
        recoveredStep = 2170 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2173.
        ].
        recoveredStep = 2173 ifTrue: [
            recoveredStack3 := 1235.
            recoveredPC := 2176.
        ].
        recoveredStep = 2176 ifTrue: [
            recoveredStack4 := 'menuCacheAutomatic'.
            recoveredPC := 2180.
        ].
        recoveredStep = 2180 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2183.
        ].
        recoveredStep = 2183 ifTrue: [
            recoveredStack3 := 1236.
            recoveredPC := 2186.
        ].
        recoveredStep = 2186 ifTrue: [
            recoveredStack4 := 'menuViewESDLCode'.
            recoveredPC := 2190.
        ].
        recoveredStep = 2190 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2193.
        ].
        recoveredStep = 2193 ifTrue: [
            recoveredStack3 := 1237.
            recoveredPC := 2196.
        ].
        recoveredStep = 2196 ifTrue: [
            recoveredStack4 := 'menuViewECCOCode'.
            recoveredPC := 2200.
        ].
        recoveredStep = 2200 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2203.
        ].
        recoveredStep = 2203 ifTrue: [
            recoveredStack3 := 1238.
            recoveredPC := 2206.
        ].
        recoveredStep = 2206 ifTrue: [
            recoveredStack4 := 'menuViewGeneratedCodePhysExp4x'.
            recoveredPC := 2210.
        ].
        recoveredStep = 2210 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2213.
        ].
        recoveredStep = 2213 ifTrue: [
            recoveredStack3 := 1239.
            recoveredPC := 2216.
        ].
        recoveredStep = 2216 ifTrue: [
            recoveredStack4 := 'menuViewGeneratedCodePhysExpPhoenix'.
            recoveredPC := 2220.
        ].
        recoveredStep = 2220 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2223.
        ].
        recoveredStep = 2223 ifTrue: [
            recoveredStack3 := 1240.
            recoveredPC := 2226.
        ].
        recoveredStep = 2226 ifTrue: [
            recoveredStack4 := 'menuViewGeneratedCode4x'.
            recoveredPC := 2230.
        ].
        recoveredStep = 2230 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2233.
        ].
        recoveredStep = 2233 ifTrue: [
            recoveredStack3 := 1241.
            recoveredPC := 2236.
        ].
        recoveredStep = 2236 ifTrue: [
            recoveredStack4 := 'menuViewGeneratedCodePhoenix'.
            recoveredPC := 2240.
        ].
        recoveredStep = 2240 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2243.
        ].
        recoveredStep = 2243 ifTrue: [
            recoveredStack3 := 1242.
            recoveredPC := 2246.
        ].
        recoveredStep = 2246 ifTrue: [
            recoveredStack4 := 'menuInstallArithmeticServices'.
            recoveredPC := 2250.
        ].
        recoveredStep = 2250 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2253.
        ].
        recoveredStep = 2253 ifTrue: [
            recoveredStack3 := 1244.
            recoveredPC := 2256.
        ].
        recoveredStep = 2256 ifTrue: [
            recoveredStack4 := 'menuImplTypeFileInAll'.
            recoveredPC := 2260.
        ].
        recoveredStep = 2260 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2263.
        ].
        recoveredStep = 2263 ifTrue: [
            recoveredStack3 := 1245.
            recoveredPC := 2266.
        ].
        recoveredStep = 2266 ifTrue: [
            recoveredStack4 := 'menuImplTypeFileOutAll'.
            recoveredPC := 2270.
        ].
        recoveredStep = 2270 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2273.
        ].
        recoveredStep = 2273 ifTrue: [
            recoveredStack3 := 1246.
            recoveredPC := 2276.
        ].
        recoveredStep = 2276 ifTrue: [
            recoveredStack4 := 'menuAsap2Write'.
            recoveredPC := 2280.
        ].
        recoveredStep = 2280 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2283.
        ].
        recoveredStep = 2283 ifTrue: [
            recoveredStack3 := 1247.
            recoveredPC := 2286.
        ].
        recoveredStep = 2286 ifTrue: [
            recoveredStack4 := 'menuReadMapFile'.
            recoveredPC := 2290.
        ].
        recoveredStep = 2290 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2293.
        ].
        recoveredStep = 2293 ifTrue: [
            recoveredStack3 := 1248.
            recoveredPC := 2296.
        ].
        recoveredStep = 2296 ifTrue: [
            recoveredStack4 := 'menuFileDatabaseNew'.
            recoveredPC := 2300.
        ].
        recoveredStep = 2300 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2303.
        ].
        recoveredStep = 2303 ifTrue: [
            recoveredStack3 := 1249.
            recoveredPC := 2306.
        ].
        recoveredStep = 2306 ifTrue: [
            recoveredStack4 := 'menuFileOpen'.
            recoveredPC := 2310.
        ].
        recoveredStep = 2310 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2313.
        ].
        recoveredStep = 2313 ifTrue: [
            recoveredStack3 := 1250.
            recoveredPC := 2316.
        ].
        recoveredStep = 2316 ifTrue: [
            recoveredStack4 := 'menuFileClose'.
            recoveredPC := 2320.
        ].
        recoveredStep = 2320 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2323.
        ].
        recoveredStep = 2323 ifTrue: [
            recoveredStack3 := 1251.
            recoveredPC := 2326.
        ].
        recoveredStep = 2326 ifTrue: [
            recoveredStack4 := 'menuFileSave'.
            recoveredPC := 2328.
        ].
        recoveredStep = 2328 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2331.
        ].
        recoveredStep = 2331 ifTrue: [
            recoveredStack3 := 1252.
            recoveredPC := 2334.
        ].
        recoveredStep = 2334 ifTrue: [
            recoveredStack4 := 'menuFileSaveAs'.
            recoveredPC := 2338.
        ].
        recoveredStep = 2338 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2341.
        ].
        recoveredStep = 2341 ifTrue: [
            recoveredStack3 := 1253.
            recoveredPC := 2344.
        ].
        recoveredStep = 2344 ifTrue: [
            recoveredStack4 := 'menuFileImport'.
            recoveredPC := 2348.
        ].
        recoveredStep = 2348 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2351.
        ].
        recoveredStep = 2351 ifTrue: [
            recoveredStack3 := 1254.
            recoveredPC := 2354.
        ].
        recoveredStep = 2354 ifTrue: [
            recoveredStack4 := 'menuFileImportDirectory'.
            recoveredPC := 2358.
        ].
        recoveredStep = 2358 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2361.
        ].
        recoveredStep = 2361 ifTrue: [
            recoveredStack3 := 1255.
            recoveredPC := 2364.
        ].
        recoveredStep = 2364 ifTrue: [
            recoveredStack4 := 'menuFileExport'.
            recoveredPC := 2368.
        ].
        recoveredStep = 2368 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2371.
        ].
        recoveredStep = 2371 ifTrue: [
            recoveredStack3 := 1256.
            recoveredPC := 2374.
        ].
        recoveredStep = 2374 ifTrue: [
            recoveredStack4 := 'menuEditQuery'.
            recoveredPC := 2378.
        ].
        recoveredStep = 2378 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2381.
        ].
        recoveredStep = 2381 ifTrue: [
            recoveredStack3 := 1257.
            recoveredPC := 2384.
        ].
        recoveredStep = 2384 ifTrue: [
            recoveredStack4 := 'menuInsertFolder'.
            recoveredPC := 2388.
        ].
        recoveredStep = 2388 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2391.
        ].
        recoveredStep = 2391 ifTrue: [
            recoveredStack3 := 1258.
            recoveredPC := 2394.
        ].
        recoveredStep = 2394 ifTrue: [
            recoveredStack4 := 'menuInsertProject'.
            recoveredPC := 2398.
        ].
        recoveredStep = 2398 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2401.
        ].
        recoveredStep = 2401 ifTrue: [
            recoveredStack3 := 1259.
            recoveredPC := 2404.
        ].
        recoveredStep = 2404 ifTrue: [
            recoveredStack4 := 'menuInsertStateMachine'.
            recoveredPC := 2408.
        ].
        recoveredStep = 2408 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2411.
        ].
        recoveredStep = 2411 ifTrue: [
            recoveredStack3 := 1260.
            recoveredPC := 2414.
        ].
        recoveredStep = 2414 ifTrue: [
            recoveredStack4 := 'menuInsertEnumeration:'.
            recoveredPC := 2418.
        ].
        recoveredStep = 2418 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2421.
        ].
        recoveredStep = 2421 ifTrue: [
            recoveredStack3 := 1261.
            recoveredPC := 2424.
        ].
        recoveredStep = 2424 ifTrue: [
            recoveredStack4 := 'menuInsertBooleanTable'.
            recoveredPC := 2428.
        ].
        recoveredStep = 2428 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2431.
        ].
        recoveredStep = 2431 ifTrue: [
            recoveredStack3 := 1262.
            recoveredPC := 2434.
        ].
        recoveredStep = 2434 ifTrue: [
            recoveredStack4 := 'menuInsertConditionalTable'.
            recoveredPC := 2438.
        ].
        recoveredStep = 2438 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2441.
        ].
        recoveredStep = 2441 ifTrue: [
            recoveredStack3 := 1263.
            recoveredPC := 2444.
        ].
        recoveredStep = 2444 ifTrue: [
            recoveredStack4 := 'menuInsertIcon'.
            recoveredPC := 2448.
        ].
        recoveredStep = 2448 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2451.
        ].
        recoveredStep = 2451 ifTrue: [
            recoveredStack3 := 1264.
            recoveredPC := 2454.
        ].
        recoveredStep = 2454 ifTrue: [
            recoveredStack4 := 'menuInsertSignal'.
            recoveredPC := 2458.
        ].
        recoveredStep = 2458 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2461.
        ].
        recoveredStep = 2461 ifTrue: [
            recoveredStack3 := 1265.
            recoveredPC := 2464.
        ].
        recoveredStep = 2464 ifTrue: [
            recoveredStack4 := 'menuInsertContainer'.
            recoveredPC := 2468.
        ].
        recoveredStep = 2468 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2471.
        ].
        recoveredStep = 2471 ifTrue: [
            recoveredStack3 := 1266.
            recoveredPC := 2474.
        ].
        recoveredStep = 2474 ifTrue: [
            recoveredStack4 := 'menuInsertModule:'.
            recoveredPC := 2478.
        ].
        recoveredStep = 2478 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2481.
        ].
        recoveredStep = 2481 ifTrue: [
            recoveredStack3 := 1267.
            recoveredPC := 2484.
        ].
        recoveredStep = 2484 ifTrue: [
            recoveredStack4 := 'menuInsertClass:'.
            recoveredPC := 2488.
        ].
        recoveredStep = 2488 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2491.
        ].
        recoveredStep = 2491 ifTrue: [
            recoveredStack3 := 1268.
            recoveredPC := 2494.
        ].
        recoveredStep = 2494 ifTrue: [
            recoveredStack4 := 'menuInsertCTClass:'.
            recoveredPC := 2498.
        ].
        recoveredStep = 2498 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2501.
        ].
        recoveredStep = 2501 ifTrue: [
            recoveredStack3 := 1269.
            recoveredPC := 2504.
        ].
        recoveredStep = 2504 ifTrue: [
            recoveredStack4 := 'menuEditComponentShowReferences'.
            recoveredPC := 2508.
        ].
        recoveredStep = 2508 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2511.
        ].
        recoveredStep = 2511 ifTrue: [
            recoveredStack3 := 1270.
            recoveredPC := 2514.
        ].
        recoveredStep = 2514 ifTrue: [
            recoveredStack4 := 'menuEditComponentReplaceReferences'.
            recoveredPC := 2518.
        ].
        recoveredStep = 2518 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2521.
        ].
        recoveredStep = 2521 ifTrue: [
            recoveredStack3 := 1271.
            recoveredPC := 2524.
        ].
        recoveredStep = 2524 ifTrue: [
            recoveredStack4 := 'menuEditComponentBecomeAnotherItem'.
            recoveredPC := 2528.
        ].
        recoveredStep = 2528 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2531.
        ].
        recoveredStep = 2531 ifTrue: [
            recoveredStack3 := 1272.
            recoveredPC := 2534.
        ].
        recoveredStep = 2534 ifTrue: [
            recoveredStack4 := 'menuEditComponentDisallowImport'.
            recoveredPC := 2538.
        ].
        recoveredStep = 2538 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2541.
        ].
        recoveredStep = 2541 ifTrue: [
            recoveredStack3 := 1273.
            recoveredPC := 2544.
        ].
        recoveredStep = 2544 ifTrue: [
            recoveredStack4 := 'menuEditComponentAccessRights'.
            recoveredPC := 2548.
        ].
        recoveredStep = 2548 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2551.
        ].
        recoveredStep = 2551 ifTrue: [
            recoveredStack3 := 1274.
            recoveredPC := 2554.
        ].
        recoveredStep = 2554 ifTrue: [
            recoveredStack4 := 'menuEditLibraryPassword'.
            recoveredPC := 2558.
        ].
        recoveredStep = 2558 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2561.
        ].
        recoveredStep = 2561 ifTrue: [
            recoveredStack3 := 1276.
            recoveredPC := 2564.
        ].
        recoveredStep = 2564 ifTrue: [
            recoveredStack4 := 'menuEditComponentCopyToBd'.
            recoveredPC := 2568.
        ].
        recoveredStep = 2568 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2571.
        ].
        recoveredStep = 2571 ifTrue: [
            recoveredStack3 := 1277.
            recoveredPC := 2574.
        ].
        recoveredStep = 2574 ifTrue: [
            recoveredStack4 := 'menuEditComponentCopyToC'.
            recoveredPC := 2578.
        ].
        recoveredStep = 2578 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2581.
        ].
        recoveredStep = 2581 ifTrue: [
            recoveredStack3 := 1278.
            recoveredPC := 2584.
        ].
        recoveredStep = 2584 ifTrue: [
            recoveredStack4 := 'menuEditComponentCopyToASDL'.
            recoveredPC := 2588.
        ].
        recoveredStep = 2588 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2591.
        ].
        recoveredStep = 2591 ifTrue: [
            recoveredStack3 := 1279.
            recoveredPC := 2594.
        ].
        recoveredStep = 2594 ifTrue: [
            recoveredStack4 := 'menuViewExpandAll'.
            recoveredPC := 2598.
        ].
        recoveredStep = 2598 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2601.
        ].
        recoveredStep = 2601 ifTrue: [
            recoveredStack3 := 1280.
            recoveredPC := 2604.
        ].
        recoveredStep = 2604 ifTrue: [
            recoveredStack4 := 'menuViewCollapseAll'.
            recoveredPC := 2608.
        ].
        recoveredStep = 2608 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2611.
        ].
        recoveredStep = 2611 ifTrue: [
            recoveredStack3 := 1281.
            recoveredPC := 2614.
        ].
        recoveredStep = 2614 ifTrue: [
            recoveredStack4 := 'menuViewUpdate'.
            recoveredPC := 2618.
        ].
        recoveredStep = 2618 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2621.
        ].
        recoveredStep = 2621 ifTrue: [
            recoveredStack3 := 1282.
            recoveredPC := 2624.
        ].
        recoveredStep = 2624 ifTrue: [
            recoveredStack4 := 'menuBuildTouchAll'.
            recoveredPC := 2628.
        ].
        recoveredStep = 2628 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2631.
        ].
        recoveredStep = 2631 ifTrue: [
            recoveredStack3 := 1283.
            recoveredPC := 2634.
        ].
        recoveredStep = 2634 ifTrue: [
            recoveredStack4 := 'menuBuildCleanAll'.
            recoveredPC := 2638.
        ].
        recoveredStep = 2638 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2641.
        ].
        recoveredStep = 2641 ifTrue: [
            recoveredStack3 := 1284.
            recoveredPC := 2644.
        ].
        recoveredStep = 2644 ifTrue: [
            recoveredStack4 := 'menuToolsNetworkSettings'.
            recoveredPC := 2648.
        ].
        recoveredStep = 2648 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2651.
        ].
        recoveredStep = 2651 ifTrue: [
            recoveredStack3 := 1285.
            recoveredPC := 2654.
        ].
        recoveredStep = 2654 ifTrue: [
            recoveredStack4 := 'menuToolsViews'.
            recoveredPC := 2658.
        ].
        recoveredStep = 2658 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2661.
        ].
        recoveredStep = 2661 ifTrue: [
            recoveredStack3 := 1286.
            recoveredPC := 2664.
        ].
        recoveredStep = 2664 ifTrue: [
            recoveredStack4 := 'menuViewFilter:'.
            recoveredPC := 2668.
        ].
        recoveredStep = 2668 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2671.
        ].
        recoveredStep = 2671 ifTrue: [
            recoveredStack3 := 1287.
            recoveredPC := 2674.
        ].
        recoveredStep = 2674 ifTrue: [
            recoveredStack4 := 'menuViewShowHideItemList'.
            recoveredPC := 2678.
        ].
        recoveredStep = 2678 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2681.
        ].
        recoveredStep = 2681 ifTrue: [
            recoveredStack3 := 1288.
            recoveredPC := 2684.
        ].
        recoveredStep = 2684 ifTrue: [
            recoveredStack4 := 'menuViewShowHideItemComment'.
            recoveredPC := 2688.
        ].
        recoveredStep = 2688 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2691.
        ].
        recoveredStep = 2691 ifTrue: [
            recoveredStack3 := 1289.
            recoveredPC := 2694.
        ].
        recoveredStep = 2694 ifTrue: [
            recoveredStack4 := 'menuViewShowHideContents'.
            recoveredPC := 2698.
        ].
        recoveredStep = 2698 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2701.
        ].
        recoveredStep = 2701 ifTrue: [
            recoveredStack3 := 1290.
            recoveredPC := 2704.
        ].
        recoveredStep = 2704 ifTrue: [
            recoveredStack4 := 'menuViewShowHideMonitor'.
            recoveredPC := 2708.
        ].
        recoveredStep = 2708 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2711.
        ].
        recoveredStep = 2711 ifTrue: [
            recoveredStack3 := 1291.
            recoveredPC := 2714.
        ].
        recoveredStep = 2714 ifTrue: [
            recoveredStack4 := 'menuToolsDocumentationContents'.
            recoveredPC := 2718.
        ].
        recoveredStep = 2718 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2721.
        ].
        recoveredStep = 2721 ifTrue: [
            recoveredStack3 := 1292.
            recoveredPC := 2724.
        ].
        recoveredStep = 2724 ifTrue: [
            recoveredStack4 := 'menuToolsDocumentationOptions'.
            recoveredPC := 2728.
        ].
        recoveredStep = 2728 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2731.
        ].
        recoveredStep = 2731 ifTrue: [
            recoveredStack3 := 1293.
            recoveredPC := 2734.
        ].
        recoveredStep = 2734 ifTrue: [
            recoveredStack4 := 'menuToolsDatabasePerformanceUtilities'.
            recoveredPC := 2738.
        ].
        recoveredStep = 2738 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2741.
        ].
        recoveredStep = 2741 ifTrue: [
            recoveredStack3 := 1294.
            recoveredPC := 2744.
        ].
        recoveredStep = 2744 ifTrue: [
            recoveredStack4 := 'menuToolsDatabaseOperatorImplementationsShow'.
            recoveredPC := 2748.
        ].
        recoveredStep = 2748 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2751.
        ].
        recoveredStep = 2751 ifTrue: [
            recoveredStack3 := 1295.
            recoveredPC := 2754.
        ].
        recoveredStep = 2754 ifTrue: [
            recoveredStack4 := 'menuToolsDatabaseCompare'.
            recoveredPC := 2758.
        ].
        recoveredStep = 2758 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2761.
        ].
        recoveredStep = 2761 ifTrue: [
            recoveredStack3 := 1296.
            recoveredPC := 2764.
        ].
        recoveredStep = 2764 ifTrue: [
            recoveredStack4 := 'menuToolsDatabaseShowNotReadableItems'.
            recoveredPC := 2768.
        ].
        recoveredStep = 2768 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2771.
        ].
        recoveredStep = 2771 ifTrue: [
            recoveredStack3 := 1298.
            recoveredPC := 2774.
        ].
        recoveredStep = 2774 ifTrue: [
            recoveredStack4 := 'menuToolsArithmeticServiceEditorOpen:'.
            recoveredPC := 2778.
        ].
        recoveredStep = 2778 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2781.
        ].
        recoveredStep = 2781 ifTrue: [
            recoveredStack3 := 1299.
            recoveredPC := 2784.
        ].
        recoveredStep = 2784 ifTrue: [
            recoveredStack4 := 'menuHelpContents'.
            recoveredPC := 2788.
        ].
        recoveredStep = 2788 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2791.
        ].
        recoveredStep = 2791 ifTrue: [
            recoveredStack3 := 1300.
            recoveredPC := 2794.
        ].
        recoveredStep = 2794 ifTrue: [
            recoveredStack4 := 'menuHelpIndex'.
            recoveredPC := 2798.
        ].
        recoveredStep = 2798 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2801.
        ].
        recoveredStep = 2801 ifTrue: [
            recoveredStack3 := 1301.
            recoveredPC := 2804.
        ].
        recoveredStep = 2804 ifTrue: [
            recoveredStack4 := 'menuHelpShowLoadedPackages'.
            recoveredPC := 2808.
        ].
        recoveredStep = 2808 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2811.
        ].
        recoveredStep = 2811 ifTrue: [
            recoveredStack3 := 1302.
            recoveredPC := 2814.
        ].
        recoveredStep = 2814 ifTrue: [
            recoveredStack4 := 'menuHelpShowLoadedTargets'.
            recoveredPC := 2818.
        ].
        recoveredStep = 2818 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2821.
        ].
        recoveredStep = 2821 ifTrue: [
            recoveredStack3 := 1303.
            recoveredPC := 2824.
        ].
        recoveredStep = 2824 ifTrue: [
            recoveredStack4 := 'menuHelpShowDisclaimer'.
            recoveredPC := 2828.
        ].
        recoveredStep = 2828 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2831.
        ].
        recoveredStep = 2831 ifTrue: [
            recoveredStack3 := 1304.
            recoveredPC := 2834.
        ].
        recoveredStep = 2834 ifTrue: [
            recoveredStack4 := 'menuHelpProblemReport'.
            recoveredPC := 2838.
        ].
        recoveredStep = 2838 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2841.
        ].
        recoveredStep = 2841 ifTrue: [
            recoveredStack3 := 1305.
            recoveredPC := 2844.
        ].
        recoveredStep = 2844 ifTrue: [
            recoveredStack4 := 'menuHelpHotkeyAssignment'.
            recoveredPC := 2848.
        ].
        recoveredStep = 2848 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2851.
        ].
        recoveredStep = 2851 ifTrue: [
            recoveredStack3 := 1306.
            recoveredPC := 2854.
        ].
        recoveredStep = 2854 ifTrue: [
            recoveredStack4 := 'menuHelpAbout'.
            recoveredPC := 2858.
        ].
        recoveredStep = 2858 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2861.
        ].
        recoveredStep = 2861 ifTrue: [
            recoveredStack3 := 1307.
            recoveredPC := 2864.
        ].
        recoveredStep = 2864 ifTrue: [
            recoveredStack4 := 'menuHelpLicenseInfo'.
            recoveredPC := 2868.
        ].
        recoveredStep = 2868 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2871.
        ].
        recoveredStep = 2871 ifTrue: [
            recoveredStack3 := 1308.
            recoveredPC := 2874.
        ].
        recoveredStep = 2874 ifTrue: [
            recoveredStack4 := 'menuHelpSupport'.
            recoveredPC := 2878.
        ].
        recoveredStep = 2878 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2881.
        ].
        recoveredStep = 2881 ifTrue: [
            recoveredStack3 := 1309.
            recoveredPC := 2884.
        ].
        recoveredStep = 2884 ifTrue: [
            recoveredStack4 := 'menuEnumerationRename'.
            recoveredPC := 2888.
        ].
        recoveredStep = 2888 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2891.
        ].
        recoveredStep = 2891 ifTrue: [
            recoveredStack3 := 1310.
            recoveredPC := 2894.
        ].
        recoveredStep = 2894 ifTrue: [
            recoveredStack4 := 'menuEnumerationDelete'.
            recoveredPC := 2898.
        ].
        recoveredStep = 2898 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2901.
        ].
        recoveredStep = 2901 ifTrue: [
            recoveredStack3 := 1311.
            recoveredPC := 2904.
        ].
        recoveredStep = 2904 ifTrue: [
            recoveredStack4 := 'menuEnumerationShiftUp'.
            recoveredPC := 2908.
        ].
        recoveredStep = 2908 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2911.
        ].
        recoveredStep = 2911 ifTrue: [
            recoveredStack3 := 1312.
            recoveredPC := 2914.
        ].
        recoveredStep = 2914 ifTrue: [
            recoveredStack4 := 'menuEnumerationShiftDown'.
            recoveredPC := 2918.
        ].
        recoveredStep = 2918 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2921.
        ].
        recoveredStep = 2921 ifTrue: [
            recoveredStack3 := 1313.
            recoveredPC := 2924.
        ].
        recoveredStep = 2924 ifTrue: [
            recoveredStack4 := 'menuEnumerationAddFirst'.
            recoveredPC := 2928.
        ].
        recoveredStep = 2928 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2931.
        ].
        recoveredStep = 2931 ifTrue: [
            recoveredStack3 := 1314.
            recoveredPC := 2934.
        ].
        recoveredStep = 2934 ifTrue: [
            recoveredStack4 := 'menuEnumerationAddLast'.
            recoveredPC := 2938.
        ].
        recoveredStep = 2938 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2941.
        ].
        recoveredStep = 2941 ifTrue: [
            recoveredStack3 := 1315.
            recoveredPC := 2944.
        ].
        recoveredStep = 2944 ifTrue: [
            recoveredStack4 := 'menuEnumerationAddBefore'.
            recoveredPC := 2948.
        ].
        recoveredStep = 2948 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2951.
        ].
        recoveredStep = 2951 ifTrue: [
            recoveredStack3 := 1316.
            recoveredPC := 2954.
        ].
        recoveredStep = 2954 ifTrue: [
            recoveredStack4 := 'menuEnumerationAddAfter'.
            recoveredPC := 2958.
        ].
        recoveredStep = 2958 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2961.
        ].
        recoveredStep = 2961 ifTrue: [
            recoveredStack3 := 1317.
            recoveredPC := 2964.
        ].
        recoveredStep = 2964 ifTrue: [
            recoveredStack4 := 'menuEditEditFocus'.
            recoveredPC := 2968.
        ].
        recoveredStep = 2968 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2971.
        ].
        recoveredStep = 2971 ifTrue: [
            recoveredStack3 := 1318.
            recoveredPC := 2974.
        ].
        recoveredStep = 2974 ifTrue: [
            recoveredStack4 := 'menuEditSelectAllFocus'.
            recoveredPC := 2978.
        ].
        recoveredStep = 2978 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2981.
        ].
        recoveredStep = 2981 ifTrue: [
            recoveredStack3 := 1319.
            recoveredPC := 2984.
        ].
        recoveredStep = 2984 ifTrue: [
            recoveredStack4 := 'menuFileLoad'.
            recoveredPC := 2988.
        ].
        recoveredStep = 2988 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2991.
        ].
        recoveredStep = 2991 ifTrue: [
            recoveredStack3 := 1320.
            recoveredPC := 2994.
        ].
        recoveredStep = 2994 ifTrue: [
            recoveredStack4 := 'menuFileSaveAs'.
            recoveredPC := 2998.
        ].
        recoveredStep = 2998 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3001.
        ].
        recoveredStep = 3001 ifTrue: [
            recoveredStack3 := 1321.
            recoveredPC := 3004.
        ].
        recoveredStep = 3004 ifTrue: [
            recoveredStack4 := 'menuFileExportExperiment'.
            recoveredPC := 3008.
        ].
        recoveredStep = 3008 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3011.
        ].
        recoveredStep = 3011 ifTrue: [
            recoveredStack3 := 1322.
            recoveredPC := 3014.
        ].
        recoveredStep = 3014 ifTrue: [
            recoveredStack4 := 'menuEditOpenParent'.
            recoveredPC := 3018.
        ].
        recoveredStep = 3018 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3021.
        ].
        recoveredStep = 3021 ifTrue: [
            recoveredStack3 := 1323.
            recoveredPC := 3024.
        ].
        recoveredStep = 3024 ifTrue: [
            recoveredStack4 := 'menuViewSequenceCallsHideAll'.
            recoveredPC := 3028.
        ].
        recoveredStep = 3028 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3031.
        ].
        recoveredStep = 3031 ifTrue: [
            recoveredStack3 := 1324.
            recoveredPC := 3034.
        ].
        recoveredStep = 3034 ifTrue: [
            recoveredStack4 := 'menuViewSequenceCallsShowAll'.
            recoveredPC := 3038.
        ].
        recoveredStep = 3038 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3041.
        ].
        recoveredStep = 3041 ifTrue: [
            recoveredStack3 := 1325.
            recoveredPC := 3044.
        ].
        recoveredStep = 3044 ifTrue: [
            recoveredStack4 := 'menuExperimentStopAutomatic'.
            recoveredPC := 3048.
        ].
        recoveredStep = 3048 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3051.
        ].
        recoveredStep = 3051 ifTrue: [
            recoveredStack3 := 1326.
            recoveredPC := 3054.
        ].
        recoveredStep = 3054 ifTrue: [
            recoveredStack4 := 'menuExperimentStop'.
            recoveredPC := 3058.
        ].
        recoveredStep = 3058 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3061.
        ].
        recoveredStep = 3061 ifTrue: [
            recoveredStack3 := 1327.
            recoveredPC := 3064.
        ].
        recoveredStep = 3064 ifTrue: [
            recoveredStack4 := 'menuExperimentStart'.
            recoveredPC := 3068.
        ].
        recoveredStep = 3068 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3071.
        ].
        recoveredStep = 3071 ifTrue: [
            recoveredStack3 := 1328.
            recoveredPC := 3074.
        ].
        recoveredStep = 3074 ifTrue: [
            recoveredStack4 := 'menuExperimentPause'.
            recoveredPC := 3078.
        ].
        recoveredStep = 3078 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3081.
        ].
        recoveredStep = 3081 ifTrue: [
            recoveredStack3 := 1329.
            recoveredPC := 3084.
        ].
        recoveredStep = 3084 ifTrue: [
            recoveredStack4 := 'menuExperimentStep'.
            recoveredPC := 3088.
        ].
        recoveredStep = 3088 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3091.
        ].
        recoveredStep = 3091 ifTrue: [
            recoveredStack3 := 1330.
            recoveredPC := 3094.
        ].
        recoveredStep = 3094 ifTrue: [
            recoveredStack4 := 'menuExperimentMonitorAll'.
            recoveredPC := 3098.
        ].
        recoveredStep = 3098 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3101.
        ].
        recoveredStep = 3101 ifTrue: [
            recoveredStack3 := 1331.
            recoveredPC := 3104.
        ].
        recoveredStep = 3104 ifTrue: [
            recoveredStack4 := 'menuExperimentMonitorDelete'.
            recoveredPC := 3108.
        ].
        recoveredStep = 3108 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3111.
        ].
        recoveredStep = 3111 ifTrue: [
            recoveredStack3 := 1332.
            recoveredPC := 3114.
        ].
        recoveredStep = 3114 ifTrue: [
            recoveredStack4 := 'menuElementCalibrate'.
            recoveredPC := 3118.
        ].
        recoveredStep = 3118 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3121.
        ].
        recoveredStep = 3121 ifTrue: [
            recoveredStack3 := 1333.
            recoveredPC := 3124.
        ].
        recoveredStep = 3124 ifTrue: [
            recoveredStack4 := 'menuElementStimulate'.
            recoveredPC := 3128.
        ].
        recoveredStep = 3128 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3131.
        ].
        recoveredStep = 3131 ifTrue: [
            recoveredStack3 := 1334.
            recoveredPC := 3134.
        ].
        recoveredStep = 3134 ifTrue: [
            recoveredStack4 := 'menuElementMeasure'.
            recoveredPC := 3138.
        ].
        recoveredStep = 3138 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3141.
        ].
        recoveredStep = 3141 ifTrue: [
            recoveredStack3 := 1335.
            recoveredPC := 3144.
        ].
        recoveredStep = 3144 ifTrue: [
            recoveredStack4 := 'menuElementMeasureCoverageVariable'.
            recoveredPC := 3148.
        ].
        recoveredStep = 3148 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3151.
        ].
        recoveredStep = 3151 ifTrue: [
            recoveredStack3 := 1336.
            recoveredPC := 3154.
        ].
        recoveredStep = 3154 ifTrue: [
            recoveredStack4 := 'menuElementLog'.
            recoveredPC := 3158.
        ].
        recoveredStep = 3158 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3161.
        ].
        recoveredStep = 3161 ifTrue: [
            recoveredStack3 := 1337.
            recoveredPC := 3164.
        ].
        recoveredStep = 3164 ifTrue: [
            recoveredStack4 := 'menuElementLogAll'.
            recoveredPC := 3168.
        ].
        recoveredStep = 3168 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3171.
        ].
        recoveredStep = 3171 ifTrue: [
            recoveredStack3 := 1338.
            recoveredPC := 3174.
        ].
        recoveredStep = 3174 ifTrue: [
            recoveredStack4 := 'menuElementUpdateDepParams'.
            recoveredPC := 3178.
        ].
        recoveredStep = 3178 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3181.
        ].
        recoveredStep = 3181 ifTrue: [
            recoveredStack3 := 1339.
            recoveredPC := 3184.
        ].
        recoveredStep = 3184 ifTrue: [
            recoveredStack4 := 'menuEventTracerOpen'.
            recoveredPC := 3188.
        ].
        recoveredStep = 3188 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3191.
        ].
        recoveredStep = 3191 ifTrue: [
            recoveredStack3 := 1340.
            recoveredPC := 3194.
        ].
        recoveredStep = 3194 ifTrue: [
            recoveredStack4 := 'menuDataGeneratorOpen'.
            recoveredPC := 3198.
        ].
        recoveredStep = 3198 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3201.
        ].
        recoveredStep = 3201 ifTrue: [
            recoveredStack3 := 1341.
            recoveredPC := 3204.
        ].
        recoveredStep = 3204 ifTrue: [
            recoveredStack4 := 'menuDataLoggerOpen'.
            recoveredPC := 3208.
        ].
        recoveredStep = 3208 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3211.
        ].
        recoveredStep = 3211 ifTrue: [
            recoveredStack3 := 1342.
            recoveredPC := 3214.
        ].
        recoveredStep = 3214 ifTrue: [
            recoveredStack4 := 'menuCTSolverOpen'.
            recoveredPC := 3218.
        ].
        recoveredStep = 3218 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3221.
        ].
        recoveredStep = 3221 ifTrue: [
            recoveredStack3 := 1343.
            recoveredPC := 3224.
        ].
        recoveredStep = 3224 ifTrue: [
            recoveredStack4 := 'menuTargetDebuggerOpen'.
            recoveredPC := 3228.
        ].
        recoveredStep = 3228 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3231.
        ].
        recoveredStep = 3231 ifTrue: [
            recoveredStack3 := 1344.
            recoveredPC := 3234.
        ].
        recoveredStep = 3234 ifTrue: [
            recoveredStack4 := 'menuToolsNVRAMCockpitOpen'.
            recoveredPC := 3238.
        ].
        recoveredStep = 3238 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3241.
        ].
        recoveredStep = 3241 ifTrue: [
            recoveredStack3 := 1345.
            recoveredPC := 3244.
        ].
        recoveredStep = 3244 ifTrue: [
            recoveredStack4 := 'menuWindowCalibrationUpdate'.
            recoveredPC := 3248.
        ].
        recoveredStep = 3248 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3251.
        ].
        recoveredStep = 3251 ifTrue: [
            recoveredStack3 := 1346.
            recoveredPC := 3254.
        ].
        recoveredStep = 3254 ifTrue: [
            recoveredStack4 := 'menuWindowCalibrationClose'.
            recoveredPC := 3258.
        ].
        recoveredStep = 3258 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3261.
        ].
        recoveredStep = 3261 ifTrue: [
            recoveredStack3 := 1347.
            recoveredPC := 3264.
        ].
        recoveredStep = 3264 ifTrue: [
            recoveredStack4 := 'menuWindowMeasureClose'.
            recoveredPC := 3268.
        ].
        recoveredStep = 3268 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3271.
        ].
        recoveredStep = 3271 ifTrue: [
            recoveredStack3 := 1348.
            recoveredPC := 3274.
        ].
        recoveredStep = 3274 ifTrue: [
            recoveredStack4 := 'menuEditElementImplementationWriteBackCalibrated'.
            recoveredPC := 3278.
        ].
        recoveredStep = 3278 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3281.
        ].
        recoveredStep = 3281 ifTrue: [
            recoveredStack3 := 1349.
            recoveredPC := 3284.
        ].
        recoveredStep = 3284 ifTrue: [
            recoveredStack4 := 'menuEditElementDataLoad'.
            recoveredPC := 3288.
        ].
        recoveredStep = 3288 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3291.
        ].
        recoveredStep = 3291 ifTrue: [
            recoveredStack3 := 1350.
            recoveredPC := 3294.
        ].
        recoveredStep = 3294 ifTrue: [
            recoveredStack4 := 'menuEditElementDataSave'.
            recoveredPC := 3298.
        ].
        recoveredStep = 3298 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3301.
        ].
        recoveredStep = 3301 ifTrue: [
            recoveredStack3 := 1351.
            recoveredPC := 3304.
        ].
        recoveredStep = 3304 ifTrue: [
            recoveredStack4 := 'menuEditElementDataWriteBackSelected'.
            recoveredPC := 3308.
        ].
        recoveredStep = 3308 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3311.
        ].
        recoveredStep = 3311 ifTrue: [
            recoveredStack3 := 1352.
            recoveredPC := 3314.
        ].
        recoveredStep = 3314 ifTrue: [
            recoveredStack4 := 'menuEditElementDataWriteBackCalibrated'.
            recoveredPC := 3318.
        ].
        recoveredStep = 3318 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3321.
        ].
        recoveredStep = 3321 ifTrue: [
            recoveredStack3 := 1353.
            recoveredPC := 3324.
        ].
        recoveredStep = 3324 ifTrue: [
            recoveredStack4 := 'menuReinitVariables'.
            recoveredPC := 3328.
        ].
        recoveredStep = 3328 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3331.
        ].
        recoveredStep = 3331 ifTrue: [
            recoveredStack3 := 1354.
            recoveredPC := 3334.
        ].
        recoveredStep = 3334 ifTrue: [
            recoveredStack4 := 'menuReinitParameters'.
            recoveredPC := 3338.
        ].
        recoveredStep = 3338 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3341.
        ].
        recoveredStep = 3341 ifTrue: [
            recoveredStack3 := 1355.
            recoveredPC := 3344.
        ].
        recoveredStep = 3344 ifTrue: [
            recoveredStack4 := 'menuReinitVariablesAndParameters'.
            recoveredPC := 3348.
        ].
        recoveredStep = 3348 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3351.
        ].
        recoveredStep = 3351 ifTrue: [
            recoveredStack3 := 1356.
            recoveredPC := 3354.
        ].
        recoveredStep = 3354 ifTrue: [
            recoveredStack4 := 'menuShowExternalCCode'.
            recoveredPC := 3358.
        ].
        recoveredStep = 3358 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3361.
        ].
        recoveredStep = 3361 ifTrue: [
            recoveredStack3 := 1357.
            recoveredPC := 3364.
        ].
        recoveredStep = 3364 ifTrue: [
            recoveredStack4 := 'menuEventGeneratorOpen'.
            recoveredPC := 3368.
        ].
        recoveredStep = 3368 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3371.
        ].
        recoveredStep = 3371 ifTrue: [
            recoveredStack3 := 1358.
            recoveredPC := 3374.
        ].
        recoveredStep = 3374 ifTrue: [
            recoveredStack4 := 'menuStepModeStep'.
            recoveredPC := 3378.
        ].
        recoveredStep = 3378 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3381.
        ].
        recoveredStep = 3381 ifTrue: [
            recoveredStack3 := 1359.
            recoveredPC := 3384.
        ].
        recoveredStep = 3384 ifTrue: [
            recoveredStack4 := 'menuStepModeStepTimed'.
            recoveredPC := 3388.
        ].
        recoveredStep = 3388 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3391.
        ].
        recoveredStep = 3391 ifTrue: [
            recoveredStack3 := 1360.
            recoveredPC := 3394.
        ].
        recoveredStep = 3394 ifTrue: [
            recoveredStack4 := 'menuStepModeStepBreaked'.
            recoveredPC := 3398.
        ].
        recoveredStep = 3398 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3401.
        ].
        recoveredStep = 3401 ifTrue: [
            recoveredStack3 := 1361.
            recoveredPC := 3404.
        ].
        recoveredStep = 3404 ifTrue: [
            recoveredStack4 := 'menuStepModeEditBreakCondition'.
            recoveredPC := 3408.
        ].
        recoveredStep = 3408 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3411.
        ].
        recoveredStep = 3411 ifTrue: [
            recoveredStack3 := 1362.
            recoveredPC := 3414.
        ].
        recoveredStep = 3414 ifTrue: [
            recoveredStack4 := 'menuEditAdd'.
            recoveredPC := 3418.
        ].
        recoveredStep = 3418 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3421.
        ].
        recoveredStep = 3421 ifTrue: [
            recoveredStack3 := 1363.
            recoveredPC := 3424.
        ].
        recoveredStep = 3424 ifTrue: [
            recoveredStack4 := 'menuEditAddMode'.
            recoveredPC := 3428.
        ].
        recoveredStep = 3428 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3431.
        ].
        recoveredStep = 3431 ifTrue: [
            recoveredStack3 := 1364.
            recoveredPC := 3434.
        ].
        recoveredStep = 3434 ifTrue: [
            recoveredStack4 := 'menuInsertAtomicSoftwareComponent'.
            recoveredPC := 3438.
        ].
        recoveredStep = 3438 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3441.
        ].
        recoveredStep = 3441 ifTrue: [
            recoveredStack3 := 1366.
            recoveredPC := 3444.
        ].
        recoveredStep = 3444 ifTrue: [
            recoveredStack4 := 'menuMethodsEditImplementation'.
            recoveredPC := 3448.
        ].
        recoveredStep = 3448 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3451.
        ].
        recoveredStep = 3451 ifTrue: [
            recoveredStack3 := 1367.
            recoveredPC := 3454.
        ].
        recoveredStep = 3454 ifTrue: [
            recoveredStack4 := 'menuInsertSenderReceiverInterface'.
            recoveredPC := 3458.
        ].
        recoveredStep = 3458 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3461.
        ].
        recoveredStep = 3461 ifTrue: [
            recoveredStack3 := 1368.
            recoveredPC := 3464.
        ].
        recoveredStep = 3464 ifTrue: [
            recoveredStack4 := 'menuInsertProcess'.
            recoveredPC := 3468.
        ].
        recoveredStep = 3468 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3471.
        ].
        recoveredStep = 3471 ifTrue: [
            recoveredStack3 := 1369.
            recoveredPC := 3474.
        ].
        recoveredStep = 3474 ifTrue: [
            recoveredStack4 := 'menuItemAddToLibrary'.
            recoveredPC := 3478.
        ].
        recoveredStep = 3478 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3481.
        ].
        recoveredStep = 3481 ifTrue: [
            recoveredStack3 := 1370.
            recoveredPC := 3484.
        ].
        recoveredStep = 3484 ifTrue: [
            recoveredStack4 := 'menuToolsItemLibrary'.
            recoveredPC := 3488.
        ].
        recoveredStep = 3488 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3491.
        ].
        recoveredStep = 3491 ifTrue: [
            recoveredStack3 := 1371.
            recoveredPC := 3494.
        ].
        recoveredStep = 3494 ifTrue: [
            recoveredStack4 := 'menuInsertRunnable'.
            recoveredPC := 3498.
        ].
        recoveredStep = 3498 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3501.
        ].
        recoveredStep = 3501 ifTrue: [
            recoveredStack3 := 1372.
            recoveredPC := 3504.
        ].
        recoveredStep = 3504 ifTrue: [
            recoveredStack4 := 'menuInsertRecord'.
            recoveredPC := 3508.
        ].
        recoveredStep = 3508 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3511.
        ].
        recoveredStep = 3511 ifTrue: [
            recoveredStack3 := 1373.
            recoveredPC := 3514.
        ].
        recoveredStep = 3514 ifTrue: [
            recoveredStack4 := 'menuInsertModeGroup'.
            recoveredPC := 3518.
        ].
        recoveredStep = 3518 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3521.
        ].
        recoveredStep = 3521 ifTrue: [
            recoveredStack3 := 1374.
            recoveredPC := 3524.
        ].
        recoveredStep = 3524 ifTrue: [
            recoveredStack4 := 'menuViewConfigureResetToolbarConfiguration'.
            recoveredPC := 3528.
        ].
        recoveredStep = 3528 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3531.
        ].
        recoveredStep = 3531 ifTrue: [
            recoveredStack3 := 1375.
            recoveredPC := 3534.
        ].
        recoveredStep = 3534 ifTrue: [
            recoveredStack4 := 'menuBuildSaveExecutable'.
            recoveredPC := 3538.
        ].
        recoveredStep = 3538 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3541.
        ].
        recoveredStep = 3541 ifTrue: [
            recoveredStack3 := 1376.
            recoveredPC := 3544.
        ].
        recoveredStep = 3544 ifTrue: [
            recoveredStack4 := 'menuEditInsertFocus'.
            recoveredPC := 3548.
        ].
        recoveredStep = 3548 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3551.
        ].
        recoveredStep = 3551 ifTrue: [
            recoveredStack3 := 1377.
            recoveredPC := 3554.
        ].
        recoveredStep = 3554 ifTrue: [
            recoveredStack4 := 'menuFileSaveAsForComponent'.
            recoveredPC := 3558.
        ].
        recoveredStep = 3558 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3561.
        ].
        recoveredStep = 3561 ifTrue: [
            recoveredStack3 := 1378.
            recoveredPC := 3564.
        ].
        recoveredStep = 3564 ifTrue: [
            recoveredStack4 := 'menuInsertGenericComponent:'.
            recoveredPC := 3568.
        ].
        recoveredStep = 3568 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3571.
        ].
        recoveredStep = 3571 ifTrue: [
            recoveredStack3 := 1379.
            recoveredPC := 3574.
        ].
        recoveredStep = 3574 ifTrue: [
            recoveredStack4 := 'menuViewShowHideDatabaseList'.
            recoveredPC := 3578.
        ].
        recoveredStep = 3578 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3581.
        ].
        recoveredStep = 3581 ifTrue: [
            recoveredStack3 := 1380.
            recoveredPC := 3584.
        ].
        recoveredStep = 3584 ifTrue: [
            recoveredStack4 := 'menuInsertComponentInstance'.
            recoveredPC := 3588.
        ].
        recoveredStep = 3588 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3591.
        ].
        recoveredStep = 3591 ifTrue: [
            recoveredStack3 := 1381.
            recoveredPC := 3594.
        ].
        recoveredStep = 3594 ifTrue: [
            recoveredStack4 := 'menuCommunicationExport'.
            recoveredPC := 3598.
        ].
        recoveredStep = 3598 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3601.
        ].
        recoveredStep = 3601 ifTrue: [
            recoveredStack3 := 1382.
            recoveredPC := 3604.
        ].
        recoveredStep = 3604 ifTrue: [
            recoveredStack4 := 'menuCGenPerformance1'.
            recoveredPC := 3608.
        ].
        recoveredStep = 3608 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3611.
        ].
        recoveredStep = 3611 ifTrue: [
            recoveredStack3 := 1383.
            recoveredPC := 3614.
        ].
        recoveredStep = 3614 ifTrue: [
            recoveredStack4 := 'menuOffSimPerformance1'.
            recoveredPC := 3618.
        ].
        recoveredStep = 3618 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3621.
        ].
        recoveredStep = 3621 ifTrue: [
            recoveredStack3 := 1384.
            recoveredPC := 3624.
        ].
        recoveredStep = 3624 ifTrue: [
            recoveredStack4 := 'menuBindingExport'.
            recoveredPC := 3628.
        ].
        recoveredStep = 3628 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3631.
        ].
        recoveredStep = 3631 ifTrue: [
            recoveredStack3 := 1385.
            recoveredPC := 3634.
        ].
        recoveredStep = 3634 ifTrue: [
            recoveredStack4 := 'menuTaskReportCache'.
            recoveredPC := 3638.
        ].
        recoveredStep = 3638 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3641.
        ].
        recoveredStep = 3641 ifTrue: [
            recoveredStack3 := 1386.
            recoveredPC := 3644.
        ].
        recoveredStep = 3644 ifTrue: [
            recoveredStack4 := 'menuOpenCloseDBPerformance'.
            recoveredPC := 3648.
        ].
        recoveredStep = 3648 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3651.
        ].
        recoveredStep = 3651 ifTrue: [
            recoveredStack3 := 1387.
            recoveredPC := 3654.
        ].
        recoveredStep = 3654 ifTrue: [
            recoveredStack4 := 'menuShiftUpFocus'.
            recoveredPC := 3658.
        ].
        recoveredStep = 3658 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3661.
        ].
        recoveredStep = 3661 ifTrue: [
            recoveredStack3 := 1388.
            recoveredPC := 3664.
        ].
        recoveredStep = 3664 ifTrue: [
            recoveredStack4 := 'menuShiftDownFocus'.
            recoveredPC := 3668.
        ].
        recoveredStep = 3668 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3671.
        ].
        recoveredStep = 3671 ifTrue: [
            recoveredStack3 := 1389.
            recoveredPC := 3674.
        ].
        recoveredStep = 3674 ifTrue: [
            recoveredStack4 := 'menuExperimentSuspend'.
            recoveredPC := 3678.
        ].
        recoveredStep = 3678 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3681.
        ].
        recoveredStep = 3681 ifTrue: [
            recoveredStack3 := 1390.
            recoveredPC := 3684.
        ].
        recoveredStep = 3684 ifTrue: [
            recoveredStack4 := 'menuExperimentResume'.
            recoveredPC := 3688.
        ].
        recoveredStep = 3688 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3691.
        ].
        recoveredStep = 3691 ifTrue: [
            recoveredStack3 := 1391.
            recoveredPC := 3694.
        ].
        recoveredStep = 3694 ifTrue: [
            recoveredStack4 := 'menuToolsDeleteCCode'.
            recoveredPC := 3698.
        ].
        recoveredStep = 3698 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3701.
        ].
        recoveredStep = 3701 ifTrue: [
            recoveredStack3 := 1392.
            recoveredPC := 3704.
        ].
        recoveredStep = 3704 ifTrue: [
            recoveredStack4 := 'menuInsertCalibrationInterface'.
            recoveredPC := 3708.
        ].
        recoveredStep = 3708 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3711.
        ].
        recoveredStep = 3711 ifTrue: [
            recoveredStack3 := 1393.
            recoveredPC := 3714.
        ].
        recoveredStep = 3714 ifTrue: [
            recoveredStack4 := 'menuInsertExperiment'.
            recoveredPC := 3718.
        ].
        recoveredStep = 3718 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3721.
        ].
        recoveredStep = 3721 ifTrue: [
            recoveredStack3 := 1394.
            recoveredPC := 3724.
        ].
        recoveredStep = 3724 ifTrue: [
            recoveredStack4 := 'menuInsertClientServerInterface'.
            recoveredPC := 3728.
        ].
        recoveredStep = 3728 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3731.
        ].
        recoveredStep = 3731 ifTrue: [
            recoveredStack3 := 1395.
            recoveredPC := 3734.
        ].
        recoveredStep = 3734 ifTrue: [
            recoveredStack4 := 'menuBuildUpdateInterfaces'.
            recoveredPC := 3738.
        ].
        recoveredStep = 3738 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3741.
        ].
        recoveredStep = 3741 ifTrue: [
            recoveredStack3 := 1396.
            recoveredPC := 3744.
        ].
        recoveredStep = 3744 ifTrue: [
            recoveredStack4 := 'menuExperimentMeasurementStop'.
            recoveredPC := 3748.
        ].
        recoveredStep = 3748 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3751.
        ].
        recoveredStep = 3751 ifTrue: [
            recoveredStack3 := 1397.
            recoveredPC := 3754.
        ].
        recoveredStep = 3754 ifTrue: [
            recoveredStack4 := 'menuExperimentMeasurementStart'.
            recoveredPC := 3758.
        ].
        recoveredStep = 3758 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3761.
        ].
        recoveredStep = 3761 ifTrue: [
            recoveredStack3 := 1398.
            recoveredPC := 3764.
        ].
        recoveredStep = 3764 ifTrue: [
            recoveredStack4 := 'menuFileConvertDatabaseToWorkspace'.
            recoveredPC := 3768.
        ].
        recoveredStep = 3768 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3771.
        ].
        recoveredStep = 3771 ifTrue: [
            recoveredStack3 := 1399.
            recoveredPC := 3774.
        ].
        recoveredStep = 3774 ifTrue: [
            recoveredStack4 := 'menuInsertMethodSignature'.
            recoveredPC := 3778.
        ].
        recoveredStep = 3778 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3781.
        ].
        recoveredStep = 3781 ifTrue: [
            recoveredStack3 := 1400.
            recoveredPC := 3784.
        ].
        recoveredStep = 3784 ifTrue: [
            recoveredStack4 := 'menuViewShowHideSearchResults'.
            recoveredPC := 3788.
        ].
        recoveredStep = 3788 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3791.
        ].
        recoveredStep = 3791 ifTrue: [
            recoveredStack3 := 1401.
            recoveredPC := 3794.
        ].
        recoveredStep = 3794 ifTrue: [
            recoveredStack4 := 'menuExtrasShowUnused'.
            recoveredPC := 3798.
        ].
        recoveredStep = 3798 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3801.
        ].
        recoveredStep = 3801 ifTrue: [
            recoveredStack3 := 1402.
            recoveredPC := 3804.
        ].
        recoveredStep = 3804 ifTrue: [
            recoveredStack4 := 'menuOpenCgenDirectory'.
            recoveredPC := 3808.
        ].
        recoveredStep = 3808 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3811.
        ].
        recoveredStep = 3811 ifTrue: [
            recoveredStack3 := 1403.
            recoveredPC := 3814.
        ].
        recoveredStep = 3814 ifTrue: [
            recoveredStack4 := 'menuFileWorkspaceNew'.
            recoveredPC := 3818.
        ].
        recoveredStep = 3818 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3821.
        ].
        recoveredStep = 3821 ifTrue: [
            recoveredStack3 := 1407.
            recoveredPC := 3824.
        ].
        recoveredStep = 3824 ifTrue: [
            recoveredStack4 := 'menuFileSwitchToWorkspace'.
            recoveredPC := 3828.
        ].
        recoveredStep = 3828 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3831.
        ].
        recoveredStep = 3831 ifTrue: [
            recoveredStack3 := 1408.
            recoveredPC := 3834.
        ].
        recoveredStep = 3834 ifTrue: [
            recoveredStack4 := 'menuBuildRemoveAllGeneratedCode'.
            recoveredPC := 3838.
        ].
        recoveredStep = 3838 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3841.
        ].
        recoveredStep = 3841 ifTrue: [
            recoveredStack3 := 1409.
            recoveredPC := 3844.
        ].
        recoveredStep = 3844 ifTrue: [
            recoveredStack4 := 'menuFileSwitchToDatabase'.
            recoveredPC := 3848.
        ].
        recoveredStep = 3848 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3851.
        ].
        recoveredStep = 3851 ifTrue: [
            recoveredStack3 := 1410.
            recoveredPC := 3854.
        ].
        recoveredStep = 3854 ifTrue: [
            recoveredStack4 := 'menuExtrasDefProjCreate'.
            recoveredPC := 3858.
        ].
        recoveredStep = 3858 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3861.
        ].
        recoveredStep = 3861 ifTrue: [
            recoveredStack3 := 1411.
            recoveredPC := 3864.
        ].
        recoveredStep = 3864 ifTrue: [
            recoveredStack4 := 'menuFileWorkspaceScanForNewFiles'.
            recoveredPC := 3868.
        ].
        recoveredStep = 3868 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3871.
        ].
        recoveredStep = 3871 ifTrue: [
            recoveredStack3 := 1412.
            recoveredPC := 3874.
        ].
        recoveredStep = 3874 ifTrue: [
            recoveredStack4 := 'menuEditWorkspaceRemove'.
            recoveredPC := 3878.
        ].
        recoveredStep = 3878 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3881.
        ].
        recoveredStep = 3881 ifTrue: [
            recoveredStack3 := 1413.
            recoveredPC := 3884.
        ].
        recoveredStep = 3884 ifTrue: [
            recoveredStack4 := 'menuExperimentDisableTargetErrorMessages'.
            recoveredPC := 3888.
        ].
        recoveredStep = 3888 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3891.
        ].
        recoveredStep = 3891 ifTrue: [
            recoveredStack3 := 1414.
            recoveredPC := 3894.
        ].
        recoveredStep = 3894 ifTrue: [
            recoveredStack4 := 'menuEditSetDefaultMethod'.
            recoveredPC := 3898.
        ].
        recoveredStep = 3898 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3901.
        ].
        recoveredStep = 3901 ifTrue: [
            recoveredStack3 := 1415.
            recoveredPC := 3904.
        ].
        recoveredStep = 3904 ifTrue: [
            recoveredStack4 := 'menuFileConvertDatabaseToCurrentVersion'.
            recoveredPC := 3908.
        ].
        recoveredStep = 3908 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3911.
        ].
        recoveredStep = 3911 ifTrue: [
            recoveredStack3 := 1416.
            recoveredPC := 3914.
        ].
        recoveredStep = 3914 ifTrue: [
            recoveredStack4 := 'menuStimulate'.
            recoveredPC := 3918.
        ].
        recoveredStep = 3918 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3921.
        ].
        recoveredStep = 3921 ifTrue: [
            recoveredStack3 := 1417.
            recoveredPC := 3924.
        ].
        recoveredStep = 3924 ifTrue: [
            recoveredStack4 := 'menuFileWorkspaceReopen'.
            recoveredPC := 3928.
        ].
        recoveredStep = 3928 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3931.
        ].
        recoveredStep = 3931 ifTrue: [
            recoveredStack3 := 1418.
            recoveredPC := 3934.
        ].
        recoveredStep = 3934 ifTrue: [
            recoveredStack4 := 'menuExtendDatabaseComponentSize'.
            recoveredPC := 3938.
        ].
        recoveredStep = 3938 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3941.
        ].
        recoveredStep = 3941 ifTrue: [
            recoveredStack3 := 1419.
            recoveredPC := 3944.
        ].
        recoveredStep = 3944 ifTrue: [
            recoveredStack4 := 'menuCountComponentAmountInDatabase'.
            recoveredPC := 3948.
        ].
        recoveredStep = 3948 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3951.
        ].
        recoveredStep = 3951 ifTrue: [
            recoveredStack3 := 1420.
            recoveredPC := 3954.
        ].
        recoveredStep = 3954 ifTrue: [
            recoveredStack4 := 'menuTaskSortIds'.
            recoveredPC := 3958.
        ].
        recoveredStep = 3958 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3961.
        ].
        recoveredStep = 3961 ifTrue: [
            recoveredStack3 := 1421.
            recoveredPC := 3964.
        ].
        recoveredStep = 3964 ifTrue: [
            recoveredStack4 := 'menuToolsDatabaseShowDupOidItems'.
            recoveredPC := 3968.
        ].
        recoveredStep = 3968 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3971.
        ].
        recoveredStep = 3971 ifTrue: [
            recoveredStack3 := 1422.
            recoveredPC := 3974.
        ].
        recoveredStep = 3974 ifTrue: [
            recoveredStack4 := 'menuInsertDataInterface'.
            recoveredPC := 3978.
        ].
        recoveredStep = 3978 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3981.
        ].
        recoveredStep = 3981 ifTrue: [
            recoveredStack3 := 1423.
            recoveredPC := 3984.
        ].
        recoveredStep = 3984 ifTrue: [
            recoveredStack4 := 'menuCreateSelectActionForAscetLink'.
            recoveredPC := 3988.
        ].
        recoveredStep = 3988 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 3991.
        ].
        recoveredStep = 3991 ifTrue: [
            recoveredStack3 := 1424.
            recoveredPC := 3994.
        ].
        recoveredStep = 3994 ifTrue: [
            recoveredStack4 := 'menuCreateOpenActionForAscetLink'.
            recoveredPC := 3998.
        ].
        recoveredStep = 3998 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4001.
        ].
        recoveredStep = 4001 ifTrue: [
            recoveredStack3 := 1425.
            recoveredPC := 4004.
        ].
        recoveredStep = 4004 ifTrue: [
            recoveredStack4 := 'menuCreateAscetLinkFortTreeRootNode'.
            recoveredPC := 4008.
        ].
        recoveredStep = 4008 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4011.
        ].
        recoveredStep = 4011 ifTrue: [
            recoveredStack3 := 1426.
            recoveredPC := 4014.
        ].
        recoveredStep = 4014 ifTrue: [
            recoveredStack4 := 'menuCreateAscetLinkForTreeRootNode'.
            recoveredPC := 4018.
        ].
        recoveredStep = 4018 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4021.
        ].
        recoveredStep = 4021 ifTrue: [
            recoveredStack3 := 1427.
            recoveredPC := 4024.
        ].
        recoveredStep = 4024 ifTrue: [
            recoveredStack4 := 'menuCreateOpenActionTreeElementNodeForAscetLink'.
            recoveredPC := 4028.
        ].
        recoveredStep = 4028 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4031.
        ].
        recoveredStep = 4031 ifTrue: [
            recoveredStack3 := 1428.
            recoveredPC := 4034.
        ].
        recoveredStep = 4034 ifTrue: [
            recoveredStack4 := 'menuCreateSelectActionTreeElementNodeForAscetLink'.
            recoveredPC := 4038.
        ].
        recoveredStep = 4038 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4041.
        ].
        recoveredStep = 4041 ifTrue: [
            recoveredStack3 := 1429.
            recoveredPC := 4044.
        ].
        recoveredStep = 4044 ifTrue: [
            recoveredStack4 := 'menuCreateAscetLinkForElementTreeMethodAndProcessNode'.
            recoveredPC := 4048.
        ].
        recoveredStep = 4048 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4051.
        ].
        recoveredStep = 4051 ifTrue: [
            recoveredStack3 := 1430.
            recoveredPC := 4054.
        ].
        recoveredStep = 4054 ifTrue: [
            recoveredStack4 := 'menuEnumerationInsert'.
            recoveredPC := 4058.
        ].
        recoveredStep = 4058 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4061.
        ].
        recoveredStep = 4061 ifTrue: [
            recoveredStack3 := 1431.
            recoveredPC := 4064.
        ].
        recoveredStep = 4064 ifTrue: [
            recoveredStack4 := 'menuEnumerationAppend'.
            recoveredPC := 4068.
        ].
        recoveredStep = 4068 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4071.
        ].
        recoveredStep = 4071 ifTrue: [
            recoveredStack3 := 1432.
            recoveredPC := 4074.
        ].
        recoveredStep = 4074 ifTrue: [
            recoveredStack4 := 'menuModeGroupRename'.
            recoveredPC := 4078.
        ].
        recoveredStep = 4078 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4081.
        ].
        recoveredStep = 4081 ifTrue: [
            recoveredStack3 := 1433.
            recoveredPC := 4084.
        ].
        recoveredStep = 4084 ifTrue: [
            recoveredStack4 := 'menuModeGroupDelete'.
            recoveredPC := 4088.
        ].
        recoveredStep = 4088 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4091.
        ].
        recoveredStep = 4091 ifTrue: [
            recoveredStack3 := 1434.
            recoveredPC := 4094.
        ].
        recoveredStep = 4094 ifTrue: [
            recoveredStack4 := 'menuModeGroupShiftUp'.
            recoveredPC := 4098.
        ].
        recoveredStep = 4098 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4101.
        ].
        recoveredStep = 4101 ifTrue: [
            recoveredStack3 := 1435.
            recoveredPC := 4104.
        ].
        recoveredStep = 4104 ifTrue: [
            recoveredStack4 := 'menuModeGroupShiftDown'.
            recoveredPC := 4108.
        ].
        recoveredStep = 4108 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4111.
        ].
        recoveredStep = 4111 ifTrue: [
            recoveredStack3 := 1436.
            recoveredPC := 4114.
        ].
        recoveredStep = 4114 ifTrue: [
            recoveredStack4 := 'menuModeGroupAddFirst'.
            recoveredPC := 4118.
        ].
        recoveredStep = 4118 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4121.
        ].
        recoveredStep = 4121 ifTrue: [
            recoveredStack3 := 1437.
            recoveredPC := 4124.
        ].
        recoveredStep = 4124 ifTrue: [
            recoveredStack4 := 'menuModeGroupAddLast'.
            recoveredPC := 4128.
        ].
        recoveredStep = 4128 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4131.
        ].
        recoveredStep = 4131 ifTrue: [
            recoveredStack3 := 1438.
            recoveredPC := 4134.
        ].
        recoveredStep = 4134 ifTrue: [
            recoveredStack4 := 'menuModeGroupAddBefore'.
            recoveredPC := 4138.
        ].
        recoveredStep = 4138 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4141.
        ].
        recoveredStep = 4141 ifTrue: [
            recoveredStack3 := 1439.
            recoveredPC := 4144.
        ].
        recoveredStep = 4144 ifTrue: [
            recoveredStack4 := 'menuModeGroupAddAfter'.
            recoveredPC := 4148.
        ].
        recoveredStep = 4148 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4151.
        ].
        recoveredStep = 4151 ifTrue: [
            recoveredStack3 := 1440.
            recoveredPC := 4154.
        ].
        recoveredStep = 4154 ifTrue: [
            recoveredStack4 := 'menuMakeActiveDefaultProject'.
            recoveredPC := 4158.
        ].
        recoveredStep = 4158 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4161.
        ].
        recoveredStep = 4161 ifTrue: [
            recoveredStack3 := 1441.
            recoveredPC := 4164.
        ].
        recoveredStep = 4164 ifTrue: [
            recoveredStack4 := 'menuMakeActiveProject'.
            recoveredPC := 4168.
        ].
        recoveredStep = 4168 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4171.
        ].
        recoveredStep = 4171 ifTrue: [
            recoveredStack3 := 1442.
            recoveredPC := 4174.
        ].
        recoveredStep = 4174 ifTrue: [
            recoveredStack4 := 'menuClearActiveProject'.
            recoveredPC := 4178.
        ].
        recoveredStep = 4178 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4181.
        ].
        recoveredStep = 4181 ifTrue: [
            recoveredStack3 := 1443.
            recoveredPC := 4184.
        ].
        recoveredStep = 4184 ifTrue: [
            recoveredStack4 := 'menuVerifyInstallation'.
            recoveredPC := 4188.
        ].
        recoveredStep = 4188 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4191.
        ].
        recoveredStep = 4191 ifTrue: [
            recoveredStack3 := 1444.
            recoveredPC := 4194.
        ].
        recoveredStep = 4194 ifTrue: [
            recoveredStack4 := 'subMenuEditComponentFlexibleClassLayout'.
            recoveredPC := 4198.
        ].
        recoveredStep = 4198 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4201.
        ].
        recoveredStep = 4201 ifTrue: [
            recoveredStack3 := 1445.
            recoveredPC := 4204.
        ].
        recoveredStep = 4204 ifTrue: [
            recoveredStack4 := 'menuActivateFlexibleClassLayout'.
            recoveredPC := 4208.
        ].
        recoveredStep = 4208 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4211.
        ].
        recoveredStep = 4211 ifTrue: [
            recoveredStack3 := 1446.
            recoveredPC := 4214.
        ].
        recoveredStep = 4214 ifTrue: [
            recoveredStack4 := 'menuActivateRecursiveFlexibleClassLayout'.
            recoveredPC := 4218.
        ].
        recoveredStep = 4218 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4221.
        ].
        recoveredStep = 4221 ifTrue: [
            recoveredStack3 := 1447.
            recoveredPC := 4224.
        ].
        recoveredStep = 4224 ifTrue: [
            recoveredStack4 := 'menuDeactivateFlexibleClassLayout'.
            recoveredPC := 4228.
        ].
        recoveredStep = 4228 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4231.
        ].
        recoveredStep = 4231 ifTrue: [
            recoveredStack3 := 1448.
            recoveredPC := 4234.
        ].
        recoveredStep = 4234 ifTrue: [
            recoveredStack4 := 'menuDeactivateRecursiveFlexibleClassLayout'.
            recoveredPC := 4238.
        ].
        recoveredStep = 4238 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4241.
        ].
        recoveredStep = 4241 ifTrue: [
            recoveredStack3 := 1449.
            recoveredPC := 4244.
        ].
        recoveredStep = 4244 ifTrue: [
            recoveredStack4 := 'menuBoundAcquisitionTask'.
            recoveredPC := 4248.
        ].
        recoveredStep = 4248 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4251.
        ].
        recoveredStep = 4251 ifTrue: [
            recoveredStack3 := 1450.
            recoveredPC := 4254.
        ].
        recoveredStep = 4254 ifTrue: [
            recoveredStack4 := 'menuCreateAscetLinkForNavigationTreeMethodAndProcessNode'.
            recoveredPC := 4258.
        ].
        recoveredStep = 4258 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4261.
        ].
        recoveredStep = 4261 ifTrue: [
            recoveredStack3 := 1451.
            recoveredPC := 4264.
        ].
        recoveredStep = 4264 ifTrue: [
            recoveredStack4 := 'menuHelpSupportCustomer'.
            recoveredPC := 4268.
        ].
        recoveredStep = 4268 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4271.
        ].
        recoveredStep = 4271 ifTrue: [
            recoveredStack3 := 1452.
            recoveredPC := 4274.
        ].
        recoveredStep = 4274 ifTrue: [
            recoveredStack4 := 'menuHelpWikiCustomer'.
            recoveredPC := 4278.
        ].
        recoveredStep = 4278 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4281.
        ].
        recoveredStep = 4281 ifTrue: [
            recoveredStack3 := 1453.
            recoveredPC := 4284.
        ].
        recoveredStep = 4284 ifTrue: [
            recoveredStack4 := 'menuViewShowHideToolbarSearch'.
            recoveredPC := 4288.
        ].
        recoveredStep = 4288 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4291.
        ].
        recoveredStep = 4291 ifTrue: [
            recoveredStack3 := 1454.
            recoveredPC := 4294.
        ].
        recoveredStep = 4294 ifTrue: [
            recoveredStack4 := 'menuViewShowHideToolbarNavigation'.
            recoveredPC := 4298.
        ].
        recoveredStep = 4298 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4301.
        ].
        recoveredStep = 4301 ifTrue: [
            recoveredStack3 := 1455.
            recoveredPC := 4304.
        ].
        recoveredStep = 4304 ifTrue: [
            recoveredStack4 := 'menuViewConfigureToolbarGeneral'.
            recoveredPC := 4308.
        ].
        recoveredStep = 4308 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4311.
        ].
        recoveredStep = 4311 ifTrue: [
            recoveredStack3 := 1456.
            recoveredPC := 4314.
        ].
        recoveredStep = 4314 ifTrue: [
            recoveredStack4 := 'menuShowPotentiallyUsed'.
            recoveredPC := 4318.
        ].
        recoveredStep = 4318 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4321.
        ].
        recoveredStep = 4321 ifTrue: [
            recoveredStack3 := 1457.
            recoveredPC := 4324.
        ].
        recoveredStep = 4324 ifTrue: [
            recoveredStack4 := 'menuGoTo'.
            recoveredPC := 4328.
        ].
        recoveredStep = 4328 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4331.
        ].
        recoveredStep = 4331 ifTrue: [
            recoveredStack3 := 1458.
            recoveredPC := 4334.
        ].
        recoveredStep = 4334 ifTrue: [
            recoveredStack4 := 'menuGetLock'.
            recoveredPC := 4338.
        ].
        recoveredStep = 4338 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4341.
        ].
        recoveredStep = 4341 ifTrue: [
            recoveredStack3 := 1459.
            recoveredPC := 4344.
        ].
        recoveredStep = 4344 ifTrue: [
            recoveredStack4 := 'menuExperimentAutomaticMonitorMode'.
            recoveredPC := 4348.
        ].
        recoveredStep = 4348 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4351.
        ].
        recoveredStep = 4351 ifTrue: [
            recoveredStack3 := 1460.
            recoveredPC := 4354.
        ].
        recoveredStep = 4354 ifTrue: [
            recoveredStack4 := 'menuExperimentOptions'.
            recoveredPC := 4358.
        ].
        recoveredStep = 4358 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4361.
        ].
        recoveredStep = 4361 ifTrue: [
            recoveredStack3 := 1461.
            recoveredPC := 4364.
        ].
        recoveredStep = 4364 ifTrue: [
            recoveredStack4 := 'subMenuEditComponentNewIntegerTypes'.
            recoveredPC := 4368.
        ].
        recoveredStep = 4368 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4371.
        ].
        recoveredStep = 4371 ifTrue: [
            recoveredStack3 := 1462.
            recoveredPC := 4374.
        ].
        recoveredStep = 4374 ifTrue: [
            recoveredStack4 := 'menuConvertToNewIntegerTypes'.
            recoveredPC := 4378.
        ].
        recoveredStep = 4378 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4381.
        ].
        recoveredStep = 4381 ifTrue: [
            recoveredStack3 := 1463.
            recoveredPC := 4384.
        ].
        recoveredStep = 4384 ifTrue: [
            recoveredStack4 := 'menuConvertToNewIntegerTypesRecursive'.
            recoveredPC := 4388.
        ].
        recoveredStep = 4388 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4391.
        ].
        recoveredStep = 4391 ifTrue: [
            recoveredStack3 := 1464.
            recoveredPC := 4394.
        ].
        recoveredStep = 4394 ifTrue: [
            recoveredStack4 := 'menuConvertDBToNewIntegerTypes'.
            recoveredPC := 4398.
        ].
        recoveredStep = 4398 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4401.
        ].
        recoveredStep = 4401 ifTrue: [
            recoveredStack3 := 1465.
            recoveredPC := 4404.
        ].
        recoveredStep = 4404 ifTrue: [
            recoveredStack4 := 'menuReferencedItems'.
            recoveredPC := 4408.
        ].
        recoveredStep = 4408 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4411.
        ].
        recoveredStep = 4411 ifTrue: [
            recoveredStack3 := 1999.
            recoveredPC := 4414.
        ].
        recoveredStep = 4414 ifTrue: [
            recoveredStack4 := 'menuFileClose'.
            recoveredPC := 4418.
        ].
        recoveredStep = 4418 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4421.
        ].
        recoveredStep = 4421 ifTrue: [
            recoveredStack3 := 2000.
            recoveredPC := 4424.
        ].
        recoveredStep = 4424 ifTrue: [
            recoveredStack4 := 'menuFileExit'.
            recoveredPC := 4428.
        ].
        recoveredStep = 4428 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4431.
        ].
        recoveredStep = 4431 ifTrue: [
            recoveredStack3 := 2100.
            recoveredPC := 4434.
        ].
        recoveredStep = 4434 ifTrue: [
            recoveredStack4 := 'menuEventAdd'.
            recoveredPC := 4438.
        ].
        recoveredStep = 4438 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4441.
        ].
        recoveredStep = 4441 ifTrue: [
            recoveredStack3 := 2101.
            recoveredPC := 4444.
        ].
        recoveredStep = 4444 ifTrue: [
            recoveredStack4 := 'menuEventRename'.
            recoveredPC := 4448.
        ].
        recoveredStep = 4448 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4451.
        ].
        recoveredStep = 4451 ifTrue: [
            recoveredStack3 := 2102.
            recoveredPC := 4454.
        ].
        recoveredStep = 4454 ifTrue: [
            recoveredStack4 := 'menuEventDelete'.
            recoveredPC := 4458.
        ].
        recoveredStep = 4458 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4461.
        ].
        recoveredStep = 4461 ifTrue: [
            recoveredStack3 := 2210.
            recoveredPC := 4464.
        ].
        recoveredStep = 4464 ifTrue: [
            recoveredStack4 := 'menuEventsAssign'.
            recoveredPC := 4468.
        ].
        recoveredStep = 4468 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4471.
        ].
        recoveredStep = 4471 ifTrue: [
            recoveredStack3 := 2212.
            recoveredPC := 4474.
        ].
        recoveredStep = 4474 ifTrue: [
            recoveredStack4 := 'menuAssignModeToModeSwitch'.
            recoveredPC := 4478.
        ].
        recoveredStep = 4478 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4481.
        ].
        recoveredStep = 4481 ifTrue: [
            recoveredStack3 := 2213.
            recoveredPC := 4484.
        ].
        recoveredStep = 4484 ifTrue: [
            recoveredStack4 := 'menuToggleAssignMode'.
            recoveredPC := 4488.
        ].
        recoveredStep = 4488 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4491.
        ].
        recoveredStep = 4491 ifTrue: [
            recoveredStack3 := 2214.
            recoveredPC := 4494.
        ].
        recoveredStep = 4494 ifTrue: [
            recoveredStack4 := 'menuDeassignEvents'.
            recoveredPC := 4498.
        ].
        recoveredStep = 4498 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4501.
        ].
        recoveredStep = 4501 ifTrue: [
            recoveredStack3 := 2220.
            recoveredPC := 4504.
        ].
        recoveredStep = 4504 ifTrue: [
            recoveredStack4 := 'menuEditEnumCopyToModeGroup'.
            recoveredPC := 4508.
        ].
        recoveredStep = 4508 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4511.
        ].
        recoveredStep = 4511 ifTrue: [
            recoveredStack3 := 2221.
            recoveredPC := 4514.
        ].
        recoveredStep = 4514 ifTrue: [
            recoveredStack4 := 'menuEditComponentCopyToRecord'.
            recoveredPC := 4518.
        ].
        recoveredStep = 4518 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4521.
        ].
        recoveredStep = 4521 ifTrue: [
            recoveredStack3 := 2222.
            recoveredPC := 4524.
        ].
        recoveredStep = 4524 ifTrue: [
            recoveredStack4 := 'menuEditModuleCopyToSenderReceiverInterface'.
            recoveredPC := 4528.
        ].
        recoveredStep = 4528 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4531.
        ].
        recoveredStep = 4531 ifTrue: [
            recoveredStack3 := 2223.
            recoveredPC := 4534.
        ].
        recoveredStep = 4534 ifTrue: [
            recoveredStack4 := 'menuSelectInEventList'.
            recoveredPC := 4538.
        ].
        recoveredStep = 4538 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4541.
        ].
        recoveredStep = 4541 ifTrue: [
            recoveredStack3 := 2224.
            recoveredPC := 4544.
        ].
        recoveredStep = 4544 ifTrue: [
            recoveredStack4 := 'menuEditModuleCopyToCalibrationInterface'.
            recoveredPC := 4548.
        ].
        recoveredStep = 4548 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4551.
        ].
        recoveredStep = 4551 ifTrue: [
            recoveredStack3 := 2225.
            recoveredPC := 4554.
        ].
        recoveredStep = 4554 ifTrue: [
            recoveredStack4 := 'menuFilterName'.
            recoveredPC := 4558.
        ].
        recoveredStep = 4558 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4561.
        ].
        recoveredStep = 4561 ifTrue: [
            recoveredStack3 := 2226.
            recoveredPC := 4564.
        ].
        recoveredStep = 4564 ifTrue: [
            recoveredStack4 := 'menuFilterType'.
            recoveredPC := 4568.
        ].
        recoveredStep = 4568 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4571.
        ].
        recoveredStep = 4571 ifTrue: [
            recoveredStack3 := 2227.
            recoveredPC := 4574.
        ].
        recoveredStep = 4574 ifTrue: [
            recoveredStack4 := 'menuFilterKind'.
            recoveredPC := 4578.
        ].
        recoveredStep = 4578 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4581.
        ].
        recoveredStep = 4581 ifTrue: [
            recoveredStack3 := 2228.
            recoveredPC := 4584.
        ].
        recoveredStep = 4584 ifTrue: [
            recoveredStack4 := 'menuFilterScope'.
            recoveredPC := 4588.
        ].
        recoveredStep = 4588 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4591.
        ].
        recoveredStep = 4591 ifTrue: [
            recoveredStack3 := 2229.
            recoveredPC := 4594.
        ].
        recoveredStep = 4594 ifTrue: [
            recoveredStack4 := 'menuFilterExistence'.
            recoveredPC := 4598.
        ].
        recoveredStep = 4598 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4601.
        ].
        recoveredStep = 4601 ifTrue: [
            recoveredStack3 := 2230.
            recoveredPC := 4604.
        ].
        recoveredStep = 4604 ifTrue: [
            recoveredStack4 := 'menuFilterDependency'.
            recoveredPC := 4608.
        ].
        recoveredStep = 4608 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4611.
        ].
        recoveredStep = 4611 ifTrue: [
            recoveredStack3 := 2231.
            recoveredPC := 4614.
        ].
        recoveredStep = 4614 ifTrue: [
            recoveredStack4 := 'menuFilterMemory'.
            recoveredPC := 4618.
        ].
        recoveredStep = 4618 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4621.
        ].
        recoveredStep = 4621 ifTrue: [
            recoveredStack3 := 2232.
            recoveredPC := 4624.
        ].
        recoveredStep = 4624 ifTrue: [
            recoveredStack4 := 'menuFilterCalibration'.
            recoveredPC := 4628.
        ].
        recoveredStep = 4628 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4631.
        ].
        recoveredStep = 4631 ifTrue: [
            recoveredStack3 := 2233.
            recoveredPC := 4634.
        ].
        recoveredStep = 4634 ifTrue: [
            recoveredStack4 := 'menuFilterUnit'.
            recoveredPC := 4638.
        ].
        recoveredStep = 4638 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4641.
        ].
        recoveredStep = 4641 ifTrue: [
            recoveredStack3 := 2234.
            recoveredPC := 4644.
        ].
        recoveredStep = 4644 ifTrue: [
            recoveredStack4 := 'menuFilterComment'.
            recoveredPC := 4648.
        ].
        recoveredStep = 4648 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4651.
        ].
        recoveredStep = 4651 ifTrue: [
            recoveredStack3 := 2235.
            recoveredPC := 4654.
        ].
        recoveredStep = 4654 ifTrue: [
            recoveredStack4 := 'menuFilterMaxSize'.
            recoveredPC := 4658.
        ].
        recoveredStep = 4658 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4661.
        ].
        recoveredStep = 4661 ifTrue: [
            recoveredStack3 := 2236.
            recoveredPC := 4664.
        ].
        recoveredStep = 4664 ifTrue: [
            recoveredStack4 := 'menuToolsAscetDiffOpen'.
            recoveredPC := 4668.
        ].
        recoveredStep = 4668 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4671.
        ].
        recoveredStep = 4671 ifTrue: [
            recoveredStack3 := 2237.
            recoveredPC := 4674.
        ].
        recoveredStep = 4674 ifTrue: [
            recoveredStack4 := 'menuInsertRealizedInterface'.
            recoveredPC := 4678.
        ].
        recoveredStep = 4678 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4681.
        ].
        recoveredStep = 4681 ifTrue: [
            recoveredStack3 := 2238.
            recoveredPC := 4684.
        ].
        recoveredStep = 4684 ifTrue: [
            recoveredStack4 := 'menuEditCompareComponent'.
            recoveredPC := 4688.
        ].
        recoveredStep = 4688 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4691.
        ].
        recoveredStep = 4691 ifTrue: [
            recoveredStack3 := 2239.
            recoveredPC := 4694.
        ].
        recoveredStep = 4694 ifTrue: [
            recoveredStack4 := 'menuEditCompareRecursive'.
            recoveredPC := 4698.
        ].
        recoveredStep = 4698 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4701.
        ].
        recoveredStep = 4701 ifTrue: [
            recoveredStack3 := 2242.
            recoveredPC := 4704.
        ].
        recoveredStep = 4704 ifTrue: [
            recoveredStack4 := 'menuEditModuleCopyToNVDataInterface'.
            recoveredPC := 4708.
        ].
        recoveredStep = 4708 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4711.
        ].
        recoveredStep = 4711 ifTrue: [
            recoveredStack3 := 2240.
            recoveredPC := 4714.
        ].
        recoveredStep = 4714 ifTrue: [
            recoveredStack4 := 'menuEditAddGenComp'.
            recoveredPC := 4718.
        ].
        recoveredStep = 4718 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4721.
        ].
        recoveredStep = 4721 ifTrue: [
            recoveredStack3 := 2241.
            recoveredPC := 4724.
        ].
        recoveredStep = 4724 ifTrue: [
            recoveredStack4 := 'menuEditDeleteGenComp'.
            recoveredPC := 4728.
        ].
        recoveredStep = 4728 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4731.
        ].
        recoveredStep = 4731 ifTrue: [
            recoveredStack3 := 2250.
            recoveredPC := 4734.
        ].
        recoveredStep = 4734 ifTrue: [
            recoveredStack4 := 'menuRemoveMapping'.
            recoveredPC := 4738.
        ].
        recoveredStep = 4738 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4741.
        ].
        recoveredStep = 4741 ifTrue: [
            recoveredStack3 := 2251.
            recoveredPC := 4744.
        ].
        recoveredStep = 4744 ifTrue: [
            recoveredStack4 := 'menuEditMapping'.
            recoveredPC := 4748.
        ].
        recoveredStep = 4748 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4751.
        ].
        recoveredStep = 4751 ifTrue: [
            recoveredStack3 := 2252.
            recoveredPC := 4754.
        ].
        recoveredStep = 4754 ifTrue: [
            recoveredStack4 := 'menuUpdateMapping'.
            recoveredPC := 4758.
        ].
        recoveredStep = 4758 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4761.
        ].
        recoveredStep = 4761 ifTrue: [
            recoveredStack3 := 2253.
            recoveredPC := 4764.
        ].
        recoveredStep = 4764 ifTrue: [
            recoveredStack4 := 'menuCreateInterrunnable'.
            recoveredPC := 4768.
        ].
        recoveredStep = 4768 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4771.
        ].
        recoveredStep = 4771 ifTrue: [
            recoveredStack3 := 2254.
            recoveredPC := 4774.
        ].
        recoveredStep = 4774 ifTrue: [
            recoveredStack4 := 'menuAutoMapping'.
            recoveredPC := 4778.
        ].
        recoveredStep = 4778 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4781.
        ].
        recoveredStep = 4781 ifTrue: [
            recoveredStack3 := 2255.
            recoveredPC := 4784.
        ].
        recoveredStep = 4784 ifTrue: [
            recoveredStack4 := 'menuExportMapping'.
            recoveredPC := 4788.
        ].
        recoveredStep = 4788 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4791.
        ].
        recoveredStep = 4791 ifTrue: [
            recoveredStack3 := 2256.
            recoveredPC := 4794.
        ].
        recoveredStep = 4794 ifTrue: [
            recoveredStack4 := 'menuImportMapping'.
            recoveredPC := 4798.
        ].
        recoveredStep = 4798 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4801.
        ].
        recoveredStep = 4801 ifTrue: [
            recoveredStack3 := 2257.
            recoveredPC := 4804.
        ].
        recoveredStep = 4804 ifTrue: [
            recoveredStack4 := 'menuToggleMapping'.
            recoveredPC := 4808.
        ].
        recoveredStep = 4808 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4811.
        ].
        recoveredStep = 4811 ifTrue: [
            recoveredStack3 := 2258.
            recoveredPC := 4814.
        ].
        recoveredStep = 4814 ifTrue: [
            recoveredStack4 := 'menuRevertChanges'.
            recoveredPC := 4818.
        ].
        recoveredStep = 4818 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4821.
        ].
        recoveredStep = 4821 ifTrue: [
            recoveredStack3 := 2259.
            recoveredPC := 4824.
        ].
        recoveredStep = 4824 ifTrue: [
            recoveredStack4 := 'menuAutoMappingKeep'.
            recoveredPC := 4828.
        ].
        recoveredStep = 4828 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4831.
        ].
        recoveredStep = 4831 ifTrue: [
            recoveredStack3 := 2260.
            recoveredPC := 4834.
        ].
        recoveredStep = 4834 ifTrue: [
            recoveredStack4 := 'menuAutoMappingOverwrite'.
            recoveredPC := 4838.
        ].
        recoveredStep = 4838 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4841.
        ].
        recoveredStep = 4841 ifTrue: [
            recoveredStack3 := 2261.
            recoveredPC := 4844.
        ].
        recoveredStep = 4844 ifTrue: [
            recoveredStack4 := 'menuWindowConvertMethod'.
            recoveredPC := 4848.
        ].
        recoveredStep = 4848 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4851.
        ].
        recoveredStep = 4851 ifTrue: [
            recoveredStack3 := 2300.
            recoveredPC := 4854.
        ].
        recoveredStep = 4854 ifTrue: [
            recoveredStack4 := 'dec'.
            recoveredPC := 4858.
        ].
        recoveredStep = 4858 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4861.
        ].
        recoveredStep = 4861 ifTrue: [
            recoveredStack3 := 2301.
            recoveredPC := 4864.
        ].
        recoveredStep = 4864 ifTrue: [
            recoveredStack4 := 'inc'.
            recoveredPC := 4868.
        ].
        recoveredStep = 4868 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4871.
        ].
        recoveredStep = 4871 ifTrue: [
            recoveredStack3 := 2302.
            recoveredPC := 4874.
        ].
        recoveredStep = 4874 ifTrue: [
            recoveredStack4 := 'decFast'.
            recoveredPC := 4878.
        ].
        recoveredStep = 4878 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4881.
        ].
        recoveredStep = 4881 ifTrue: [
            recoveredStack3 := 2303.
            recoveredPC := 4884.
        ].
        recoveredStep = 4884 ifTrue: [
            recoveredStack4 := 'incFast'.
            recoveredPC := 4888.
        ].
        recoveredStep = 4888 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4891.
        ].
        recoveredStep = 4891 ifTrue: [
            recoveredStack3 := 2304.
            recoveredPC := 4894.
        ].
        recoveredStep = 4894 ifTrue: [
            recoveredStack4 := 'menuFileImportFormatETAS'.
            recoveredPC := 4898.
        ].
        recoveredStep = 4898 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4901.
        ].
        recoveredStep = 4901 ifTrue: [
            recoveredStack3 := 2305.
            recoveredPC := 4904.
        ].
        recoveredStep = 4904 ifTrue: [
            recoveredStack4 := 'menuFileImportFormatASCII'.
            recoveredPC := 4908.
        ].
        recoveredStep = 4908 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4911.
        ].
        recoveredStep = 4911 ifTrue: [
            recoveredStack3 := 2306.
            recoveredPC := 4914.
        ].
        recoveredStep = 4914 ifTrue: [
            recoveredStack4 := 'menuFileImportFormatFAMOSChannel'.
            recoveredPC := 4918.
        ].
        recoveredStep = 4918 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4921.
        ].
        recoveredStep = 4921 ifTrue: [
            recoveredStack3 := 2307.
            recoveredPC := 4924.
        ].
        recoveredStep = 4924 ifTrue: [
            recoveredStack4 := 'menuFileImportFormatFAMOSRecord'.
            recoveredPC := 4928.
        ].
        recoveredStep = 4928 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4931.
        ].
        recoveredStep = 4931 ifTrue: [
            recoveredStack3 := 2308.
            recoveredPC := 4934.
        ].
        recoveredStep = 4934 ifTrue: [
            recoveredStack4 := 'menuFileImportFormatMatlab'.
            recoveredPC := 4938.
        ].
        recoveredStep = 4938 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4941.
        ].
        recoveredStep = 4941 ifTrue: [
            recoveredStack3 := 2309.
            recoveredPC := 4944.
        ].
        recoveredStep = 4944 ifTrue: [
            recoveredStack4 := 'menuFileImportFormatMDF'.
            recoveredPC := 4948.
        ].
        recoveredStep = 4948 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4951.
        ].
        recoveredStep = 4951 ifTrue: [
            recoveredStack3 := 2310.
            recoveredPC := 4954.
        ].
        recoveredStep = 4954 ifTrue: [
            recoveredStack4 := 'menuEHooksStart'.
            recoveredPC := 4958.
        ].
        recoveredStep = 4958 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4961.
        ].
        recoveredStep = 4961 ifTrue: [
            recoveredStack3 := 2311.
            recoveredPC := 4964.
        ].
        recoveredStep = 4964 ifTrue: [
            recoveredStack4 := 'menuEHooksGetLabels'.
            recoveredPC := 4968.
        ].
        recoveredStep = 4968 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4971.
        ].
        recoveredStep = 4971 ifTrue: [
            recoveredStack3 := 2312.
            recoveredPC := 4974.
        ].
        recoveredStep = 4974 ifTrue: [
            recoveredStack4 := 'menuEHooksGetLabelsBackupCopy'.
            recoveredPC := 4978.
        ].
        recoveredStep = 4978 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4981.
        ].
        recoveredStep = 4981 ifTrue: [
            recoveredStack3 := 2313.
            recoveredPC := 4984.
        ].
        recoveredStep = 4984 ifTrue: [
            recoveredStack4 := 'menuEHooksAutoMappingKeep'.
            recoveredPC := 4988.
        ].
        recoveredStep = 4988 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 4991.
        ].
        recoveredStep = 4991 ifTrue: [
            recoveredStack3 := 2314.
            recoveredPC := 4994.
        ].
        recoveredStep = 4994 ifTrue: [
            recoveredStack4 := 'menuEHooksAutoMappingOverwrite'.
            recoveredPC := 4998.
        ].
        recoveredStep = 4998 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5001.
        ].
        recoveredStep = 5001 ifTrue: [
            recoveredStack3 := 2315.
            recoveredPC := 5004.
        ].
        recoveredStep = 5004 ifTrue: [
            recoveredStack4 := 'menuEHooksAutoMappingSubmenu'.
            recoveredPC := 5008.
        ].
        recoveredStep = 5008 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5011.
        ].
        recoveredStep = 5011 ifTrue: [
            recoveredStack3 := 5000.
            recoveredPC := 5014.
        ].
        recoveredStep = 5014 ifTrue: [
            recoveredStack4 := 'menuSCMDatabaseCheck'.
            recoveredPC := 5018.
        ].
        recoveredStep = 5018 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5021.
        ].
        recoveredStep = 5021 ifTrue: [
            recoveredStack3 := 5001.
            recoveredPC := 5024.
        ].
        recoveredStep = 5024 ifTrue: [
            recoveredStack4 := 'menuSCMRemoveBindings'.
            recoveredPC := 5028.
        ].
        recoveredStep = 5028 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5031.
        ].
        recoveredStep = 5031 ifTrue: [
            recoveredStack3 := 5002.
            recoveredPC := 5034.
        ].
        recoveredStep = 5034 ifTrue: [
            recoveredStack4 := 'menuSCMRemoveBindingsForSelection'.
            recoveredPC := 5038.
        ].
        recoveredStep = 5038 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5041.
        ].
        recoveredStep = 5041 ifTrue: [
            recoveredStack3 := 5003.
            recoveredPC := 5044.
        ].
        recoveredStep = 5044 ifTrue: [
            recoveredStack4 := 'menuSCMSelectDriver'.
            recoveredPC := 5048.
        ].
        recoveredStep = 5048 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5051.
        ].
        recoveredStep = 5051 ifTrue: [
            recoveredStack3 := 6000.
            recoveredPC := 5054.
        ].
        recoveredStep = 5054 ifTrue: [
            recoveredStack4 := 'menuViewShowHideTraces'.
            recoveredPC := 5058.
        ].
        recoveredStep = 5058 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5061.
        ].
        recoveredStep = 5061 ifTrue: [
            recoveredStack3 := 7000.
            recoveredPC := 5064.
        ].
        recoveredStep = 5064 ifTrue: [
            recoveredStack4 := 'menuETCChangeFile'.
            recoveredPC := 5068.
        ].
        recoveredStep = 5068 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5071.
        ].
        recoveredStep = 5071 ifTrue: [
            recoveredStack3 := 7001.
            recoveredPC := 5074.
        ].
        recoveredStep = 5074 ifTrue: [
            recoveredStack4 := 'menuETCExportFile'.
            recoveredPC := 5078.
        ].
        recoveredStep = 5078 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5081.
        ].
        recoveredStep = 5081 ifTrue: [
            recoveredStack3 := 9000.
            recoveredPC := 5084.
        ].
        recoveredStep = 5084 ifTrue: [
            recoveredStack4 := 'menuBuildEditCustomBuildSettings'.
            recoveredPC := 5088.
        ].
        recoveredStep = 5088 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5091.
        ].
        recoveredStep = 5091 ifTrue: [
            recoveredStack3 := 9001.
            recoveredPC := 5094.
        ].
        recoveredStep = 5094 ifTrue: [
            recoveredStack4 := 'menuBuildCustomBuild'.
            recoveredPC := 5098.
        ].
        recoveredStep = 5098 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5101.
        ].
        recoveredStep = 5101 ifTrue: [
            recoveredStack3 := 9002.
            recoveredPC := 5104.
        ].
        recoveredStep = 5104 ifTrue: [
            recoveredStack4 := 'menuFileDatabaseCloseAndDelete'.
            recoveredPC := 5108.
        ].
        recoveredStep = 5108 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5111.
        ].
        recoveredStep = 5111 ifTrue: [
            recoveredStack3 := 9003.
            recoveredPC := 5114.
        ].
        recoveredStep = 5114 ifTrue: [
            recoveredStack4 := 'menuOpenCloseOptionsEditorPerformance'.
            recoveredPC := 5118.
        ].
        recoveredStep = 5118 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5121.
        ].
        recoveredStep = 5121 ifTrue: [
            recoveredStack3 := 9004.
            recoveredPC := 5124.
        ].
        recoveredStep = 5124 ifTrue: [
            recoveredStack4 := 'menuExportAllDBsInAxl'.
            recoveredPC := 5128.
        ].
        recoveredStep = 5128 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5131.
        ].
        recoveredStep = 5131 ifTrue: [
            recoveredStack3 := 9005.
            recoveredPC := 5134.
        ].
        recoveredStep = 5134 ifTrue: [
            recoveredStack4 := 'menuImportAllExpExportFilesInDirectory'.
            recoveredPC := 5138.
        ].
        recoveredStep = 5138 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5141.
        ].
        recoveredStep = 5141 ifTrue: [
            recoveredStack3 := 9006.
            recoveredPC := 5144.
        ].
        recoveredStep = 5144 ifTrue: [
            recoveredStack4 := 'menuOpenCloseDBPerformance'.
            recoveredPC := 5148.
        ].
        recoveredStep = 5148 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5151.
        ].
        recoveredStep = 5151 ifTrue: [
            recoveredStack3 := 9007.
            recoveredPC := 5154.
        ].
        recoveredStep = 5154 ifTrue: [
            recoveredStack4 := 'menuSetDebugInfoMailslots'.
            recoveredPC := 5158.
        ].
        recoveredStep = 5158 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5161.
        ].
        recoveredStep = 5161 ifTrue: [
            recoveredStack3 := 9008.
            recoveredPC := 5164.
        ].
        recoveredStep = 5164 ifTrue: [
            recoveredStack4 := 'menuImportAllAxlExportFilesInDirectory'.
            recoveredPC := 5168.
        ].
        recoveredStep = 5168 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5171.
        ].
        recoveredStep = 5171 ifTrue: [
            recoveredStack3 := 9009.
            recoveredPC := 5174.
        ].
        recoveredStep = 5174 ifTrue: [
            recoveredStack4 := 'menuReadAllDatFilesInDirectory'.
            recoveredPC := 5178.
        ].
        recoveredStep = 5178 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5181.
        ].
        recoveredStep = 5181 ifTrue: [
            recoveredStack3 := 9010.
            recoveredPC := 5184.
        ].
        recoveredStep = 5184 ifTrue: [
            recoveredStack4 := 'menuFindallDepParamFormulas'.
            recoveredPC := 5188.
        ].
        recoveredStep = 5188 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5191.
        ].
        recoveredStep = 5191 ifTrue: [
            recoveredStack3 := 9011.
            recoveredPC := 5194.
        ].
        recoveredStep = 5194 ifTrue: [
            recoveredStack4 := 'menuSetDebugInfoGraphics'.
            recoveredPC := 5198.
        ].
        recoveredStep = 5198 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5201.
        ].
        recoveredStep = 5201 ifTrue: [
            recoveredStack3 := 9012.
            recoveredPC := 5204.
        ].
        recoveredStep = 5204 ifTrue: [
            recoveredStack4 := 'menuFileOpenExplorerForDatabase'.
            recoveredPC := 5208.
        ].
        recoveredStep = 5208 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5211.
        ].
        recoveredStep = 5211 ifTrue: [
            recoveredStack3 := 9013.
            recoveredPC := 5214.
        ].
        recoveredStep = 5214 ifTrue: [
            recoveredStack4 := 'menuResetSchemaCache'.
            recoveredPC := 5218.
        ].
        recoveredStep = 5218 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5221.
        ].
        recoveredStep = 5221 ifTrue: [
            recoveredStack3 := 9014.
            recoveredPC := 5224.
        ].
        recoveredStep = 5224 ifTrue: [
            recoveredStack4 := 'menuMetaDataManagerInspectMetaData'.
            recoveredPC := 5228.
        ].
        recoveredStep = 5228 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5231.
        ].
        recoveredStep = 5231 ifTrue: [
            recoveredStack3 := 9015.
            recoveredPC := 5234.
        ].
        recoveredStep = 5234 ifTrue: [
            recoveredStack4 := 'menuMetaDataManagerClean'.
            recoveredPC := 5238.
        ].
        recoveredStep = 5238 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5241.
        ].
        recoveredStep = 5241 ifTrue: [
            recoveredStack3 := 9016.
            recoveredPC := 5244.
        ].
        recoveredStep = 5244 ifTrue: [
            recoveredStack4 := 'menuMetaDataManagerClear'.
            recoveredPC := 5248.
        ].
        recoveredStep = 5248 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5251.
        ].
        recoveredStep = 5251 ifTrue: [
            recoveredStack3 := 9017.
            recoveredPC := 5254.
        ].
        recoveredStep = 5254 ifTrue: [
            recoveredStack4 := 'menuASDSCMDataIntegrityTest'.
            recoveredPC := 5258.
        ].
        recoveredStep = 5258 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5261.
        ].
        recoveredStep = 5261 ifTrue: [
            recoveredStack3 := 9018.
            recoveredPC := 5264.
        ].
        recoveredStep = 5264 ifTrue: [
            recoveredStack4 := 'menuMetaDataManagerMetaDataWatcher'.
            recoveredPC := 5268.
        ].
        recoveredStep = 5268 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5271.
        ].
        recoveredStep = 5271 ifTrue: [
            recoveredStack3 := 9019.
            recoveredPC := 5274.
        ].
        recoveredStep = 5274 ifTrue: [
            recoveredStack4 := 'menuInspectMapping'.
            recoveredPC := 5278.
        ].
        recoveredStep = 5278 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5281.
        ].
        recoveredStep = 5281 ifTrue: [
            recoveredStack3 := 9020.
            recoveredPC := 5284.
        ].
        recoveredStep = 5284 ifTrue: [
            recoveredStack4 := 'menuBuildCustomBuildTargetDefault'.
            recoveredPC := 5288.
        ].
        recoveredStep = 5288 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 5291.
        ].
        recoveredStep = 5291 ifTrue: [
            recoveredStack3 := 9021.
            recoveredPC := 5294.
        ].
        recoveredStep = 5294 ifTrue: [
            recoveredStack4 := 'menuInspectEHooksConfig'.
            recoveredPC := 5298.
        ].
        recoveredStep = 5298 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 5300.
        ].
        recoveredStep = 5300 ifTrue: [
            recoveredPC := 5301.
        ].
        recoveredStep = 5301 ifTrue: [
            recoveredStack1 := MenuIDs.
            recoveredPC := 5303.
        ].
        recoveredStep = 5303 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

