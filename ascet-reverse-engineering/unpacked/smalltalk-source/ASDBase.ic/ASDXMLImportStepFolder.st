"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2009dfd0; bytecode file offset 0x99a8ec"
!ASDXMLImportStepFolder methodsFor: 'recovered'!
baseName
    (self) runtimeAssert: (false) additionalInfo: ('FolderSteps do not have a baseName').
    ^self
! !

"ASDBase.ic method 0x201120c0; bytecode file offset 0xa0e97c"
!ASDXMLImportStepFolder methodsFor: 'recovered'!
initOn: recoveredArg1 importPath: recoveredArg2 namespace: recoveredArg3 ext: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg4.
    super initOn: (recoveredValue0) importPath: (recoveredValue1) ext: (recoveredValue2).
    recoveredValue3 := recoveredArg3.
    namespace := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2043747c; bytecode file offset 0xd33d78"
!ASDXMLImportStepFolder methodsFor: 'recovered'!
readFolder: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Die') == ('TFS_325209').
    recoveredLocal1 := nil.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := 'nameSpace'.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) getString: (recoveredBlock19Stack2).
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            path := recoveredBlock19Stack1.
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack1 := path.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) last.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack2 := $/.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) = (recoveredBlock19Stack2).
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 52] ifFalse: [recoveredBlock19PC := 44].
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack1 := path.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack2 := '/'.
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) , (recoveredBlock19Stack2).
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            path := recoveredBlock19Stack1.
            recoveredBlock19PC := 52.
        ].
        recoveredBlock19Step = 52 ifTrue: [
            recoveredBlock19Stack1 := path.
            recoveredBlock19PC := 54.
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack3 := 'name'.
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) getString: (recoveredBlock19Stack3).
            recoveredBlock19PC := 59.
        ].
        recoveredBlock19Step = 59 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) , (recoveredBlock19Stack2).
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            path := recoveredBlock19Stack1.
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 64.
        ].
        recoveredBlock19Step = 64 ifTrue: [
            recoveredBlock19Stack2 := 'TimeStamp'.
            recoveredBlock19PC := 66.
        ].
        recoveredBlock19Step = 66 ifTrue: [
            recoveredBlock19Stack3 := [:block280fdd50Arg1 | 
    nil
].
            recoveredBlock19PC := 68.
        ].
        recoveredBlock19Step = 68 ifTrue: [
            recoveredBlock19PC := 74.
        ].
        recoveredBlock19Step = 74 ifTrue: [
            (recoveredBlock19Stack1) optional: (recoveredBlock19Stack2) do: (recoveredBlock19Stack3).
            recoveredBlock19PC := 76.
        ].
        recoveredBlock19Step = 76 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 77.
        ].
        recoveredBlock19Step = 77 ifTrue: [
            recoveredBlock19Stack2 := 'Comment'.
            recoveredBlock19PC := 79.
        ].
        recoveredBlock19Step = 79 ifTrue: [
            recoveredBlock19Stack3 := [:block280fdd74Arg1 | 
    | block280fdd74Value0 block280fdd74Value1 |
    block280fdd74Value0 := block280fdd74Arg1.
    block280fdd74Value1 := (block280fdd74Value0) cData.
    block280fdd74Value1
].
            recoveredBlock19PC := 81.
        ].
        recoveredBlock19Step = 81 ifTrue: [
            recoveredBlock19PC := 88.
        ].
        recoveredBlock19Step = 88 ifTrue: [
            recoveredBlock19Stack4 := [].
            recoveredBlock19PC := 90.
        ].
        recoveredBlock19Step = 90 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) optional: (recoveredBlock19Stack2) do: (recoveredBlock19Stack3) ifNot: (recoveredBlock19Stack4).
            recoveredBlock19PC := 93.
        ].
        recoveredBlock19Step = 93 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 94.
        ].
        recoveredBlock19Step = 94 ifTrue: [
            recoveredLocal1 := recoveredBlock19Stack2.
            recoveredBlock19PC := 97.
        ].
        recoveredBlock19Step = 97 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    recoveredValue3 := handler.
    (recoveredValue1) required: ('Folder') do: (recoveredValue2) ifNot: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x205b146c; bytecode file offset 0xeaddb4"
