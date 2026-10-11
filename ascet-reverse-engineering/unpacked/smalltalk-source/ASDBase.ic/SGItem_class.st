"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d12c; bytecode file offset 0x909ab8"
!SGItem class methodsFor: 'recovered'!
apiDiagramTypeFor: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x20020b70; bytecode file offset 0x92209c"
!SGItem class methodsFor: 'recovered'!
loadCopyKey
    ^'loadCopy'
! !

"ASDBase.ic method 0x200265cc; bytecode file offset 0x923928"
!SGItem class methodsFor: 'recovered'!
apiItemTypes
    ^#()
! !

"ASDBase.ic method 0x2007a8bc; bytecode file offset 0x97c330"
!SGItem class methodsFor: 'recovered'!
isFolder
    ^false
! !

"ASDBase.ic method 0x20086ef0; bytecode file offset 0x9837f0"
!SGItem class methodsFor: 'recovered'!
dbXmlFixReferences: recoveredArg1 basePath: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) fixMain: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20087580; bytecode file offset 0x983e3c"
!SGItem class methodsFor: 'recovered'!
dbXmlCopy: recoveredArg1 into: recoveredArg2 name: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) workspace.
    (recoveredValue1) catalog.
    ^self
! !

"ASDBase.ic method 0x2017e768; bytecode file offset 0xa7b0dc"
!SGItem class methodsFor: 'recovered'!
InConversionObject
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := InConversionObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            InConversionObject := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := InConversionObject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20237d00; bytecode file offset 0xb345d8"
!SGItem class methodsFor: 'recovered'!
dbXmlRelatedFiles: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Util.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) basePath.
    recoveredValue3 := (recoveredValue0) splitPath: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := CfsDirectoryDescriptor.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) at: (2).
    recoveredValue8 := (recoveredValue7) , ('.*').
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) at: (1).
    recoveredValue11 := (recoveredValue5) list: (recoveredValue8) in: (recoveredValue10).
    (recoveredValue4) at: (2) put: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x2027193c; bytecode file offset 0xb6e204"
