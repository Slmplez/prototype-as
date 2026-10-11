"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200af814; bytecode file offset 0x9ac0cc"
!DBImportController3 methodsFor: 'recovered'!
getLoadedImportObjectFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := dbInterface.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) loadFromBytes: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c4648; bytecode file offset 0x9c11bc"
!DBImportController3 methodsFor: 'recovered'!
recordClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    recordClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c49ac; bytecode file offset 0x9c16b0"
!DBImportController3 methodsFor: 'recovered'!
attributeRecordClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributeRecordClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2013b75c; bytecode file offset 0xa38018"
!DBImportController3 methodsFor: 'recovered'!
recordClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recordClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := super recordClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recordClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013b780; bytecode file offset 0xa3803c"
!DBImportController3 methodsFor: 'recovered'!
attributeRecordClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recordClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := super attributeRecordClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := attributeRecordClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205ed728; bytecode file offset 0xeea080"
!DBImportController3 methodsFor: 'recovered'!
importObject: recoveredArg1 newGlobalId: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) offset.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 68719476735.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := DBFileError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := DBErrorImportOffsetOutOfRange.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := fHandle.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) offset.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) recordClass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) readRecordFromHandle: (recoveredStack2) atOffset: (recoveredStack3) recordClass: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributeOffsets.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 |
    recoveredBlock53Value0 := dbInterface.
    recoveredBlock53Value1 := fHandle.
    recoveredBlock53Value2 := recoveredBlock53Arg1.
    recoveredBlock53Value3 := (self) attributeRecordClass.
    recoveredBlock53Value4 := (recoveredBlock53Value0) readAttributeRecordFromHandle: (recoveredBlock53Value1) atOffset: (recoveredBlock53Value2) recordClass: (recoveredBlock53Value3).
    recoveredBlock53Value4
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadFromBytes: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) updateToNewOid.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := globalIdMap.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock122Value0 recoveredBlock122Value1 recoveredBlock122Value2 recoveredBlock122Value3 |
    recoveredBlock122Value0 := dbInterface.
    recoveredBlock122Value1 := DBProxy.
    recoveredBlock122Value2 := recoveredLocal4.
    recoveredBlock122Value3 := (recoveredBlock122Value0) getNewlyLoadedObjectsOfClass: (recoveredBlock122Value1) record: (recoveredBlock122Value2).
    recoveredBlock122Value3
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack4 := [:recoveredBlock138Arg1 | 
    | recoveredBlock138Value0 recoveredBlock138Value1 recoveredBlock138Value2 recoveredBlock138Value3 recoveredBlock138Value4 recoveredBlock138Value5 recoveredBlock138Value6 recoveredBlock138Value7 recoveredBlock138Value8 |
    recoveredBlock138Value0 := globalIdMap.
    recoveredBlock138Value1 := recoveredLocal2.
    recoveredBlock138Value2 := recoveredBlock138Arg1.
    recoveredBlock138Value3 := dbInterface.
    recoveredBlock138Value4 := DBProxy.
    recoveredBlock138Value5 := recoveredLocal4.
    recoveredBlock138Value6 := (recoveredBlock138Value3) getNewlyLoadedObjectsOfClass: (recoveredBlock138Value4) record: (recoveredBlock138Value5).
    recoveredBlock138Value7 := (recoveredBlock138Value2) , (recoveredBlock138Value6).
    recoveredBlock138Value8 := (recoveredBlock138Value0) at: (recoveredBlock138Value1) put: (recoveredBlock138Value7).
    recoveredBlock138Value8
].
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := globalIdMap.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalId.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack4 := (recoveredStack4) globalId.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalId.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) globalId: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := [:recoveredBlock201Arg1 | 
    | recoveredBlock201Value0 recoveredBlock201Value1 recoveredBlock201Value2 recoveredBlock201Value3 |
    recoveredBlock201Value0 := recoveredBlock201Arg1.
    recoveredBlock201Value1 := recoveredLocal2.
    recoveredBlock201Value2 := (recoveredBlock201Value1) globalId.
    recoveredBlock201Value3 := (recoveredBlock201Value0) globalId: (recoveredBlock201Value2).
    recoveredBlock201Value3
].
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := [:block2811b4f8Arg1 | 
    | block2811b4f8Stack0 block2811b4f8Stack1 block2811b4f8Stack2 block2811b4f8Stack3 block2811b4f8Stack4 block2811b4f8PC block2811b4f8Step block2811b4f8Done block2811b4f8Result |
    block2811b4f8Stack0 := self.
    block2811b4f8PC := 4.
    block2811b4f8Done := false.
    [block2811b4f8Done not] whileTrue: [
        block2811b4f8Step := block2811b4f8PC.
        block2811b4f8Step = 4 ifTrue: [
            block2811b4f8Stack1 := false.
            block2811b4f8PC := 5.
        ].
        block2811b4f8Step = 5 ifTrue: [
            block2811b4f8Stack2 := block2811b4f8Arg1.
            block2811b4f8PC := 6.
        ].
        block2811b4f8Step = 6 ifTrue: [
            block2811b4f8Stack2 := (block2811b4f8Stack2) attributeName.
            block2811b4f8PC := 8.
        ].
        block2811b4f8Step = 8 ifTrue: [
            block2811b4f8Stack3 := 'DBReferenceList'.
            block2811b4f8PC := 10.
        ].
        block2811b4f8Step = 10 ifTrue: [
            block2811b4f8Stack2 := (block2811b4f8Stack2) ~= (block2811b4f8Stack3).
            block2811b4f8PC := 11.
        ].
        block2811b4f8Step = 11 ifTrue: [
            (block2811b4f8Stack2) ifTrue: [block2811b4f8PC := 14] ifFalse: [block2811b4f8PC := 21].
        ].
        block2811b4f8Step = 14 ifTrue: [
            block2811b4f8PC := 15.
        ].
        block2811b4f8Step = 15 ifTrue: [
            block2811b4f8Stack1 := block2811b4f8Arg1.
            block2811b4f8PC := 16.
        ].
        block2811b4f8Step = 16 ifTrue: [
            block2811b4f8Stack1 := (block2811b4f8Stack1) attributeName.
            block2811b4f8PC := 18.
        ].
        block2811b4f8Step = 18 ifTrue: [
            block2811b4f8Stack2 := 'DBReferencedByList'.
            block2811b4f8PC := 20.
        ].
        block2811b4f8Step = 20 ifTrue: [
            block2811b4f8Stack1 := (block2811b4f8Stack1) ~= (block2811b4f8Stack2).
            block2811b4f8PC := 21.
        ].
        block2811b4f8Step = 21 ifTrue: [
            block2811b4f8Result := block2811b4f8Stack1.
            block2811b4f8Done := true.
        ].
    ].
    block2811b4f8Result
].
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack1) writeToDatabase: (recoveredStack2).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredPC := 343.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack1) clearAccessLoaded.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMarkAsDeleted.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 276] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) removeFromCache.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack1) deleteAccessRights.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) clearAccessLoaded.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredPC := 299.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack1) deleteAccessRights.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeRecord: (recoveredStack2).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 316] ifFalse: [recoveredPC := 343].
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadFromBytes: (recoveredStack2).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 332] ifFalse: [recoveredPC := 336].
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack1) writeToCache: (recoveredStack2).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := [:recoveredBlock346Arg1 | 
    | recoveredBlock346Stack0 recoveredBlock346Stack1 recoveredBlock346Stack2 recoveredBlock346Stack3 recoveredBlock346Stack4 recoveredBlock346PC recoveredBlock346Step recoveredBlock346Done recoveredBlock346Result |
    recoveredBlock346Stack0 := self.
    recoveredBlock346PC := 352.
    recoveredBlock346Done := false.
    [recoveredBlock346Done not] whileTrue: [
        recoveredBlock346Step := recoveredBlock346PC.
        recoveredBlock346Step = 352 ifTrue: [
            recoveredBlock346Stack1 := nil.
            recoveredBlock346PC := 353.
        ].
        recoveredBlock346Step = 353 ifTrue: [
            recoveredBlock346Stack2 := recoveredBlock346Arg1.
            recoveredBlock346PC := 354.
        ].
        recoveredBlock346Step = 354 ifTrue: [
            recoveredBlock346Stack2 := (recoveredBlock346Stack2) isError.
            recoveredBlock346PC := 356.
        ].
        recoveredBlock346Step = 356 ifTrue: [
            (recoveredBlock346Stack2) ifTrue: [recoveredBlock346PC := 381] ifFalse: [recoveredBlock346PC := 360].
        ].
        recoveredBlock346Step = 360 ifTrue: [
            recoveredBlock346PC := 361.
        ].
        recoveredBlock346Step = 361 ifTrue: [
            recoveredBlock346Stack1 := nil.
            recoveredBlock346PC := 362.
        ].
        recoveredBlock346Step = 362 ifTrue: [
            recoveredBlock346Stack2 := dbInterface.
            recoveredBlock346PC := 364.
        ].
        recoveredBlock346Step = 364 ifTrue: [
            recoveredBlock346Stack3 := recoveredBlock346Arg1.
            recoveredBlock346PC := 365.
        ].
        recoveredBlock346Step = 365 ifTrue: [
            recoveredBlock346Stack2 := (recoveredBlock346Stack2) writeAttributeRecord: (recoveredBlock346Stack3).
            recoveredBlock346PC := 367.
        ].
        recoveredBlock346Step = 367 ifTrue: [
            recoveredBlock346Stack3 := recoveredBlock346Stack2.
            recoveredBlock346PC := 368.
        ].
        recoveredBlock346Step = 368 ifTrue: [
            recoveredLocal6 := recoveredBlock346Stack3.
            recoveredBlock346PC := 371.
        ].
        recoveredBlock346Step = 371 ifTrue: [
            recoveredBlock346Stack2 := (recoveredBlock346Stack2) isError.
            recoveredBlock346PC := 373.
        ].
        recoveredBlock346Step = 373 ifTrue: [
            (recoveredBlock346Stack2) ifTrue: [recoveredBlock346PC := 376] ifFalse: [recoveredBlock346PC := 381].
        ].
        recoveredBlock346Step = 376 ifTrue: [
            recoveredBlock346PC := 377.
        ].
        recoveredBlock346Step = 377 ifTrue: [
            recoveredBlock346Stack1 := recoveredLocal6.
            recoveredBlock346PC := 380.
        ].
        recoveredBlock346Step = 380 ifTrue: [
            ^recoveredBlock346Stack1
        ].
        recoveredBlock346Step = 381 ifTrue: [
            recoveredBlock346Result := recoveredBlock346Stack1.
            recoveredBlock346Done := true.
        ].
    ].
    recoveredBlock346Result
].
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := dbInterface.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkMaxDBSize.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 392] ifFalse: [recoveredPC := 399].
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := ETASError.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack2 := 'Database size limit exceeded while importing.'.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2).
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