!ASDXMLImportStepFolder methodsFor: 'recovered'!
performStep
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := namespace.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := importPath.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := $\.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) allSubStrings: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) asOrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) normalizePath: (recoveredStack2).
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
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) removeFirst.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := [:block28116bfcArg1 :block28116bfcArg2 | 
    | block28116bfcValue0 block28116bfcValue1 block28116bfcValue2 block28116bfcValue3 |
    block28116bfcValue0 := block28116bfcArg1.
    block28116bfcValue1 := (block28116bfcValue0) , ('\').
    block28116bfcValue2 := block28116bfcArg2.
    block28116bfcValue3 := (block28116bfcValue1) , (block28116bfcValue2).
    block28116bfcValue3
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := '\folder.'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := controller.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) findExtensionFor: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) folders.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 309] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'Call_73107'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 201].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDirectory: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 201] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock116Local1 recoveredBlock116Value0 recoveredBlock116Value1 recoveredBlock116Value2 recoveredBlock116Value3 recoveredBlock116Value4 recoveredBlock116Value5 |
    recoveredBlock116Value0 := [:recoveredBlock116Block122Arg1 | 
    | recoveredBlock116Block122Value0 recoveredBlock116Block122Value1 |
    recoveredBlock116Block122Value0 := recoveredBlock116Block122Arg1.
    recoveredBlock116Block122Value1 := (self) unexpectedElement: (recoveredBlock116Block122Value0).
    recoveredBlock116Block122Value1
].
    handler := recoveredBlock116Value0.
    recoveredBlock116Value1 := recoveredLocal5.
    recoveredBlock116Value2 := (self) readDOMTreeFromFile: (recoveredBlock116Value1) schema: ('component_main.xsd') verify: (true).
    recoveredBlock116Local1 := recoveredBlock116Value2.
    recoveredBlock116Value3 := recoveredBlock116Local1.
    recoveredBlock116Value4 := (self) readFolder: (recoveredBlock116Value3).
    recoveredBlock116Value5 := recoveredBlock116Value4.
    recoveredLocal2 := recoveredBlock116Value5.
    recoveredBlock116Value4
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := [:recoveredBlock155Arg1 | 
    | recoveredBlock155Stack0 recoveredBlock155Stack1 recoveredBlock155Stack2 recoveredBlock155Stack3 recoveredBlock155Stack4 recoveredBlock155Stack5 recoveredBlock155Stack6 recoveredBlock155PC recoveredBlock155Step recoveredBlock155Done recoveredBlock155Result |
    recoveredBlock155Stack0 := self.
    recoveredBlock155PC := 162.
    recoveredBlock155Done := false.
    [recoveredBlock155Done not] whileTrue: [
        recoveredBlock155Step := recoveredBlock155PC.
        recoveredBlock155Step = 162 ifTrue: [
            recoveredBlock155Stack1 := issue.
            recoveredBlock155PC := 164.
        ].
        recoveredBlock155Step = 164 ifTrue: [
            (recoveredBlock155Stack1 == nil) ifTrue: [recoveredBlock155PC := 178] ifFalse: [recoveredBlock155PC := 168].
        ].
        recoveredBlock155Step = 168 ifTrue: [
            recoveredBlock155Stack1 := controller.
            recoveredBlock155PC := 170.
        ].
        recoveredBlock155Step = 170 ifTrue: [
            recoveredBlock155Stack2 := issue.
            recoveredBlock155PC := 172.
        ].
        recoveredBlock155Step = 172 ifTrue: [
            (recoveredBlock155Stack1) addIssue: (recoveredBlock155Stack2).
            recoveredBlock155PC := 174.
        ].
        recoveredBlock155Step = 174 ifTrue: [
            recoveredBlock155PC := 194.
        ].
        recoveredBlock155Step = 178 ifTrue: [
            recoveredBlock155Stack1 := controller.
            recoveredBlock155PC := 180.
        ].
        recoveredBlock155Step = 180 ifTrue: [
            recoveredBlock155Stack2 := ASDXMLImportIssueFileNotFound.
            recoveredBlock155PC := 182.
        ].
        recoveredBlock155Step = 182 ifTrue: [
            recoveredBlock155Stack2 := (recoveredBlock155Stack2) new.
            recoveredBlock155PC := 184.
        ].
        recoveredBlock155Step = 184 ifTrue: [
            recoveredBlock155Stack3 := nil.
            recoveredBlock155PC := 185.
        ].
        recoveredBlock155Step = 185 ifTrue: [
            recoveredBlock155Stack4 := recoveredBlock155Arg1.
            recoveredBlock155PC := 186.
        ].
        recoveredBlock155Step = 186 ifTrue: [
            recoveredBlock155Stack4 := (recoveredBlock155Stack4) argument.
            recoveredBlock155PC := 188.
        ].
        recoveredBlock155Step = 188 ifTrue: [
            recoveredBlock155Stack5 := true.
            recoveredBlock155PC := 189.
        ].
        recoveredBlock155Step = 189 ifTrue: [
            recoveredBlock155Stack2 := (recoveredBlock155Stack2) initOn: (recoveredBlock155Stack3) file: (recoveredBlock155Stack4) fatal: (recoveredBlock155Stack5).
            recoveredBlock155PC := 192.
        ].
        recoveredBlock155Step = 192 ifTrue: [
            (recoveredBlock155Stack1) addIssue: (recoveredBlock155Stack2).
            recoveredBlock155PC := 194.
        ].
        recoveredBlock155Step = 194 ifTrue: [
            recoveredBlock155Stack1 := recoveredBlock155Arg1.
            recoveredBlock155PC := 195.
        ].
        recoveredBlock155Step = 195 ifTrue: [
            recoveredBlock155Stack2 := nil.
            recoveredBlock155PC := 196.
        ].
        recoveredBlock155Step = 196 ifTrue: [
            recoveredBlock155Stack1 := (recoveredBlock155Stack1) exitWith: (recoveredBlock155Stack2).
            recoveredBlock155PC := 198.
        ].
        recoveredBlock155Step = 198 ifTrue: [
            recoveredBlock155Result := recoveredBlock155Stack1.
            recoveredBlock155Done := true.
        ].
    ].
    recoveredBlock155Result
].
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) folders.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := $\.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentFrom: (recoveredStack2) sep: (recoveredStack3).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := $/.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentFrom: (recoveredStack2) sep: (recoveredStack3).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 276].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := ASDXMLImportStepFolder.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := controller.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack5 := extension.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) importPath: (recoveredStack3) namespace: (recoveredStack4) ext: (recoveredStack5).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack1) performStep.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

