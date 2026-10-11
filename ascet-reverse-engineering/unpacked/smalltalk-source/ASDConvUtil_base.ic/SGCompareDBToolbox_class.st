"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDConvUtil_base.ic method 0x200002a0; bytecode file offset 0x9ce0"
!SGCompareDBToolbox class methodsFor: 'recovered'!
do: recoveredArg1 withDBInterface: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDConvUtil_base.ic method 0x20000574; bytecode file offset 0x9fc4"
!SGCompareDBToolbox class methodsFor: 'recovered'!
toolboxDescriptor
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EtasToolboxDescriptor.
    recoveredValue1 := (recoveredValue0) createLabel: ('ASCET Compare Database Package') packageName: ('BIP-ConvertUtilities') application: ('None') fileName: (nil).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDConvUtil_base.ic method 0x2000202c; bytecode file offset 0xbabc"
!SGCompareDBToolbox class methodsFor: 'recovered'!
compareDatabase: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack5 := 'Compare database...'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectDatabasePath: (recoveredStack2) newDBEnabled: (recoveredStack3) forceNewDB: (recoveredStack4) title: (recoveredStack5).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathIncludesWorkspace: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPath.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) location.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPath.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasSamePathName: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 'You have selected the current database. Compare aborted !!'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock77Value0 recoveredBlock77Value1 recoveredBlock77Value2 recoveredBlock77Value3 recoveredBlock77Value4 recoveredBlock77Value5 recoveredBlock77Value6 recoveredBlock77Value7 recoveredBlock77Value8 |
    recoveredBlock77Value0 := recoveredArg1.
    recoveredBlock77Value1 := [:recoveredBlock77Block87Arg1 | 
    | recoveredBlock77Block87Value0 recoveredBlock77Block87Value1 recoveredBlock77Block87Value2 recoveredBlock77Block87Value3 |
    recoveredBlock77Block87Value0 := recoveredArg1.
    recoveredBlock77Block87Value1 := recoveredLocal1.
    recoveredBlock77Block87Value2 := recoveredBlock77Block87Arg1.
    recoveredBlock77Block87Value3 := (self) compareDatabaseUI: (recoveredBlock77Block87Value0) newDBInterface: (recoveredBlock77Block87Value1) performanceWindow: (recoveredBlock77Block87Value2).
    recoveredBlock77Block87Value3
].
    recoveredBlock77Value2 := (self) library.
    recoveredBlock77Value3 := (recoveredBlock77Value2) location.
    recoveredBlock77Value4 := ('Compare Databases: ') , (recoveredBlock77Value3).
    recoveredBlock77Value5 := (recoveredBlock77Value4) , (' with: ').
    recoveredBlock77Value6 := recoveredLocal1.
    recoveredBlock77Value7 := (recoveredBlock77Value5) , (recoveredBlock77Value6).
    recoveredBlock77Value8 := (recoveredBlock77Value0) execWithProgressDialog: (recoveredBlock77Value1) message: (recoveredBlock77Value7) showProgress: (false) title: ('ASCET').
    recoveredBlock77Value8
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) doWithoutRedraw: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x2000382c; bytecode file offset 0xd308"
!SGCompareDBToolbox class methodsFor: 'recovered'!
compareDatabaseUI: recoveredArg1 newDBInterface: recoveredArg2 performanceWindow: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDBInterfaceGlobal.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOnly.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) changePath: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := 'compare.log'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) commit.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := ' in '.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := ':'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := DBAdministrationController.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) library.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) compareDatabase: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := 'Could not open database that should be compared.'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) addErrorText: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 267] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := 'Comparing keys...'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) messageString: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := 'Database: '.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) location.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := 'compared with: '.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := 'different'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 175].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := 'Different '.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) logObjectLabels: (recoveredStack1) preLabel: (recoveredStack2) postLabel: (recoveredStack3) monitor: (recoveredStack4).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := 'deleted'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 207].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := 'Missing '.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) logObjectLabels: (recoveredStack1) preLabel: (recoveredStack2) postLabel: (recoveredStack3) monitor: (recoveredStack4).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock208Stack0 recoveredBlock208Stack1 recoveredBlock208Stack2 recoveredBlock208Stack3 recoveredBlock208Stack4 recoveredBlock208Stack5 recoveredBlock208Stack6 recoveredBlock208PC recoveredBlock208Step recoveredBlock208Done recoveredBlock208Result |
    recoveredBlock208Stack0 := self.
    recoveredBlock208PC := 214.
    recoveredBlock208Done := false.
    [recoveredBlock208Done not] whileTrue: [
        recoveredBlock208Step := recoveredBlock208PC.
        recoveredBlock208Step = 214 ifTrue: [
            recoveredBlock208Stack1 := nil.
            recoveredBlock208PC := 215.
        ].
        recoveredBlock208Step = 215 ifTrue: [
            recoveredBlock208Stack2 := recoveredLocal7.
            recoveredBlock208PC := 218.
        ].
        recoveredBlock208Step = 218 ifTrue: [
            recoveredBlock208Stack3 := 'new'.
            recoveredBlock208PC := 220.
        ].
        recoveredBlock208Step = 220 ifTrue: [
            recoveredBlock208Stack2 := (recoveredBlock208Stack2) at: (recoveredBlock208Stack3).
            recoveredBlock208PC := 222.
        ].
        recoveredBlock208Step = 222 ifTrue: [
            recoveredBlock208Stack3 := recoveredBlock208Stack2.
            recoveredBlock208PC := 223.
        ].
        recoveredBlock208Step = 223 ifTrue: [
            recoveredLocal8 := recoveredBlock208Stack3.
            recoveredBlock208PC := 226.
        ].
        recoveredBlock208Step = 226 ifTrue: [
            recoveredBlock208Stack2 := (recoveredBlock208Stack2) notEmpty.
            recoveredBlock208PC := 228.
        ].
        recoveredBlock208Step = 228 ifTrue: [
            (recoveredBlock208Stack2) ifTrue: [recoveredBlock208PC := 232] ifFalse: [recoveredBlock208PC := 248].
        ].
        recoveredBlock208Step = 232 ifTrue: [
            recoveredBlock208PC := 233.
        ].
        recoveredBlock208Step = 233 ifTrue: [
            recoveredBlock208Stack1 := self.
            recoveredBlock208PC := 234.
        ].
        recoveredBlock208Step = 234 ifTrue: [
            recoveredBlock208Stack2 := recoveredLocal8.
            recoveredBlock208PC := 237.
        ].
        recoveredBlock208Step = 237 ifTrue: [
            recoveredBlock208Stack3 := 'Additional '.
            recoveredBlock208PC := 239.
        ].
        recoveredBlock208Step = 239 ifTrue: [
            recoveredBlock208Stack4 := recoveredLocal3.
            recoveredBlock208PC := 242.
        ].
        recoveredBlock208Step = 242 ifTrue: [
            recoveredBlock208Stack5 := recoveredLocal9.
            recoveredBlock208PC := 245.
        ].
        recoveredBlock208Step = 245 ifTrue: [
            recoveredBlock208Stack1 := (recoveredBlock208Stack1) logObjectLabels: (recoveredBlock208Stack2) preLabel: (recoveredBlock208Stack3) postLabel: (recoveredBlock208Stack4) monitor: (recoveredBlock208Stack5).
            recoveredBlock208PC := 248.
        ].
        recoveredBlock208Step = 248 ifTrue: [
            recoveredBlock208Result := recoveredBlock208Stack1.
            recoveredBlock208Done := true.
        ].
    ].
    recoveredBlock208Result
].
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) withDBInterface: (recoveredStack2).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := '...Ready.'.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) closeLocalDatabase.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDConvUtil_base.ic method 0x20004644; bytecode file offset 0xe0f4"
!SGCompareDBToolbox class methodsFor: 'recovered'!
logObjectLabels: recoveredArg1 preLabel: recoveredArg2 postLabel: recoveredArg3 monitor: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGDBProxyManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) libraryLabels.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 'Libraries'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 recoveredBlock52Value3 |
    recoveredBlock52Value0 := recoveredArg4.
    recoveredBlock52Value1 := recoveredBlock52Value0.
    (recoveredBlock52Value1) cr.
    recoveredBlock52Value2 := recoveredBlock52Arg1.
    recoveredBlock52Value3 := (recoveredBlock52Value0) nextPutAll: (recoveredBlock52Value2).
    recoveredBlock52Value3
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) folderLabels.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := 'Folders'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := [:recoveredBlock110Arg1 | 
    | recoveredBlock110Value0 recoveredBlock110Value1 recoveredBlock110Value2 recoveredBlock110Value3 |
    recoveredBlock110Value0 := recoveredArg4.
    recoveredBlock110Value1 := recoveredBlock110Value0.
    (recoveredBlock110Value1) cr.
    recoveredBlock110Value2 := recoveredBlock110Arg1.
    recoveredBlock110Value3 := (recoveredBlock110Value0) nextPutAll: (recoveredBlock110Value2).
    recoveredBlock110Value3
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) componentLabels.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := 'Components'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := [:recoveredBlock168Arg1 | 
    | recoveredBlock168Value0 recoveredBlock168Value1 recoveredBlock168Value2 recoveredBlock168Value3 |
    recoveredBlock168Value0 := recoveredArg4.
    recoveredBlock168Value1 := recoveredBlock168Value0.
    (recoveredBlock168Value1) cr.
    recoveredBlock168Value2 := recoveredBlock168Arg1.
    recoveredBlock168Value3 := (recoveredBlock168Value0) nextPutAll: (recoveredBlock168Value2).
    recoveredBlock168Value3
].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectLabels.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 244].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := 'Projects'.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := [:recoveredBlock226Arg1 | 
    | recoveredBlock226Value0 recoveredBlock226Value1 recoveredBlock226Value2 recoveredBlock226Value3 |
    recoveredBlock226Value0 := recoveredArg4.
    recoveredBlock226Value1 := recoveredBlock226Value0.
    (recoveredBlock226Value1) cr.
    recoveredBlock226Value2 := recoveredBlock226Arg1.
    recoveredBlock226Value3 := (recoveredBlock226Value0) nextPutAll: (recoveredBlock226Value2).
    recoveredBlock226Value3
].
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) configLabels.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 258] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack3 := 'Data / Implementations'.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := [:recoveredBlock284Arg1 | 
    | recoveredBlock284Value0 recoveredBlock284Value1 recoveredBlock284Value2 recoveredBlock284Value3 |
    recoveredBlock284Value0 := recoveredArg4.
    recoveredBlock284Value1 := recoveredBlock284Value0.
    (recoveredBlock284Value1) cr.
    recoveredBlock284Value2 := recoveredBlock284Arg1.
    recoveredBlock284Value3 := (recoveredBlock284Value0) nextPutAll: (recoveredBlock284Value2).
    recoveredBlock284Value3
].
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) classConfigLabels.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 316] ifFalse: [recoveredPC := 360].
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack3 := 'Global Variables - Data / Implementations'.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack2 := [:recoveredBlock342Arg1 | 
    | recoveredBlock342Value0 recoveredBlock342Value1 recoveredBlock342Value2 recoveredBlock342Value3 |
    recoveredBlock342Value0 := recoveredArg4.
    recoveredBlock342Value1 := recoveredBlock342Value0.
    (recoveredBlock342Value1) cr.
    recoveredBlock342Value2 := recoveredBlock342Arg1.
    recoveredBlock342Value3 := (recoveredBlock342Value0) nextPutAll: (recoveredBlock342Value2).
    recoveredBlock342Value3
].
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := (recoveredStack1) osLogicLabels.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 374] ifFalse: [recoveredPC := 418].
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack3 := 'OperatingSystemLogic'.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack2 := [:recoveredBlock400Arg1 | 
    | recoveredBlock400Value0 recoveredBlock400Value1 recoveredBlock400Value2 recoveredBlock400Value3 |
    recoveredBlock400Value0 := recoveredArg4.
    recoveredBlock400Value1 := recoveredBlock400Value0.
    (recoveredBlock400Value1) cr.
    recoveredBlock400Value2 := recoveredBlock400Arg1.
    recoveredBlock400Value3 := (recoveredBlock400Value0) nextPutAll: (recoveredBlock400Value2).
    recoveredBlock400Value3
].
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphicsLabels.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 432] ifFalse: [recoveredPC := 476].
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack3 := 'Blockdiagrams'.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack2 := [:recoveredBlock458Arg1 | 
    | recoveredBlock458Value0 recoveredBlock458Value1 recoveredBlock458Value2 recoveredBlock458Value3 |
    recoveredBlock458Value0 := recoveredArg4.
    recoveredBlock458Value1 := recoveredBlock458Value0.
    (recoveredBlock458Value1) cr.
    recoveredBlock458Value2 := recoveredBlock458Arg1.
    recoveredBlock458Value3 := (recoveredBlock458Value0) nextPutAll: (recoveredBlock458Value2).
    recoveredBlock458Value3
].
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := (recoveredStack1) externalCodeLabels.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 490] ifFalse: [recoveredPC := 534].
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack3 := 'C-Codes'.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack2 := [:recoveredBlock516Arg1 | 
    | recoveredBlock516Value0 recoveredBlock516Value1 recoveredBlock516Value2 recoveredBlock516Value3 |
    recoveredBlock516Value0 := recoveredArg4.
    recoveredBlock516Value1 := recoveredBlock516Value0.
    (recoveredBlock516Value1) cr.
    recoveredBlock516Value2 := recoveredBlock516Arg1.
    recoveredBlock516Value3 := (recoveredBlock516Value0) nextPutAll: (recoveredBlock516Value2).
    recoveredBlock516Value3
].
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack1 := (recoveredStack1) protocolLabels.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 548] ifFalse: [recoveredPC := 592].
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack3 := 'Channel Protocols'.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack2 := [:recoveredBlock574Arg1 | 
    | recoveredBlock574Value0 recoveredBlock574Value1 recoveredBlock574Value2 recoveredBlock574Value3 |
    recoveredBlock574Value0 := recoveredArg4.
    recoveredBlock574Value1 := recoveredBlock574Value0.
    (recoveredBlock574Value1) cr.
    recoveredBlock574Value2 := recoveredBlock574Arg1.
    recoveredBlock574Value3 := (recoveredBlock574Value0) nextPutAll: (recoveredBlock574Value2).
    recoveredBlock574Value3
].
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack1 := (recoveredStack1) textDocumentationLabels.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 606] ifFalse: [recoveredPC := 650].
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack3 := 'Notes'.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack2 := [:recoveredBlock632Arg1 | 
    | recoveredBlock632Value0 recoveredBlock632Value1 recoveredBlock632Value2 recoveredBlock632Value3 |
    recoveredBlock632Value0 := recoveredArg4.
    recoveredBlock632Value1 := recoveredBlock632Value0.
    (recoveredBlock632Value1) cr.
    recoveredBlock632Value2 := recoveredBlock632Arg1.
    recoveredBlock632Value3 := (recoveredBlock632Value0) nextPutAll: (recoveredBlock632Value2).
    recoveredBlock632Value3
].
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