!SGItem class methodsFor: 'recovered'!
dbXmlDeleteFromDisk: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlRelatedFiles: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) at: (2).
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 |
    recoveredBlock17Value0 := CfsDirectoryDescriptor.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := recoveredLocal1.
    recoveredBlock17Value3 := (recoveredBlock17Value2) at: (1).
    recoveredBlock17Value4 := (recoveredBlock17Value0) deleteFiles: (recoveredBlock17Value1) in: (recoveredBlock17Value3).
    recoveredBlock17Value4
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20319db0; bytecode file offset 0xc16688"
!SGItem class methodsFor: 'recovered'!
dbXmlRelatedFileNames: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlRelatedFiles: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue4) at: (2).
    recoveredValue6 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 recoveredBlock23Value6 recoveredBlock23Value7 |
    recoveredBlock23Value0 := recoveredLocal1.
    recoveredBlock23Value1 := recoveredLocal2.
    recoveredBlock23Value2 := (recoveredBlock23Value1) at: (1).
    recoveredBlock23Value3 := (recoveredBlock23Value2) , ('\').
    recoveredBlock23Value4 := recoveredBlock23Arg1.
    recoveredBlock23Value5 := (recoveredBlock23Value3) , (recoveredBlock23Value4).
    recoveredBlock23Value6 := (recoveredBlock23Value5) removeDoubleBackslashes.
    recoveredBlock23Value7 := (recoveredBlock23Value0) add: (recoveredBlock23Value6).
    recoveredBlock23Value7
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x205baffc; bytecode file offset 0xeb7964"
!SGItem class methodsFor: 'recovered'!
dbXmlMove: recoveredArg1 to: recoveredArg2 name: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOnDisk.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 297].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbXmlRelatedFiles: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) basePath.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'Call_348855'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) ensurePath: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 'Failed to create folder: %1'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) addErrorText: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'Can not move item %1\from %2\to %3.\ \Reason: Failed to create target folder.'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 recoveredBlock105Value3 recoveredBlock105Value4 recoveredBlock105Value5 recoveredBlock105Value6 recoveredBlock105Value7 recoveredBlock105Value8 recoveredBlock105Value9 recoveredBlock105Value10 recoveredBlock105Value11 recoveredBlock105Value12 recoveredBlock105Value13 recoveredBlock105Value14 recoveredBlock105Value15 recoveredBlock105Value16 recoveredBlock105Value17 |
    recoveredBlock105Value0 := CfsFileDescriptor.
    recoveredBlock105Value1 := recoveredLocal2.
    recoveredBlock105Value2 := (recoveredBlock105Value1) , ('\').
    recoveredBlock105Value3 := recoveredBlock105Arg1.
    recoveredBlock105Value4 := (recoveredBlock105Value2) , (recoveredBlock105Value3).
    recoveredBlock105Value5 := recoveredLocal1.
    recoveredBlock105Value6 := (recoveredBlock105Value5) , ('\').
    recoveredBlock105Value7 := recoveredArg3.
    recoveredBlock105Value8 := (recoveredBlock105Value6) , (recoveredBlock105Value7).
    recoveredBlock105Value9 := recoveredBlock105Arg1.
    recoveredBlock105Value10 := recoveredLocal7.
    recoveredBlock105Value11 := (recoveredBlock105Value10) size.
    recoveredBlock105Value12 := (recoveredBlock105Value11) + (1).
    recoveredBlock105Value13 := recoveredBlock105Arg1.
    recoveredBlock105Value14 := (recoveredBlock105Value13) size.
    recoveredBlock105Value15 := (recoveredBlock105Value9) copyFrom: (recoveredBlock105Value12) to: (recoveredBlock105Value14).
    recoveredBlock105Value16 := (recoveredBlock105Value8) , (recoveredBlock105Value15).
    recoveredBlock105Value17 := (recoveredBlock105Value0) rename: (recoveredBlock105Value4) new: (recoveredBlock105Value16).
    recoveredBlock105Value17
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) namespace.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) namespace.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := '/'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeDoubleSlashes.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := DBXmlReferenceFixer.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := '/'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := '/'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := (recoveredStack4) references.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack4 := (recoveredStack4) referencedBy.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) initForName: (recoveredStack2) new: (recoveredStack3) items: (recoveredStack4).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) execute.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) importDesc.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 269] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) importDesc.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := (recoveredStack2) removeDoubleBackslashes.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := (recoveredStack3) removeDoubleBackslashes.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1) changeRoot: (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) importDesc.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack1) renameTo: (recoveredStack2).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := 'todo'.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := (recoveredStack2) object.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack1) addChild: (recoveredStack2).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205cc7d4; bytecode file offset 0xec912c"
!SGItem class methodsFor: 'recovered'!
dbXmlDirectExport: recoveredArg1 to: recoveredArg2 with: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbXmlRelatedFiles: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportExperiments.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:block28119044Arg1 | 
    | block28119044Value0 block28119044Value1 |
    block28119044Value0 := block28119044Arg1.
    block28119044Value1 := ('*.experiment.*') match: (block28119044Value0).
    block28119044Value1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportDefaultProjects.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:block28119068Arg1 | 
    | block28119068Value0 block28119068Value1 |
    block28119068Value0 := block28119068Arg1.
    block28119068Value1 := ('*.dp.amd') match: (block28119068Value0).
    block28119068Value1
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) database.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) catalog.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) destVersion.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) destVersion.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := [:recoveredBlock107Arg1 | 
    | recoveredBlock107Local1 recoveredBlock107Local2 recoveredBlock107Local3 recoveredBlock107Local4 recoveredBlock107Local5 recoveredBlock107Local6 recoveredBlock107Stack0 recoveredBlock107Stack1 recoveredBlock107Stack2 recoveredBlock107Stack3 recoveredBlock107Stack4 recoveredBlock107PC recoveredBlock107Step recoveredBlock107Done recoveredBlock107Result |
    recoveredBlock107Stack0 := self.
    recoveredBlock107PC := 114.
    recoveredBlock107Done := false.
    [recoveredBlock107Done not] whileTrue: [
        recoveredBlock107Step := recoveredBlock107PC.
        recoveredBlock107Step = 114 ifTrue: [
            recoveredBlock107Stack1 := recoveredLocal4.
            recoveredBlock107PC := 117.
        ].
        recoveredBlock107Step = 117 ifTrue: [
            recoveredBlock107Stack2 := 1.
            recoveredBlock107PC := 119.
        ].
        recoveredBlock107Step = 119 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) at: (recoveredBlock107Stack2).
            recoveredBlock107PC := 120.
        ].
        recoveredBlock107Step = 120 ifTrue: [
            recoveredBlock107Stack2 := '/'.
            recoveredBlock107PC := 122.
        ].
        recoveredBlock107Step = 122 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) , (recoveredBlock107Stack2).
            recoveredBlock107PC := 124.
        ].
        recoveredBlock107Step = 124 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Arg1.
            recoveredBlock107PC := 127.
        ].
        recoveredBlock107Step = 127 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) , (recoveredBlock107Stack2).
            recoveredBlock107PC := 129.
        ].
        recoveredBlock107Step = 129 ifTrue: [
            recoveredBlock107Local5 := recoveredBlock107Stack1.
            recoveredBlock107PC := 132.
        ].
        recoveredBlock107Step = 132 ifTrue: [
            recoveredBlock107Stack1 := recoveredArg2.
            recoveredBlock107PC := 135.
        ].
        recoveredBlock107Step = 135 ifTrue: [
            recoveredBlock107Stack2 := '/'.
            recoveredBlock107PC := 137.
        ].
        recoveredBlock107Step = 137 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) , (recoveredBlock107Stack2).
            recoveredBlock107PC := 139.
        ].
        recoveredBlock107Step = 139 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Arg1.
            recoveredBlock107PC := 142.
        ].
        recoveredBlock107Step = 142 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) , (recoveredBlock107Stack2).
            recoveredBlock107PC := 144.
        ].
        recoveredBlock107Step = 144 ifTrue: [
            recoveredBlock107Local4 := recoveredBlock107Stack1.
            recoveredBlock107PC := 147.
        ].
        recoveredBlock107Step = 147 ifTrue: [
            recoveredBlock107Stack1 := CfsStat.
            recoveredBlock107PC := 149.
        ].
        recoveredBlock107Step = 149 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Local5.
            recoveredBlock107PC := 152.
        ].
        recoveredBlock107Step = 152 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) isDirectory: (recoveredBlock107Stack2).
            recoveredBlock107PC := 154.
        ].
        recoveredBlock107Step = 154 ifTrue: [
            (recoveredBlock107Stack1) ifTrue: [recoveredBlock107PC := 330] ifFalse: [recoveredBlock107PC := 158].
        ].
        recoveredBlock107Step = 158 ifTrue: [
            recoveredBlock107Stack1 := Util.
            recoveredBlock107PC := 160.
        ].
        recoveredBlock107Step = 160 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Local5.
            recoveredBlock107PC := 163.
        ].
        recoveredBlock107Step = 163 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) fileType: (recoveredBlock107Stack2).
            recoveredBlock107PC := 165.
        ].
        recoveredBlock107Step = 165 ifTrue: [
            recoveredBlock107Stack2 := [:recoveredBlock107Block165Arg1 | 
    | recoveredBlock107Block165Value0 recoveredBlock107Block165Value1 recoveredBlock107Block165Value2 |
    recoveredBlock107Block165Value0 := recoveredLocal2.
    recoveredBlock107Block165Value1 := recoveredBlock107Block165Arg1.
    recoveredBlock107Block165Value2 := (recoveredBlock107Block165Value0) getForExtension: (recoveredBlock107Block165Value1).
    recoveredBlock107Block165Value2
].
            recoveredBlock107PC := 179.
        ].
        recoveredBlock107Step = 179 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) ifNotNil: (recoveredBlock107Stack2).
            recoveredBlock107PC := 181.
        ].
        recoveredBlock107Step = 181 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Stack1.
            recoveredBlock107PC := 182.
        ].
        recoveredBlock107Step = 182 ifTrue: [
            recoveredBlock107Local6 := recoveredBlock107Stack2.
            recoveredBlock107PC := 185.
        ].
        recoveredBlock107Step = 185 ifTrue: [
            (recoveredBlock107Stack1 == nil) ifTrue: [recoveredBlock107PC := 330] ifFalse: [recoveredBlock107PC := 188].
        ].
        recoveredBlock107Step = 188 ifTrue: [
            recoveredBlock107Stack1 := EtasXmlSupportNative.
            recoveredBlock107PC := 190.
        ].
        recoveredBlock107Step = 190 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Local5.
            recoveredBlock107PC := 193.
        ].
        recoveredBlock107Step = 193 ifTrue: [
            recoveredBlock107Stack3 := recoveredBlock107Local6.
            recoveredBlock107PC := 196.
        ].
        recoveredBlock107Step = 196 ifTrue: [
            recoveredBlock107Stack3 := (recoveredBlock107Stack3) versionAttr.
            recoveredBlock107PC := 198.
        ].
        recoveredBlock107Step = 198 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) findSchemaVersion: (recoveredBlock107Stack2) attrName: (recoveredBlock107Stack3).
            recoveredBlock107PC := 200.
        ].
        recoveredBlock107Step = 200 ifTrue: [
            recoveredBlock107Local3 := recoveredBlock107Stack1.
            recoveredBlock107PC := 203.
        ].
        recoveredBlock107Step = 203 ifTrue: [
            recoveredBlock107Stack1 := recoveredBlock107Local6.
            recoveredBlock107PC := 206.
        ].
        recoveredBlock107Step = 206 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Local3.
            recoveredBlock107PC := 209.
        ].
        recoveredBlock107Step = 209 ifTrue: [
            recoveredBlock107Stack3 := recoveredLocal1.
            recoveredBlock107PC := 212.
        ].
        recoveredBlock107Step = 212 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) transformationsFrom: (recoveredBlock107Stack2) to: (recoveredBlock107Stack3).
            recoveredBlock107PC := 214.
        ].
        recoveredBlock107Step = 214 ifTrue: [
            recoveredBlock107Local2 := recoveredBlock107Stack1.
            recoveredBlock107PC := 217.
        ].
        recoveredBlock107Step = 217 ifTrue: [
            recoveredBlock107Stack1 := recoveredBlock107Local2.
            recoveredBlock107PC := 220.
        ].
        recoveredBlock107Step = 220 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) size.
            recoveredBlock107PC := 222.
        ].
        recoveredBlock107Step = 222 ifTrue: [
            recoveredBlock107Stack2 := 0.
            recoveredBlock107PC := 224.
        ].
        recoveredBlock107Step = 224 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) > (recoveredBlock107Stack2).
            recoveredBlock107PC := 225.
        ].
        recoveredBlock107Step = 225 ifTrue: [
            (recoveredBlock107Stack1) ifTrue: [recoveredBlock107PC := 228] ifFalse: [recoveredBlock107PC := 308].
        ].
        recoveredBlock107Step = 228 ifTrue: [
            recoveredBlock107Stack1 := EtasXmlSupportDoc.
            recoveredBlock107PC := 230.
        ].
        recoveredBlock107Step = 230 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) new.
            recoveredBlock107PC := 232.
        ].
        recoveredBlock107Step = 232 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Local5.
            recoveredBlock107PC := 235.
        ].
        recoveredBlock107Step = 235 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) initFromFile: (recoveredBlock107Stack2).
            recoveredBlock107PC := 237.
        ].
        recoveredBlock107Step = 237 ifTrue: [
            recoveredBlock107Local1 := recoveredBlock107Stack1.
            recoveredBlock107PC := 240.
        ].
        recoveredBlock107Step = 240 ifTrue: [
            recoveredBlock107Stack1 := recoveredBlock107Local2.
            recoveredBlock107PC := 243.
        ].
        recoveredBlock107Step = 243 ifTrue: [
            recoveredBlock107Stack2 := [:recoveredBlock107Block243Arg1 | 
    | recoveredBlock107Block243Value0 recoveredBlock107Block243Value1 recoveredBlock107Block243Value2 recoveredBlock107Block243Value3 recoveredBlock107Block243Value4 recoveredBlock107Block243Value5 |
    recoveredBlock107Block243Value0 := recoveredLocal2.
    recoveredBlock107Block243Value1 := recoveredBlock107Block243Arg1.
    recoveredBlock107Block243Value2 := (recoveredBlock107Block243Value1) xsltName.
    recoveredBlock107Block243Value3 := (recoveredBlock107Block243Value0) getStyleSheet: (recoveredBlock107Block243Value2).
    recoveredBlock107Block243Value4 := recoveredBlock107Local1.
    recoveredBlock107Block243Value5 := (recoveredBlock107Block243Value3) transformReplace: (recoveredBlock107Block243Value4).
    recoveredBlock107Block243Value5
].
            recoveredBlock107PC := 264.
        ].
        recoveredBlock107Step = 264 ifTrue: [
            (recoveredBlock107Stack1) do: (recoveredBlock107Stack2).
            recoveredBlock107PC := 266.
        ].
        recoveredBlock107Step = 266 ifTrue: [
            recoveredBlock107Stack1 := recoveredArg3.
            recoveredBlock107PC := 269.
        ].
        recoveredBlock107Step = 269 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) signXMLExport.
            recoveredBlock107PC := 271.
        ].
        recoveredBlock107Step = 271 ifTrue: [
            (recoveredBlock107Stack1) ifTrue: [recoveredBlock107PC := 274] ifFalse: [recoveredBlock107PC := 284].
        ].
        recoveredBlock107Step = 274 ifTrue: [
            recoveredBlock107Stack1 := recoveredBlock107Local1.
            recoveredBlock107PC := 277.
        ].
        recoveredBlock107Step = 277 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Local1.
            recoveredBlock107PC := 280.
        ].
        recoveredBlock107Step = 280 ifTrue: [
            recoveredBlock107Stack2 := (recoveredBlock107Stack2) signKey.
            recoveredBlock107PC := 282.
        ].
        recoveredBlock107Step = 282 ifTrue: [
            (recoveredBlock107Stack1) sign: (recoveredBlock107Stack2).
            recoveredBlock107PC := 284.
        ].
        recoveredBlock107Step = 284 ifTrue: [
            recoveredBlock107Stack1 := recoveredBlock107Local1.
            recoveredBlock107PC := 287.
        ].
        recoveredBlock107Step = 287 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Local4.
            recoveredBlock107PC := 290.
        ].
        recoveredBlock107Step = 290 ifTrue: [
            (recoveredBlock107Stack1) writeToFile: (recoveredBlock107Stack2).
            recoveredBlock107PC := 292.
        ].
        recoveredBlock107Step = 292 ifTrue: [
            recoveredBlock107Stack1 := recoveredBlock107Local1.
            recoveredBlock107PC := 295.
        ].
        recoveredBlock107Step = 295 ifTrue: [
            (recoveredBlock107Stack1) dispose.
            recoveredBlock107PC := 297.
        ].
        recoveredBlock107Step = 297 ifTrue: [
            recoveredBlock107Stack1 := Util.
            recoveredBlock107PC := 299.
        ].
        recoveredBlock107Step = 299 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) dispatchEvents.
            recoveredBlock107PC := 301.
        ].
        recoveredBlock107Step = 301 ifTrue: [
            recoveredBlock107Stack2 := nil.
            recoveredBlock107PC := 302.
        ].
        recoveredBlock107Step = 302 ifTrue: [
            recoveredBlock107Local1 := recoveredBlock107Stack2.
            recoveredBlock107PC := 305.
        ].
        recoveredBlock107Step = 305 ifTrue: [
            recoveredBlock107PC := 318.
        ].
        recoveredBlock107Step = 308 ifTrue: [
            recoveredBlock107Stack1 := Util.
            recoveredBlock107PC := 310.
        ].
        recoveredBlock107Step = 310 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Local5.
            recoveredBlock107PC := 313.
        ].
        recoveredBlock107Step = 313 ifTrue: [
            recoveredBlock107Stack3 := recoveredBlock107Local4.
            recoveredBlock107PC := 316.
        ].
        recoveredBlock107Step = 316 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) copyPath: (recoveredBlock107Stack2) to: (recoveredBlock107Stack3).
            recoveredBlock107PC := 318.
        ].
        recoveredBlock107Step = 318 ifTrue: [
            recoveredBlock107Stack2 := nil.
            recoveredBlock107PC := 319.
        ].
        recoveredBlock107Step = 319 ifTrue: [
            recoveredBlock107Stack3 := recoveredBlock107Stack2.
            recoveredBlock107PC := 320.
        ].
        recoveredBlock107Step = 320 ifTrue: [
            recoveredBlock107Local3 := recoveredBlock107Stack3.
            recoveredBlock107PC := 323.
        ].
        recoveredBlock107Step = 323 ifTrue: [
            recoveredBlock107Local2 := recoveredBlock107Stack2.
            recoveredBlock107PC := 326.
        ].
        recoveredBlock107Step = 326 ifTrue: [
            recoveredBlock107PC := 340.
        ].
        recoveredBlock107Step = 330 ifTrue: [
            recoveredBlock107Stack1 := Util.
            recoveredBlock107PC := 332.
        ].
        recoveredBlock107Step = 332 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Local5.
            recoveredBlock107PC := 335.
        ].
        recoveredBlock107Step = 335 ifTrue: [
            recoveredBlock107Stack3 := recoveredBlock107Local4.
            recoveredBlock107PC := 338.
        ].
        recoveredBlock107Step = 338 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) copyPath: (recoveredBlock107Stack2) to: (recoveredBlock107Stack3).
            recoveredBlock107PC := 340.
        ].
        recoveredBlock107Step = 340 ifTrue: [
            recoveredBlock107Result := recoveredBlock107Stack1.
            recoveredBlock107Done := true.
        ].
    ].
    recoveredBlock107Result
].
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

